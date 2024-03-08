---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
--------------------------------------------------------

--TSK_CanhHoa=4993
--MOCRESETEVENT		 = 4992
--BANHTHAPCAM=4991
--task_hoatai=4990
----------------------config-----------
startdate= 20191010
enddate=20191100
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
	dofile("script/global/g7vn/event/phunuvietnam/eventmain.lua")
	dofile("script/global/g7vn/g7configall.lua")
	
	
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= startdate and nDate <= enddate and nTime >= 0000 and nTime <= 2359) then

		local tbSay = {}

		tinsert(tbSay,"NhËn Th­ëng Mèc N­íc Hoa./NhanMoctask_nuochoa")
		tinsert(tbSay,"NhËn Th­ëng Mèc Hoa Tai./NhanMocBanhThapCam")
	--	tinsert(tbSay,"Mua hép B¸nh trung thu ®Æc biÖt./MuaEvent")
	--	tinsert(tbSay,"Reset Event B¸nh trung thu ®Æc biÖt(Free)./ResetEvent")
		--tinsert(tbSay,"Show Top Event./ShowTopThiep")
		
		tinsert(tbSay,"Tho¸t/no")
		Say("Chµo Mõng Nh©n SÜ Tham Gia event trung thu cïng VoLamVietPK. B¹n ®· sö dông: <color=red>"..GetTask(task_nuochoa).." <color>N­íc Hoa", getn(tbSay), tbSay)

		
	else
		Say("Chøc n¨ng ®· kÕt thóc ")
	end
end


--------------------------------------

function ShowTopThiep()

tbLogEvent:ShowTopList()
end

---------------------------------------

---------------------------------------
function MuaEvent()
local tbSay = {}

		tinsert(tbSay,"Mua 1 hép b¸nh trung thu ®Æc biÖt <25xu - 50 b¸nh> ./muahop1")
		tinsert(tbSay,"Mua 10 hép b¸nh trung thu ®Æc biÖt <250xu - 500 b¸nh> ./muahop10")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" §¹i hiÖp cÇn ta gióp vÊn ®Ò g× ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function muahop1()
local tbItem = {
	{szName="Hép b¸nh trung thu", tbProp={6,1,4899,1,0,0},nCount = 1,nExpiredTime=20190831},
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
	{szName="Hép b¸nh trung thu", tbProp={6,1,4899,1,0,0},nCount = 10,nExpiredTime=20190831},
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
function NhanMoctask_nuochoa()
	local tbSay = {}

		tinsert(tbSay,"NhÉn m«c 600./Moc500")
		tinsert(tbSay,"NhËn mèc 1200./Moc1000")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" HiÖn B¹n §ang Sö Dông <color=green>"..GetTask(task_nuochoa).." <color>N­íc Hoa", getn(tbSay), tbSay)
	
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMocBanhThapCam()
	local tbSay = {}

		tinsert(tbSay,"NhÉn m«c 600 ./Moc600ThapCam")
		tinsert(tbSay,"NhËn mèc 1200./Moc1200ThapCam")
		
		tinsert(tbSay,"Tho¸t/no")
		Say(" HiÖn B¹n §ang Sö Dông <color=green>"..GetTask(task_hoatai).." <color>Hoa Tai", getn(tbSay), tbSay)
	
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function Moc600ThapCam()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	
	if (GetTask(task_hoatai) >= 600) and (GetTask(task_moc_hoatai) == 0) then
		local tbAward = {
		--	{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=1},	
			--{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=5},	
		--	{szName="Ngù Phong",tbProp={0,3964},nCount=1,nQuality=1,nExpiredTime=14*24*60},
		{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=1},	
		
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 500") SetTask(task_moc_hoatai,1)
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 600 Hoa Tai")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 500 Thap Cam\n");		

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
	if (GetTask(task_hoatai) >= 1200)  and (GetTask(task_moc_hoatai) == 1) then
		local tbAward = {
			[1] = {
			{szName="Ngò Hµnh Ên",tbProp={0,3953},nQuality=1,nExpiredTime=14*24*60},
			{szName="Xuyªn Y Ph¸ Gi¸p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=14*24*60},
			{szName="MÆt N¹ ChiÕn Tr­êng Vuong Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=14*24*60},
			{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=1},	
			--{szName="Ngua Random",tbProp={0,random(3963,3966)},nQuality=1,nCount=1,nExpiredTime=14*24*60},
						{szName="B¾c §Èu ThuÇn M· ThuËt",tbProp={6,1,1987,1,0,0},nCount=1},	
			{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=1},				
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e9}}, "test", 1);
		
						local d = random(1,20)
				if d==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;
		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\ Thap Cam\n");
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event Hoa Tai 1200")
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 400") SetTask(task_moc_hoatai,2)
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
	
	if (GetTask(task_nuochoa) >= 600) and (GetTask(task_mocnuochoa) == 0) then
		local tbAward = {
			{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=1},	
			{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=5},	
			{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=1},	
		
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 500") SetTask(task_mocnuochoa,1)
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 500")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 500\n");		

	else
		Talk(1,"","B¹n Ch­a §¹t Tíi Mèc Nµy")
	end
end

----------------------------------------------------------------------------------------------
function ResetEvent()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(task_nuochoa) >= 1000) and (GetTask(MOCRESETEVENT)) ==0 then
		if (Xu >= 0) then
			SetTask(task_nuochoa,0)-- reset banh dac biet ve 0
			SetTask(task_mocnuochoa,0)  --reset moc banh db ve 0
			SetTask(MOCRESETEVENT,1) --moc luu lai da reset 1 lan
			SetTask(TSK_CanhHoa,0)--reset banh trung thu ve 0
			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 100 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 1000 b¸nh trung thu ®Æc biÖt hoÆc ®· reset 1 lÇn råi")
	end
end
---------
----------------------------------------------------Nhan Moc 1000 -----------------------------------------------------------------------------------------------------
function Moc1000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return
	end
	if (GetTask(task_nuochoa) >= 1200)  and (GetTask(task_mocnuochoa) == 1)then
		local tbAward = {
			[1] = {
		--	{szName="Ngua RanDom",tbProp={0,random(3963,3966)},nCount=1,nQuality=1,nExpiredTime=14*24*60},
			{{szName="Ngò Hµnh Ên",tbProp={0,3953},nQuality=1,nExpiredTime=14*24*60},},
			{{szName="Xuyªn Y Ph¸ Gi¸p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=14*24*60},},
			{szName="B¾c §Èu ThuÇn M· ThuËt",tbProp={6,1,1987,1,0,0},nCount=1},		
			{szName="Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=5},		
			{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=2},	
			{szName="B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,0,0},nCount=2},			
			{szName="MÆt N¹ ChiÕn Tr­êng Vuong Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=14*24*60},	
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 40e9}}, "test", 1);
		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\n");
		Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 1000")
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 400") SetTask(task_mocnuochoa,2)
				local a = random(1,10)
				if a==11 then
				--	tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng Y",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);
				end;

				local b = random(1,5)
				if b==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng KhÝ Giíi",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
				end;

				local c = random(1,10)
				if c==5 then
					tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹ ChiÕn Tr­êng Thanh Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
				end;
								local c1 = random(1,50)
				if c1==5 then
					tbAwardTemplet:GiveAwardByList({{szName="MÆt N¹ ChiÕn Tr­êng Thanh Gi¶",tbProp={0,11,839,1,0,0},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
				end;

				local d = random(1,10)
				if d==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;

				local e = random(1,5)
				if e==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i = random(1,20)
				if i==10 then
					tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng LÖnh",tbProp={6,1,4882,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i1 = random(1,20)
				if i1==10 then
					tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,1},nCount=5,},}, "test", 1);
				end;
				
				local i2 = random(1,5)
				if i2==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "Nam Tµo ThuÇn M· ThuËt",tbProp={6,1,1989,1,1},nCount=5,},}, "test", 1);
				end;
				local z = random(1,20)
				if z==5 then
					tbAwardTemplet:GiveAwardByList({{nExp_tl = 5e9}}, "test", 1);
					end;
					local z1 = random(1,20)

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
