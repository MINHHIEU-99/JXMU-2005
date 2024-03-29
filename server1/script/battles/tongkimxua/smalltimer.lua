IncludeLib("BATTLE");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\tongkimxua\\head.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\qianqiu_yinglie\\sj_announce.lua")		-- 解放活动之千秋英烈

function OnTimer()
	t = GetMissionV(MS_TIMER1) + 1;--计数器，统计当前定时器触发了多少次了
	SetMissionV(MS_TIMER1, t)
	
	--Storm 加奖励积分
	local add_time = 60 * FRAME2TIME / TIMER_1
	storm_addm_mspointex(1, MISSIONID, (t - RUNGAME_TIME) / add_time)

	local lsf_level = BT_GetGameData(GAME_LEVEL)
	if (lsf_level == 1) then
		resultstr = "Khu v鵦 S� c蕄 "
	elseif (lsf_level == 2) then
		resultstr = "Khu v鵦 Trung c蕄 "
	elseif (lsf_level == 3) then
		resultstr = "Khu v鵦 Cao c蕄 "
	end
	
	if (t == RUNGAME_TIME) then --如果到了正式开战时刻，则停止报名，正式进入战斗阶段
		RunMission(MISSIONID)
		AddGlobalCountNews(resultstr.."Th阨 gian b竜 danh T鑞g Kim (phng th鴆 b秓 v� Nguy猲 So竔)  k誸 th骳. Chi課 u ch輓h th鴆 b総 u", 2);
		Msg2MSAll(MISSIONID, "T鑞g Kim ch輓h th鴆 khai chi課! C竎 chi課 s�! X玭g l猲!");
		WriteLog("marshal battle is entering fight state. now member count="..GetMSPlayerCount(MISSIONID, 1)..":"..GetMSPlayerCount(MISSIONID, 2))
	end

	if (t < RUNGAME_TIME and mod(t, 18) == 0) then
		RestTime = (RUNGAME_TIME - t) * TIMER_1 / FRAME2TIME
		RestMin, RestSec = GetMinAndSec(RestTime);
		if (RestSec == 0) then
			str1 = resultstr.."<#> Chi課 d辌h T鑞g Kim (Phng th鴆 B秓 v� Nguy猲 so竔) 產ng trong giai 畂筺 b竜 danh. Mu鑞 tham gia h穣 nhanh ch鉵g n Tng Dng ho芻 Chu Ti猲 tr蕁  b竜 danh. (ho芻 s� d鬾g T鑞g Kim Chi猽 Th�) .Th阨 gian b竜 danh c遪 l筰 l�:"..RestMin.."ph髏. 襲 ki謓 tham gia: ng c蕄 t� 40, ph� b竜 danh 3000 lng. Sau khi khai chi課, n誹 t鎛g s� ngi ch璦  v蒼 c� th� ti誴 t鬰 b竜 danh!";
			str2 = "<#> Th阨 gian b竜 danh c遪 l筰 l�:"..RestMin.."ph髏"
		else
			str1 = resultstr.."<#> Chi課 d辌h T鑞g Kim (Phng th鴆 B秓 v� Nguy猲 so竔) 產ng trong giai 畂筺 b竜 danh. Mu鑞 tham gia h穣 nhanh ch鉵g n Tng Dng ho芻 Chu Ti猲 tr蕁  b竜 danh. (ho芻 s� d鬾g T鑞g Kim Chi猽 Th�) .Th阨 gian b竜 danh c遪 l筰 l�:"..RestMin.."ph髏"..RestSec.."gi﹜. 襲 ki謓 tham gia: ng c蕄 t� 40, ph� b竜 danh 3000 lng. Sau khi khai chi課, n誹 t鎛g s� ngi ch璦  v蒼 c� th� ti誴 t鬰 b竜 danh!";
			str2 = "<#> Th阨 gian b竜 danh c遪 l筰 l�:"..RestMin.."ph髏"..RestSec.." gi﹜"
		end
		AddGlobalCountNews(str1, 2);
		Msg2MSAll(MISSIONID,str2);		--通知场内玩家开战剩余时间
	end
	
	if (t >= RUNGAME_TIME) then

		if (t == RUNGAME_TIME) then --正式开战的第一次触发时，产生战斗Npc的生成规则数据
			level = BT_GetGameData(GAME_LEVEL);
			sf_buildfightNPC(level)
		else
			--到开战后半小时看双方总积分，积分小的一方产生元帅
			if (t == BOSS_TIME) then
				if (GetMissionV(MS_TOTALPOINT_S) < GetMissionV(MS_TOTALPOINT_J)) then
					marshal_down(1)
					SetMissionV(MS_MARSHAL, 1)
				elseif(GetMissionV(MS_TOTALPOINT_S) > GetMissionV(MS_TOTALPOINT_J)) then
					marshal_down(2)
					SetMissionV(MS_MARSHAL, 2)
				elseif(GetMissionV(MS_TOTALPOINT_S) == GetMissionV(MS_TOTALPOINT_J)) then
					marshal_down(2)
					marshal_down(1)
					SetMissionV(MS_MARSHAL, 3)
				end
			end

			if (t == VANISHGAME_TIME) then	--到最后20分钟时将另一方的元帅产生
				mar = GetMissionV(MS_MARSHAL)
				if (mar == 1) then
					marshal_down(2)
				elseif (mar == 2) then
					marshal_down(1)
				end
			end
			
			bt_pop2signmap()	--将在后营（fight=0）的玩家送回报名点
			
			--每一分钟通告当前双方积分，和npc
			if (mod(t, 3) == 0 ) then
				sf_callfightnpc(t - RUNGAME_TIME, VANISHGAME_TIME - RUNGAME_TIME)	-- 产生战斗Npc				
				msstr = "C玭g c竜: hi謓 gi� t鎛g t輈h l騳 c馻 2 phe T鑞g - Kim l� "..GetMissionV(MS_TOTALPOINT_S)..":"..GetMissionV(MS_TOTALPOINT_J);
				Msg2MSAll(MISSIONID, msstr)
			end

			--TB_QIANQIU_YINGLIE0904:announce(lsf_level, t);--thong bao top lien tram, top diem, top npc vv

		end
	end
end

function sf_callfightnpc(usedtime, totaltime) 
	if (usedtime > totaltime) then
		return
	end
	local mapfile = GetMapInfoFile(BT_GetGameData(GAME_MAPID))
	s_area = BT_GetGameData(GAME_CAMP1AREA);
	j_area = BT_GetGameData(GAME_CAMP2AREA);
	for i = 2, 5 do 
		if (GetMissionV(MS_NPCCOUNT1_S + i - 1) > 0) then
			prenpccount = floor((usedtime - 1) / totaltime * GetMissionV(MS_NPCCOUNT1_S + i - 1))
			npccount = floor(usedtime / totaltime * GetMissionV(MS_NPCCOUNT1_S + i - 1))
			nowadd = npccount - prenpccount;
			if (nowadd > 0) then
				print("call song npc count= "..nowadd.."rank="..i)
				npcfile = GetIniFileData(mapfile, "Area_"..s_area, tbNPCPOS[random(2)]);
				bt_addrandfightnpc(npcfile, GetMissionV(MS_TRANK1_S + i - 1), GetMissionV(MS_RANK1LVL_S + i - 1), 1, nowadd, tabFILE_NPCDEATH[i], 1)
			end
		end
	end
	
	for i = 2, 5 do 
		if (GetMissionV(MS_NPCCOUNT1_J + i - 1) > 0) then
			prenpccount = floor((usedtime - 1) / totaltime * GetMissionV(MS_NPCCOUNT1_J + i - 1))
			npccount = floor(usedtime / totaltime * GetMissionV(MS_NPCCOUNT1_J + i - 1))
			nowadd = npccount - prenpccount
			if (nowadd > 0) then
				print("call jing npc count= "..nowadd.."rank="..i)
				npcfile = GetIniFileData(mapfile, "Area_"..j_area, tbNPCPOS[random(2)]);
				bt_addrandfightnpc(npcfile, GetMissionV(MS_TRANK1_J + i - 1), GetMissionV(MS_RANK1LVL_J + i - 1), 2, nowadd, tabFILE_NPCDEATH[i], 1)
			end
		end
	end
end

function marshal_down(camp)
	local mapfile = GetMapInfoFile(BT_GetGameData(GAME_MAPID))
	s_area = BT_GetGameData(GAME_CAMP1AREA);
	j_area = BT_GetGameData(GAME_CAMP2AREA);
	if (camp == 1) then
		enterpos = GetIniFileData(mapfile, "Area_"..s_area, "generalpos");
		x,y = bt_str2xydata(enterpos)	
		npcidx_s = AddNpc(GetMissionV(MS_TRANK1_S + 6 - 1), GetMissionV(MS_RANK1LVL_S + 6 - 1), SubWorld, x*32, y*32, 1, "Nguy猲 So竔 phe T鑞g", 1)
		SetNpcCurCamp(npcidx_s, 1)
		SetNpcDeathScript(npcidx_s, tabFILE_NPCDEATH[6])
		Msg2MSAll(MISSIONID, "<color=0x00FFFF>T鑞g Kim chi課 b竜: Nguy猲 So竔 phe T鑞g  xu蕋 hi謓")
	else
		enterpos = GetIniFileData(mapfile, "Area_"..j_area, "generalpos");
		x,y = bt_str2xydata(enterpos)	
		npcidx_j = AddNpc(GetMissionV(MS_TRANK1_J + 6 - 1), GetMissionV(MS_RANK1LVL_J + 6 - 1), SubWorld, x*32, y*32, 1, "Nguy猲 So竔 phe Kim", 1)
		SetNpcCurCamp(npcidx_j, 2)
		SetNpcDeathScript(npcidx_j, tabFILE_NPCDEATH[6])
		Msg2MSAll(MISSIONID, "<color=0x9BFF9B>T鑞g Kim chi課 b竜: Nguy猲 So竔 phe Kim  xu蕋 hi謓")
	end		
end