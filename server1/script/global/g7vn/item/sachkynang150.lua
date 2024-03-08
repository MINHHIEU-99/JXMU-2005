IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
GioiHanKyNang = 5979
----------------------------------------------------------
function myplayersex()
	if (GetSex() == 1) then
		return "N÷ HiÖp"
	else
		return "§¹i HiÖp"
	end
end
-----------------------------------------------------
function main()
	if (GetTask(GioiHanKyNang) == 0) then
		SetTask(GioiHanKyNang,1) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 21 Thµnh C«ng")
	elseif (GetTask(GioiHanKyNang) == 1) then
		SetTask(GioiHanKyNang,2) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 22 Thµnh C«ng")
	elseif (GetTask(GioiHanKyNang) == 2) then
		SetTask(GioiHanKyNang,3) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 23 Thµnh C«ng")
--	elseif (GetTask(GioiHanKyNang) == 3) then
--		SetTask(GioiHanKyNang,4) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 24 Thµnh C«ng")
--	elseif (GetTask(GioiHanKyNang) == 4) then
--		SetTask(GioiHanKyNang,5) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 25 Thµnh C«ng")
--	elseif (GetTask(GioiHanKyNang) == 5) then
--		SetTask(GioiHanKyNang,6) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 26 Thµnh C«ng")
--	elseif (GetTask(GioiHanKyNang) == 6) then
--		SetTask(GioiHanKyNang,7) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 27 Thµnh C«ng")
--	elseif (GetTask(GioiHanKyNang) == 7) then
--		SetTask(GioiHanKyNang,8) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 28 Thµnh C«ng")
--	elseif (GetTask(GioiHanKyNang) == 8) then
--		SetTask(GioiHanKyNang,9) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 29 Thµnh C«ng")
--	elseif (GetTask(GioiHanKyNang) == 9) then
--		SetTask(GioiHanKyNang,10) Msg2Player("Chóc Mõng "..myplayersex().." §· Më Giíi H¹n Kü N¨ng 150 Lªn 30 Thµnh C«ng")
	else
		Talk(1,"","<color=red>Kü N¨ng 150 §· §¹t Giíi H¹n Råi Kh«ng ThÓ Më Thªm N÷a")
	end
end

------------------------------------------------------------------------------------