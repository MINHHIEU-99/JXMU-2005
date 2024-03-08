Include("\\script\\dailogsys\\dailogsay.lua")
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370,1986}
function main()
	-- if GetLevel() >= 180 then
		-- Say("��ng c�p t� 180 tr� l�n m�i c� th� nh�n.")
		-- return 1
	-- end
	local nFaction = GetLastFactionNumber() +1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..GetName().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� S� D�ng M�t T�ch Th�t Truy�n")
		return 1
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],1) 
					Talk(1,"","<color=green>"..GetName().." �� H�c ���c K� N�ng Th�t Truy�n<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..GetName().." �� H�c K� N�ng N�y Kh�ng Th� H�c N�a")
					return 1
				end
			end
		end
	end
	return 0
end
--------------------------------------------------------------------------------------------
