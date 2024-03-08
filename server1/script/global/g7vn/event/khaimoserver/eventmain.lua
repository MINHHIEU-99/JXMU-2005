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
szPath = "script/global/g7vn/event/khaimoserver/check24main.log"
	handle = openfile(szPath, "w+")
	write(handle, 1)	
	closefile(handle)
end
function DaRaBiKipChua()
szPath = "script/global/g7vn/event/khaimoserver/check24main.log"

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
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
----------------------------------------
function main()
	dofile("script/global/g7vn/event/khaimoserver/eventmain.lua")
	dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= startdate and nDate <= enddate and nTime >= 0000 and nTime <= 2359) then

		local tbSay = {}

		tinsert(tbSay,"Nh�n Th��ng M�c V�ng Hoa Ch�c M�ng/NhanMoc")
		tinsert(tbSay,"Nh�n Th��ng M�c H�p L� V�t/NhanMocBanhThapCam")
	       tinsert(tbSay,"Mua T�i Qu� Even V�ng Hoa/muahop1")
               --tinsert(tbSay,"Mua H�p  H�p Keo 7 Mau B�ng KNB/muahop2")
		tinsert(tbSay,"Tho�t/no")
		Say("Ch�o M�ng Nh�n S� Tham Gia event Ch�o M�ng S� Ki�n Khai M�  M�y Ch� B�n �� s� d�ng: <color=red>"..GetTask(task_eventxu).." <color>V�ng Hoa Ch�c M�ng", getn(tbSay), tbSay)

		
	else
		Say("Ch�c n�ng �� k�t th�c ")
	end
end


--------------------------------------
tbEquip2Item = tbActivityCompose:new()
function GhepThiepGiangSinh()
	local nPrice = 400
	local szTitle = format("Ng��i mu�n l�m ��p �",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
		   [1] = 
		{
			tbMaterial = 
			{
				  {szName = "M�ng C�u", tbProp = {6,1,1886,1,1},nCount = 200},
				  {szName = "D�a", tbProp = {6,1,1887,1,1},nCount = 200},
				  {szName = "�u ��", tbProp = {6,1,1888,1,1},nCount = 200},
				  {szName = "Xo�i", tbProp = {6,1,1889,1,1},nCount = 200},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 200},

			},
			tbProduct = {szName="M�t N� Chi�n Tr��ng Th�n Gi�(Kh�ng Th� Gia H�n)", tbProp={0,11,840,1,0,0},nExpiredTime=3*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		
               [2] = 
		{
			tbMaterial = 
			{
				  {szName = "M�ng C�u", tbProp = {6,1,1886,1,1},nCount = 1000},
				  {szName = "D�a", tbProp = {6,1,1887,1,1},nCount = 1000},
				  {szName = "�u ��", tbProp = {6,1,1888,1,1},nCount = 1000},
				  {szName = "Xo�i", tbProp = {6,1,1889,1,1},nCount = 1000},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 1000},

			},
			tbProduct = {szName="M�t N� Chi�n Tr��ng Th�n Gi�(Kh�ng Th� Gia H�n 15 ng�y)", tbProp={0,11,840,1,0,0},nExpiredTime=15*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
				
               [3] = 
		{
			tbMaterial = 
			{
				 {szName = "M�ng C�u", tbProp = {6,1,1886,1,1},nCount = 500},
				  {szName = "D�a", tbProp = {6,1,1887,1,1},nCount = 500},
				  {szName = "�u ��", tbProp = {6,1,1888,1,1},nCount = 500},
				  {szName = "Xo�i", tbProp = {6,1,1889,1,1},nCount = 500},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 500},
			},
			tbProduct = {szName="X�ch Long C�u Truy�n Thuy�t(3 ng�y)", tbProp={0, 6335}, nQuality = 1,nExpiredTime=3*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
               [4] = 
		{
			tbMaterial = 
			{
				  {szName = "M�ng C�u", tbProp = {6,1,1886,1,1},nCount = 1500},
				  {szName = "D�a", tbProp = {6,1,1887,1,1},nCount = 1500},
				  {szName = "�u ��", tbProp = {6,1,1888,1,1},nCount = 1500},
				  {szName = "Xo�i", tbProp = {6,1,1889,1,1},nCount = 1500},
				  {szName = "Sung", tbProp = {6,1,1890,1,1},nCount = 1500},
			},
			tbProduct = {szName="X�ch Long C�u Truy�n Thuy�t(15 ng�y)", tbProp={0, 6335}, nQuality = 1,nExpiredTime=15*24*60},
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
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end

----------------------------------
function ShowTopThiep()

tbLogEvent:ShowTopList()
end

------------------------------
function MuaEvent()
local tbSay = {}

		tinsert(tbSay,"Mua 1 H�p keo 7 mau <250xu - 50 b�nh> ./muahop1")
	--	tinsert(tbSay,"Mua 10 H�p L� N��c Hoa <250xu - 500 b�nh> ./muahop10")
		
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function muahop1()
	AskClientForNumber("DaiTinhNgoc12",1,300,"Nh�p S� L��ng")
end

function DaiTinhNgoc12(num)
local nTinhNgoc = CalcEquiproomItemCount(4,417,1,1)
local tbTinhNgoc = num*90
	if (nTinhNgoc >= tbTinhNgoc) then
		ConsumeEquiproomItem(tbTinhNgoc,4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,30339,1,0,0},nExpiredTime=20220729,},"T�i Qu� Even V�ng Hoa",num)
             WriteLogPro("dulieu/even/hopeven"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da  mua "..num.." hop even.. ton  "..tbTinhNgoc.." xu      \n");
	
	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." T�i Qu� Even V�ng Hoa , C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." Xu")
	end
end
function muahop2()
	AskClientForNumber("DaiTinhNgoc13",1,300,"Nh�p S� L��ng")
end

function DaiTinhNgoc13(num)
local nTinhNgoc = CalcEquiproomItemCount(4,1496,1,1)
local tbTinhNgoc = num*9
	if (nTinhNgoc >= tbTinhNgoc) then
		ConsumeEquiproomItem(tbTinhNgoc,4,1496, 1,-1)
	     tbAwardTemplet:GiveAwardByList({tbProp={6,1,30208,1,0,0},nExpiredTime=20220629,},"Hop keo 7 Mau",num)
             WriteLogPro("dulieu/even/hopevenbangknb"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da  mua "..num.." hop even.. ton  "..tbTinhNgoc.." KNB      \n");
	
	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." hop keo 7 mau  , C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." KNB")
	end
end
---------------------------------------------------------------------------------------------------------------------------

function muahop10()
local tbItem = {
	{szName="H�p b�nh trung thu", tbProp={6,1,30031,1,0,0},nCount = 10,nExpiredTime=20200116},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 250  then
		ConsumeEquiproomItem(250, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c M�ng b�n �� mua Th�nh C�ng 10 h�p b�nh trung thu")
	else
		Say("Kh�ng �� 250 Xu, Xin Xem L�i")
	end

end


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbSay = {}

		tinsert(tbSay,"Nh�n m�c 20000./Moc500")
		tinsert(tbSay,"Nh�n m�c 30000./Moc1000")
		
		tinsert(tbSay,"Tho�t/no")
		Say(" Hi�n B�n �ang S� D�ng <color=green>"..GetTask(task_eventxu).." <color>V�ng Hoa Ch�c M�ng", getn(tbSay), tbSay)
	
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMocBanhThapCam()
	local tbSay = {}

		tinsert(tbSay,"Nh�n m�c 1000 ./Moc600ThapCam")
		tinsert(tbSay,"Nh�n m�c 3000./Moc1200ThapCam")
		
		tinsert(tbSay,"Tho�t/no")
		Say(" Hi�n B�n �ang S� D�ng <color=green>"..GetTask(task_event_tienvan).." <color>Bong B�ng", getn(tbSay), tbSay)
	
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function Moc600ThapCam()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	
	if (GetTask(task_event_tienvan) >= 1000) and (GetTask(task_moc_event_tienvan) == 0) then
		local tbAward = {
		{szName="B�ch Luy�n Th�nh C��ng",tbProp={6,1,49006,1,0,0},nCount=500},	
		
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 40e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 500") SetTask(task_moc_event_tienvan,1)
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 1000 even tien van")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 500 Event tien van\n");		

	else
		Talk(1,"","B�n Ch�a ��t T�i M�c N�y")
	end
end
----------------------------------------------------Nhan Moc 1000 Thap Cam -----------------------------------------------------------------------------------------------------
function Moc1200ThapCam()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	if (GetTask(task_event_tienvan) >= 3000)  and (GetTask(task_moc_event_tienvan) == 1) then
		local tbAward = {
			[1] = {
	        {szName="matna",tbProp={0,9325},nQuality=1,nCount=1},	
		{szName="B�c ��u Thu�n M� Thu�t",tbProp={4,1505,1,1,0,0},nCount=10},	
		{szName="B�ch Luy�n Th�nh C��ng",tbProp={6,1,30355,1,0,0},nCount=500},			
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 60e9}}, "test", 1);
		
						local d = random(1,8)
				if d==5 then
				--tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;
				
				local d1 = random(1,10)
				if d1==5 then
			--		tbAwardTemplet:GiveAwardByList({{szName = "Nguy�t Khuy�t Tinh Th�ch",tbProp={6,1,4817,1,1},nCount=1,},}, "test", 1);
				end;
				local d2 = random(1,2)
				if d2==1 then
							local i2 = random(1,3)
							if i2==1 then
							--tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,random(4429,4430),1,1},nCount=1,},}, "test", 1);
							else if i2==2 then
							--tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,random(4432,4433),1,1},nCount=1,},}, "test", 1);
							else if i2==3 then
								--tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,random(4436,4437),1,1},nCount=1,},}, "test", 1);
								end
								end
								end
				end
				local d3 = random(1,10)
				if d3==5 then
						tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng Kh�i",tbProp={6,1,6025,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
				end;				
				
				local d4 = random(1,13)
				if d4==5 then
					tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng V� Kh�",tbProp={6,1,6026,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
				end;				
				
				local d5 = random(1,22)
				if d5==3 then
			--	tbAwardTemplet:GiveAwardByList({{szName = "M�t t�ch K� N�ng 150 C�p 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
				--tbAwardTemplet:GiveAwardByList({{szName = "��i th�nh b� k�p 150 l�n C�p 23",tbProp={6,1,4891,1,1},nCount=1,nExpiredTime=30*24*60,},}, "test", 1);
				end;
				
				local d6 = random(1,6)
				if d6==3 then
				--tbAwardTemplet:GiveAwardByList({{szName = "Ho�ng Kim Thi�n Th�ch",tbProp={6,1,5002,1,1},nCount=1},}, "test", 1);
				end;
				

		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 3000 even tien van\n");
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event tien van 3000")
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 400") SetTask(task_moc_event_tienvan,2)
	else
		Talk(1,"","B�n Ch�a ��t T�i M�c N�y")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function Moc500()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	
	if (GetTask(task_eventxu) >= 20000) and (GetTask(task_moc_eventxu) == 0) then
		local tbAward = {	
		{szName="B�ch Luy�n Th�nh C��ng",tbProp={6,1,49006,1,0,0},nCount=1000},		
		{szName="dieu duong Tinh Th�ch",tbProp={6,1,5446,1,0,0},nCount=10},	
		{szName="dieu duong Tinh Th�ch",tbProp={6,1,5337,1,0,0},nCount=1},
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 600") SetTask(task_moc_eventxu,1)
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 20000")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 600\n");		

	else
		Talk(1,"","B�n Ch�a ��t T�i M�c N�y")
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
		
		ConsumeEquiproomItem(100, 4,417, 1,-1)

			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 100 Xu Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a S� D�ng �� 1000 L� C� Chi�n Th�ng ho�c �� reset 1 l�n r�i")
	end
end
---------
----------------------------------------------------Nhan Moc 1000 -----------------------------------------------------------------------------------------------------
function Moc1000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	if (GetTask(task_eventxu) >= 30000)  and (GetTask(task_moc_eventxu) == 1)then
		local tbAward = {
			[1] = {

			{szName="an",tbProp={0,9345},nCount=1,nQuality=1},	
			{szName="Ngua RanDom",tbProp={0,9386},nCount=1,nQuality=1,nExpiredTime=15*24*60},		
			{szName="B�ch Luy�n Th�nh C��ng",tbProp={6,1,30355,1,0,0},nCount=5000},				
			{szName="Ngua RanDom",tbProp={0,9326},nCount=1,nQuality=1},	
			{szName="Ngua RanDom",tbProp={0,random(9171,9185)},nCount=1,nQuality=1},	
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e9}}, "test", 1);
		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\n");
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 30.000")
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 400") SetTask(task_moc_eventxu,2)
		local henxuidopho=random(1,30) 
			if henxuidopho==1 then 
				tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,random(4434,4435),1,1},nCount=1,},}, "test", 1);--do pho y hoac vu khi
			else 
			
				local phu= random(1,10)
					if phu==1 or phu==2 then
				--	tbAwardTemplet:GiveAwardByList({{szName="M�t N� Chi�n Tr��ng Thanh Gi�",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
					--tbAwardTemplet:GiveAwardByList({{szName="M�t N� Chi�n Tr��ng Th�n Gi�(Kh�ng Th� Gia H�n)",tbProp={0,11,840,1,0,0},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
					end	
					if phu==3 or phu==4  or phu==9 then
			              tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng Khai",tbProp={6,1,6205,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
					end
					if phu==5  or phu==6 then
					tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng VK ",tbProp={6,1,6206,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
					end	
					if phu==7  or phu==8 then
					tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
					end				
					if phu==10 then
						--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4347,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);--��i th�nh b� k�p 150 l�n C�p 23
					end		
			
			end
local checkmain=DaRaBiKipChua()

local bk24main=random(1,15)
if bk24main==3 then
	if checkmain ==0 then
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4348,1,1},nCount=1,},}, "test", 1);--M�t t�ch K� N�ng 150 C�p 24
		GhiNhanRoiBK24()
		WriteLogPro("dulieu/aneventduocbikip24.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An duoc bi kip 24 o npc \n");
	end
end
			local a = random(1,5)
				if a==3 then
			--		tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng Khai",tbProp={6,1,4509,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
				end;

				local b = random(1,5)
				if b==3 then
			tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng VK ",tbProp={6,1,6206,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
				end;

				local c = random(1,10)
				if c==5 then
				--	tbAwardTemplet:GiveAwardByList({{szName="M�t N� Chi�n Tr��ng Thanh Gi�",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
				end;


				local d = random(1,4)
				if d==3 then
				tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;

				local e = random(1,6)
				if e==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "M�t t�ch K� N�ng 150 C�p 22",tbProp={6,1,4346,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i = random(1,4)
				if i==3 then
			--	tbAwardTemplet:GiveAwardByList({{szName = "M�t N� Chi�n Tr��ng Th�n Gi�(Kh�ng Th� Gia H�n)",tbProp={0,11,840,1,0,0},nCount=1,nExpiredTime=7*24*60},}, "test", 1);
				end;
				
				local i1 = random(1,10)
				if i1==5 then
			---		tbAwardTemplet:GiveAwardByList({{szName = "Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,1},nCount=5,},}, "test", 1);
				end;
				
				local i2 = random(1,3)
				if i2==1 then
		--	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,random(4429,4431),1,1},nCount=1,},}, "test", 1);
				else if i2==2 then
		--		tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,random(4432,4433),1,1},nCount=1,},}, "test", 1);
				else if i2==3 then
			--		tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,random(4436,4438),1,1},nCount=1,},}, "test", 1);
					end
					end
					end
				local i3 = random(1,20)
				if i3==5 then
		--	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,4434,1,1},nCount=1,},}, "test", 1);--do pho y
				end;
					local i4 = random(1,5)
					if i4==4 then
					--tbAwardTemplet:GiveAwardByList({{szName = "��i Thi�n S�n Tuy�t Li�n",tbProp={6,1,4979,1,1},nCount=1,},}, "test", 1);
						end;
				
				local i5 = random(1,30)
			if i5==5 then
			--tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t Kh� Gi�i",tbProp={6,1,4435,1,1},nCount=1,},}, "test", 1);
				end;
								local i7 = random(1,30)
			if i7==5 then
			--tbAwardTemplet:GiveAwardByList({{szName = "Nguy�t Khuy�t L�nh",tbProp={6,1,4834,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i6 = random(1,8)
					if i6==1 then
						tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng H�ng Li�n Maxofftion",tbProp={6,1,6200,1,1},nCount=1,tbParam={1,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==2 then
				          tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng Kh�I Maxofftion",tbProp={6,1,6201,1,1},nCount=1,tbParam={2,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng Th��ng Gi�i Maxofftion",tbProp={6,1,6202,1,1},nCount=1,tbParam={3,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==4 then
						tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng H� Uy�n Maxofftion",tbProp={6,1,6203,1,1},nCount=1,tbParam={4,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==5 then
					--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng Y�u ��i Maxofftion",tbProp={6,1,4971,1,1},nCount=1,tbParam={5,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==6 then
					--	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng H�i Maxofftion",tbProp={6,1,4974,1,1},nCount=1,tbParam={8,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==7 then
					--	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng B�i Maxofftion",tbProp={6,1,4975,1,1},nCount=1,tbParam={9,0,0,0,0,0}},}, "test", 1);
					end;
					if i6==8 then
					--	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng H� Gi�i Maxofftion",tbProp={6,1,4976,1,1},nCount=1,tbParam={10,0,0,0,0,0}},}, "test", 1);
					end;					
				local tsmax=random(1,4)
				if tsmax==2 then
					local tsmax2=random(1,2)
						if tsmax2==1 then
						--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng Y",tbProp={6,1,4972,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
						
						end
						if tsmax2==2 then
						--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng VK",tbProp={6,1,4973,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
						end
				end
	else
		Talk(1,"","B�n Ch�a ��t T�i M�c N�y")
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