IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "<bclr=blue>N� Hi�p<bclr>";
	else
		return "<bclr=blue>��i Hi�p<bclr>";
	end
end
--------------------------------------------------------------------------
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370}
KyNangThatTruyen = 5940
-------------------------------------------------------------------
function main()
if GetLevel() < 180 and ST_IsTransLife() ~= 1 then
	Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a �� C�p 180 Tr�ng Sinh Kh�ng Gi�i H�n ��ng C�p M�i C� Th� H�c K� N�ng N�y")
	return 1;
end
	local nFaction = GetLastFactionNumber() + 1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� S� D�ng M�t T�ch Th�t Truy�n")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					SetTask(KyNangThatTruyen,1)
					Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c ���c K� N�ng Th�t Truy�n<bclr><bclr=red> "..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." �� H�c K� N�ng N�y Kh�ng Th� H�c N�a")
					return 1;
				end
			end
		end
	end
end
----------------------------------------------------------------------------------------------------------------------
