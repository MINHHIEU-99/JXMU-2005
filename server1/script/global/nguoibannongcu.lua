function main()
local tbSay = {
"Ta mu�n mua l��i( C�n 100 v�n)/MuaLuoi",
"Ta mu�n mua c�n c�u(C�n 20 v�n)/MuaCanCau",
"Ta mu�n mua l��i( C�n 5 ti�n ��ng)/MuaLuoiExt",
"Ta mu�n mua c�n c�u(C�n 1 ti�n ��ng)/MuaCanCauExt",
"Ta xem l�i ��/OnCancel",

}
Say("Ta c� m�t s� ng� c� c� th� gi�p �ch cho ng��i",getn(tbSay),tbSay)
end
function MuaLuoiExt()
	if  CalcEquiproomItemCount(4, 417, 1, -1) < 5 then
	Say("Ng��i ki�m tra l�i h�nh trang xem c� �� ti�n ��ng kh�ng?",0)
	return
	end
	if ConsumeEquiproomItem(5, 4, 417, 1, -1) ~=1 then
	Say("C� l�i trong qu� tr�nh tr� ti�n ��ng vui l�ng b�o l�i v�i GM")
	WriteLog("B� l�i trong qu� tr�nh tr� ti�n ��ng mua ng� c�")
	return
	end
	AddItem(6,1,3819,1,0,0)
	Msg2Player("Ng��i mua th�nh c�ng 1 c�i l��i ��nh c�. D�ng c�n th�n kh�o r�ch l��i l� kh�ng s� d�ng ���c n�a.")
	WriteLog("LuoiXu")
end
function MuaCanCauExt()
	if  CalcEquiproomItemCount(4, 417, 1, -1) < 1 then
	Say("Ng��i ki�m tra l�i h�nh trang xem c� �� ti�n ��ng kh�ng?",0)
	return
	end
	if ConsumeEquiproomItem(1, 4, 417, 1, -1) ~=1 then
	Say("C� l�i trong qu� tr�nh tr� ti�n ��ng vui l�ng b�o l�i v�i GM")
	WriteLog("B� l�i trong qu� tr�nh tr� ti�n ��ng mua ng� c�")
	return
	end
	AddItem(6,1,3820,1,0,0)
	Msg2Player("Ng��i mua th�nh c�ng 1 c�i c�n c� ��nh. C�u c�n th�n kh�o g�y c�n c�u l� h�t d�ng.")
	WriteLog("CanXu")
end
function MuaLuoi()
if GetCash() < 1000000 then
return Say("Ng��i c� mang theo ti�n kh�ng th�?")
end
Pay(1000000)
AddItem(6,1,3819,1,0,0)
Msg2Player("Ng��i mua th�nh c�ng 1 c�i l��i ��nh c�. D�ng c�n th�n kh�o r�ch l��i l� kh�ng s� d�ng ���c n�a.")
WriteLog("LuoiVan")
end
function MuaCanCau()
if GetCash() < 200000 then
return Say("Ng��i c� mang theo ti�n kh�ng th�?")
end
Pay(200000)
AddItem(6,1,3820,1,0,0)
Msg2Player("Ng��i mua th�nh c�ng 1 c�i c�n c� ��nh. C�u c�n th�n kh�o g�y c�n c�u l� h�t d�ng.")
WriteLog("CanVan")
end