IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");
IncludeLib("ITEM")

function main()
	Talk(1, "", "TÝnh N¨ng ch­a ®­îc më")
	return 1
end


function cutdowntimefix(nWeekDay, nDay, nMonth, nYear, nMonthDay)
	if nDay > nMonthDay then
		nDay = nDay - nMonthDay
		nMonth = nMonth + 1
		if nMonth > 12 then
			nMonth = 1
			nYear = nYear + 1
		end
	end
	return nDay, nMonth, nYear
end

function getcutdowntime(nWeekDay, nCurTime)
	local tbMonthDay = {31, 28, 31, 30, 31, 30, 31, 31, 30,	31, 30, 31}
	local nTmp = nCurTime
	local nYear = floor(nTmp/100000000)
	nTmp = mod(nTmp, 100000000)
	local nMonth = floor(nTmp/1000000)
	nTmp = mod(nTmp, 1000000)
	local nDay = floor(nTmp/10000)
	nTmp = mod(nTmp, 10000)
	local nHour = floor(nTmp/100)
	nTmp = mod(nTmp, 100)
	local nMinute = nTmp;
	if ((0 == mod(nYear, 4)) and (0 ~= mod(nYear, 100))) or (0 == mod(nYear, 400)) then
		tbMonthDay[2] = tbMonthDay[2] + 1
	end
	if nWeekDay > 0 then
		nDay = nDay + 7 - nWeekDay
		nDay, nMonth, nYear = cutdowntimefix(nWeekDay, nDay, nMonth, nYear, tbMonthDay[nMonth])
	else
		if nHour < 23 then
		else
			nDay = nDay + 7
			nDay, nMonth, nYear = cutdowntimefix(nWeekDay, nDay, nMonth, nYear, tbMonthDay[nMonth])
		end
	end 
	local nResult = 0
	nResult = nMonth * 1000000 + nDay * 10000 + 2300
	return nResult
end


function wushuangmengjiang()
	Say("§Ó biÓu d­¬ng c«ng lao trong chiÕn tr­êng, nÕu nh­ trong tuÇn cã biÓu hiÖn tèt sÏ ®­îc träng th­ëng!", 4, "T×m hiÓu chi tiÕt quy t¾c/getrule", "Xem b¶ng tæng kÕt xÕp h¹ng chiÕn tr­êng/getranklist", "Xem b¶ng xÕp h¹ng chiÕn tr­êng hiÖn t¹i/getcurranklist", "Ta muèn lÜnh th­ëng/guanghuan_sure", "ChØ ghÐ ch¬i th«i./no")
end

function getrule()
	Say("Trong vßng 1 tuÇn ®­îc top 10 sÏ ®­îc tõ 1 ®Õn 10 ®iÓm, trong mét tuÇn nÕu nh­ ®¹t ®iÓm cao nhÊt sÏ ®­îc triÒu ®×nh s¾c phong v« song m·nh t­íng vµ ban träng th­ëng!", 2, "Ta muèn t×m hiÓu viÖc kh¸c/wushuangmengjiang", "KÕt thóc ®èi tho¹i/no");
end

function getranklist()
	local tbNum = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10251, i);
		if szname ~= nil and nrank ~= 0 then
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh«ng", 0);
		end
	end
	local tbOpt = {}
	tinsert(tbOpt, {"Ta muèn t×m hiÓu viÖc kh¸c", wushuangmengjiang})
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i"})
	CreateNewSayEx(szranklist, tbOpt)
end

function guanghuan_sure()

	local szPlayerName = GetName()
	for i = 1, 10 do	
		local szname, nrank, nsect, ngender = Ladder_GetLadderInfo(10251, i);	
		if(szPlayerName == szname and 0 ~= nrank) then		
			local nWeek = tonumber(GetLocalDate("%W"));
			if (GetBitTask(2762, 12, 18) ~= nWeek) then
				SetBitTask(2762, 12, 18, nWeek)
				get_TTTCAward(i)				
			else
				Talk(1, "", "Ch¼ng ph¶i §¹i hiÖp ®·  nhËn th­ëng råi sao?")				
			end
			return		
		end	
	end
	Say("ChØ cã m·nh t­íng ®¹t ®iÓm cao nhÊt trong tuÇn míi ®­îc nhËn phÇn th­ëng! Muèn nhËn phÇn th­ëng th× h·y nç lùc giÕt ®Þch!", 2, "Ta muèn t×m hiÓu viÖc kh¸c/wushuangmengjiang", "KÕt thóc ®èi tho¹i/no")
end

function get_wushuangguanghuan(nCutDownTime)
do
	 return
end
	AddSkillState(966, 1,2, nCutDownTime, 1)
	AddSkillState(979, 1,2, nCutDownTime, 1)
end

local tbProduct = {szName="Tèng Kim BÝ B¶o",tbProp={6, 1, 2741, 1, 0, 0},nBindState=-2}	


function tetan2mibao()
	local G = 6
	local D = 1
	local P = 2740	
	if GetTask(751) < 2000 then 
		Say("§iÓm tÝch lòy cña ng­¬i kh«ng ®ñ.", 1, "§ãng/no")
		return 
	end
	local nCount = CalcItemCount(3, G, D, P, -1) 
	
	if nCount == 0 then
		Say("Kh«ng cã B¶o R­¬ng §Æc Th¸m kh«ng thÓ ®æi.", 1, "§ãng/no")
		return
	end
	ConsumeItem(3, 1, G, D, P, -1)	
	tbAwardTemplet:GiveAwardByList(%tbProduct, "tetanbaoxiang2songjingmibao", 1)
end

function jifen2mibao()
	local nEnergyMark = 100
	local nJifenMark = 500
	local nEnergy = GetEnergy()
	if nEnergy < nEnergyMark then
		Say("Tinh Lùc cña ng­¬i kh«ng ®ñ, lÇn sau l¹i ®Õn nhÐ", 1, "§ãng/no")
		return
	end
	
	local nJifen = nt_getTask(747)
	if nJifen < nJifenMark then
		Say("§iÓm tÝch lòy cña ng­¬i kh«ng ®ñ.", 1, "§ãng/no")
		return
	end
	
	ReduceEnergy(nEnergyMark)	
	nt_setTask(747, floor(nt_getTask(747) - nJifenMark)) 
	tbAwardTemplet:GiveAwardByList(%tbProduct, "jifenjingli2songjingmibao", 1)
	Jilu_jinglixiaohao(nEnergyMark)	
end

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 0.02

function duihuangmibao()
	local szMsg = format("Chän h×nh thøc ®æi :")
	local tbOpt = {}
	
	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o vÖ sù an toµn vËt phÈm cña ng­¬i, vin h·y b¶o ®¶m hµnh trang cßn d­ 1 %dx%d", nWidth, nHeight))
		return 
	end
	
	tinsert(tbOpt, {"§Æc Th¸m B¶o R­¬ng", tetan2mibao})
	tinsert(tbOpt, {"§iÓm tÝch lòy vµ Tinh Lùc", jifen2mibao})
	CreateNewSayEx(szMsg, tbOpt)	
end

function Jilu_jinglixiaohao(nCount)
	AddStatData("jlxiaohao_duihuansongjinmibao", nCount)
end

function getcurranklist()
	local tbNum = {"1", "2 ", "3", "4", "5", "6", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10250, i);
		if szname ~= nil and nrank ~= 0 then
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s xÕp h¹ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh«ng", 0);
		end
	end
	local tbOpt = {}
	tinsert(tbOpt, {"Ta muèn t×m hiÓu viÖc kh¸c", wushuangmengjiang})
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i"})
	CreateNewSayEx(szranklist, tbOpt)
end

-- function get_TTTCAward(nRank)
	-- local tbExp =
		 -- {
			-- {nExp =400e6},
			-- {nExp =300e6},
			-- {nExp =200e6}								
		-- };
	-- local szLog = format("PhÇn th­ëng Tèng Kim Thiªn Tö Tham ChiÕn h¹ng %d", nRank)
	-- tbAwardTemplet:GiveAwardByList(tbExp[nRank], szLog)
-- end



function get_TTTCAward(nRank)
	local BilAwardTitle
	if nRank == 1 then
	BilAwardTitle = 360
		tbAwardTemplet:GiveAwardByList({{szName = "KNB",tbProp={4,343,1,1},nCount=100,},}, "test", 1);
		vongsangtop1()
	-- tbAwardTemplet:GiveAwardByList({{szName = "TiÒn",tbProp={4,417,1,1},nCount=500,},}, "test", 1);
	-- tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=10080,},}, "test", 1);
	logplayer("dulieu/nhanthuongtk.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn th­ëng top 1 thµnh c«ng ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	elseif nRank == 2 then
	BilAwardTitle = 361
		tbAwardTemplet:GiveAwardByList({{szName = "KNB",tbProp={4,343,1,1},nCount=80,},}, "test", 1);
		vongsangtop2()
		-- tbAwardTemplet:GiveAwardByList({{szName = "ttk",tbProp={6,1,22,1,1},nCount=1,},}, "test", 1);
		-- tbAwardTemplet:GiveAwardByList({{szName = "vlmt",tbProp={6,1,26,1,1},nCount=1,},}, "test", 1);
		-- tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=10080,},}, "test", 1);
	logplayer("dulieu/nhanthuongtk.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn th­ëng top 2 thµnh c«ng ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	elseif nRank == 3 then
	BilAwardTitle = 362
		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn",tbProp={4,343,1,1},nCount=60,},}, "test", 1);
		vongsangtop3()
		-- tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,238,1,1},nCount=1,},}, "test", 1);
		-- tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,239,1,1},nCount=1,},}, "test", 1);
		-- tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,240,1,1},nCount=1,},}, "test", 1);
		-- tbAwardTemplet:GiveAwardByList({{szName = "TH",tbProp={4,353,1,1},nCount=6,},}, "test", 1);
		-- tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=10080,},}, "test", 1);
	logplayer("dulieu/nhanthuongtk.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn th­ëng top 1 thµnh c«ng ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	elseif nRank >= 4 and nRank <= 10 then
		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn",tbProp={4,343,1,1},nCount=40,},}, "test", 1);
	end
	Bil_TitleAwardApply(BilAwardTitle)
	local tbExp =
		 {
			-- {nExp =400e6},
			-- {nExp =300e6},
			-- {nExp =200e6}
			
			-- {nExp =40000000},
			-- {nExp =30000000},
			-- {nExp =20000000}		
			
		--	{nExp =6000000},
			--{nExp =4000000},
			--{nExp =2000000}								
		};
	-- local szLog = format("Tèng kim thiªn tö tham chiÕn nhËn th­ëng %d", nRank)
	-- tbAwardTemplet:GiveAwardByList(tbExp[nRank], szLog)
end

function Bil_TitleAwardApply(TitleID)
	local nServerTime = GetCurServerTime()+ (7*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(TitleID, 2, nTime)
	Title_ActiveTitle(TitleID)
	SetTask(1122, TitleID)
	Msg2Player("Chóc mõng T­íng qu©n ®· nhËn vµ kÝch ho¹t danh hiÖu <color=yellow>"..Title_GetTitleName(TitleID).."<color> trong <color=green>7<color> ngµy")
end

function vongsangtop1()
PlayerFunLib:AddSkillState(1621,1,3,1080*60*24*7,1)  -----3 ngay
end
function vongsangtop2()
PlayerFunLib:AddSkillState(1620,1,3,1080*60*24*7,1)  -----3 ngay
end
function vongsangtop3()
PlayerFunLib:AddSkillState(1619,1,3,1080*60*24*7,1)  -----3 ngay
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
