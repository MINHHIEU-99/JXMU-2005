---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
--------------------------------------------------------
HOAPHUONGTRANG	 = 4986
NHANTHUONGMOC		 = 4985
NHANTHUONGMOC2		 = 4984
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
dofile("script/doldly/event/trungthu/npc_sukien.lua")
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
	if (nDate >= 20180413 and nDate <= 20220930 and nTime >= 0000 and nTime <= 2359) then
	tbDailog:AddOptEntry("Nh�n Th��ng M�c ", NhanMoc);
       -- tbDailog:AddOptEntry("Nh�n M�c Sau Khi �� Tr�ng Sinh 5", mocts5);
tbDailog:AddOptEntry("Reset Event",Reset);
	tbDailog:Show();
else
Talk(1,"","<bclr=violet>Ho�t ��ng Ch� M� T� 0h Ng�y 30 - 07 - 2022 ��n 23h 59 Ng�y 30 - 08 - 2022 Xin M�i Quay L�i Sau<bclr>")
return 0;
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function mocts5()
		Say("<color=green>"..myplayersex().."�� nhan toi moc: <color=red>"..GetTask(4984).."<color>. �� S� D�ng: <color=red>"..GetTask(4986).."<color> Qu�c Kh�nh<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 50000 Qu�c Kh�nh\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 300KNB/L�n<color>",5,"Xem Ph�n Th��ng M�c 10K/XemMoc100001","Xem Ph�n Th��ng M�c 20K/XemMoc150001","Xem Ph�n Th��ng M�c 30K/XemMoc200001","H�y B�/No")
end


function XemMoc100001()
if (GetTask(4984) == 1)then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Qu�c Kh�nh<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m<color>",2,"Nh�n Ph�n Th��ng M�c 10000/Moc100001","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Qu�c Kh�nh<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m <color>",1,"H�y B�/No")
end
end
function XemMoc150001()
if  (GetTask(4984) == 2)then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Qu�c Kh�nh<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m<color>",2,"Nh�n Ph�n Th��ng M�c 20000/Moc150001","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Qu�c Kh�nh<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m<color>",1,"H�y B�/No")
end
end
function XemMoc200001()
if  (GetTask(4984) == 3)then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/30000<color> Qu�c Kh�nh<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m <color>",2,"Nh�n Ph�n Th��ng M�c 30000/Moc200001","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/30000<color> Qu�c Kh�nh<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�mh<color>",1,"H�y B�/No")
end
end


----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc100001()
	if (GetTask(HOAPHUONGTRANG) >= 10000)  and  (GetTask(4984) == 1)then
		local tbAward = {
			[1] = {
				{nExp_tl = 30e9},
				{szName="��ng Long L�nh",tbProp={6,1,5439,1,0,0},nCount=2},
                                {szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6013,1,0,0},nCount=1,tbParam={6,0,0,0,0,0}},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 100001") SetTask(4984,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc150001()
	if (GetTask(HOAPHUONGTRANG) >= 20000)   and (GetTask(4984) == 2)then
		local tbAward = {
			[1] = {
				{nExp_tl = 40e9},
				{szName="��ng Long L�nh",tbProp={6,1,5439,1,0,0},nCount=2},
                                {szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,6014,1,0,0},nCount=1,tbParam={7,0,0,0,0,0}},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 150001") SetTask(4984,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc200001()
	if (GetTask(HOAPHUONGTRANG) >= 30000)  and (GetTask(4984) == 3) then
		local tbAward = {
			[1] = {
				{nExp_tl = 60e9},
				{szName="��ng Long L�nh",tbProp={6,1,5439,1,0,0},nCount=4},
                                {szName="H�nh Hi�p L�nh",tbProp={6,1,30293,1,0,0},nCount=1000},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 200001") SetTask(4984,4)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
		Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."<color> Qu�c Kh�nh<color>\n<color=orange>L�u �: Nh�n M�c T�i �a 50000 Qu�c Kh�nh\nTrong Su�t Th�i Gian Ho�t ��ng<color>\n<color=pink>               T�ng Th�m L�n S� D�ng: 300KNB/L�n<color>",5,"Xem Ph�n Th��ng M�c 10K/XemMoc10000","Xem Ph�n Th��ng M�c 20K/XemMoc15000","Xem Ph�n Th��ng M�c 30K/XemMoc20000","Xem Ph�n Th��ng M�c 40K/XemMoc25000","Xem Ph�n Th��ng M�c 50K/XemMoc50000","H�y B�/No")
end


function XemMoc10000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Qu�c Kh�nh<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m<color>",2,"Nh�n Ph�n Th��ng M�c 10000/Moc10000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Qu�c Kh�nh<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m <color>",1,"H�y B�/No")
end
end
function XemMoc15000()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Qu�c Kh�nh<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m<color>",2,"Nh�n Ph�n Th��ng M�c 20000/Moc15000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Qu�c Kh�nh<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m<color>",1,"H�y B�/No")
end
end
function XemMoc20000()
if (GetTask(NHANTHUONGMOC) == 3) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/30000<color> Qu�c Kh�nh<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m <color>",2,"Nh�n Ph�n Th��ng M�c 30000/Moc20000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/30000<color> Qu�c Kh�nh<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�mh<color>",1,"H�y B�/No")
end
end
function XemMoc25000()
if (GetTask(NHANTHUONGMOC) == 4) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/40000<color> Qu�c Kh�nh<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m <color>",2,"Nh�n Ph�n Th��ng M�c 40000/Moc25000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/40000<color> Qu�c Kh�nh<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m <color>",1,"H�y B�/No")
end
end
function XemMoc50000()
if (GetTask(NHANTHUONGMOC) == 5) then
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/50000<color> Qu�c Kh�nh<color>\n<color=orange>Ph�n Th��ng M�c N�y G�m <color>",2,"Nh�n Ph�n Th��ng M�c 50000/Moc50000","H�y B�/No")
else 
Say("<color=green>"..myplayersex().." �� S� D�ng: <color=red>"..GetTask(HOAPHUONGTRANG).."/50000<color> Qu�c Kh�nh<color>\n<color=red>Kh�ng �� �i�u Ki�n �� Nh�n M�c N�y Ho�c �� Nh�n R�i<color=red>\n<color=orange>Ph�n Th��ng M�c N�y G�m <color>",1,"H�y B�/No")
end
end

----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc10000()
	if (GetTask(HOAPHUONGTRANG) >= 10000)  and (GetTask(4985) == 0)then
		local tbAward = {
			[1] = {
				{nExp_tl = 20e9},
				--{szName="Nguy�t Khuy�t Tinh Th�ch",tbProp={6,1,5446,1,0,0},nCount=20},
				{szName="di�u d��ng L�nh",tbProp={6,1,5442,1,0,0},nCount=2},
				{szName="T�i Tinh Ng�c",tbProp={6,1,5337,1,0,0},nCount=2},
				{szName="��i thanh 23",tbProp={6,1,4347,1,0,0},nCount=1},

			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 10000") SetTask(4985,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc15000()
	if (GetTask(HOAPHUONGTRANG) >= 20000)  and (GetTask(4985) == 2)then
		local tbAward = {
			[1] = {
				{nExp_tl = 30e9},
				--{szName="Nguy�t Khuy�t Tinh Th�ch",tbProp={6,1,5446,1,0,0},nCount=100},
				{szName="di�u d��ng L�nh",tbProp={6,1,5442,1,0,0},nCount=5},
				{szName="Thi�n Ni�n H� Th� �",tbProp={6,1,2074,1,0,0},nCount=10},
				{szName="C�n Kh�n Gi�i Ch�",tbProp={0,random(9171,9185)},nQuality=1,nCount=1},
				{szName="Anh H�o Th�ch",tbProp={6,1,5448,1,0,0},nCount=200},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 15000") SetTask(4985,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc20000()
	if (GetTask(HOAPHUONGTRANG) >= 30000) and (GetTask(4985) == 3) then
		local tbAward = {
			[1] = {
				{nExp_tl = 30e9},
				--{szName="��i tinh ng�c t�i",tbProp={6,1,5331,1,0,0},nCount=1},
--{szName="��i tinh ng�c",tbProp={6,1,4873,1,0,0},nCount=2000},
				{szName="di�u d��ng L�nh",tbProp={6,1,5442,1,0,0},nCount=10},
				{szName="B�nh Ti�m N�ng",tbProp={6,1,128,1,0,0},nCount=10},
                            {szName="B�nh K� N�ng",tbProp={6,1,127,1,0,0},nCount=10},
				{szName="T�i Tinh Ng�c",tbProp={6,1,5337,1,0,0},nCount=5},
				{szName="Anh H�o Th�ch",tbProp={6,1,5448,1,0,0},nCount=300},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 20000") SetTask(4985,4)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc25000()
	if (GetTask(HOAPHUONGTRANG) >= 40000)  and (GetTask(4985) == 4)then
		local tbAward = {
			[1] = {
				{nExp_tl = 40e9},
				{szName="cang kh�n li�n hoa",tbProp={6,1,5041,1,0,0},nCount=500},
                            --{szName="��i tinh ng�c",tbProp={6,1,4873,1,0,0},nCount=8000},
				{szName="di�u d��ng L�nh",tbProp={6,1,5442,1,0,0},nCount=10},
				{szName="Anh H�o Th�ch",tbProp={6,1,5448,1,0,0},nCount=500},
				{szName="Anh H�o L�nh",tbProp={6,1,5443,1,0,0},nCount=15},
				{szName="B�chKhoa-B�nHo�nCh�nh",tbProp={6,1,30189,1,0,0},nCount=1},

			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 25000") SetTask(4985,5)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
function Moc50000()
	if (GetTask(HOAPHUONGTRANG) >= 50000)  and (GetTask(4985) == 5)then
		local tbAward = {
			[1] = {
				{nExp_tl = 50e9},
                            --{szName="��i tinh ng�c",tbProp={6,1,5331,1,0,0},nCount=1},
 				--{szName="di�u d��ng L�nh",tbProp={6,1,5442,1,0,0},nCount=10},
                           {szName="��i thanh 24",tbProp={6,1,4348,1,0,0},nCount=1},
                           {szName="Anh H�o Th�ch",tbProp={6,1,5448,1,0,0},nCount=500},
				{szName="C�n Kh�n Gi�i Ch�",tbProp={0,random(9195,9199)},nQuality=1,nCount=1},
			
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 50000") SetTask(4985,6)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reset()
local Xu = CalcEquiproomItemCount(4,1496,1,1)
	if (GetTask(4985) >= 6) then
		if (Xu >= 100) then
			SetTask(4986,0) ConsumeEquiproomItem(100,4,1496,1,-1) SetTask(4985,0)
			Talk(1,"","<color=red>"..myplayersex().." Ch�c M�ng B�n �� Reset Th�nh C�ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh�ng �� 100 KNB Xin Ki�m Tra L�i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a S� D�ng �� 50.000 Quoc Khanh")
	end
end