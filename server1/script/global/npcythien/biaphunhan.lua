--Edit by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
if GetLevel() < 190 then
	Say("§¼ng cÊp yªu cÇu ®Ó Lµm NhiÖm Vô trªn 190, B¹n h·y Mau Cè G¾ng NhÐ")
return 1 
end
if (GetTask(369) == 48) then
--4131 Dai Na Di Hinh Quyet = 4160
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30156,0,0,0}, nBindState=-2}, "test", 1);
	SetTask(369,49)
	AddNote("C¸c h¹ t×m thÊy thªm 1 quyÓn v¨n tù kh¸c ®­îc giÊu ®»ng sau bia mé cña D­¬ng Phu Nh©n. Nhanh chãng quay vÒ Quang Minh §Ønh t×m V« Kþ vµ TriÖu MÉn.") 
Msg2Player("C¸c h¹ t×m thÊy thªm 1 quyÓn v¨n tù kh¸c ®­îc giÊu ®»ng sau bia mé cña D­¬ng Phu Nh©n. Nhanh chãng quay vÒ Quang Minh §Ønh t×m V« Kþ vµ TriÖu MÉn.") 
end
end


