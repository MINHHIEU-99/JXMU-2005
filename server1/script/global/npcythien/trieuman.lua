--Edit    by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
if (GetTask(369) == 30) then
Say("Tri�u M�n: V� K� l�n Thi�u L�m T� t�m T� ti�n b�i, Huynh �y giao ��u v�i Chu Ch� Nh��c. C� l� n�o y c�ng mu�n t�m T� T�n thanh to�n? �i�u n�y ch�ng ta c�ng kh�ng r� nh�ng ta t�m th�y b� ki�p n�y ghi ch�p l�i chi�u th�c ��y �m kh� m� nha ��u �y �� s� d�ng khi giao ��u v�i V� K� Ca Ca. Ng��i h�y l�n Nga Mi h�i y  xem c� ph�i y l� ng��i ��u ��c b�n ta v� c��p l�y � Thi�n Ki�m v� �� Long �ao tr�n B�ng H�a ��o hay kh�ng!",2,"Tri�u C� N��ng y�n t�m, ta l�p t�c l�n ���ng./L3_get_yes","Ta c� vi�c kh�c ph�i l�m tr��c ��./L3_get_no")
elseif (GetTask(369) > 30) and (GetTask(369) < 35)then
Talk(1,"","Tri�u M�n: Ng��i l�n ���ng b�nh an, b�n ta tr�ng ch� tin t�c c�a ng��i!")
--Danh 4121 Tui Vai = 4162
elseif (GetTask(369) == 35) and (HaveCommonItem(6,1,30158) == 1) then
Talk(3,"L3_done","Tri�u M�n: Cu�i c�ng con nha ��u n�y �� l� b� m�t th�t c�a h�n. �a t� �a t�! Ta s� cho ng��i r�n l�i 2 c�y binh kh� n�y. H�y gi�i b�y c�ng V� K� Ca Ca l�m t� t��ng s� vi�c gi�i �i n�i oan �c b�y l�u nay cho ta nh�!","Ng��i ch�i: Ch�o Tri�u C� N��ng ta �i ��y.")
--Danh 973=1648 973=1650
elseif (HaveMagic(1994) < 0) and (HaveMagic(1995) < 0) then
Talk(1,"","Tri�u M�n: Ng��i c� h�c ���c C�u D��ng Th�n C�ng, c� C�u D��ng Ch�n Kh� h� th� m�i c� kh� n�ng ��i ��u v�i chi�u th�c v� c�ng ��y �m kh� c�a con nha ��u Chu Chi Nh��c!")	
elseif (GetTask(369) >= 40) then
Talk(1,"","Tri�u M�n: ng��i �� gi�p ta gi�i oan, ta r�t c�m k�ch ng��i! H�y nhanh b�o chuy�n n�y ��n V� K� Ca Ca g�p, n�u kh�ng Chu Ch� Nh��c s� t�m t�i T� Ti�n B�i �� gi�t ng��i b�t ��u m�i.")	
else 
Talk(1,"","Tri�u M�n: Ta c�ng V� K� Ca Ca s� �i kh�p thi�n h� c�ng t�n h��ng Ti�n S�n H�a Th�y trong su�t qu�ng ��i c�n l�i.")	
end
end

function L3_done()
--4121 - Tui Vai
DelCommonItem(6,1,30158)
SetTask(369,40)
AddNote("H�i ��p Tri�u M�n Qu�n Ch�a, ho�n th�nh nhi�m v�, giao l�i nh�ng m�nh v�, ch� ng�y 2 m�n binh kh� ���c r�n ��c l�i. �i t�m Tr��ng Gi�o Ch� �� h�i b�o.") 
Msg2Player("H�i ��p Tri�u M�n Qu�n Ch�a, ho�n th�nh nhi�m v�, giao l�i nh�ng m�nh v�, ch� ng�y 2 m�n binh kh� ���c r�n ��c l�i. �i t�m Tr��ng Gi�o Ch� �� h�i b�o.") 
end; 


function L3_get_yes() 
--4119 Cuu Am Bach Cot Trao (cu) = 4157
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30153,0,0,0}, nBindState=-2}, "test", 1); 
--tbAwardTemplet:GiveAwardByList({tbProp={4,1506,1,1,0,0},nCount=50},"Ti�n ��ng")--  tui tien dong
	SetTask(369,31)
AddNote("G�p Tri�u M�n Qu�n Ch�a, nh�n nhi�m v� ��n Nga Mi Ph�i ��i ch�ng c�ng Chu Ch� Nh��c, t�a �� 260/305.") 
Msg2Player("G�p Tri�u M�n Qu�n Ch�a, nh�n nhi�m v� ��n Nga Mi Ph�i ��i ch�ng c�ng Chu Ch� Nh��c, t�a �� 260/305.") 
end; 

function L3_get_no() 
end; 



