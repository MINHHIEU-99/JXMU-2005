function main(nItemIdx)
--dofile("script/item/ib/chaotingzhaoshu.lua")
if (GetPK() == 0) then 
Say("Ng�i tr��c m�t PK tr� gi� �� v� 0 li�u , kh�ng c�n s� d�ng n�a . ", 0); 
Msg2Player("Ng�i tr��c m�t PK tr� gi� �� v� 0 li�u , kh�ng c�n s� d�ng n�a . "); 
return 1; 
end;
local xoapk = GetPK() - 1 
SetPK(xoapk); 
Say("Ng�i s� d�ng <color=yellow> x� l�i linh ��n <color> , ng��i PK tr� gi� b�y gi� l�m gi�m 1 li�u . ", 0); 
Msg2Player("Ng�i s� d�ng <color=yellow> tri�u ��nh x� s�ch <color> , ng��i PK tr� gi� b�y gi� gi�m 1 li�u . "); 
if (GetWorldPos() == 208) then 
SetTask(96,100) 
end; 
end; 