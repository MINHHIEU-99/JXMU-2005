IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
GioiHanKyNang = 5979
----------------------------------------------------------
function myplayersex()
	if (GetSex() == 1) then
		return "N� Hi�p"
	else
		return "��i Hi�p"
	end
end
-----------------------------------------------------
function main()
	if (GetTask(GioiHanKyNang) == 0) then
		SetTask(GioiHanKyNang,1) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 21 Th�nh C�ng")
	elseif (GetTask(GioiHanKyNang) == 1) then
		SetTask(GioiHanKyNang,2) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 22 Th�nh C�ng")
	elseif (GetTask(GioiHanKyNang) == 2) then
		SetTask(GioiHanKyNang,3) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 23 Th�nh C�ng")
--	elseif (GetTask(GioiHanKyNang) == 3) then
--		SetTask(GioiHanKyNang,4) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 24 Th�nh C�ng")
--	elseif (GetTask(GioiHanKyNang) == 4) then
--		SetTask(GioiHanKyNang,5) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 25 Th�nh C�ng")
--	elseif (GetTask(GioiHanKyNang) == 5) then
--		SetTask(GioiHanKyNang,6) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 26 Th�nh C�ng")
--	elseif (GetTask(GioiHanKyNang) == 6) then
--		SetTask(GioiHanKyNang,7) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 27 Th�nh C�ng")
--	elseif (GetTask(GioiHanKyNang) == 7) then
--		SetTask(GioiHanKyNang,8) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 28 Th�nh C�ng")
--	elseif (GetTask(GioiHanKyNang) == 8) then
--		SetTask(GioiHanKyNang,9) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 29 Th�nh C�ng")
--	elseif (GetTask(GioiHanKyNang) == 9) then
--		SetTask(GioiHanKyNang,10) Msg2Player("Ch�c M�ng "..myplayersex().." �� M� Gi�i H�n K� N�ng 150 L�n 30 Th�nh C�ng")
	else
		Talk(1,"","<color=red>K� N�ng 150 �� ��t Gi�i H�n R�i Kh�ng Th� M� Th�m N�a")
	end
end

------------------------------------------------------------------------------------