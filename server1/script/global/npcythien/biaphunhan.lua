--Edit by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
if GetLevel() < 190 then
	Say("��ng c�p y�u c�u �� L�m Nhi�m V� tr�n 190, B�n h�y Mau C� G�ng Nh�")
return 1 
end
if (GetTask(369) == 48) then
--4131 Dai Na Di Hinh Quyet = 4160
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30156,0,0,0}, nBindState=-2}, "test", 1);
	SetTask(369,49)
	AddNote("C�c h� t�m th�y th�m 1 quy�n v�n t� kh�c ���c gi�u ��ng sau bia m� c�a D��ng Phu Nh�n. Nhanh ch�ng quay v� Quang Minh ��nh t�m V� K� v� Tri�u M�n.") 
Msg2Player("C�c h� t�m th�y th�m 1 quy�n v�n t� kh�c ���c gi�u ��ng sau bia m� c�a D��ng Phu Nh�n. Nhanh ch�ng quay v� Quang Minh ��nh t�m V� K� v� Tri�u M�n.") 
end
end


