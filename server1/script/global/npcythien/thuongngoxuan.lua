--Edit    by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
-- 4156 Do Long Dao
if (GetTask(369) == 42) and (HaveCommonItem(6,1,30152) == 1) then
Talk(3,"L4_yt2","Th­êng Ngé Xu©n: §©y ch¼ng ph¶i Bµo §ao §å Long ai cã nã sÏ HiÖu LÖnh ®­îc Thiªn H¹ hay sao? Ta sÏ kh«ng phô lßng Tr­¬ng Gi¸o Chñ dÉn d¾t Minh Gi¸o dÑp lo¹n giÆc ngo¹i x¨m, mang l¹i yªn b×nh cho b¸ t¸nh. ThËt §a T¹ vÞ ThiÕu HiÖp!","Ng­êi ch¬i: Th­êng huynh chí kh¸ch s¸o. Ta cßn ph¶i giao cuèn Di Th­ cho Chu huynh ë D­¬ng Ch©u. Xin C¸o Tõ!")
elseif (GetTask(369) >= 43) then
Talk(1,"","Th­êng Ngé Xu©n: Chu huynh ®ang ë ng«i chïa nhá phÝa B¾c D­¬ng Ch©u c¸ch Nha M«n kh«ng xa. C¸c h¹ lªn ®­êng nhanh ®Ó cßn kÞp. B¶o träng nhÐ!")
else 
Talk(1,"","Th­êng Ngé Xu©n: Hå Thanh Ng­u tù §iÖp Cèc Y Tiªn ®o¸n r»ng ta sèng kh«ng qu¸ Tø TuÇn. Ha Ha Ha! Nh©n lóc cßn sèng, ta nguyÖn cïng c¸c huynh ®Ö Minh Gi¸o hµnh hiÖp tr­îng nghÜa mang l¹i sù yªn b×nh cho b¸ t¸nh mu«n d©n!")
end
end;

function L4_yt2()
DelCommonItem(6,1,30152)
SetTask(369,43)
AddNote("Giao §å Long §ao cho Th­êng Ngé Xu©n, cÊp tèc lªn ®­êng ®Õn D­¬ng Ch©u t×m Chu Nguyªn Ch­¬ng, täa ®é 220/180.")
Msg2Player("Giao §å Long §ao cho Th­êng Ngé Xu©n, cÊp tèc lªn ®­êng ®Õn D­¬ng Ch©u t×m Chu Nguyªn Ch­¬ng, täa ®é 220/180.")
end; 




