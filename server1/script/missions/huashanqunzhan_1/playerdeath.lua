Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")




function OnDeath(nNpcIndex)
local nSilverCount = CalcEquiproomItemCount(4,417,1,-1) ;

tbItem =
{
	{{szName="Thuèc",tbProp={1,2,0,5,0,0,0,0},nCount=10,},},
	{{szName="Xu",tbProp={4,417,1,1,0,0},nCount=nSilverCount,},},
	{{szName="Xu",tbProp={4,417,1,1,0,0},nCount=1,},},

	--{{szName="Bac",tbProp={4,1673,1,1,0},nCount=1,},},
	--{{szName="§å Phæ",tbProp={4,random(1497,1636),1,1,0},nCount=1,},},
}
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem,TitleStr, 1)
	ConsumeEquiproomItem(nSilverCount,4,417,1,-1)

	local nPlayerIndex	= NpcIdx2PIdx(nNpcIndex);
	if nPlayerIndex > 0 then
		local szDeadName	= GetName()
		local szKiller		= doFunByPlayer(nPlayerIndex, GetName)
		local nCount		= doFunByPlayer(nPlayerIndex, GetTask, tbMissionClass.TSK_Kills)
		szMsg		= format("<color=green>%s<color> ®· h¹ cháng ®Ýt <color=yellow>%s<color> trong ®Êu L«i §µi Lo¹n ChiÕn", szKiller, szDeadName)

		doFunByPlayer(nPlayerIndex, SetTask, tbMissionClass.TSK_Kills, nCount + 1)
		doFunByPlayer(nPlayerIndex, Msg2Player, format("Sè ng­êi ®· ®¸nh b¹i: %d", nCount + 1))
		doFunByPlayer(nPlayerIndex, Msg2Player, szMsg)
		Msg2Player(szMsg)
	end
	local szNews = format("§¹i hiÖp <color=green>"..GetName().."<color=yellow> BÞ h¹ cháng ®Ýt trong <color=cyan>L«i §µi Lo¹n ChiÕn");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	tbMissionClass:GotoSignUpPlace()
	
	local nPlayerCount = tbMissionClass:GetMSPlayerCount(0)
	
	if nPlayerCount == 0 then
		tbMissionClass:OnClose()
	end
end


