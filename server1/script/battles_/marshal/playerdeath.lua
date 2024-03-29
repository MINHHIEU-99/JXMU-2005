--玩家死亡脚本

IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\marshal\\head.lua")

function OnDeath(Launcher)
	State = GetMissionV(MS_STATE) ;
	if (State ~= 2) then
		return
	end;
	if (bt_CheckDeathValid() == 0) then
		return
	end
	PlayerIndex1 = NpcIdx2PIdx(Launcher);
	OrgPlayer  = PlayerIndex;
	DeathName = GetName();
	deathcamp = GetCurCamp();
	currank = BT_GetData(PL_CURRANK)
			deathIP = GetPureIP()


	if (PlayerIndex1 > 0) then
		PlayerIndex = PlayerIndex1;
		launchrank = BT_GetData(PL_CURRANK)
		if 1==1 then
			LaunName = GetName();
			--更新杀Npc数目和排行榜
			BT_SetData(PL_KILLPLAYER, BT_GetData(PL_KILLPLAYER) + 1); --记录玩家杀其它玩家的总数
			serieskill = BT_GetData(PL_SERIESKILL) + 1;
			BT_SetData(PL_SERIESKILL, serieskill); --记录玩家当前的连斩数
			
		if (TAB_SERIESKILL[launchrank][currank] == 1) then
			serieskill_r = GetTask(TV_SERIESKILL_REALY) 
			serieskill_r = serieskill_r + 1
			SetTask(TV_SERIESKILL_REALY,serieskill_r)

			if (mod(serieskill_r, 3) == 0) then
				if (deathcamp == 1) then
					local npoint = bt_addtotalpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 2))
					mar_addmissionpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 2))
					Msg2Player("<color=yellow> b筺 nh薾 頲 甶觤 t輈h l騳 Li猲 tr秏 "..npoint)
				else
					local npoint = bt_addtotalpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 1))
					mar_addmissionpoint(BT_GetTypeBonus(PL_MAXSERIESKILL, 1))
					Msg2Player("<color=yellow> b筺 nh薾 頲 甶觤 t輈h l騳 Li猲 tr秏 "..npoint)
				end
			end
		end
			if (BT_GetData(PL_MAXSERIESKILL) < serieskill) then 
				BT_SetData(PL_MAXSERIESKILL, serieskill) -- 统计玩家的最大连斩数
			end
			
			local rankradio = 1;
			
			if ( RANK_PKBONUS[launchrank] == nil or RANK_PKBONUS[launchrank][currank] == nil) then
				rankradio = 1
				print("battle rank tab error!!!please check it !")
			else
				rankradio = RANK_PKBONUS[launchrank][currank]
			end
			local earnbonus = 0
			if (deathcamp == 1) then
				earnbonus = floor(BT_GetTypeBonus(PL_KILLPLAYER, 2) * rankradio)
			else
				earnbonus = floor(BT_GetTypeBonus(PL_KILLPLAYER, 1) * rankradio)
			end
			bt_addtotalpoint(earnbonus)
			mar_addmissionpoint(earnbonus)
			
			local rankname = "";
			rankname = tbRANKNAME[currank]
			launchrank = BT_GetData(PL_CURRANK);
			launrankname = tbRANKNAME[launchrank]
			
			BT_SortLadder();
			BT_BroadSelf();
		
			if (GetCurCamp()  == 1) then
				str  = "Ngi ch琲 "..launrankname..LaunName.." h� tr鋘g thng ngi ch琲 "..rankname..DeathName..", t鎛g PK l� "..BT_GetData(PL_KILLPLAYER);
			else
				str  = "Ngi ch琲 "..launrankname..LaunName.." h� tr鋘g thng ngi ch琲 "..rankname..DeathName..", t鎛g PK l� "..BT_GetData(PL_KILLPLAYER);
			end
			Msg2Player("<color=pink> Ch骳 m鮪g! B筺  h� 頲:"..rankname..DeathName..", T鎛g PK l� "..BT_GetData(PL_KILLPLAYER));
			Msg2MSAll(MISSIONID, str);
		end
		PlayerIndex = OrgPlayer;
	end;

	BT_SetData(PL_BEKILLED, BT_GetData(PL_BEKILLED) + 1)
	BT_SetData(PL_SERIESKILL, 0)
	SetTask(TV_SERIESKILL_REALY,0)
	
	BT_SortLadder();
	BT_BroadSelf();
	sf_onplayerleave()
	BT_SetData(PL_LASTDEATHTIME, GetGameTime())
end
