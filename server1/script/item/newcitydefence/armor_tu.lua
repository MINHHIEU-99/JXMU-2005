
function add475() 
level = random(1,7); 
AddSkillState(475, level, 0, 1080 ) -- script viet hoa By http://tranhba.com  gia t�ng nh� ch�i b�ng ph�ng 
Msg2Player("<#> ng�i ��t ���c <color=0xB5FDD7> trong v�ng m�t ph�t gia t�ng b�ng ph�ng "..(level*10).."<#> %") 
end 

Tab={add475} 

function IsPickable( nItemIndex, nPlayerIndex ) 
return 1; 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
if( IsMyItem( nItemIndex ) ) then 
i = random(getn(Tab)) 
Tab[i](); 
return 0; -- script viet hoa By http://tranhba.com  th� ti�u v�t ph�m 
end 
end 
