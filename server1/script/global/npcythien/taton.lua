--Edit    by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
if GetLevel() < 190 then
	Say("§¼ng cÊp yªu cÇu ®Ó Lµm NhiÖm Vô trªn 190, B¹n h·y Mau Cè G¾ng NhÐ")
return 1 
end
local n_solan = GetTask(5969);
	if n_solan <4 then
	Say("Ng­¬i ch­a c¶i l·o 4 Mµ §ßi TiÕp NhËn NhiÖm Vô Nµy Sao, ThËt Hµm Hå???") 
	return 0;
	end
if (GetTask(369) == 32) then
Talk(6,"L3_yt2","T¹ Tèn: Ha Ha Ha, th× ra ng­¬i muèn biÕt chuyÖn x¶y ra ë §¶o B¨ng Háa khi x­a. Ta tuy mï nh­ng lßng nµy kh«ng mï, thÝnh gi¸c cña ta rÊt tá t­êng. Chu C« N­¬ng kh«ng thÓ nµo qua mÆt ®­îc l·o giµ hå ®å nµy ®©u.","T¹ Tèn: Lóc tr­íc ta nghi ngê TriÖu MÉn lµ gi¸n ®iÖp cña M«ng Cæ nªn ta kh«ng muèn V« Kþ kÕt th©n víi ng­êi nh­ c« Êy. Nh­ng giê th× ta ®· hiÓu. Ta chØ téi cho V« Kþ vµ nh÷ng c« n­¬ng xung quanh h¾n ®· bÞ gian kÕ cña Chu ChØ Nh­îc lµm tæn th­¬ng.","T¹ Tèn: Ng· PhËt tõ bi, ta còng kh«ng mµng chÊp nhÊt Chu C« N­¬ng. NÕu ng­¬i muèn biÕt tung tÝch cña û Thiªn KiÕm vµ §å Long §ao, h·y t×m c« Êy ®èi chøng.","T¹ Tèn: ChuyÓn lêi cña ta ®Õn V« Kþ vµ Chu C« N­¬ng r»ng ®õng bá c«ng cøu ta lµm chi, T¹ Tèn ®· quy y tam b¶o vµ theo §é ¸ch §¹i S­ tông kinh niÖm PhËt. Xin §a t¹ C¸c H¹!","Ng­êi ch¬i: Xin c¸m ¬n T¹ TiÒn Bèi ®· nãi râ, t¹i h¹ kh«ng lµm phiÒn «ng n÷a. Xin m¹n phÐp c¸o tõ!")
elseif (GetTask(369) >= 33) then
Talk(1,"","T¹ Tèn: Ng­¬i ®i t×m Chu C« N­¬ng mµ hái tung tÝch cña 2 c©y thÇn binh ®i nhÐ. Ta ®· quy y n¬i cöa PhËt ngµy ngµy häc ®¹o s¸m hèi, kh«ng mµng chuyÖn cña thiªn h¹ n÷a råi!")	
else 
Talk(1,"","T¹ Tèn: Qu·ng ®êi nµy ta bá cuång né ®i mµ t×m lèi tho¸t n¬i cöa PhËt. ¤ng trêi b¹c ®·i ta nh­ng kinh PhËt mang l¹i sù b×nh yªn cho ta! A Di §µ PhËt!")	
end
end

function L3_yt2()
SetTask(369,33)
AddNote("Hái ra ®­îc nguån gèc c©u chuyÖn tõ T¹ Tèn, quay l¹i t×m Chu ChØ Nh­îc hái tung tÝch cña û Thiªn KiÕm vµ §å Long §ao.") 
Msg2Player("Hái ra ®­îc nguån gèc c©u chuyÖn tõ T¹ Tèn, quay l¹i t×m Chu ChØ Nh­îc hái tung tÝch cña û Thiªn KiÕm vµ §å Long §ao.") 
end; 




