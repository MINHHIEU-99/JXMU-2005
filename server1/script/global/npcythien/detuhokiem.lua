--    Edit by trilap2004   --
Include("\\script\\lib\\awardtemplet.lua")

function OnDeath () 

if (GetTask(369) == 34) then
--Danh De tu ho kiem duoc 4121 Tui Vai = 4162
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30158,0,0,0}, nBindState=-2}, "test", 1); 
Msg2Player("��nh b�i �� t� H� Ki�m Nga Mi ph�i, t�m ���c 1 t�i v�i ch�a nh�ng m�nh �ao ki�m b� g�y v�n! Quay tr� l�i t�m Tri�u M�n Qu�n Ch�a �� h�i b�o") 
SetTask(369,35)

end
end