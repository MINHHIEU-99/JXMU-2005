IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
HOAPHUONGTRANG = 4993
--------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
----------------------------------------------------
function main()
if (CalcFreeItemCellCount() < 10) then
		Talk(1,"","H�y �� Tr�ng 10 � tr�ng r�i h�y s� d�ng")
		return
	end
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=20  then
		Msg2Player("Ch� s� d�ng � Giang T�n Th�n nh� b�n.");
		return 1
	end
--dofile("script/doldly/event/hoaphuong/banhdacbiet.lua")
local nDate = tonumber(GetLocalDate("%Y%m%d"));
local nTime = tonumber(GetLocalDate("%H%M"));
if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
	Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 Tr�ng Sinh Kh�ng Gi�i H�n ��ng C�p")
return end
	if (nDate >= 20180512 and nDate <= 20220830 and nTime >= 0000 and nTime <= 2359) then
		if GetTask(HOAPHUONGTRANG) <50000 then
			if CalcFreeItemCellCount() >= 10 then
				SetTask(HOAPHUONGTRANG,GetTask(HOAPHUONGTRANG)+1) tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng B�nh Sinh Nh�t ��c Bi�t")
			else
				Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y s� d�ng",0) return 1
			end
		else
			Say(""..myplayersex().." �� S� D�ng T�i �a 50000 B�nh Sinh Nh�t ��c Bi�t�\nTrong Su�t Th�i Gian Ho�t ��ng") return 1
		end
	else
		Talk(1,"","V�t Ph�m �� Qu� H�n S� D�ng S� T� ��ng M�t �i")
	end
end
-----------------------------------------------------------------------------------------------------------------------
tbAward = {
	[1] = {
		{nExp_tl = 4e6},
	},
	[2] = {
		
		{szName="H�nh Hi�p L�nh",tbProp={6,1,4807,1,0,0},nCount=10,nRate=0.1},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1,nRate=0.01,nExpiredTime=43200},
		{szName="H�nh Hi�p L�nh",tbProp={6,1,4807,1,0,0},nCount=10,nRate=5},
                {szName="�� C��ng H�a +5",tbProp={6,1,4345,1,0,0},nCount=2,nRate=0.001},
		{szName="M�t N� Chi�n Tr��ng Th�nh Gi�",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=20160,nRate=0.02},
		{szName="M�t N� Chi�n Tr��ng Ho�ng Gi� Gi�",tbProp={0,11,817,1,0,0},nCount=1,nExpiredTime=20160,nRate=0.001},
               {szName="H�nh Hi�p L�nh",tbProp={6,1,4346,1,0,0},nCount=1,nRate=0.001},
                {szName="dang long thach",tbProp={6,1,4807,1,0,0},nCount=1,nRate=0.01},
               {szName="dang long thach",tbProp={6,1,5441,1,0,0},nCount=1,nRate=0.01},
		{szName = "Ng�n L��ng",nJxb=50000,nCount=1, nRate = 0.1},
		{szName = "Ng�n L��ng",nJxb=100000,nCount=1, nRate = 0.2},
		{szName = "Ng�n L��ng",nJxb=150000,nCount=1, nRate = 0.3},
	},
}
------------------------------------------------------------------------------------------------------------------------------------------------