IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "<bclr=blue>N÷ HiÖp<bclr>";
	else
		return "<bclr=blue>§¹i HiÖp<bclr>";
	end
end
--------------------------------------------------------------------------
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370}
KyNangThatTruyen = 5940
-------------------------------------------------------------------
function main()
if GetLevel() < 180 and ST_IsTransLife() ~= 1 then
	Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 180 Trïng Sinh Kh«ng Giíi H¹n §¼ng CÊp Míi Cã ThÓ Häc Kü N¨ng Nµy")
	return 1;
end
	local nFaction = GetLastFactionNumber() + 1
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
		return 1;
	else
		for i=1,11 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					SetTask(KyNangThatTruyen,1)
					Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<bclr><bclr=red> "..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
					return 1;
				end
			end
		end
	end
end
----------------------------------------------------------------------------------------------------------------------
