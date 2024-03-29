IncludeLib("SETTING")
Include ("\\script\\lib\\player.lua")
Include ("\\script\\shitu\\shitu.lua")

Include("\\script\\task\\newtask\\map_index.lua")
Include("\\script\\lib\\common.lua")

tb_teaminfo_master = {"pid","level","name"}
tb_teamtask_master = {TKID_DICHUAN_APPRENTICE_COUNT}
sodode7ngay = 1 --so do de nhan duoc trong vong 7 ngay

function CheckAndAddMaster(masters, player)
	local degree = GetPlayerDegree(player.pid)
	if(degree == CONST_DEGREE_MASTER or degree == CONST_DEGREE_PREMASTER) then
		local num = GetApprenticeNum(player.name)
		if(not num) then
			return
		end
		if (num < ComputeMasterLoad(player.task[TKID_DICHUAN_APPRENTICE_COUNT])) then
			masters[getn(masters) + 1] = player.name
		end
	end
end

--查找可以成为师父的人
function FindMaster()
	print("Call FindMaster")
	local masters = {}
	
	local _,others = getTeamInfo(PlayerIndex,{"pid","level","name"},{TKID_DICHUAN_APPRENTICE_COUNT})
	if(not others) then
		return nil
	end
	for i=1,getn(others) do
		local degree = GetPlayerDegree(others[i].pid)
		if(degree == CONST_DEGREE_MASTER or degree == CONST_DEGREE_PREMASTER) then
			local num =GetApprenticeNum(others[i].name)
			if(not num) then
				return nil
			end
			if(num < ComputeMasterLoad(others[i].task[TKID_DICHUAN_APPRENTICE_COUNT])) then
				tinsert(masters,others[i].name)
			end
		end
	end
	
	traversalTeam(PlayerIndex, CheckAndAddMaster, masters, tb_teaminfo_master, tb_teamtask_master)
	if (getn(masters) < 1) then
		return nil
	else
		return masters
	end
end

tb_teaminfo_apprentice = {"level","name"}

function CheckAndAddApprentice(apps, player)
	if (player.level < 80) then
		local job = GetLeagueJob(player.name)
		if(not job) then
			apps[getn(apps) + 1] = player.name
		end
	end
end

--查找可以成为徒弟的人
function FindApprentice()
	print("Call FindApprentice")
	/*
	local _,others = getTeamInfo(PlayerIndex,{"level","name"})
	if(not others) then
		return nil
	end
	local apps = {}
	for i=1,getn(others) do
		if(others[i].level < 80) then
			local job = GetLeagueJob(others[i].name)
			if(not job) then
				tinsert(apps,others[i].name)
			end
		end
	end
	*/
	local apps = {}
	traversalTeam(PlayerIndex, CheckAndAddApprentice, apps, tb_teaminfo_apprentice)
	
	if (getn(apps) < 1) then
		return nil
	else
		return apps
	end
end

--得到徒弟列表界面
function ShoutuList(apps)
	local str = "Xem t譶h h譶h c馻 ngi ch琲, ch鋘 1 ngi th輈h h頿 l祄   c馻 b筺:"
	local btn = {}
	-- local apps = FindApprentice()
	if(not apps) then
		Msg2Player("Kh玭g c�   th輈h h頿.")
		return
	end
	for i=1,getn(apps) do
		tinsert(btn,"Xem tin t鴆 c馻  t� "..safeshow(apps[i]).."/#XuanTudi('"..safestr(apps[i]).."')")
	end
	tinsert(btn,"сng/Quit")
	Say(str,getn(btn),btn)
	return
end

function CallBack_ShoutuList()
	local apps = FindApprentice()
	ShoutuList(apps)
end

--得到可以做师父的人员列表
function BaishiList(masters)
	print("Call BaishiList()")
	local str = "Tra xem t譶h h譶h c馻 ngi ch琲, ch鋘 1 ngi th輈h h頿 l祄 s� ph� c馻 b筺:"
	local btn = {}
	-- local masters = FindMaster()
	if(not masters) then
		print("Master can not found.")
		return
	end
	for i=1,getn(masters) do
		tinsert(btn,"Xem tin t鴆 c馻 s� ph� "..safeshow(masters[i]).."/#XuanShifu('"..safestr(masters[i]).."')")
	end
	tinsert(btn,"сng/Quit")
	Say(str,getn(btn),btn)
	return
end

function CallBack_BaishiList()
	local masters = FindMaster()
	BaishiList(masters)
end

tb_playerinfo_tudi = {"level","sex"}
tb_playertask_tudi = {TKID_MASTER_COUNT}
tb_playertemp_tudi = {TTKID_APPRENTICE_FLAG,TTKID_RECRUIT_FLAG}

--了解能够成为徒弟的人选的信息
function XuanTudi(playerName)
	local pid = SearchPlayer(playerName)
	if(FALSE(pid)) then
		Msg2Player(playerName.."Hi謓 kh玭g bi誸 tung t輈h.")
		return
	end
	-- local app = getPlayerInfo(pid,{"level","sex"},{TKID_MASTER_COUNT},{TTKID_APPRENTICE_FLAG,TTKID_RECRUIT_FLAG})
	local app = getPlayerInfo(pid, tb_playerinfo_tudi, tb_playertask_tudi, tb_playertemp_tudi)
	local str = "Ngi ch琲: "..safeshow(playerName).." Gi韎 t輓h : "..sex2Word(app.sex).."<enter>"
	if(app.level <= 25) then
		str = str.." hi謓 ng c蕄 � c蕄 di 26"
	elseif(app.level < 50) then
		str = str.." hi謓 ng c蕄 � c蕄 di 50 "
	elseif(app.level < 65) then
		str = str.." hi謓 ng c蕄 � c蕄 di 65 "
	elseif(app.level < 75) then
		str = str.." hi謓 ng c蕄 � c蕄 di 75 "
	elseif(app.level < 80) then
		str = str.." hi謓 ng c蕄 � c蕄 di 80"
	else
		str = str.." hi謓 ng c蕄 � c蕄 80 tr� l猲, "
	end
	if(app.task[TKID_MASTER_COUNT] ==0) then
		str = str.." ch璦 b竔 qua s� ph�, "
	else
		str = str.."  b竔 s� "..tostring(app.task[TKID_MASTER_COUNT]).." s� ph�, "
	end
	if(FALSE(GetShituLeagueId(playerName))) then
		UpdatePlayerSelfLilian(pid)
	end
	if(GetPlayerLilianCount(pid)==0) then
		str = str.." trc nay ch璦 tr穒 qua nhi謒 v� th� luy謓 giang h� n祇."
	else
		str = str.."  ho祅 th祅h"..tostring(GetPlayerLilianCount(pid)).." vi謈 th� luy謓 giang h�."
	end
	if(app.tasktmp[TTKID_APPRENTICE_FLAG]==FileName2Id(GetName())) then
		str = str.."<enter> hi謓  b竔 b筺 l祄 s� ph�. H穣 s� d鬾g ch鴆 n╪g <color=yellow>Thu nh薾  t�<color> trong <color=green>S�  thi誴<color>  tr� l阨."
	end
	if(app.tasktmp[TTKID_RECRUIT_FLAG] == FileName2Id(GetName())) then
		str = str.."<enter> hi謓  nh薾  l祄  , 產ng i s� tr� l阨 c馻 "
	end
	/*
	local btn = {
		"Nh薾 "..safeshow(playerName).." l祄  /#Shoutu('"..safestr(playerName).."')",
		"Tr� l筰/CallBack_ShoutuList",
		"сng/Quit"
	}
	Say(str,getn(btn),btn)
	*/
	Say(str,
		3,
		"Nh薾 "..safeshow(playerName).." l祄  /#Shoutu('"..safestr(playerName).."')",
		"Tr� l筰/CallBack_ShoutuList",
		"сng/Quit")	
	return
end

tb_playerinfo_shifu = {"sex"}
tb_playertask_shifu = {TKID_APPRENTICE_COUNT, TKID_DICHUAN_APPRENTICE_COUNT, TKID_ZHIXI_APPRENTICE_COUNT, TKID_NORMAL_APPRENTICE_COUNT}

function XuanShifu(playerName)
	local pid = SearchPlayer(playerName)
	if(FALSE(pid)) then
		Msg2Player(playerName.."Hi謓 kh玭g bi誸 tung t輈h.")
		return
	end
	-- local master = getPlayerInfo(pid,{"sex"},{TKID_APPRENTICE_COUNT,TKID_DICHUAN_APPRENTICE_COUNT,TKID_ZHIXI_APPRENTICE_COUNT,TKID_NORMAL_APPRENTICE_COUNT})
	local master = getPlayerInfo(pid, tb_playerinfo_shifu, tb_playertask_shifu)
	local btn = {
		"B竔 "..safeshow(playerName).." l祄 s� ph� /#Baishi('"..safestr(playerName).."')",
		"Tr� l筰/CallBack_BaishiList",
		"сng/Quit"
	}
	local str = "S� ph�: "..safeshow(playerName).." Gi韎 t輓h : "..sex2Word(master.sex).."<enter>"
	st_print("XuanShifu(): "..GetName().."master: "..str);
	local lid = GetShituLeagueId(playerName)
	if(FALSE(lid) and FALSE(master.task[TKID_APPRENTICE_COUNT])) then
		str = str.." дn nay, ch璦 l祄 qua s� ph�."
		Say(str,getn(btn),btn)
		return
	end
	str = str.."дn nay,  thu nh薾 "..tostring(master.task[TKID_APPRENTICE_COUNT]).."  ,"
	str = str.." trong  hu蕁 luy謓 th祅h c玭g "..tostring(master.task[TKID_DICHUAN_APPRENTICE_COUNT]).." ch truy襫  t�, "
	str = str..tostring(master.task[TKID_ZHIXI_APPRENTICE_COUNT]).." tr鵦 h�  t�, "
	str = str..tostring(master.task[TKID_NORMAL_APPRENTICE_COUNT]).." ph� th玭g  t�."
	str = str.."Hi謓 t筰, "..playerName.." t鎛g c� th� d蒼 d総 "..ComputeMasterLoad(master.task[TKID_DICHUAN_APPRENTICE_COUNT]).."  ,"
	str = str.." H琻 n鱝, hi謓  thu nh薾 "..tostring(GetApprenticeNum(playerName)).."  ."
	Say(str,getn(btn),btn)
	return
end

function Baishi(master) --徒弟触发
	print("Call Baishi("..tostring(master)..").")
	local pid = SearchPlayer(master)
	if(FALSE(pid)) then
		Msg2Player("Xin l鏸! "..master.."Hi謓 kh玭g bi誸 tung t輈h.")
		return
	end
	SetTaskTemp(TTKID_APPRENTICE_FLAG,FileName2Id(master))
	if(GetTaskTemp(TTKID_APPRENTICE_FLAG)==GetTaskTemp(TTKID_RECRUIT_FLAG)) then
		SetTaskTemp(TTKID_APPRENTICE_FLAG,0)
		SetTaskTemp(TTKID_RECRUIT_FLAG,0)
		--检查师父的土地容量
		local load = ComputeMasterLoad(callPlayerFunction(pid,GetTask,TKID_DICHUAN_APPRENTICE_COUNT))
		local appNum = GetApprenticeNum(master)
		if(not appNum) then
			print("Kh竎 thng, master t nhi猲 ch璦 b竔 s�.")
			return
		end
		if(load <= appNum) then --人数已满，不能再拜师
			Msg2Player(master.." Hi謓  d蒼 n qu� nhi襲  t�, kh玭g li謚 n鎖 b筺 r錳.")
			sendMessage(pid,"B筺 hi謓  thu nh薾 qu� nhi襲  t�,  lo kh玭g xu� "..GetName().." ")
			return
		end
		Msg2Player(master.."  ng � thu nh薾 b筺 l祄  , i h� th鑞g x﹜ d鵱g quan h� s�  c馻 c竎 b筺.")
		sendMessage(pid,"B筺  ng � thu nh薾 "..GetName().." l祄  , i h� th鑞g x﹜ d鵱g quan h� s�  c馻 c竎 b筺.")
		SetTaskTemp(TTKID_RECRUIT_FLAG,0)
		SetTaskTemp(TTKID_APPRENTICE_FLAG,0)
		AddGlobalNews("у  "..GetName().."  b竔 "..master.." l祄 s� ph� "..master.." nh蕋 i t玭 s�")
		UpdatePlayerSelfLilian(PlayerIndex)
		BuildRelationship(GetName(),master)
		return
	end
	Msg2Player("B筺 nh b竔 "..master.." l祄 s� ph�, 產ng i tr� l阨...")
	sendMessage(pid,GetName().." nh b竔 b筺 l祄 s� ph�, xin s� d鬾g ch鴆 n╪g <color=yellow>thu nh薾  t�<color> trong <color=green>S�  thi誴<color>  tr� l阨.")
	return
end

tb_playertemp_shoutu = {TTKID_APPRENTICE_FLAG,TTKID_RECRUIT_FLAG}

function Shoutu(apprentice) --师父触发
	print("Call Shoutu("..tostring(apprentice)..").")
	local pid = SearchPlayer(apprentice)
	if(FALSE(pid)) then
		Msg2Player("Xin l鏸! "..apprentice.."Hi謓 kh玭g bi誸 tung t輈h.")
		return
	end
	
	--Edit by MC Team trong 7 ng祔 ch� c� th� nh薾 5  
	if checkTudiLimit()~=1 then
		Say("Xin l鏸! N閕 trong 7 ng祔 m鏸 ngi ch� c� th� nh薾 "..sodode7ngay.."  !", 0);
		return
	end;
	
	setPlayerTaskTemp(pid,{[TTKID_RECRUIT_FLAG]=FileName2Id(GetName())})
	-- local appinfo = getPlayerInfo(pid,nil,nil,{TTKID_APPRENTICE_FLAG,TTKID_RECRUIT_FLAG})
	local appinfo = getPlayerInfo(pid,nil,nil,tb_playertemp_shoutu)
	if(not appinfo) then
		return
	end
	if(appinfo.tasktmp[TTKID_APPRENTICE_FLAG]==appinfo.tasktmp[TTKID_RECRUIT_FLAG]) then
		callPlayerFunction(pid,SetTask,TTKID_APPRENTICE_FLAG,0)
		callPlayerFunction(pid,SetTask,TTKID_RECRUIT_FLAG,0)
		print("thu nh薾  t� ")
		local load = ComputeMasterLoad(GetTask(TKID_DICHUAN_APPRENTICE_COUNT))
		local appNum = GetApprenticeNum(GetName())
		if(not appNum) then
			print("kh竎 thng, ngi n祔 t nhi猲 kh玭g b竔 s� ")
			return
		end

		if(load <= appNum) then --人数已满，不能再拜师
			Msg2Player("B筺 hi謓  thu nh薾 qu� nhi襲  t�,  lo kh玭g xu� "..apprentice.." ")
			sendMessage(pid,GetName().."Hi謓  d蒼 n qu� nhi襲  t�, kh玭g li謚 n鎖 b筺 r錳.")
			return
		end
		
		-- 写入徒弟数据
		writeTudiLimit();
		
		Msg2Player("B筺  ng � thu nh薾 "..apprentice.." l祄  , i h� th鑞g x﹜ d鵱g quan h� s�  c馻 c竎 b筺.")
		sendMessage(pid,GetName().."  ng � thu nh薾 b筺 l祄  , i h� th鑞g x﹜ d鵱g quan h� s�  c馻 c竎 b筺.")
		callPlayerFunction(pid,SetTaskTemp,TTKID_APPRENTICE_FLAG,0)
		callPlayerFunction(pid,SetTaskTemp,TTKID_RECRUIT_FLAG,0)
		AddGlobalNews("у  "..GetName().."  b竔 s� ph� nh蕋 i t玭 s�")
		UpdatePlayerSelfLilian(pid)
		BuildRelationship(apprentice,GetName())
		return
	end
	
	-- 写入徒弟数据
	writeTudiLimit();
	
	Msg2Player("B筺 nh thu nh薾"..apprentice.." l祄  , 產ng i tr� l阨...")
	sendMessage(pid,GetName().."nh thu nh薾 b筺 l祄  . H穣 s� d鬾g ch鴆 n╪g <color=green>B竔 s�<color> trong <color=green>S�  thi誴"..GetName().."<color> tr� l阨.")
	return
end

function MasterDialog()
	local btn = {}
	local masterName = GetName()
	local num = GetApprenticeNum(masterName)
	if(not num) then 
		print("B筺  l� S� ph� r錳! C遪 b竔 s� g� n鱝 ch�!")
		return
	end
	if(FindApprentice() and 
		num < ComputeMasterLoad(GetTask(TKID_DICHUAN_APPRENTICE_COUNT))) then
		tinsert(btn,"Thu nh薾  t� /CallBack_ShoutuList")
	end
	if(GetEnableChushiApps(masterName)) then
		tinsert(btn,"у  xu蕋 s� /ChushiList")
	end
	if(GetHaveNewLilianApps(masterName)) then
		tinsert(btn,"Tra xem r蘮 luy謓 giang h� c馻  /LilianList")
	end
	if(num > 0 ) then
		tinsert(btn,"Tra tin t鴆  /TudiInfoList")
		tinsert(btn,"H駓 b� quan h�  /BreakTuList")
	end
	tinsert(btn,"Xem th玭g tin c� nh﹏/SfChaShifu")
	tinsert(btn,"T譵 hi觰 S�  thi誴/AboutShituCard")
	tinsert(btn,"сng/Quit")
	local str = "H穣 ch鋘 thao t竎 tng quan c馻 s� ph�:"
	Say(str,getn(btn),btn)
	return
end

function BreakTuList()
	local apps = GetApprentice(GetName())
	if(not apps) then
		Msg2Player("B筺 kh玭g c� b蕋 c� s�  n祇.")
		return
	end
	local btn={}
	for i=1,getn(apps) do
		tinsert(btn,"H駓 b� quan h� s�  v韎 "..safeshow(apps[i]).."./#ShiConform('"..safestr(apps[i]).."')")
	end
	tinsert(btn,"Tr� l筰/MasterDialog")
	tinsert(btn,"сng/Quit")
	local str = "B筺 mu鑞 h駓 b� quan h� s�  v韎   n祇?"
	Say(str,getn(btn),btn)
	return
end

function ShiConform(appName)
	Say("B筺 mu鑞 h駓 b� "..safeshow(appName).."quan h� s�  gi鱝  ? ",
		2,
		"X竎 nh薾/#BreakShituLeague('"..safestr(appName).."')",
		"H駓 b� /BreakTuList")
	return
end

function TuConform()
	local playerName = GetName();
	local btn = {
		"X竎 nh薾/#BreakShituLeague('"..safestr(playerName).."')",
		"H駓 b� /ApprenticeDialog"
	}
	
	local masterName = GetMaster(playerName)
	if (masterName == nil) then
		local lid = GetShituLeagueId(playerName)
		if(TRUE(lid)) then -- 师父不存在，但战队存在
			Say("S� ph� c馻 b筺  m蕋 t輈h, b筺 quy誸 nh h駓 b� quan h� s�  v韎 s� ph�?",getn(btn),btn)
		else
			print("Quan h� S�  kh玭g t錸 t筰.")
		end
	else		
		Say("B筺 mu鑞 h駓 b� "..safeshow(masterName).."quan h� s�  c馻 ??",getn(btn),btn)
	end
	return
end

function TudiInfoList()
	local apps = GetApprentice(GetName())
	if(not apps) then
		Msg2Player("B筺 kh玭g c� b蕋 c� s�  n祇.")
		return
	end
	local btn={}
	local pid = 0;
	local state = 0;
	for i=1,getn(apps) do
		pid = SearchPlayer(apps[i])
		if (pid > 0) then
			state = callPlayerFunction(pid,GetTask,TKID_GOLD_APPRENTICE);
			if (state == 1 or state == 2) then
				tinsert(btn,"Xem tin t鴆 "..safeshow(apps[i]).." Tin t鴆 tng quan c馻 (е t� Ho祅g Kim) /#TudiInfo('"..safestr(apps[i]).."')")
			else
				tinsert(btn,"Xem tin t鴆 "..safeshow(apps[i]).."./#TudiInfo('"..safestr(apps[i]).."')")
			end
		end
	end
	tinsert(btn,"Tr� l筰/MasterDialog")
	tinsert(btn,"сng/Quit")
	local str = "B筺 mu鑞 xem tin t鴆 c馻   n祇?"
	Say(str,getn(btn),btn)
	return
end

--查看徒弟历练时的徒弟列表
function LilianList()
	local apps = GetHaveNewLilianApps(GetName())
	if(not apps) then
		Msg2Player("Cho n nay, ch璦 c� s�  n祇 tr穒 qua r蘮 luy謓 giang h� m韎.")
		return
	end
	local btn={}
	for i=1,getn(apps) do
		tinsert(btn,"е t� "..safeshow(apps[i][1]).."  ho祅 th祅h m韎! "..apps[i][2].." nhi謒 v� r蘮 luy謓!/#ChaLilian('"..safestr(apps[i][1]).."')")
	end
	tinsert(btn,"Tr� l筰/MasterDialog")
	tinsert(btn,"сng/Quit")
	local str = "B筺 mu鑞 xem r蘮 luy謓 giang h� c馻   n祇?"
	Say(str,getn(btn),btn)
	return
end

tb_playerinfo_lilian = {TTKID_SELF_LILIAN_FLAG,TTKID_MASTER_LILIAN_FLAG}

function ChaLilian(appName) --师父触发
	local appIdx = SearchPlayer(appName)
	if(FALSE(appIdx)) then
		Msg2Player(appName.."Kh玭g bi誸 tung t輈h.")
		return
	end
	setPlayerTaskTemp(appIdx,{[TTKID_MASTER_LILIAN_FLAG]=1})
	-- local appinfo = getPlayerInfo(appIdx,nil,nil,{TTKID_SELF_LILIAN_FLAG,TTKID_MASTER_LILIAN_FLAG})
	local appinfo = getPlayerInfo(appIdx, nil, nil, tb_playerinfo_lilian)
	if(not appinfo) then
		return
	end
	if(appinfo.tasktmp[TTKID_SELF_LILIAN_FLAG]==appinfo.tasktmp[TTKID_MASTER_LILIAN_FLAG] and appinfo.tasktmp[TTKID_SELF_LILIAN_FLAG]~=0) then
		Msg2Player("B筺 tr� l阨 b総 u tra xem "..appName.."r蘮 luy謓 giang h� c馻")
		sendMessage(appIdx,GetName().."tr� l阨 b総 u tra xem r蘮 luy謓 giang h� c馻 b筺.")
		setPlayerTaskTemp(appIdx,{[TTKID_SELF_LILIAN_FLAG]=0,[TTKID_MASTER_LILIAN_FLAG]=0})
		UpdatePlayerLilian(appIdx)
		PayLilianBonus(appIdx,PlayerIndex)
		return
	end
	Msg2Player("B筺 mu鑞 tra xem "..appName.." r蘮 luy謓 giang h� c馻  , 產ng i ph鬰 m謓h")
	sendMessage(appIdx,GetName().."C莕 tra xem r蘮 luy謓 giang h� c馻, xin s� d鬾g ch鴆 n╪g <color=green>Ph鬰 m謓h s� ph�<color> trong <color=yellow>S�  thi誴<color>  tr� l阨.")
	return
end

function FuLilian(masterName) --徒弟调用
	local masterIdx = SearchPlayer(masterName)
	if(FALSE(masterIdx)) then
		Msg2Player(masterName.."Kh玭g bi誸 tung t輈h.")
		return
	end
	SetTaskTemp(TTKID_SELF_LILIAN_FLAG,1)
	if(GetTaskTemp(TTKID_SELF_LILIAN_FLAG)==GetTaskTemp(TTKID_MASTER_LILIAN_FLAG) and GetTaskTemp(TTKID_SELF_LILIAN_FLAG)~=0) then
		Msg2Player("B筺 c莕 ph鬰 m謓h v韎 "..masterName..",  b筺 ch琲 xem r蘮 luy謓 giang h� c馻 b筺")
		sendMessage(masterIdx,GetName().."c莕 ph鬰 m謓h v韎 b筺, b筺 b総 u tra xem r蘮 luy謓 giang h� c馻 b筺 ch琲!")
		setPlayerTaskTemp(PlayerIndex,{[TTKID_SELF_LILIAN_FLAG]=0,[TTKID_MASTER_LILIAN_FLAG]=0})
		UpdatePlayerLilian(PlayerIndex)
		PayLilianBonus(PlayerIndex,masterIdx)
		return
	end
	Msg2Player("B筺 c莕 ph鬰 m謓h v韎"..masterName..", 產ng i b筺 ch琲 tra xem r蘮 luy謓 giang h� c馻 b筺.")
	sendMessage(masterIdx,GetName().."c莕 ph鬰 m謓h v韎 b筺. H穣 s� d鬾g ch鴆 n╪g <color=green>Tra xem r蘮 luy謓 giang h� c馻  <color> trong <color=yellow >S�  thi誴<color> tr� l阨.")
	return
end

function SendBaiShiBidding()
	local mapid, x, y = GetWorldPos();
	local myMapName, myMapX, myMapY = tl_getMapInfo(mapid);
	local str = "ngi ch琲 m韎 ["..GetName().."] t� ch蕋 h琻 ngi! Xu蕋 s� nh� ng l祄 h� danh s� ph� nh�!"
	if (myMapName ~= 0) then
		x = floor(x / 8);
		y = floor(y / 16);
		AddLocalNews(str.."ngi c� � h穣 n ["..myMapName.."]("..x..", "..y..")");
	else
		AddLocalNews(str.."ngi quan t﹎, xin li猲 h� v韎 ");
	end
	
	-- 标记：2 - 发过拜师公告
	SetTask(TKID_GOLD_APPRENTICE, 2);
end

function ApprenticeDialog()
	print("Call ApprenticeDialog")
	local btn = {}
	
	local lvl = GetLevel()
	if (lvl < 80 and GetTask(TKID_GOLD_APPRENTICE) == 1) then
		tinsert(btn,"Ph竧 th玭g b竜 b竔 s� tr猲 t莕 s� th� gi韎/SendBaiShiBidding")
	end
	
	if(lvl < 80) then
		tinsert(btn,"Nh薾 頲 n╪g l鵦 s� ph� cho b筺/GetAbility")
	else
		local master = GetMaster(GetName())
		if(TRUE(SearchPlayer(master))) then
			tinsert(btn,"Xu蕋 s� /TudiChushi")
		end
	end
	if(TRUE(HaveNewLilian(PlayerIndex))) then
		tinsert(btn,"Ph鬰 m謓h v韎 s� ph� /Fuming")
	end
	tinsert(btn,"Xem t譶h h譶h h鋍 ngh� /ChaSelfInfo")
	tinsert(btn,"T譵 hi觰 tin t鴆 s� ph� /TdChaShifu")
	tinsert(btn,"H駓 b� quan h�  /TuConform")
	tinsert(btn,"T譵 hi觰 S�  thi誴/AboutShituCard")
	-- VN_MODIFY_20060427
	-- 关闭黄金师徒卡(说明)
	-- tinsert(btn,"了解黄金师徒卡(特性说明)/AboutShituGoldCard")
	tinsert(btn,"сng/Quit")
	local str = "H穣 l鵤 ch鋘 thao t竎 li猲 quan c馻  :"
	Say(str,getn(btn),btn)
	return	
end

function ChushiList()
	local apps = GetEnableChushiApps(GetName())
	if(not apps) then
		Msg2Player("Hi謓 kh玭g c�  t� th輈h h頿 c� th� xu蕋 s�.")
		return
	end
	local btn={}
	for i=1,getn(apps) do
		tinsert(btn,safeshow(apps[i][1]).."["..apps[i][2].."c蕄] Hi謓  c� th� xu蕋 s� /#ShiChushi('"..safestr(apps[i][1]).."')")
	end
	tinsert(btn,"Tr� l筰/MasterDialog")
	tinsert(btn,"сng/Quit")
	local str = "B筺 mu鑞   n祇 xu蕋 s�?"
	Say(str,getn(btn),btn)
	return
end

function ShiChushi(appName)
	local appIdx = SearchPlayer(appName)
	if(FALSE(appIdx)) then
		Msg2Player(appName.."Kh玭g bi誸 tung t輈h, xem ra t筸 th阨 kh玭g th�    xu蕋 s�.")
		return
	end
	local app = getPlayerInfo(appIdx,{"level"})
	if(app.level <80) then
		Msg2Player(appName.."n╪g l鵦 c馻  ch璦  tr譶h  xu蕋 s�. Hay l� i 2 n╩ sau nh�!")
		return
	end
	setPlayerTaskTemp(appIdx,{[TTKID_MASTER_CHUSHI]=1})
	app = getPlayerInfo(appIdx,nil,nil,{TTKID_APPRENTICE_CHUSHI,TTKID_MASTER_CHUSHI})
	if(app.tasktmp[TTKID_MASTER_CHUSHI]== app.tasktmp[TTKID_APPRENTICE_CHUSHI] and app.tasktmp[TTKID_APPRENTICE_CHUSHI]~=0) then
		Msg2Player(appName.." vt tr閕 h琻 th莥, b筺 v� c飊g vui m鮪g, quy誸 nh cho "..appName.." xu蕋 s�.")
		sendMessage(appIdx,GetName().."  ng �  b筺 xu蕋 s�, cu鑙 c飊g b筺 c騨g c� th� l祄 n猲 chuy謓 l蓎 l鮪g!")
		AddGlobalNews("у "..GetName().."  頲 s� ph� b錳 dng nhi襲 n╩ cu鑙 c飊g h鋍  th祅h, d� nh ra ngo礽 t� l藀!")
		OutShituLeague(appName,GetName())
		return
	end
	Msg2Player("B筺 c秏 th蕐"..appName.."Th玭g minh lanh l頸, ch韕 m総  kh玭g c遪 g� d箉  t� n鱝, quy誸 nh   t� xu蕋 s�,"..appName.."trong l骳 suy ngh�...")
	sendMessage(appIdx,GetName().."c秏 th蕐 b筺  璾 t� h琻 th莥 ch韕 m総  kh玭g c遪 g� d箉 b筺 n鱝, quy誸 nh  b筺 xu蕋 s�, 產ng i quy誸 nh c馻 b筺...")
	return
end

function TudiChushi() --徒弟激活
	local masterName = GetMaster(GetName())
	if(not masterName) then --师父不在
		Msg2Player("B筺 kh玭g c� s� ph�, xu蕋 s� g� ch�?")
		return
	end
	local masterIdx = SearchPlayer(masterName)
	if(FALSE(masterIdx)) then
		Msg2Player("S� ph�  甶 m蕋, kh玭g th� xu蕋 s�.")
		return
	end
	if(GetLevel() <80) then
		Msg2Player("N╪g l鵦 c馻 b筺 ch璦   xu蕋 s�! H穣 ti誴 t鬰 kh� luy謓 th猰 2 n╩.")
		return
	end
	SetTaskTemp(TTKID_APPRENTICE_CHUSHI,1)
	if(GetTaskTemp(TTKID_APPRENTICE_CHUSHI)==GetTaskTemp(TTKID_MASTER_CHUSHI) and GetTaskTemp(TTKID_MASTER_CHUSHI)~=0) then
		Msg2Player("頲 s� ph� b錳 dng nhi襲 n╩, cu鑙 c飊g b筺 h鋍  th祅h, d� nh ra ngo礽 t� l藀!")
		sendMessage(masterIdx,GetName().."頲 s� ph� b錳 dng nhi襲 n╩, cu鑙 c飊g h鋍  th祅h, d� nh ra ngo礽 t� l藀!")
		AddGlobalNews("у "..GetName().."  頲 s� ph� b錳 dng nhi襲 n╩ cu鑙 c飊g h鋍  th祅h, d� nh ra ngo礽 t� l藀!")
		OutShituLeague(GetName(),masterName)
		return
	end
	Msg2Player("B筺 c秏 th蕐 h鋍 ngh�  th祅h xin "..masterName.." xu蕋 s�, 產ng i s� ph� tr� l阨...")
	sendMessage(masterIdx,GetName().." c秏 th蕐 h鋍 ngh�  th祅h, xin b筺 xu蕋 s�. H穣 s� d鬾g ch鴆 n╪g <color=green>у  xu蕋 s�<color> trong <color=yellow>S�  thi誴<color> tr� l阨.")
	return	
end

function Fuming()
	local masterName = GetMaster(GetName())
	FuLilian(masterName)
	return
end

function GetAbility()
	if(GetLevel()>80) then
		Msg2Player("B秐 l躰h c馻 b筺  h鋍 頲 kha kh�, kh玭g c莕 d鵤 d蒻 v祇 s� ph� n鱝!")
		return
	end
	AddSkillState(531,10,1,30*60*18)
	AddSkillState(461,1, 1,30*60*18)
	Msg2Player("B筺  s� d鬾g n╪g l鵦 t╪g i 甶觤 kinh nghi謒 m� s� ph� cho b筺!")
	return
end

function TudiInfo(appName)  --师父查徒弟信息
	local pid = SearchPlayer(appName)
	if(FALSE(pid)) then
		Msg2Player(appName.."Kh玭g bi誸 tung t輈h, kh玭g th� nh薾 頲 tin t鴆 c馻")
		return
	end
	local sex = callPlayerFunction(pid,GetSex)
	local str
	if(FALSE(sex)) then --男
		str = "<link=image[0,0]:\\spr\\Ui3\\玩家肖像\\肖像\\001.spr>"
	else
		str = "<link=image[0,0]:\\spr\\Ui3\\玩家肖像\\肖像\\003.spr>"
	end
	str = str..appName.."<link>:"..sex2Word(sex).."<enter>"
	local joinLvl = callPlayerFunction(pid,GetTask,TKID_ENTER_LEVEL)
	str = str.."Khi b筺 � "..tostring(joinLvl).."c蕄...c馻..., thu nh薾 b筺 ch琲 l祄  , "
	local masterCount = callPlayerFunction(pid,GetTask,TKID_MASTER_COUNT)
	if(masterCount<=1) then
		str = str.."B筺  l� ngi th莥 u ti猲 c馻 b筺 ch琲, "
		if(joinLvl<=25) then
			str = str.."B筺 ch琲 l�  t� <color=yellow>лch truy襫<color> c馻 b筺."
		else
			str = str.."B筺 ch琲 l�  t� <color=green>tr鵦 h�<color>c馻 b筺."
		end
	else
		str = str.."L骳 trc, b筺 ch琲  b竔 "..tostring(masterCount-1).." l祄 s� ph�, "
	end
	local appLvl = callPlayerFunction(pid,GetLevel)
	if(appLvl<80) then
		str = str.."Hi謓 t筰 ng c蕄 c馻 b筺 ch琲 t"..tostring(appLvl).."c蕄.<enter>"
	else
		str = str.."Hi謓 t筰 b筺 ch琲 t"..tostring(appLvl).."c蕄. B筺 c� th� b秓  t� t� m譶h phi猽 b箃 giang h�.<enter>"
	end
	local lilianCount = GetPlayerLilianCount(pid)
	local newllc = HaveNewLilian(pid)
	if(lilianCount<1) then
		if(TRUE(newllc)) then
			str = str..appName.." ho祅 th祅h nh� sau<color=yellow>"..newllc.."<color> Nhi謒 v� th� luy謓 giang h�, 產ng i b筺 ki觤 tra:<enter>"
			local newll = GetNewLLInfo(GetPlayerNewLilian(pid))
			for i=1,getn(newll) do
				str = str.."  "..newll[i].."<enter>"
			end
		else
			str = str.."n nay, "..appName.."c遪 1 vi謈 ch璦 th祅h."
		end
	else
		local masterllCount = GetPlayerMasterLilianCount(pid)
		if(FALSE(masterllCount)) then --还没复命任何历练
			if(TRUE(newllc)) then
				str = str.."Hi謓 t筰"..appName.." ho祅 th祅h nh� sau<color=yellow>"..newllc.."<color> Nhi謒 v� th� luy謓 giang h�, 產ng i b筺 ki觤 tra:<enter>"
				local newll = GetNewLLInfo(GetPlayerNewLilian(pid))
				for i=1,getn(newll) do
					str = str.."  "..newll[i].."<enter>"
				end
			end
			str = str.."Trc kia, "..appName.." ho祅 th祅h."..lilianCount.."nhi謒 v� th� luy謓 giang h�, "
			str = str.."nh璶g � t猲 tu鎖 c馻 b筺, ch璦 ho祅 th祅h nhi謒 v� th� luy謓 giang h� n祇.<enter>"
		else
			if(TRUE(newllc)) then
				str = str..appName.." ho祅 th祅h nh� sau<color=yellow>"..newllc.."<color> Nhi謒 v� th� luy謓 giang h�, 產ng i b筺 ki觤 tra:<enter>"
				local newll = GetNewLLInfo(GetPlayerNewLilian(pid))
				for i=1,getn(newll) do
					str = str.."  "..newll[i].."<enter>"
				end
			end
			str = str.."Trc kia, "..appName.."c遪 ho祅 th祅h"..lilianCount.."nhi謒 v� th� luy謓 giang h�, "
			str = str.."Trong s� nhi謒 v� ho祅 th祅h m� b筺 c� nh�<color=green>"..masterllCount.."<color> nhi謒 v� th� luy謓 giang h�:<enter>"
			local masterLilian = GetLLFinishedInfo(GetPlayerMasterLilian(pid))
			for i=1,getn(masterLilian) do
				str = str.."  "..masterLilian[i].."<enter>"
			end
		end
	end
	local unfinishedLilian = GetLLUnfinishedInfo(GetPlayerLilian(pid))
	if(unfinishedLilian) then
		str = str.."b筺 ch琲 hi謓 c遪<color=red>"..getn(unfinishedLilian).."<color>vi謈 ch璦 ph鬰 m謓h v韎 b筺, ph﹏ bi謙 l�:<enter>"
		for i=1,getn(unfinishedLilian) do
			str = str.."  "..unfinishedLilian[i].."<enter>"
		end
	else
		str = str.."е t�  ho祅 th祅h t蕋 c� nhi謒 v� th� luy謓 giang h�!"
	end
	local btn = {
		"Tr� l筰/TudiInfoList",
		"сng/Quit"
	}
	if(TRUE(newllc)) then
		tinsert(btn,1,"Tra xem"..appName..", е t�  ho祅 th祅h"..newllc.."nhi謒 v� /#ChaLilian('"..safestr(appName).."')")
	end
	Describe(str,getn(btn),btn)
	return
end

function ChaSelfInfo() --徒弟查自己的信息
	local str
	if(FALSE(GetSex())) then --男
		str = "<link=image[0,0]:\\spr\\Ui3\\玩家肖像\\肖像\\001.spr>"
	else
		str = "<link=image[0,0]:\\spr\\Ui3\\玩家肖像\\肖像\\003.spr>"
	end
	str = str..GetName().."<link>:"..sex2Word(GetSex()).."<enter>"
	
	local master = GetMaster(GetName())
	master = master or ""
	str = str.."Khi b筺 t "..tostring(GetTask(TKID_ENTER_LEVEL)).."c蕄, b竔 nh藀 lng s� "..master.."s� m玭 c馻, "
	local masterCount = GetTask(TKID_MASTER_COUNT)
	if(masterCount<=1) then
		str = str.."B筺 ch琲 l� ngi th莥 u ti猲 c馻 b筺."
	else
		str = str.."Trc kia, b筺  b竔 "..tostring(masterCount-1).." l祄 s� ph� "
	end
	local myLvl = GetLevel()
	if(myLvl<80) then
		str = str.."Hi謓 t筰 ng c蕄 c馻 b筺 頲 n﹏g n"..tostring(myLvl).."c蕄.<enter>"
	else
		str = str.."Hi謓 t筰 b筺 t"..tostring(myLvl)..". Чt y猽 c莡 xu蕋 s�.<enter>"
	end
	local lilianCount = GetLilianCount()
	local newllc = HaveNewLilian(PlayerIndex)
	if(lilianCount<1) then
		if(TRUE(newllc)) then
			str = str.."b筺  ho祅 th祅h <color=yellow>"..newllc.."<color> nhi謒 v� th� luy謓 giang h�, 產ng ch阷h鬰 m謓h v韎 s� ph�:<enter>"
			local newll = GetNewLLInfo(GetPlayerNewLilian(PlayerIndex))
			for i=1,getn(newll) do
				str = str.."  "..newll[i].."<enter>"
			end
		else
			str = str.."n nay, b筺 c遪 1 vi謈 ch璦 th祅h."
		end
	else
		local masterllCount = GetMasterLilianCount()
		if(FALSE(masterllCount)) then --未在我名下完成了任务  
			if(TRUE(newllc)) then
				str = str.."Hi謓 b筺  ho祅 th祅h <color=yellow>"..newllc.."<color> nhi謒 v� th� luy謓 giang h�, 產ng ch阷h鬰 m謓h v韎 s� ph�:<enter>"
				local newll = GetNewLLInfo(GetPlayerNewLilian(PlayerIndex))
				for i=1,getn(newll) do
					str = str.."  "..newll[i].."<enter>"
				end
			end
			str = str.."Trc kia, b筺  ho祅 th祅h."..lilianCount.."nhi謒 v� th� luy謓 giang h�, "
			str = str.."nh璶g di t猲 tu鎖 c馻 s� ph�, b筺 ch璦 ho祅 th祅h nhi謒 v� th� luy謓 giang h� n祇.<enter>"
		else
			if(TRUE(newllc)) then
				str = str.."b筺  ho祅 th祅h <color=yellow>"..newllc.."<color> nhi謒 v� th� luy謓 giang h�, 產ng ch阷h鬰 m謓h v韎 s� ph�:<enter>"
				local newll = GetNewLLInfo(GetPlayerNewLilian(PlayerIndex))
				for i=1,getn(newll) do
					str = str.."  "..newll[i].."<enter>"
				end
			end
			str = str.."Trc kia, b筺  ho祅 th祅h."..lilianCount.."nhi謒 v� th� luy謓 giang h�, "
			str = str.."trong s� nhi謒 v� ho祅 th祅h nh� sau<color=green>"..masterllCount.."<color> nhi謒 v� th� luy謓 giang h�:<enter>"
			local masterLilian = GetLLFinishedInfo(GetPlayerMasterLilian(PlayerIndex))
			for i=1,getn(masterLilian) do
				str = str.."  "..masterLilian[i].."<enter>"
			end
		end
	end
	local unfinishedLilian = GetLLUnfinishedInfo(GetPlayerLilian(PlayerIndex))
	if(unfinishedLilian) then
		str = str.."B筺 c遪<color=red> "..getn(unfinishedLilian).." <color>vi謈 ch璦 ph鬰 m謓h, ph﹏ bi謙 l�:<enter>"
		for i=1,getn(unfinishedLilian) do
			str = str.."  "..unfinishedLilian[i].."<enter>"
		end
	else
		str = str.."B筺  ho祅 th祅h t蕋 c� nhi謒 v� th� luy謓 giang h�!"
	end
	local btn = {
		"Tr� l筰/ApprenticeDialog",
		"сng/Quit"
	}
	if(TRUE(newllc)) then
		tinsert(btn,1,"C� "..newllc.." vi謈 th� luy謓 c� th� ph鬰 m謓h v韎 s� ph� /Fuming")
	end
	Describe(str,getn(btn),btn)
	return
end

function SfChaShifu()
	local btn = {
		"Tr� l筰/MasterDialog",
		"сng/Quit"
	}
	local str = "S� ph� : "..safeshow(GetName()).." Gi韎 t輓h : "..sex2Word(GetSex()).."<enter>"
	local lid = GetShituLeagueId(GetName())
	if(FALSE(lid) and FALSE(GetTask(TKID_APPRENTICE_COUNT))) then
		str = str.." дn nay, ch璦 l祄 qua s� ph�."
		Say(str,getn(btn),btn)
		return
	end
	str = str.."дn nay,  thu nh薾 "..GetTask(TKID_APPRENTICE_COUNT).."  ,"
	str = str.." trong  hu蕁 luy謓 th祅h c玭g "..GetTask(TKID_DICHUAN_APPRENTICE_COUNT).." ch truy襫  t�, "
	str = str..GetTask(TKID_ZHIXI_APPRENTICE_COUNT).." tr鵦 h�  t�, "
	str = str..GetTask(TKID_NORMAL_APPRENTICE_COUNT).." ph� th玭g  t�."
	str = str.."Hi謓 t筰, b筺 c� th� d蒼 d総 "..ComputeMasterLoad(GetTask(TKID_DICHUAN_APPRENTICE_COUNT)).."  ,"
	str = str.." H琻 n鱝, hi謓  thu nh薾 "..tostring(GetApprenticeNum(GetName())).."  ."
	Say(str,getn(btn),btn)
	return
end

function TdChaShifu()
	local masterName = GetMaster(GetName())
	if(not masterName) then
		Msg2Player("Hi謓 b筺 ch璦 c� s� ph�.")
		return
	end
	local btn = {
		"Tr� l筰/ApprenticeDialog",
		"сng/Quit"
	}
	local masterIdx = SearchPlayer(masterName)
	if(FALSE(masterIdx)) then
		Say("S� ph� c馻 b筺"..safeshow(masterName).." hi謓  m蕋 t輈h, b筺 kh玭g th� t譵 hi觰 t譶h h譶h c馻 s� ph�.",getn(btn),btn)
		return
	end
	local master = getPlayerInfo(masterIdx,{"sex"},{TKID_APPRENTICE_COUNT,
		TKID_DICHUAN_APPRENTICE_COUNT,TKID_ZHIXI_APPRENTICE_COUNT,TKID_NORMAL_APPRENTICE_COUNT})
	local str = "S� ph�: "..safeshow(masterName).." Gi韎 t輓h : "..sex2Word(master.sex).."<enter>"
	str = str.."дn nay,  thu nh薾 "..master.task[TKID_APPRENTICE_COUNT].."  ,"
	str = str.." trong  hu蕁 luy謓 th祅h c玭g "..master.task[TKID_DICHUAN_APPRENTICE_COUNT].." ch truy襫  t�, "
	str = str..master.task[TKID_ZHIXI_APPRENTICE_COUNT].." tr鵦 h�  t�, "
	str = str..master.task[TKID_NORMAL_APPRENTICE_COUNT].." ph� th玭g  t�."
	str = str.." Hi謓 t筰, "..safeshow(masterName).." t鎛g c� th� d蒼 d総 "..ComputeMasterLoad(master.task[TKID_DICHUAN_APPRENTICE_COUNT]).."  ,"
	str = str.." H琻 n鱝, hi謓  thu nh薾 "..tostring(GetApprenticeNum(masterName)).."  ."
	Say(str,getn(btn),btn)
	return
end

--得到有新历练的徒弟列表
function GetHaveNewLilianApps(playerName)
	local apps = GetApprentice(playerName)
	if(not apps) then return nil end
	local tab = {}
	for i=1 ,getn(apps) do
		local pid = SearchPlayer(apps[i])
		if(TRUE(pid)) then
			local num = HaveNewLilian(pid)
			if(TRUE(num)) then
				tab[getn(tab) + 1] = {apps[i],num}
			end
		end
	end
	if(getn(tab)<1) then
		return nil
	end
	return tab
end

--得到可以出师的徒弟的列表
function GetEnableChushiApps(playerName)
	local apps = GetApprentice(playerName)
	if(not apps) then return nil end
	local tab = {}
	for i=1 ,getn(apps) do
		local pid = SearchPlayer(apps[i])
		if(TRUE(pid)) then
			local lvl = callPlayerFunction(pid,GetLevel)
			if(lvl>=80) then
				tinsert(tab,{apps[i],lvl})
			end
		end
	end
	if(getn(tab)<1) then
		return nil
	end
	return tab
end

function DefaultDialog()
	local btn = {}
	local szOp = {
		"T譵 hi觰 S�  thi誴/AboutShituCard",
		"T譵 hi觰 S�  thi誴 ho祅g kim (thuy誸 minh c t輓h) /AboutShituGoldCard",
		"сng/Quit"
	};
	
	local lvl = GetLevel()
	if (lvl < 80 and GetTask(TKID_GOLD_APPRENTICE) == 1) then
		tinsert(btn,"Ph竧 th玭g b竜 b竔 s� tr猲 t莕 s� th� gi韎/SendBaiShiBidding")
	end
	
	tinsert(btn, szOp[1])
	-- VN_MODIFY_20060427
	-- 关闭黄金师徒卡(说明)
	--tinsert(btn, szOp[2])
	tinsert(btn, szOp[3])
	
	local str = "S�  thi誴 d飊g  g緉 k誸 quan h� s� , h琻 n鱝 c� th� s� d鬾g ch鴆 n╪g s�  tng quan. N誹 b筺 ch璦 c� quan h� s� , h穣 l藀 i nh鉳 v韎 ngi ch琲 kh竎 r錳 m韎 s� d鬾g S�  thi誴!"
	Say(str,getn(btn),btn)
	return
end

Quit = function() end

function AboutShituCard()
	local str =
		"Trong th� gi韎 ki誱 hi謕, ngi ch琲 t� c蕄 80 tr� xu鑞g (kh玭g g錷 c蕄 80) , s� d鬾g <color=green>S�  thi誴<color> c� th� b竔 ngi ch琲 c蕄 80 tr� l猲 (g錷 c� c蕄 80) l祄 s� ph�.<enter>"..
		"M閠 khi s� d鬾g quan h� s�  gi鱝 ngi ch琲, s� ph� c莕 c� ch鴆 tr竎h nh蕋 nh, ch� o ho芻 gi髉   t� ho祅 th祅h h� th鑞g nhi謒 v� <color=yellow>th� luy謓 giang h�<color>, v� cho   sau khi d箃 頲 c蕄 80 xu蕋 s�, s� ph�  頲 xem nh� d蒼 d総 1   th祅h c玭g.<enter>"..
		"Trong th� gi韎 ki誱 hi謕, 1   ng th阨 ch� c� 1 s� ph� v� 1 s� ph� c� th� ng th阨 thu nh薾 nhi襲  . N誹 ngi ch琲 t� c蕄 25 tr� xu鑞g (bao g錷 c蕄 25) v� ch璦 bao gi� b竔 s�, sau khi b竔 nh藀 th祅h c玭g 1 s� ph�, ngi ch琲  ch輓h l� <color=yellow>лchtruy襫  t�<color> c馻 s� ph�;N誹 ngi ch琲 t� c蕄 25 tr� l猲 (kh玭g bao g錷 c蕄 25) b竔 nh藀 1 s� ph�, ngi ch琲 l� <color=yellow> t� tr鵦 h�<color> c馻 s� ph�;N誹 ngi ch琲 trc kia  b竔 s� nh璶g  ch蕀 d鴗 quan h� s�  v韎 ti襫 s�, b竔 nh薾 1 s� ph�, ngi ch琲 s� l� <color=yellow>ph� th玭g  t�<color> c馻 s� ph�.<enter>"..
		"<enter>襲 ki謓 tr� th祅h  :<enter>"..
		"1, Ngi ch琲 t� c蕄 80 tr� xu鑞g (kh玭g g錷 c蕄 80)<enter>"..
		"2, Kh玭g l�   c馻 m閠 s� ph� n祇 <enter>"..
		"<enter>襲 ki謓 tr� th祅h s� ph�:<enter>"..
		"1, Ngi ch琲 t� c蕄 80 tr� l猲 (bao g錷 c蕄 80)<enter>"..
		"2, Kh玭g l�   c馻 m閠 s� ph� n祇 <enter>"..
		"<enter>C竎h nh薾 頲 S�  thi誴:<enter>"..
		"1, nh﹏ v藅 頲 t筼 m韎: c� s絥 S�  thi誴 trong h祅h trang<enter>"..
		"2, Nh﹏ v藅  t筼: mua S�  thi誴 � c竎 ti謒 t筽 h鉧, gi� b竛 l� 100 lng<enter>"
	Describe(str,2,"Tr� l筰/main","сng/Quit")
	return
end

function AboutShituGoldCard()
	local str =
		"<color=yellow>S�  thi誴 Ho祅g Kim<color>ngo礽 ch鴆 n╪g l� S�  thi誴 b譶h thng ra, n� c遪 mang nh鱪g c t輓h di y:<enter>"..
		" 1. C� th� ph竧 th玭g b竜 1 l莕 l猲 t莕 s� th� gi韎, t譵 th莥 xin b竔 s�<enter>"..
		" 2. Khi ph鬰 m謓h v韎 s� ph�   s� nh薾 頲 50%, s� ph� 20% ph莕 thng 甶觤 kinh nghi謒<enter>"..
		" 3. Ph莕 thng b蕋 ng� S�  thi誴 Ho祅g Kim ch� c� hi謚 l鵦 khi   s� d鬾g<enter>"..
		" 4. S�  thi誴 Ho祅g Kim kh玭g th�  r琲 xu鑞g t, kh玭g th� giao d辌h v韎 ngi ch琲 kh竎<enter>"..
		"<enter>C竎h nh薾 S�  thi誴 Ho祅g Kim:<enter>"..
		" 1. S� d鬾g cd-key k輈h ho箃 v祇 s� t礽 kho秐 gia nh藀 <color=green>h� th鑞g Qu秐g c竜<color>, l� c� th� nh薾 頲 1 t蕀 <color=yellow>S�  thi誴 Ho祅g Kim<color><enter>"..
		" 2. S� d鬾g m閠 t礽 kho秐 ch� c� 1 nh﹏ v藅 c� th� nh薾 頲 <color=yellow>S�  thi誴 Ho祅g Kim<color>"
		
	Describe(str,2,"Tr� l筰/main","сng/Quit")
	return
end


-- Check 7 ngay chi co the nhan duoc 5 do de
function checkTudiLimit()
	
	-- Check 7 ngay chi co the nhan duoc 5 do de
	local nNowTime = GetCurServerTime();
	local nOldTime = GetTask(ID_SHITU_LIMIT_DATE);  -- 第一次收徒弟的记录
	local nNowCount = GetTask(ID_SHITU_LIMIT_NUM);
	
		if nNowTime - nOldTime<CONST_SHITU_LIMIT_TIME then
			--Edit by MC Team so do de trong 7 ngay co the nhan duoc so do de khai bao tren
			if nNowCount >= sodode7ngay then
				return 0;
			else
				return 1;
			end;
		else
			SetTask(ID_SHITU_LIMIT_NUM, 0);
			return 1;
		end;
end;


-- 写入收徒弟的限制
function writeTudiLimit()
	
	-- 在此加入收徒弟的限制记录
	SetTask(ID_SHITU_LIMIT_NUM, GetTask(ID_SHITU_LIMIT_NUM) + 1);	
	
	-- 如果是第一次收徒弟则记录日期
	if GetTask(ID_SHITU_LIMIT_NUM)==1 then
		SetTask(ID_SHITU_LIMIT_DATE, GetCurServerTime());
	end;
	
end;

Include("\\script\\global\\g7vn\\g7configall.lua")

function main()

	--dofile("script/item/card/card_shitu.lua")
	--dofile("script/global/g7vn/g7configall.lua")
	if sudothiep == 0 then
		Say("Ch鴆 n╪g S�  thi誴 t筸 th阨 ch璦 m�")
		return 1
	end

	if (ST_IsTransLife() == 1 and GetLevel() < 80) then
		Say("L躰h h閕 B綾 u Trng Sinh Thu藅 - T﹎ Ph竝 Thi猲 xong, � c蕄 80 v� trc kh玭g th� s� d鬾g S� у Thi誴.", 0);
		return 1
	end;
	local degree = GetPlayerDegree(PlayerIndex)
	
	if(degree == CONST_DEGREE_PREAPPRENTICE) then
		local masters = FindMaster()
		if(not masters) then
			DefaultDialog()
			return 1
		end
		BaishiList(masters)
		return 1
	end
	if(degree == CONST_DEGREE_PREMASTER) then	
		local apps = FindApprentice()
		if(not apps) then
			DefaultDialog()
			return 1
		end
		ShoutuList(apps)
		return 1
	end
	if(degree == CONST_DEGREE_MASTER) then
		MasterDialog()
		return 1
	end
	if(degree == CONST_DEGREE_APPRENTICE) then
		ApprenticeDialog()
		return 1
	end
	return 1
end
