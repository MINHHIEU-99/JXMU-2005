--    Edit by trilap2004   --
function OnDeath () 

if (GetTask(369) == 21) then
Msg2Player("��nh b�i 1 t�n tr� tr�n v�o c�c qu�n h�ng, ph�t hi�n m�t th� tr�n ng��i h�n c� ngu�n g�c t� H�n Nguy�n Ph�ch L�ch Th�! Quay tr� l�i t�m V� K� �� h�i b�o") 
Msg2SubWorld("<color=green>Ch�c M�ng  <color=yellow>"..GetName().." �� T�m ���c m�t th�m t�i bi�n kinh<color>")

SetTask(369,22)

end
end