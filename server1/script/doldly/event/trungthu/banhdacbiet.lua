IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
HOAPHUONGTRANG = 4986
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
--dofile("script/doldly/event/hoaphuong/banhdacbiet.lua")
local nDate = tonumber(GetLocalDate("%Y%m%d"));
local nTime = tonumber(GetLocalDate("%H%M"));
if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
	Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 Tr�ng Sinh Kh�ng Gi�i H�n ��ng C�p")
return end
	if (nDate >= 20180512 and nDate <= 20220930 and nTime >= 0000 and nTime <= 2359) then
		if GetTask(HOAPHUONGTRANG) <50000 then
			if CalcFreeItemCellCount() >= 10 then
				SetTask(HOAPHUONGTRANG,GetTask(HOAPHUONGTRANG)+1) tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng B�nh Sinh Nh�t ��c Bi�t")
			else
				Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y s� d�ng",0) return 1
			end
		else
			Say(""..myplayersex().." �� S� D�ng T�i �a 50000 B�nh Trung Thu ��c Bi�t�\nTrong Su�t Th�i Gian Ho�t ��ng") return 1
		end
	else
		Talk(1,"","V�t Ph�m �� Qu� H�n S� D�ng S� T� ��ng M�t �i")
	end
end
-----------------------------------------------------------------------------------------------------------------------
tbAward = {
	[1] = {
		{nExp_tl = 1e7},
	},
	[2] = {
	        {szName="L�nh B�i Di�u D��ng",tbProp={6,1,5442,1,0,0},nCount=1,nRate=0.01},
		{szName="��i Tinh Ng�c",tbProp={6,1,4873,1,0,0},nCount=10,nRate=0.1},
		{szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=10,nRate=5},
		--{szName="M�t N� Chi�n Tr��ng Ho�ng Gi� Gi�",tbProp={0,11,839,1,0,0},nCount=1,nExpiredTime=20160,nRate=0.05},
		{szName="C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=3,nRate=0.3},
	        {szName="nguyet khuyet lenh",tbProp={6,1,5441,1,0,0},nCount=1,nRate=0.2},
		--{szName="Dieu Duong Thach",tbProp={6,1,5447,1,0,0},nCount=1,nRate=0.03},
		{szName="Anh Hao Thach",tbProp={6,1,5448,1,0,0},nCount=1,nRate=0.01},
		{szName="Anh H�o L�nh",tbProp={6,1,5443,1,0,0},nCount=1,nRate=0.001},
		--{szName="��i th�nh b� k�p 21",tbProp={6,1,4345,1,0,0},nCount=1,nRate=0.08},

	},
}
------------------------------------------------------------------------------------------------------------------------------------------------