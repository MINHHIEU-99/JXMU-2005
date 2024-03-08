--Edit by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
--4119 Cuu Am Bach Cot Trao  = 4157
if (GetTask(369) == 31) and (HaveCommonItem(6,1,30153) == 1) then
Talk(5,"L3_yt1","Chu ChØ Nh­îc: §©y qu¶ thËt lµ cuèn bİ kiÕp cña ta lµm r¬i lóc giao ®Êu víi V« Kş S­ Huynh. Ng­¬i nãi lµ bän ng­êi hä nghi ngê ta lµ ng­êi ®Çu ®éc bän hä vµ c­íp lÊy û Thiªn KiÕm vµ §å Long §ao trªn B¨ng Háa §¶o?","Chu ChØ Nh­îc: ThËt nùc c­êi...Ngay chİnh ta lóc ®ã còng tróng ®éc. Cã T¹ TiÒn Bèi lµm chøng cho ta, chİnh «ng Êy nãi r»ng ¶ QuËn Chóa M«ng Cæ g©y ra.","Chu ChØ Nh­îc: Ng­¬i cÇn ph¶i lªn ThiÕu L©m Tù t×m gÆp T¹ TiÒn Bèi mµ hái chuyÖn ®i. MÊy ngµy sau ta vµ V« Kş S­ Huynh sÏ ®i giao ®Êu víi c¸c ThÇn T¨ng ThiÕu L©m ®Ó cøu T¹ TiÒn Bèi ra.","NÕu Chu C« N­¬ng nãi nh­ vËy, ta sÏ lËp tøc lªn ®­êng ngay")
elseif (GetTask(369) >= 32) and (GetTask(369) < 33)then
Talk(1,"","Chu ChØ Nh­îc: Ng­¬i kh«ng cßn mau ®i hái T¹ TiÒn Bèi cho ra lÏ!")
elseif (GetTask(369) == 33) then
Talk(6,"L3_yt3","Chu ChØ Nh­îc: Ta vèn dÜ ®o¸n ®­îc T¹ Tèn ®· biÕt, chİnh nh­ thÕ ta muèn th¾ng ë §¹i Héi §å S­ ®Ó trõ khö «ng ta ®i. Ta thËt kh«ng muèn V« Kş S­ Huynh biÕt ®­îc chuyªn nµy...Ta thËt cã nçi lßng riªng kh«ng thÓ nãi ®­îc.","Chu ChØ Nh­îc: Cã lÏ v× ta qu¸ yªu h¾n mµ ®· mang lßng thï hËn TriÖu MÉn s©u ®Ëm, ngay c¶ viÖc lµm tr¸i lêi di huÊn cña S­ Phô DiÖt TuyÖt S­ Th¸i.","Chu ChØ Nh­îc: Th«i ®­îc, ng­¬i h·y ra sau nói giao chiÕn víi §Ö Tö Hé KiÕm cña bæn ph¸i, nÕu ng­¬i th¾ng ®­îc c« Êy, h·y mang tói v¶i chøa û Thiªn KiÕm vµ §å Long §ao t×m ®­îc vÒ giao l¹i cho V« Kş Ca Ca.","Chu ChØ Nh­îc: Ta ph¶i ®i ThiÕu L©m Tù 1 chuyÕn ®Ó t×m T¹ Tèn ®©y.","Ng­êi ch¬i: §­îc th«i, ta sÏ ra ®ã giao chiÕn ngay.")
--4155 Y Thien Kiem
elseif (GetTask(369) == 41) and (HaveCommonItem(6,1,30151) == 1) then
Talk(6,"L4_yt1","Chu ChØ Nh­îc: V« Kş S­ Huynh ®· cho ng­êi ®óc l¹i nguyªn vÑn c©y û Thiªn KiÕm cho ta ­? Huynh Êy cßn suy nghÜ ®Õn ta sao?","Ng­êi ch¬i: Tr­¬ng huynh ®Ö ®· biÕt râ r»ng c« n­¬ng lµ ng­êi h¹ ®éc thñ nh­ng vÉn kh«ng ®Ó bông.","Ng­êi ch¬i: ng­îc l¹i V« Kş cßn nhê ta chuyÓn û Thiªn KiÕm ®Õn vµ cÇu xin c« h·y niÖm t×nh h¾n mµ tha cho T¹ TiÒn Bèi 1 con ®­êng sèng. R»ng suèt ®êi nµy h¾n ®µnh phô lßng mong ®îi cña c« n­¬ng!","Chu ChØ Nh­îc: Ta ...Ta hiÓu råi...Ng­¬i ®i ®i...ta kh«ng cßn muèn nh¾c ®Õn tªn hä Tr­¬ng v« t×nh nµy n÷a. Cßn phÇn T¹ TiÒn Bèi, ta còng kh«ng cßn quan t©m nòa. Tõ nay ta sÏ lµm theo di huÊn cña S­ Phô, quang ®¹i Nga Mi ph¸i, oai chÊn thiªn h¹.","Chu ChØ Nh­îc: Ng­¬i h·y B¶o träng!" )
elseif (GetTask(369) >= 34) then
Talk(1,"","Chu ChØ Nh­îc: Chóc ng­¬i may m¾n lÊy ®­îc thø ng­¬i cÇn...!")	
else 
Talk(1,"","Chu ChØ Nh­îc: Ta kh«ng thÓ cïng V« Kş S­ Huynh ®i cïng qu·ng ®êi cßn l¹i còng chØ v× TriÖu MÉn. Hái ng­¬i ta thua kĞm ¶ ta ë ®iÓm nµo chø?")	
end
end

function L3_yt1()
--Xoa 4119 Cuu Am Bach Cot Trao = 4157
DelCommonItem(6,1,30153)
SetTask(369,32)
AddNote("ChÊt vÊn Chu ChØ Nh­îc, lªn ThiÕu L©m Tù t×m Kim Mao S­ V­¬ng T¹ Tèn hái chuyÖn. ¤ng ta ®ang täa thiÒn gÇn ë thİ luyÖn tr­êng gÇn §Ö Tö phßng.") 
Msg2Player("ChÊt vÊn Chu ChØ Nh­îc, lªn ThiÕu L©m Tù t×m Kim Mao S­ V­¬ng T¹ Tèn hái chuyÖn. ¤ng ta ®ang täa thiÒn ë thİ luyÖn tr­êng gÇn §Ö Tö phßng.") 
end; 

function L3_yt3()
SetTask(369,34)
AddNote("§èi tho¹i Chu ChØ Nh­îc thµnh c«ng, b­íc tiÕp theo ra sau nói ®Õn gÇn bia mé cña DiÖt TuyÖt S­ Th¸i ë / giao chiÕn víi §Ö Tö Hé KiÕm") 
Msg2Player("§èi tho¹i Chu ChØ Nh­îc thµnh c«ng, b­íc tiÕp theo ra sau nói ®Õn gÇn bia mé cña DiÖt TuyÖt S­ Th¸i ë 285/301 giao chiÕn víi §Ö Tö Hé KiÕm") 
end; 

function L4_yt1()
DelCommonItem(6,1,30151)
SetTask(369,42)
AddNote("ChuyÓn giao û Thiªn KiÕm cho Chu ChØ Nh­îc, ®i §¹i Lı Thiªn Long Tù 218/197 t×m Th­êng Ngé Xu©n ®Ó giao cho h¾n §å Long §ao") 
Msg2Player("ChuyÓn giao û Thiªn KiÕm cho Chu ChØ Nh­îc, ®i §¹i Lı Thiªn Long Tù 218/197 t×m Th­êng Ngé Xu©n ®Ó giao cho h¾n §å Long §ao") 
end; 
