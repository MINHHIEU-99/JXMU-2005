IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
HOAPHUONGDO = 4994
tbAward = {
	[1] = {
		{nExp_tl = 1e7},
	},
	[2] = {
		{szName="hanh hiep lenh",tbProp={6,1,2566,1,0,0},nCount=1,nRate=2.5},
		{szName="hanh hiep lenh",tbProp={6,1,2566,1,0,0},nCount=1,nRate=2.5},
		{szName="H�i Thi�n T�i T�o L� Bao",tbProp={6,1,4832,1,0,0},nCount=1,nExpiredTime=10080,nRate=2.5},
		{szName="H�i Thi�n T�i T�o L� Bao",tbProp={6,1,2527,1,0,0},nCount=1,nExpiredTime=10080,nRate=2.5},
	},
}
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
local nDate = tonumber(GetLocalDate("%Y%m%d"));
local nTime = tonumber(GetLocalDate("%H%M"));
if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
	Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 Tr�ng Sinh Kh�ng Gi�i H�n ��ng C�p")
return end
	if (nDate >= 20180512 and nDate <= 20220830 and nTime >= 0000 and nTime <= 2359) then
		if GetTask(HOAPHUONGDO) < 1500 then
			if CalcFreeItemCellCount() >= 10 then
				SetTask(HOAPHUONGDO,GetTask(HOAPHUONGDO)+1) tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng B�nh Kem")
			else
				Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y s� d�ng",0) return 1
			end
		else
			Say(""..myplayersex().." �� S� D�ng T�i �a 1500 B�nh Kem�\nTrong Su�t Th�i Gian Ho�t ��ng") return 1
		end
	else
		Talk(1,"","V�t Ph�m �� Qu� H�n S� D�ng S� T� ��ng M�t �i")
	end
end
