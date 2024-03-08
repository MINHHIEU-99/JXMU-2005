---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
--------------------------------------------------------
HOAPHUONGTRANG	 = 4993
NHANTHUONGMOC		 = 4992

---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
----------------------------------------
function main()
dofile("script/doldly/event/sinhnhatvltk/npc_sukien.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc><bclr=violet>Ch�o M�ng Nh�n S� Tham Gia V� L�m Truy�n K�!...<bclr>",
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= 20210717 and nDate <= 20220830 and nTime >= 0000 and nTime <= 2359) then
	tbDailog:AddOptEntry("Nh�n Th��ng M�c", NhanMoc);
	tbDailog:Show();
else
Talk(1,"","<bclr=violet>Ho�t ��ng Ch� M� T� 0h Ng�y 17 - 07 - 2022 ��n 23h 59 Ng�y 30 - 08 - 2022 Xin M�i Quay L�i Sau<bclr>")
return 0;
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
		Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."<color> Cuong Thi<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 50.000 Cuong Thi\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 300KNB/L�n<color>",5,"Xem Ph�n Th��ng M�c 10K/XemMoc6000","Xem Ph�n Th��ng M�c 20K/XemMoc8000","Xem Ph�n Th��ng M�c 30K/XemMoc10k","Xem Ph�n Th��ng M�c 40K/XemMoc12k","Xem Ph�n Th��ng M�c 50K/XemMoc14k","H�y B�/No")
end
function XemMoc6000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Cuong Thi<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 20 T� Kinh Nghi�m<color>",2,"Nh�n Ph�n Th��ng M�c 10000/Moc6000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Cuong Thi<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 20 T� Kinh Nghi�m<color>",1,"H�y B�/No")
end
end
function XemMoc8000()
if (GetTask(NHANTHUONGMOC) == 1) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Cuong Thi<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 30 T� Kinh Nghi�m<color>",2,"Nh�n Ph�n Th��ng M�c 20000/Moc8000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Cuong Thi<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 30 T� Kinh Nghi�m<color>",1,"H�y B�/No")
end
end
function XemMoc10k()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/30.000<color> Cuong Thi<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 40 T� Kinh Nghi�m<color>",2,"Nh�n Ph�n Th��ng M�c 30.000/Moc10000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/30.000<color> Cuong Thi<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 40 T� Kinh Nghi�m<color>",1,"H�y B�/No")
end
end
function XemMoc12k()
if (GetTask(NHANTHUONGMOC) == 3) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/40000<color> Cuong Thi<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 50 T� Kinh Nghi�m<color>",2,"Nh�n Ph�n Th��ng M�c 40.000/Moc12000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/40000<color> Cuong Thi<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 50 T� Kinh Nghi�m<color>",1,"H�y B�/No")
end
end
function XemMoc14k()
if (GetTask(NHANTHUONGMOC) == 4) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/50000<color> Cuong Thi<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 60 T� Kinh Nghi�m<color>",2,"Nh�n Ph�n Th��ng M�c 50.000/Moc14000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/50000<color> Cuong Thi<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m : \n 1. 60 T� Kinh Nghi�m<color>",1,"H�y B�/No")
end
end
function NhanMoc1()
local HOAPHUONGTRANG = GetTask(4991);
	if (GetTask(NHANTHUONGMOC) == 0) then
		Say("<color=green>"..myplayersex().." �� Nh�n M�c 6000 Cuong Thi<color>\n<color=yellow>Hi�n T�i C� Th� Nh�n M�c: <color=red>"..HOAPHUONGTRANG.."/6000<color> Cuong Thi<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 10.000 Cuong Thi\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 300 KNB/L�n<color>",2,"Nh�n Th��ng/Moc6000","H�y B�/No")
	elseif (GetTask(NHANTHUONGMOC) == 1) then
		Say("<color=green>"..myplayersex().." �� Nh�n M�c 8000 Cuong Thi<color>\n<color=yellow>Hi�n T�i C� Th� Nh�n M�c: <color=red>"..HOAPHUONGTRANG.."/8000<color> Cuong Thi<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 10.000 Cuong Thi\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 300 KNB/L�n<color>",2,"Nh�n Th��ng/Moc8000","H�y B�/No")
	elseif (GetTask(NHANTHUONGMOC) == 2) then
	        Say("<color=green>"..myplayersex().." �� Nh�n M�c 10.000 Cuong Thi<color>\n<color=yellow>Hi�n T�i C� Th� Nh�n M�c: <color=red>"..HOAPHUONGTRANG.."/10.000<color> Cuong Thi<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 10000 Cuong Thi\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 300 KNB/L�n<color>",2,"Nh�n Th��ng/Moc10000","H�y B�/No")
	elseif (GetTask(NHANTHUONGMOC) == 3) then
	        Say("<color=green>"..myplayersex().." �� Nh�n M�c 12.000 Cuong Thi<color>\n<color=yellow>Hi�n T�i C� Th� Nh�n M�c: <color=red>"..HOAPHUONGTRANG.."/12.000<color> Cuong Thi<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 10000 Cuong Thi\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 300 KNB/L�n<color>",2,"Nh�n Th��ng/Moc12000","H�y B�/No")	
	elseif (GetTask(NHANTHUONGMOC) == 4) then
	        Say("<color=green>"..myplayersex().." �� Nh�n M�c 14.000 Cuong Thi<color>\n<color=yellow>Hi�n T�i C� Th� Nh�n M�c: <color=red>"..HOAPHUONGTRANG.."/14.000<color> Cuong Thi<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 10000 Cuong Thi\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 300 KNB/L�n<color>",2,"Nh�n Th��ng/Moc14000","H�y B�/No")
else
		Talk(1,"","<color=red>Hi�n T�i "..myplayersex().." Kh�ng C� Ph�n Th��ng N�o")
	end
end
-----------------------------------------------------------------------------------------------------
function Moc6000()
	if (GetTask(HOAPHUONGTRANG) >= 10000)  and (GetTask(NHANTHUONGMOC) == 0)then
		local tbAward = {
			[1] = {
				{nExp_tl = 10e9},
				{szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=3000},
                                {szName="��i th�nh b� k�p 150 l�n C�p 21",tbProp={6,1,4345,1,0,0},nCount=1},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 6000") SetTask(NHANTHUONGMOC,1)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc8000()
	if (GetTask(HOAPHUONGTRANG) >= 20000) and (GetTask(NHANTHUONGMOC) == 1) then
		local tbAward = {
			[1] = {
				{nExp_tl = 20e9},
				{szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=5000},
                                {szName="��i th�nh b� k�p 150 l�n C�p 21",tbProp={6,1,4346,1,0,0},nCount=1},

			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 8000") SetTask(NHANTHUONGMOC,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc10000()
	if (GetTask(HOAPHUONGTRANG) >= 30000)  and (GetTask(NHANTHUONGMOC) == 2)then
		local tbAward = {
			[1] = {
				{nExp_tl = 30e9},
				{szName="Tinh Ng�c",tbProp={6,1,5337,1,0,0},nCount=1},
		                {szName="M�t N� Chi�n Tr��ng Ho�ng Gi� Gi�",tbProp={0,11,817,1,0,0},nCount=1,nExpiredTime=20160},
      
                  },
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 10.000") SetTask(NHANTHUONGMOC,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc12000()
	if (GetTask(HOAPHUONGTRANG) >= 40000)  and (GetTask(NHANTHUONGMOC) == 3)then
		local tbAward = {
			[1] = {
				{nExp_tl = 40e9},
				{szName="Tinh Ng�c",tbProp={6,1,5337,1,0,0},nCount=3},
                                {szName="M�t N� Chi�n Tr��ng Th�n Gi�",tbProp={0,11,839,1,0,0},nCount=1},
		

      
                  },
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 12.000") SetTask(NHANTHUONGMOC,4)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc14000()
	if (GetTask(HOAPHUONGTRANG) >= 50000)  and (GetTask(NHANTHUONGMOC) == 4)then
		local tbAward = {
			[1] = {
				{nExp_tl = 50e9},
				{szName="Tinh Ng�c",tbProp={6,1,5337,1,0,0},nCount=5},
                                {szName="dieu duong",tbProp={6,1,5442,1,0,0},nCount=3},
                                {szName="dieu duong thack",tbProp={6,1,5447,1,0,0},nCount=10},
                                {szName="C�n Kh�n Gi�i Ch�",tbProp={0,random(9171,9185)},nQuality=1,nCount=1},
                                {szName="Thi�n Ni�n H� Th� �",tbProp={6,1,2074,1,0,0},nCount=10},
                                {szName="B�nh Ti�m N�ng",tbProp={6,1,128,1,0,0},nCount=25},
                                {szName="B�nh K� N�ng",tbProp={6,1,127,1,0,0},nCount=25},
		
      
                  },
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 14.000") SetTask(NHANTHUONGMOC,5)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reset()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(NHANTHUONGMOC) >= 5) then
		if (Xu >= 1) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(1,4,417,1,-1) SetTask(NHANTHUONGMOC,0)
			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 1 Xu Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a S� D�ng �� 10.000 Cuong Thi")
	end
end
