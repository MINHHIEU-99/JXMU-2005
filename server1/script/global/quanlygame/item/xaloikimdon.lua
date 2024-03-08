function main(nItemIdx)
--dofile("script/item/ib/chaotingzhaoshu.lua")
if (GetPK() == 0) then 
Say("Ngµi tr­íc mÆt PK trŞ gi¸ ®· v× 0 liÔu , kh«ng cÇn sö dông n÷a . ", 0); 
Msg2Player("Ngµi tr­íc mÆt PK trŞ gi¸ ®· v× 0 liÔu , kh«ng cÇn sö dông n÷a . "); 
return 1; 
end;
local xoapk = GetPK() - 1 
SetPK(xoapk); 
Say("Ngµi sö dông <color=yellow> x¸ lîi linh ®¬n <color> , ng­¬i PK trŞ gi¸ b©y giê lµm gi¶m 1 liÔu . ", 0); 
Msg2Player("Ngµi sö dông <color=yellow> triÒu ®×nh x¸ s¸ch <color> , ng­¬i PK trŞ gi¸ b©y giê gi¶m 1 liÔu . "); 
if (GetWorldPos() == 208) then 
SetTask(96,100) 
end; 
end; 