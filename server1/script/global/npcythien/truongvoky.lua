--  Edit by Jackie Gaming--
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

-- Kiem tra Task 369 la 20 tu file truongtamphong.lua
-- neu dung thi TVK se noi chuyen, ko thi ko  
function main() 
local n_solan = GetTask(5969);
	if n_solan <3 then
	Say("Ng­¬i ch­a c¶i l·o 3 Mµ §ßi TiÕp NhËn NhiÖm Vô Nµy Sao, ThËt Hµm Hå???") 
	return 0;
	end
if (GetTask(369) == 20) then
Talk(3,"L2_yt","Tr­¬ng V« Kþ: Ta nghe qua r»ng ng­¬i lµ ng­êi ®· gióp S­ ¤ng Tr­¬ng Tam Phong t×m ra cuèn v¨n th­ ghi l¹i Cöu D­¬ng Ch©n KhÝ. ThËt lµ §a t¹ §a t¹!","Ng­êi ch¬i: Xin b¸i kiÕn Tr­¬ng Gi¸o Chñ, ng­¬i qu¸ lêi råi, ®Êy chØ lµ viÖc nhá män, ®õng ®Ó t©m. Ta ®Õn ®©y tham kiÕn huynh v× muèn t×m hiÓu truyÒn thuyÕt cña û Thiªn KiÕm vµ §å Long §ao.")
elseif (GetTask(369) == 40) then
Talk(4,"L4_yt","Tr­¬ng V« Kþ: Th× ra ®Çu ®u«i c©u chuyÖn lµ nh­ vËy. Kú thùc ta l¹i kh«ng ngê Chu ChØ Nh­îc l¹i lµm chuyÖn nµy. Ch¾c cã lÏ chØ v× ta mµ khiÕn c« Êy thµnh ng­êi nh­ thÕ. Ta thËt cã lçi.","Tr­¬ng V« Kþ: TÝnh m¹ng cña nghÜa phô lµ trªn hÕt, ng­¬i h·y cÇm lÊy û Thiªn KiÕm giao l¹i cho Chu ChØ Nh­îc, nãi r»ng ta tha lçi cho c« Êy, suèt ®êi nµy cã lÏ ta sÏ phô c« Êy råi, xin c« Êy h·y nÓ t×nh mµ tha cho nghÜa phô ta 1 con ®­êng sèng.", "Tr­¬ng V« Kþ: Råi cÇm lÊy §å Long §ao giao cho Th­êng Ngé Xu©n, Huynh Êy ®ang t¸ tóc ë §¹i Lý Thiªn Long Tù. Sau ®ã giao Vâ Môc Di Th­ mµ ta t×m thÊy bªn trong cho Chu Nguyªn Ch­¬ng, y ®ang t¸ tóc t¹i 1 ng«i chïa nhá ë phÝa B¾c D­¬ng Ch©u. ")
elseif (GetTask(369) >= 21) and (GetTask(369) < 22)then
Talk(1,"","Tr­¬ng V« Kþ: H·y mau ®i ra ngoµi thµnh BiÖn Kinh dß xÐt t×nh h×nh, giao ®Êu cïng c¸c Nh©n SÜ trong Vâ L©m ®Ó t×m hiÓu ngän ngµnh gióp ta!!")
elseif (GetTask(369) == 22) then
Talk(6,"L2_done","Tr­¬ng V« Kþ: Th× ra 1 trong bän hä lµ tay sai cña Hçn Nguyªn PhÝch LÞch Thñ Thµnh C«n. H¾n ta ®· gia nhËp ThiÕu L©m vµ lÊy hiÖu lµ Viªn Ch©n. NghÜa phô ta vµ h¾n cã mèi thï kh«ng ®éi trêi chung.","Tr­¬ng V« Kþ: Phen nµy nhê ng­¬i mµ ta biÕt ®­îc ch©n t­íng, thËt c¶m kÝch v« cïng!","Ng­êi ch¬i: Xin Tr­¬ng Huynh ®õng kh¸ch s¸o, ta ch¼ng qua thÊy chuyÖn nµy v« cïng bÊt th­êng.","Ng­êi ch¬i: ta thÊy vâ c«ng cña tªn tay sai kh«ng thua kÐm g× c¸c Nh©n SÜ Vâ L©m, cã khi cßn v­ît tréi h¬n. Ngay chÝnh ta còng rÊt khã kh¨n ®Ó ®¸nh b¹i hä. Tr­¬ng huynh cã g× chØ gi¸o ®Ó sau nµy bän hä cßn léng hµnh ta sÏ ra tay trõ häa cho d©n.","Tr­¬ng V« Kþ: C¸c h¹ qu¶ nhiªn lµ ng­êi tèt. Ta sÏ truyÒn thô cho C¸c H¹ Cöu D­¬ng ThÇn C«ng. Xin phiÒn c¸c h¹ gióp cho vµi viÖc v× ta kh«ng tiÖn lé diÖn. MÉn Nhi ®· cã dµn xÕp cho C¸c h¹, h·y ®èi tho¹i víi nµng Êy!")
-- Danh sua 974 = 1650 4130=4159 4131 = 4160
elseif (GetTask(369) == 49) and (HaveCommonItem(6,1,30155) == 1) and (HaveCommonItem(6,1,30156) == 1) and (HaveMagic(1996) < 0) then
Talk(4,"L5_done","Tr­¬ng V« Kþ: §©y chÝnh lµ KhÈu QuyÕt vµ H×nh Chiªu cña Cµn Kh«n §¹i Na Di mµ ta häc ®­îc.","Ng­êi ch¬i: T¹i H¹ ®äc chóng hiÓu ®­îc phÇn nµo, Tr­¬ng Huynh cã thÓ chØ gi¸o râ thªm ®­îc kh«ng?","Tr­¬ng V« Kþ: C¸c h¹ qu¶ nhiªn lµ ng­êi tinh t­êng Vâ Häc. Ta sÏ truyÒn thô cho C¸c H¹ c¸c chiªu thøc cña Cµn Kh«n §¹i Na Di. H·y xem râ c¸c thøc vµ häc thuéc khÈu quyÕt theo ta...!")
--Danh sua 973 va 973 thanh 1648 1649
elseif (HaveMagic(1994) >= 0)  and (HaveMagic(1996) < 0) then
Talk(1,"","Tr­¬ng V« Kþ: B©y giê C¸c H¹ cã thÓ dïng Cöu D­¬ng ThÇn C«ng ra ngoµi thµnh BiÖn Kinh dÑp lo¹n c¸c Nh©n SÜ Vâ L©m ®Ó mang l¹i b×nh yªn cho b¸ t¸nh thiªn h¹. H·y ®i thö 1 chuyÕn. Xong råi th× t×m TriÖu MÉn QuËn Chóa ®èi tho¹i nhÐ!")
-- Danh sua 974 = 1650
elseif (HaveMagic(1996) >= 0) then
Talk(1,"","Tr­¬ng V« Kþ: Tõ nay ng­¬i ®· c¶m thô ®­îc Chiªu Thøc vâ häc bËt nhÊt Vâ L©m, Cµn Kh«n §¹i Na Di. Tr­íc khi Tõ biÖt, ta cã vµi lêi nh¾c nhñ cïng c¸c h¹. Khi nµo Minh Gi¸o cã chuyÖn còng nh­ b¸ t¸nh bÞ øc hiÕp, xin c¸c h¹ ra tay nghÜa hiÖp ®Ó t­¬ng trî. §a T¹ §a T¹! Xin C¸o Tõ, cã duyªn ¾c sÏ GÆp l¹i.")
else
Talk(1,"","Tr­¬ng V« Kþ: Ng­¬i cã biÕt Tr­¬ng Tam Phong S­ ¤ng ®ang du ngo¹n n¬i ®©u kh«ng?")
end
end; 

function L2_yt() 
Say("Tr­¬ng V« Kþ: Nghe ®ån nh©n sÜ vâ l©m kÐo nhau lªn ThiÕu L©m Tù ®Ó tham gia §¹i Héi §å S­, muèn t×m nghÜa phô ta ®Ó thanh to¸n ©n o¸n n¨m x­a. Nghe ®ån hä ®· ®Õn ngoµi thµnh BiÖn Kinh, giang hå dËy sãng, lµm b¸ t¸nh lÇm than. Ta nghi cã ng­êi ®øng ®»ng sau chuyÖn nµy, ta ph¶i lªn ThiÕu L©m t×m nghÜa phô tr­íc bän hä. Ng­¬i h·y ®i dß th¸m xem thö. Ph¸t hiÖn ®­îc chuyÖn g× th× vÒ ®©y håi b¸o.",2,"Ta sÏ ®i ngay./L2_get_yes","Ta cã vµi chuyÖn cÇn lµm tr­íc ®·./L2_get_no") 
end;

function L4_yt() 
Say("Tr­¬ng V« Kþ: H·y gióp ta chuyÓn giao û Thiªn KiÕm cho ChØ Nh­îc, §å Long §ao cho Th­êng Ngé Xu©n, Vâ Môc Di Th­ cho Chu Nguyªn Ch­¬ng, c¨n dÆn Chu Huynh nh÷ng lêi ta viÕt trong Di Th­. Sau khi xong viÖc, ®Õn t×m ta vµ NghÜa Phô ë ThiÕu L©m, chóng ta sÏ cïng nhau t×m Thµnh C«n ®Ó thanh to¸n h¾n trõ h¹i cho Vâ L©m.",2,"Ta sÏ ®i ngay./L4_get_yes","Ta cã vµi chuyÖn cÇn lµm tr­íc ®·./L4_get_no") 
end;


function L2_get_yes()  
	SetTask(369,21)
AddNote("GÆp Gi¸o Chñ Minh Gi¸o Tr­¬ng V« Kþ, nhËn nhiÖm vô dß th¸m §¹i Héi §å S­, ®Õn h­íng nam ngoµi thµnh BiÖn Kinh, ®­êng lªn ThiÕu L©m Tù ®Ó dß th¸m t×nh h×nh.") 
Msg2Player("GÆp Gi¸o Chñ Minh Gi¸o Tr­¬ng V« Kþ, nhËn nhiÖm vô dß th¸m §¹i Héi §å S­, ®Õn h­íng nam ngoµi thµnh BiÖn Kinh, ®­êng lªn ThiÕu L©m Tù  ®Ó dß th¸m t×nh h×nh.") 
end; 

function L2_get_no() 
end;

function L2_done() 
SetTask(369,30)
AddNote("Håi ®¸p V« Kþ, hoµn thµnh nhiÖm vô, ®­îc Tr­¬ng Gi¸o Chñ truyÒn thô vâ c«ng Cöu D­¬ng ThÇn C«ng") 
Msg2Player("Håi ®¸p V« Kþ, hoµn thµnh nhiÖm vô, ®­îc Tr­¬ng Gi¸o Chñ truyÒn thô vâ c«ng Cöu D­¬ng ThÇn C«ng") 
---- Danh sua 973 = 1648
AddMagic(1994,1)
end; 

function L4_get_yes()  
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30151,0,0,0}, nBindState=-2}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30152,0,0,0}, nBindState=-2}, "test", 1);
--tbAwardTemplet:GiveAwardByList({tbProp={4,1506,1,1,0,0},nCount=500},"TiÒn §ång")--  tui tien dong
--Danh doi id vo muc di thu 4126=4161
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30157,0,0,0,0}, nBindState=-2}, "test", 1);
SetTask(369,41)
AddNote("Håi b¸o Gi¸o Chñ Minh Gi¸o Tr­¬ng V« Kþ, nhËn nhiÖm vô ®Õn Nga Mi chuyÓn giao û Thiªn KiÕm cho Chu ChØ Nh­îc vµ cÇu xin nµng Êy tha cho T¹ Tèn.") 
Msg2Player("Håi b¸o Gi¸o Chñ Minh Gi¸o Tr­¬ng V« Kþ, nhËn nhiÖm vô ®Õn Nga Mi chuyÓn giao û Thiªn KiÕm cho Chu ChØ Nh­îc vµ cÇu xin nµng Êy tha cho T¹ Tèn.") 
end; 

function L4_get_no() 
end;

function L5_done() 
DelCommonItem(6,1,30155)
DelCommonItem(6,1,30156)
AddNote("Håi ®¸p V« Kþ, hoµn thµnh nhiÖm vô, ®­îc Tr­¬ng Gi¸o Chñ truyÒn thô vâ c«ng Cµn Kh«n §¹i Na Di. V« Kþ cïng TriÖu MÉn tõ gi· ra ®i phiªu b¹t giang hå.") 
Msg2Player("Håi ®¸p V« Kþ, hoµn thµnh nhiÖm vô, ®­îc Tr­¬ng Gi¸o Chñ truyÒn thô vâ c«ng Cµn Kh«n §¹i Na Di. V« Kþ cïng TriÖu MÉn tõ gi· ra ®i phiªu b¹t giang hå.")
Msg2SubWorld("<color=green>Chóc Mõng  <color=yellow>"..GetName().." §· Hoµn thµnh chuçi nhiÖm vô û thiªn ®å long ký, häc ®­îc tuyÖt häc minh gi¸o<color>")
 
-- Danh sua 974 = 1650
--AddMagic(1995,1)
AddMagic(1996,1)
SetTask(5981,2)
SetTask(5980,0)
end