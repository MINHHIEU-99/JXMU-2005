--Edit by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
if GetLevel() < 190 then
	Say("��ng c�p y�u c�u �� L�m Nhi�m V� tr�n 190, B�n h�y Mau C� G�ng Nh�")
return 1 
end
local nCongHuan = CalcEquiproomItemCount(6, 1, 4806, 1) ;
		if (nCongHuan < 5000) then
				Talk(1,"","<color=white>thi�u hi�p kh�ng mang theo 5000 Thien Tinh Ngoc !!") 
			return
		end
if (GetTask(369) == 47) then
	--4130 Dai Na Di Khau Quyet = 4159
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30155,0,0,0}, nBindState=-2}, "test", 1);
--tbAwardTemplet:GiveAwardByList({tbProp={4,1506,1,1,0,0},nCount=500},"Ti�n ��ng")--  tui tien dong
ConsumeEquiproomItem(5000, 6, 1, 4806, 1)
	SetTask(369,48)
	AddNote("Trong l�c kh�n ��u b�i ki�n, C�c h� t�m th�y quy�n v�n t� c�t gi�u ��ng sau bia m� D��ng Gi�o Ch�. �i xem th� bia m� c�a Phu Nh�n xem sao!") 
Msg2Player("Trong l�c kh�n ��u b�i ki�n, C�c h� t�m th�y quy�n v�n t� c�t gi�u ��ng sau bia m� D��ng Gi�o Ch�. �i xem th� bia m� c�a Phu Nh�n xem sao!") 
end
end


