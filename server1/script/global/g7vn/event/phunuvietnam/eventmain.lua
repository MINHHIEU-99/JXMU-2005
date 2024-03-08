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
		return "N� Hi�p";
	else
		return "��i Hi�p";
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

		tinsert(tbSay,"Nh�n Th��ng M�c N��c Hoa./NhanMoctask_nuochoa")
		tinsert(tbSay,"Nh�n Th��ng M�c Hoa Tai./NhanMocBanhThapCam")
	--	tinsert(tbSay,"Mua h�p B�nh trung thu ��c bi�t./MuaEvent")
	--	tinsert(tbSay,"Reset Event B�nh trung thu ��c bi�t(Free)./ResetEvent")
		--tinsert(tbSay,"Show Top Event./ShowTopThiep")
		
		tinsert(tbSay,"Tho�t/no")
		Say("Ch�o M�ng Nh�n S� Tham Gia event trung thu c�ng VoLamVietPK. B�n �� s� d�ng: <color=red>"..GetTask(task_nuochoa).." <color>N��c Hoa", getn(tbSay), tbSay)

		
	else
		Say("Ch�c n�ng �� k�t th�c ")
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

		tinsert(tbSay,"Mua 1 h�p b�nh trung thu ��c bi�t <25xu - 50 b�nh> ./muahop1")
		tinsert(tbSay,"Mua 10 h�p b�nh trung thu ��c bi�t <250xu - 500 b�nh> ./muahop10")
		
		tinsert(tbSay,"Tho�t/no")
		Say(" ��i hi�p c�n ta gi�p v�n �� g� ? ", getn(tbSay), tbSay)


end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function muahop1()
local tbItem = {
	{szName="H�p b�nh trung thu", tbProp={6,1,4899,1,0,0},nCount = 1,nExpiredTime=20190831},
}
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
	if  nCount_muaban >= 25  then
		ConsumeEquiproomItem(25, 4,417, 1,-1)
		tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
		Msg2Player("Ch�c M�ng b�n �� mua Th�nh C�ng 1 h�p b�nh trung thu")
	else
		Say("Kh�ng �� 25 Xu, Xin Xem L�i")
	end

end

---------------------------------------------------------------------------------------------------------------------------

function muahop10()
local tbItem = {
	{szName="H�p b�nh trung thu", tbProp={6,1,4899,1,0,0},nCount = 10,nExpiredTime=20190831},
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
function NhanMoctask_nuochoa()
	local tbSay = {}

		tinsert(tbSay,"Nh�n m�c 600./Moc500")
		tinsert(tbSay,"Nh�n m�c 1200./Moc1000")
		
		tinsert(tbSay,"Tho�t/no")
		Say(" Hi�n B�n �ang S� D�ng <color=green>"..GetTask(task_nuochoa).." <color>N��c Hoa", getn(tbSay), tbSay)
	
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMocBanhThapCam()
	local tbSay = {}

		tinsert(tbSay,"Nh�n m�c 600 ./Moc600ThapCam")
		tinsert(tbSay,"Nh�n m�c 1200./Moc1200ThapCam")
		
		tinsert(tbSay,"Tho�t/no")
		Say(" Hi�n B�n �ang S� D�ng <color=green>"..GetTask(task_hoatai).." <color>Hoa Tai", getn(tbSay), tbSay)
	
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


function Moc600ThapCam()
	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	
	if (GetTask(task_hoatai) >= 600) and (GetTask(task_moc_hoatai) == 0) then
		local tbAward = {
		--	{szName="L� bao Huy�t Chi�n (��i)",tbProp={6,1,4898,1,0,0},nCount=1},	
			--{szName="Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,0,0},nCount=5},	
		--	{szName="Ng� Phong",tbProp={0,3964},nCount=1,nQuality=1,nExpiredTime=14*24*60},
		{szName="B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,0,0},nCount=1},	
		
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 500") SetTask(task_moc_hoatai,1)
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 600 Hoa Tai")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 500 Thap Cam\n");		

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
	if (GetTask(task_hoatai) >= 1200)  and (GetTask(task_moc_hoatai) == 1) then
		local tbAward = {
			[1] = {
			{szName="Ng� H�nh �n",tbProp={0,3953},nQuality=1,nExpiredTime=14*24*60},
			{szName="Xuy�n Y Ph� Gi�p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=14*24*60},
			{szName="M�t N� Chi�n Tr��ng Vuong Gi�",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=14*24*60},
			{szName="L� bao Huy�t Chi�n (��i)",tbProp={6,1,4898,1,0,0},nCount=1},	
			--{szName="Ngua Random",tbProp={0,random(3963,3966)},nQuality=1,nCount=1,nExpiredTime=14*24*60},
						{szName="B�c ��u Thu�n M� Thu�t",tbProp={6,1,1987,1,0,0},nCount=1},	
			{szName="Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,0,0},nCount=1},				
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e9}}, "test", 1);
		
						local d = random(1,20)
				if d==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;
		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\ Thap Cam\n");
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event Hoa Tai 1200")
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 400") SetTask(task_moc_hoatai,2)
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
	
	if (GetTask(task_nuochoa) >= 600) and (GetTask(task_mocnuochoa) == 0) then
		local tbAward = {
			{szName="L� bao Huy�t Chi�n (��i)",tbProp={6,1,4898,1,0,0},nCount=1},	
			{szName="Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,0,0},nCount=5},	
			{szName="B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,0,0},nCount=1},	
		
		}
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e9}}, "test", 1);
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 500") SetTask(task_mocnuochoa,1)
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 500")
		WriteLogPro("dulieu/event_moc1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 500\n");		

	else
		Talk(1,"","B�n Ch�a ��t T�i M�c N�y")
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
			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 100 Xu Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a S� D�ng �� 1000 b�nh trung thu ��c bi�t ho�c �� reset 1 l�n r�i")
	end
end
---------
----------------------------------------------------Nhan Moc 1000 -----------------------------------------------------------------------------------------------------
function Moc1000()
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return
	end
	if (GetTask(task_nuochoa) >= 1200)  and (GetTask(task_mocnuochoa) == 1)then
		local tbAward = {
			[1] = {
		--	{szName="Ngua RanDom",tbProp={0,random(3963,3966)},nCount=1,nQuality=1,nExpiredTime=14*24*60},
			{{szName="Ng� H�nh �n",tbProp={0,3953},nQuality=1,nExpiredTime=14*24*60},},
			{{szName="Xuy�n Y Ph� Gi�p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=14*24*60},},
			{szName="B�c ��u Thu�n M� Thu�t",tbProp={6,1,1987,1,0,0},nCount=1},		
			{szName="Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,0,0},nCount=5},		
			{szName="L� bao Huy�t Chi�n (��i)",tbProp={6,1,4898,1,0,0},nCount=2},	
			{szName="B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,0,0},nCount=2},			
			{szName="M�t N� Chi�n Tr��ng Vuong Gi�",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=14*24*60},	
			},
		}	
		tbAwardTemplet:GiveAwardByList({{nExp_tl = 40e9}}, "test", 1);
		WriteLogPro("dulieu/event_moc2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An max Moc 1000\n");
		Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 1000")
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 400") SetTask(task_mocnuochoa,2)
				local a = random(1,10)
				if a==11 then
				--	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Y",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);
				end;

				local b = random(1,5)
				if b==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Kh� Gi�i",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
				end;

				local c = random(1,10)
				if c==5 then
					tbAwardTemplet:GiveAwardByList({{szName="M�t N� Chi�n Tr��ng Thanh Gi�",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
				end;
								local c1 = random(1,50)
				if c1==5 then
					tbAwardTemplet:GiveAwardByList({{szName="M�t N� Chi�n Tr��ng Thanh Gi�",tbProp={0,11,839,1,0,0},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
				end;

				local d = random(1,10)
				if d==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
				end;

				local e = random(1,5)
				if e==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "M�t t�ch K� N�ng 150 C�p 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i = random(1,20)
				if i==10 then
					tbAwardTemplet:GiveAwardByList({{szName = "Tinh S��ng L�nh",tbProp={6,1,4882,1,1},nCount=1,},}, "test", 1);
				end;
				
				local i1 = random(1,20)
				if i1==10 then
					tbAwardTemplet:GiveAwardByList({{szName = "Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,1},nCount=5,},}, "test", 1);
				end;
				
				local i2 = random(1,5)
				if i2==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "Nam T�o Thu�n M� Thu�t",tbProp={6,1,1989,1,1},nCount=5,},}, "test", 1);
				end;
				local z = random(1,20)
				if z==5 then
					tbAwardTemplet:GiveAwardByList({{nExp_tl = 5e9}}, "test", 1);
					end;
					local z1 = random(1,20)

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
