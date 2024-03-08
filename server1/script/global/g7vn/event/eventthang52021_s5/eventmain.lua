---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
--------------------------------------------------------

--TSK_CanhHoa=4993
--MOCRESETEVENT		 = 4992
--BANHTHAPCAM=4991
--task_event_tienvan=4990
----------------------config-----------
function GhiNhanRoiBK24()
szPath = "script/global/g7vn/event/eventthang52021/check24main.log"
	handle = openfile(szPath, "w+")
	write(handle, 1)	
	closefile(handle)
end
function DaRaBiKipChua()
szPath = "script/global/g7vn/event/eventthang52021/check24main.log"

		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tonumber(nValue)
		end
		closefile(handle)	
		return nValue		
end
---------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------
function main()
	dofile("script/global/g7vn/event/eventthang52021/eventmain.lua")
	dofile("script/global/g7vn/g7configall.lua")
	
	
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= startdate and nDate <= enddate and nTime >= 0000 and nTime <= 2359) then

		local tbSay = {}

		tinsert(tbSay,"NhËn Th­ëng Mèc KÑo 7 Mµu/NhanMoc")
		tinsert(tbSay,"NhËn Th­ëng Mèc Bong Bãng/NhanMocBanhThapCam")
	-- tinsert(tbSay,"Mua Hép KÑo 7 Mµu/MuaEvent")
		--tinsert(tbSay,"Reset Event KÑo 7 Mµu./ResetEvent")
	tinsert(tbSay,"Show Top Event./ShowTopThiep")
	--		 tinsert(tbSay,"GhÐp Hoa Qña/GhepThiepGiangSinh")
		tinsert(tbSay,"Tho¸t/no")

--		if GetAccount()=="boquyx123" or GetAccount()=="luuhuanvlv2019" then
		Say("Chµo Mõng Nh©n SÜ Tham Gia event trung thu cïng VoLamVietPK. B¹n ®· sö dông: <color=red>"..GetTask(task_eventxu).." <color>KÑo 7 Mµu", getn(tbSay), tbSay)
--	end
		
	else
		Say("Chøc n¨ng ®· kÕt thóc ")
	end
end


--------------------------------------
tbEquip2Item = tbActivityCompose:new()
function GhepThiepGiangSinh()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
		   [1] = 
		{
			tbMaterial = 
			{
				  {szName = "M·ng CÇu", tbProp = {6,1,1886,1,1},nCount = 1},
				  {szName = "Dõa", tbProp = {6,1,1887,1,1},nCount = 1},
				  {szName = "§u §ñ", tbProp = {6,1,1888,1,1},nCount = 1},
				  {szName = "Xoµi", tbProp = {6,1,1889,1,1},nCount = 1},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 1},

			},
			tbProduct = {szName="MÆt N¹ ChiÕn Tr­êng ThÇn Gi¶(Kh«ng ThÓ Gia H¹n)", tbProp={0,11,840,1,0,0},nExpiredTime=3*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		
               [2] = 
		{
			tbMaterial = 
			{
				  {szName = "M·ng CÇu", tbProp = {6,1,1886,1,1},nCount = 5},
				  {szName = "Dõa", tbProp = {6,1,1887,1,1},nCount = 5},
				  {szName = "§u §ñ", tbProp = {6,1,1888,1,1},nCount = 5},
				  {szName = "Xoµi", tbProp = {6,1,1889,1,1},nCount = 5},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 5},

			},
			tbProduct = {szName="MÆt N¹ ChiÕn Tr­êng ThÇn Gi¶(Kh«ng ThÓ Gia H¹n 15 ngµy)", tbProp={0,11,840,1,0,0},nExpiredTime=15*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
				
               [3] = 
		{
			tbMaterial = 
			{
				  {szName = "M·ng CÇu", tbProp = {6,1,1886,1,1},nCount = 1},
				  {szName = "Dõa", tbProp = {6,1,1887,1,1},nCount = 1},
				  {szName = "§u §ñ", tbProp = {6,1,1888,1,1},nCount = 1},
				  {szName = "Xoµi", tbProp = {6,1,1889,1,1},nCount = 1},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 1},
			},
			tbProduct = {szName="Ngùa H·n HuyÕt Long C©u(3 ngµy)", tbProp={0, 6049}, nQuality = 1,nExpiredTime=3*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
               [4] = 
		{
			tbMaterial = 
			{
				  {szName = "M·ng CÇu", tbProp = {6,1,1886,1,1},nCount = 5},
				  {szName = "Dõa", tbProp = {6,1,1887,1,1},nCount = 5},
				  {szName = "§u §ñ", tbProp = {6,1,1888,1,1},nCount = 5},
				  {szName = "Xoµi", tbProp = {6,1,1889,1,1},nCount = 5},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 5},
			},
			tbProduct = {szName="Ngùa H·n HuyÕt Long C©u(15 ngµy)", tbProp={0, 6049}, nQuality = 1,nExpiredTime=15*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		               [5] = 
		{
			tbMaterial = 
			{
				  {szName = "M·ng CÇu", tbProp = {6,1,1886,1,1},nCount = 5},
				  {szName = "Dõa", tbProp = {6,1,1887,1,1},nCount = 5},
				  {szName = "§u §ñ", tbProp = {6,1,1888,1,1},nCount = 5},
				  {szName = "Xoµi", tbProp = {6,1,1889,1,1},nCount = 5},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 5},
			},
			tbProduct = {szName="H·n HuyÕt ThÇn C©u(7 ngµy)", tbProp={0, 6043}, nQuality = 1,nExpiredTime=7*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		               [6] = 
		{
			tbMaterial = 
			{
				  {szName = "M·ng CÇu", tbProp = {6,1,1886,1,1},nCount = 4},
				  {szName = "Dõa", tbProp = {6,1,1887,1,1},nCount = 4},
				  {szName = "§u §ñ", tbProp = {6,1,1888,1,1},nCount = 4},
				  {szName = "Xoµi", tbProp = {6,1,1889,1,1},nCount = 4},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 4},
				  {szName = "Hoa Mai", tbProp = {6,1,30325,1,0},nCount = 1},

			},
			tbProduct = {szName="MÆt N¹ ChÝ T«n(+4 Skill 7 ngµy)", tbProp={0,11,841,1,0,0},nExpiredTime=7*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		               [7] = 
		{
			tbMaterial = 
			{
				  {szName = "M·ng CÇu", tbProp = {6,1,1886,1,1},nCount = 4},
				  {szName = "Dõa", tbProp = {6,1,1887,1,1},nCount = 4},
				  {szName = "§u §ñ", tbProp = {6,1,1888,1,1},nCount = 4},
				  {szName = "Xoµi", tbProp = {6,1,1889,1,1},nCount = 4},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 4},
				  {szName = "Hoa Mai", tbProp = {6,1,30325,1,1},nCount = 1},

			},
			tbProduct = {szName="MÆt N¹ ChÝ T«n(+4 Skill 7 ngµy)(Dù Phßng)", tbProp={0,11,841,1,0,0},nExpiredTime=7*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end

----------------------------------
function ShowTopThiep()

tbLogEvent:ShowTopList()
end

------------------------------
function MuaEvent()
local tbSay = {}

		tinsert(tbSay,"Mua 1 Hép Lä N­íc Hoa <25xu - 50 b¸nh> ./muahop1")
	--	tinsert(tbSay,"Mua 10 Hép Lä N­íc Hoa <250xu - 500 b¸nh> ./muahop10")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function muahop1()
local tbItem = {
	{szName="Hép b¸nh trung thu", tbProp={6,1,30031,1,0,0},nCount = 1,nExpiredTime=20200116},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 25  then
		ConsumeEquiproomItem(25, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc Mõng b¹n ®· mua Thµnh C«ng 1 hép b¸nh trung thu")
	else
		Say("Kh«ng ®ñ 25 Xu, Xin Xem L¹i")
	end

end

---------------------------------------------------------------------------------------------------------------------------

function muahop10()
local tbItem = {
	{szName="Hép b¸nh trung thu", tbProp={6,1,30031,1,0,0},nCount = 10,nExpiredTime=20200116},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 250  then
		ConsumeEquiproomItem(250, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
		Msg2Player("Chóc Mõng b¹n ®· mua Thµnh C«ng 10 hép b¸nh trung thu")
	else
		Say("Kh«ng ®ñ 250 Xu, Xin Xem L¹i")
	end

end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbSay = {}

		tinsert(tbSay,"NhÉn m«c 600./Moc500")
		tinsert(tbSay,"NhËn mèc 1200./Moc1000")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" HiÖn B¹n §ang Sö Dông <color=green>"..GetTask(task_eventxu).." <color>KÑo 7 Mµu", getn(tbSay), tbSay)
	
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMocBanhThapCam()
	local tbSay = {}

		tinsert(tbSay,"NhÉn m«c 600 ./Moc600ThapCam")
		tinsert(tbSay,"NhËn mèc 1200./Moc1200ThapCam")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" HiÖn B¹n §ang Sö Dông <color=green>"..GetTask(task_event_tienvan).." <color>Bong Bãng", getn(tbSay), tbSay)
	
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function Moc600ThapCam()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	
	if (GetTask(task_event_tienvan) >= 600) and (GetTask(task_moc_event_tienvan) == 0) then
		local tbAward = {
		--	{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=1},	
		--	{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=2},	
		--	{szName="Ngù Phong",tbProp={0,3964},nCount=1,nQuality=1,nExpiredTime=14*24*60},
		{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=1},	
		{szName="NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,0,0},nCount=1},		
		
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 500") SetTask(task_moc_event_tienvan,1)
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 600 Bong Bãng")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 500 Event tien van\n");		

	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end
----------------------------------------------------Nhan Moc 1000 Thap Cam -----------------------------------------------------------------------------------------------------
function Moc1200ThapCam()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	if (GetTask(task_event_tienvan) >= 1200)  and (GetTask(task_moc_event_tienvan) == 1) then
		local tbAward = {
			[1] = {
		--	{szName="Ngò Hµnh Ên",tbProp={0,3953},nQuality=1,nExpiredTime=14*24*60},
		--	{szName="Xuyªn Y Ph¸ Gi¸p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=14*24*60},
		--	{szName="MÆt N¹ ChiÕn Tr­êng Vuong Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},
		--	{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=2},	
	--		{szName="Ngua Random",tbProp={0,random(3963,3966)},nQuality=1,nCount=1,nExpiredTime=30*24*60},
			{szName="MËt tÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,0,0},nCount=1},	
			{szName="MËt tÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4370,1,0,0},nCount=1},	
			{szName="MËt tÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,0,0},nCount=1},	
		{szName="MÆt N¹ ChiÕn Tr­êng Thanh Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},	
		{szName="B¾c §Èu ThuÇn M· ThuËt",tbProp={6,1,1987,1,0,0},nCount=1,nExpiredTime=14*24*60},	
		--	{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=2},	
			{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=3},	
			{szName="NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,0,0},nCount=3},			
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e9}}, "test", 1);
		
						local d = random(1,8)
				if d==5 then
				tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;
				
				local d1 = random(1,10)
				if d1==5 then
			--		tbAwardTemplet:GiveAwardByList({{szName = "NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,1},nCount=1,},}, "test", 1);
				end;
				local d2 = random(1,2)
				if d2==1 then
							local i2 = random(1,3)
							if i2==1 then
							tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4429,4430),1,1},nCount=1,},}, "test", 1);
							else if i2==2 then
							tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4432,4433),1,1},nCount=1,},}, "test", 1);
							else if i2==3 then
								tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4436,4437),1,1},nCount=1,},}, "test", 1);
								end
								end
								end
				end
				local d3 = random(10,10)
				if d3==10 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Kh¶i",tbProp={6,1,4509,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
				end;				
				
				local d4 = random(10,10)
				if d4==10 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Vò KhÝ",tbProp={6,1,4510,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
				end;				
				
				local d5 = random(1,22)
				if d5==3 then
			--	tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName = "§¹i thµnh bÝ kÝp 150 lªn CÊp 23",tbProp={6,1,4891,1,1},nCount=1,nExpiredTime=30*24*60,},}, "test", 1);
				end;
				
				local d6 = random(1,6)
				if d6==3 then
				--tbAwardTemplet:GiveAwardByList({{szName = "Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5002,1,1},nCount=1},}, "test", 1);
				end;
				

		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1200 Event tien van\n");
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event Bong Bãng 1200")
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 400") SetTask(task_moc_event_tienvan,2)
	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function Moc500()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	
	if (GetTask(task_eventxu) >= 600) and (GetTask(task_moc_eventxu) == 0) then
		local tbAward = {
		--	{szName="MËt tÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,0,0},nCount=1},	
		--	{szName="MËt tÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4370,1,0,0},nCount=1},	
		--	{szName="MËt tÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,0,0},nCount=1},	
		--	{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=1},	
		--	{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=5},	
		{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=1},	
	--		{szName="§å Phæ Tinh S­¬ng Y",tbProp={6,1,4883,1,0,0},nCount=2},	
			{szName="NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,0,0},nCount=1},	
		
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 30e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 600") SetTask(task_moc_eventxu,1)
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 600")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 600\n");		

	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end

----------------------------------------------------------------------------------------------
function ResetEvent()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(task_eventxu) >= 1000) and (GetTask(MOCRESETEVENT)) ==0 then
		if (Xu >= 100) then
			SetTask(task_eventxu,0)-- reset banh dac biet ve 0
			SetTask(task_moc_eventxu,0)  --reset moc banh db ve 0
			SetTask(MOCRESETEVENT,1) --moc luu lai da reset 1 lan
		--	SetTask(TSK_CanhHoa,0)--reset banh trung thu ve 0
		ConsumeEquiproomItem(100, 4,417, 1,-1)

			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 100 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 1000 KÑo 7 Mµu hoÆc ®· reset 1 lÇn råi")
	end
end
---------
----------------------------------------------------Nhan Moc 1000 -----------------------------------------------------------------------------------------------------
function Moc1000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	if (GetTask(task_eventxu) >= 1200)  and (GetTask(task_moc_eventxu) == 1)then
		local tbAward = {
			[1] = {
		--	{szName="Ngua RanDom",tbProp={0,random(3963,3966)},nCount=1,nQuality=1,nExpiredTime=14*24*60},
		--	{{szName="Ngò Hµnh Ên",tbProp={0,3953},nQuality=1,nExpiredTime=30*24*60},},
			--{{szName="Xuyªn Y Ph¸ Gi¸p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=30*24*60},},
			{szName="B¾c §Èu ThuÇn M· ThuËt",tbProp={6,1,1987,1,0,0},nCount=1,nExpiredTime=30*24*60},		
		--	{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=10},		
			{szName="NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,0,0},nCount=5},	
	--		{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=2},	
			{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=5},			
		--	{szName="Hoa Mai",tbProp={6,1,30325,1,0,0},nCount=1,nExpiredTime=TimeHetHanEventFree},			
		--	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5002,1,1,0},nCount=1},			
			{szName="MËt tÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,0,0},nCount=1},			
			{szName="MËt tÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4370,1,0,0},nCount=1},			
			{szName="MËt tÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,0,0},nCount=1},			
		--	{szName="§å Phæ Tinh S­¬ng KhÝ Giíi",tbProp={6,1,4884,1,0,0},nCount=2},			
		--	{szName="MÆt N¹ ChiÕn Tr­êng Vuong Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},	
	--	{szName="MÆt N¹ ChiÕn Tr­êng ThÇn Gi¶(Kh«ng ThÓ Gia H¹n)",tbProp={0,11,840,1,0,0},nCount=1,nExpiredTime=14*24*60},	
			{szName="MÆt N¹ ChiÕn Tr­êng Thanh Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},	
				
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 60e9}}, "test", 1);

		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\n");
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 1200")
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 400") SetTask(task_moc_eventxu,2)
		local henxuidopho=random(1,30) 
			if henxuidopho==1 then 
				tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4434,4435),1,1},nCount=1,},}, "test", 1);--do pho y hoac vu khi
			else 
			
				local phu= random(1,10)
					if phu==1 or phu==2 then
				--	tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹ ChiÕn Tr­êng Thanh Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
					--tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹ ChiÕn Tr­êng ThÇn Gi¶(Kh«ng ThÓ Gia H¹n)",tbProp={0,11,840,1,0,0},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
					end	
					if phu==3 or phu==4  or phu==9 then
				--	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Khai",tbProp={6,1,4509,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
					end
					if phu==5  or phu==6 then
					--tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng VK ",tbProp={6,1,4510,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
					end	
					if phu==7  or phu==8 then
					tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
					end				
					if phu==10 then
						tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4891,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);--§¹i thµnh bÝ kÝp 150 lªn CÊp 23
					end		
			
			end

local checkmain=DaRaBiKipChua()

local bk24main=random(1,15)
if bk24main==3 then
	if checkmain ==0 then
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4372,1,1},nCount=1,},}, "test", 1);--MËt tÞch Kü N¨ng 150 CÊp 24
		GhiNhanRoiBK24()
		WriteLogPro("dulieu/aneventduocbikip24.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An duoc bi kip 24 o npc \n");
	end
end


			local a = random(5,5)
				if a==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Khai",tbProp={6,1,4509,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
				end;

				local b = random(5,5)
				if b==5 then
				tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng VK ",tbProp={6,1,4510,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
				end;

				local c = random(1,10)
				if c==5 then
				--	tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹ ChiÕn Tr­êng Thanh Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
				end;


				local d = random(1,4)
				if d==3 then
				tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;

				local e = random(1,6)
				if e==3 then
				--	tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i = random(1,4)
				if i==3 then
			--	tbAwardTemplet:GiveAwardByList({{szName = "MÆt N¹ ChiÕn Tr­êng ThÇn Gi¶(Kh«ng ThÓ Gia H¹n)",tbProp={0,11,840,1,0,0},nCount=1,nExpiredTime=7*24*60},}, "test", 1);
				end;
				
				local i1 = random(1,10)
				if i1==5 then
			---		tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,1},nCount=5,},}, "test", 1);
				end;
				
				local i2 = random(1,3)
				if i2==1 then
		--	tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4429,4431),1,1},nCount=1,},}, "test", 1);
				else if i2==2 then
		--		tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4432,4433),1,1},nCount=1,},}, "test", 1);
				else if i2==3 then
			--		tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4436,4438),1,1},nCount=1,},}, "test", 1);
					end
					end
					end
				local i3 = random(1,20)
				if i3==5 then
		--	tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,4434,1,1},nCount=1,},}, "test", 1);--do pho y
				end;
					local i4 = random(1,5)
					if i4==4 then
				--	tbAwardTemplet:GiveAwardByList({{szName = "§¹i Thiªn S¬n TuyÕt Liªn",tbProp={6,1,4979,1,1},nCount=1,},}, "test", 1);
						end;
				
				local i5 = random(1,30)
			if i5==5 then
			--tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt KhÝ Giíi",tbProp={6,1,4435,1,1},nCount=1,},}, "test", 1);
				end;
								local i7 = random(1,30)
			if i7==5 then
			--tbAwardTemplet:GiveAwardByList({{szName = "NguyÖt KhuyÕt LÖnh",tbProp={6,1,4834,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i6 = random(1,8)
					if i6==1 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng H¹ng Liªn Maxofftion",tbProp={6,1,4967,1,1},nCount=1,tbParam={1,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==2 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Kh«I Maxofftion",tbProp={6,1,4968,1,1},nCount=1,tbParam={2,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Th­îng Giíi Maxofftion",tbProp={6,1,4969,1,1},nCount=1,tbParam={3,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==4 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Hé UyÓn Maxofftion",tbProp={6,1,4970,1,1},nCount=1,tbParam={4,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Yªu §¸i Maxofftion",tbProp={6,1,4971,1,1},nCount=1,tbParam={5,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==6 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Hµi Maxofftion",tbProp={6,1,4974,1,1},nCount=1,tbParam={8,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==7 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Béi Maxofftion",tbProp={6,1,4975,1,1},nCount=1,tbParam={9,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==8 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng H¹ Giíi Maxofftion",tbProp={6,1,4976,1,1},nCount=1,tbParam={10,0,0,0,0,0}},}, "test", 1);
					end;
					
						local i62 = random(1,8)
					if i62==1 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng H¹ng Liªn Maxofftion",tbProp={6,1,4967,1,1},nCount=1,tbParam={1,0,0,0,0,0}},}, "test", 1);
					end;
					if i62==2 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Kh«I Maxofftion",tbProp={6,1,4968,1,1},nCount=1,tbParam={2,0,0,0,0,0}},}, "test", 1);
					end;
					if i62==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Th­îng Giíi Maxofftion",tbProp={6,1,4969,1,1},nCount=1,tbParam={3,0,0,0,0,0}},}, "test", 1);
					end;
					if i62==4 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Hé UyÓn Maxofftion",tbProp={6,1,4970,1,1},nCount=1,tbParam={4,0,0,0,0,0}},}, "test", 1);
					end;
					if i62==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Yªu §¸i Maxofftion",tbProp={6,1,4971,1,1},nCount=1,tbParam={5,0,0,0,0,0}},}, "test", 1);
					end;
					if i62==6 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Hµi Maxofftion",tbProp={6,1,4974,1,1},nCount=1,tbParam={8,0,0,0,0,0}},}, "test", 1);
					end;
					if i62==7 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Béi Maxofftion",tbProp={6,1,4975,1,1},nCount=1,tbParam={9,0,0,0,0,0}},}, "test", 1);
					end;
					if i62==8 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng H¹ Giíi Maxofftion",tbProp={6,1,4976,1,1},nCount=1,tbParam={10,0,0,0,0,0}},}, "test", 1);
					end;	
					
				local tsmax=random(1,4)
				if tsmax==2 then
					local tsmax2=random(1,2)
						if tsmax2==1 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Y",tbProp={6,1,4972,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
						
						end
						if tsmax2==2 then
						tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng VK",tbProp={6,1,4973,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
						end
				end
	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
