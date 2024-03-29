IncludeLib("ITEM")
Include("\\script\\tong\\tong_award_head.lua");-- by志山，帮会周目标贡献度
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
	
	if (0 == GetCamp()) then
		Msg2Player("B筺 ch璦 gia nh藀 m玭 ph竔, kh玭g th� h竔 qu�.")
		return
	end
	if (0 == GetFightState() or GetLife(0) <= 0) then
		Msg2Player("kh玭g th� h竔 qu�.")
		return
	end

	local GREADSEED_SEEDID_TASKID = 2310;
	local GREADSEED_TIME_TASKID = 2311;
	local nTime = GetCurrentTime();
	local nNpcIdx = GetLastDiagNpc();
	local nPlayerLevel = GetLevel();
	local nGetSeedLevel;
	
	if (GetNpcParam(nNpcIdx, 4) == 1) then
		return
	end
	
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 80 and nPlayerLevel < 90) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 90) then
		nGetSeedLevel = 3;
	end
	
	if (nGetSeedLevel ~= GetNpcParam(nNpcIdx, 1)) then -- 如果级别不对,不能进行拾取
		--这里告诉玩家级别不对,不能拾取
		if (1 == GetNpcParam(nNpcIdx, 1)) then
			Msg2Player("Lo筰 qu� n祔 ngi ch琲 t� c蕄 90 tr� xu鑞g c� th� h竔!")
		elseif (2 == GetNpcParam(nNpcIdx, 1)) then
			Msg2Player("Lo筰 qu� n祔 ngi ch琲 t� c蕄 80 n c蕄 90 m韎 c� th� h竔.")
		else
			Msg2Player("Lo筰 qu� n祔 ngi ch琲 t� c蕄 90 tr� l猲 m韎 c� th� h竔!")
		end
		return
	end;
	
	if (GetNpcParam(nNpcIdx, 2) == GetTask(GREADSEED_SEEDID_TASKID)) then
		if (nTime >= GetTask(GREADSEED_TIME_TASKID) + 10) then
			-- 新果实
			if (huihuangzhiguo_advance:GetGuoZiAvd() == 0) then
				-- 旧果实
				local nTimeSv = tonumber(GetLocalDate("%H%M"));
				local w,x,y = GetWorldPos(); 
				if nTimeSv>=2020 and nTimeSv<=2300 and (w==959 or w==355)  then

					tbAwardTemplet:GiveAwardByList({tbProp = {6,1,904 + nGetSeedLevel - 2,1,0,0,0}, nExpiredTime = 7*60*24}, "Иm Huy Ho祅g", 1);--905
						Msg2Player("B筺 nh薾 頲 m閠 qu� Ho祅g Kim");
						Msg2SubWorld("Ch骳 m鮪g i hi謕 <color=green>"..GetName().."<color>  nh苩 頲 <color=yellow>qu� Ho祅g Kim<color>")
					else 
					tbAwardTemplet:GiveAwardByList({tbProp = {6,1,904 + nGetSeedLevel-1,1,0,0,0}, nExpiredTime = 7*60*24}, "Иm Huy Ho祅g", 1);--906
						Msg2Player("B筺 nh薾 頲 m閠 qu� Huy Ho祅g");
						Msg2SubWorld("Ch骳 m鮪g i hi謕 <color=green>"..GetName().."<color>  nh苩 頲 <color=yellow>qu� Huy Ho祅g<color>")				
					end

				--local _, nTongID = GetTongName()
				--Msg2Tong(nTongID,"Чi hi謕 "..GetName().."  nh苩 頲 qu� Huy Ho祅g")

			end
			SetTask(GREADSEED_TIME_TASKID, 0);
			SetTask(GREADSEED_SEEDID_TASKID, 0);
			DelNpc(nNpcIdx)
			SetNpcParam(nNpcIdx, 4, 1)
			tongaward_goldenseed();-- by志山，帮会周目标贡献度
			
			G_ACTIVITY:OnMessage("CaiJiHuiHuangZhiGuo");

		else	--时间没到10秒钟;
			Msg2Player(format("B筺  ch鋘 qu� n祔, %d gi﹜ sau m韎 c� th� h竔 qu�!",
						(10 - (nTime - GetTask(GREADSEED_TIME_TASKID)))
							))
			return
		end;
	else
		Msg2Player("B筺 ch鋘 qu� n祔, 10 gi﹜ sau qu� ch輓 c� th� h竔 頲.")
		SetTask(GREADSEED_TIME_TASKID, nTime);
		SetTask(GREADSEED_SEEDID_TASKID, GetNpcParam(nNpcIdx, 2));
	end;
end;

