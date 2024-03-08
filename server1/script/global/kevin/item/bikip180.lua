Include("\\script\\dailogsys\\dailogsay.lua")
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370,1986}
function main()
	-- if GetLevel() >= 180 then
		-- Say("§¼ng cÊp tõ 180 trë lªn míi cã thÓ nhËn.")
		-- return 1
	-- end
	local nFaction = GetLastFactionNumber() +1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..GetName().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
		return 1
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],1) 
					Talk(1,"","<color=green>"..GetName().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..GetName().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
					return 1
				end
			end
		end
	end
	return 0
end
--------------------------------------------------------------------------------------------
