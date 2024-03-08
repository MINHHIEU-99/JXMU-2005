--    Edit by trilap2004   --
function OnDeath () 

if (GetTask(369) == 21) then
Msg2Player("§¸nh b¹i 1 tªn trµ trén vµo c¸c quÇn hïng, ph¸t hiÖn mËt th­ trªn ng­êi h¾n cã nguån gèc tõ Hçn Nguyªn PhÝch LÞch Thñ! Quay trë l¹i t×m V« Kþ ®Ó håi b¸o") 
Msg2SubWorld("<color=green>Chóc Mõng  <color=yellow>"..GetName().." §· T×m ®­îc mËt th¸m t¹i biÖn kinh<color>")

SetTask(369,22)

end
end