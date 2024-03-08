--  Edit by trilap2004--
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

function main()
if (GetTask(369) == 44) then
Talk(5,"L4_yt4","Tr­¬ng V« Kþ: §a T¹ C¸c H¹ ®· gióp ta chuyÓn giao c¸c thø cÇn thiÕt!","Ng­êi ch¬i: Xin Tr­¬ng Huynh ®õng kh¸ch s¸o, Huynh ®· cã tung tÝch cña Thµnh C«n hay ch­a?","Tr­¬ng V« Kþ: H¾n bÊt ngê ra tay ®¸nh lÐn khi chóng ta giao chiÕn víi Tam §¹i ThÇn T¨ng cña ThiÕu L©m. HiÖn h¾n ®· bÞ chóng ta ®¸nh ch¹y ®Õn gÇn Hå Phãng Sinh, h·y mau ®uæi theo!!!","Ng­êi Ch¬i: Th× ra lµ thÕ, ta sÏ ®uæi theo h¾n ngay ®©y!")
elseif (GetTask(369) == 46) then
Talk(6,"L4_yt5","Ng­êi ch¬i: Xin giao l¹i Thµnh C«n cho nhÞ vÞ!","Tr­¬ng V« Kþ: NghÜa phô muèn phÕ vâ c«ng cña h¾n ta vµ tha cho h¾n 1 m¹ng, ®Ó h¾n l¹i ®©y nghe kinh niÖm PhËt s¸m hèi!","Tr­¬ng V« Kþ: Ta cßn 1 viÖc cuèi cïng cÇn C¸c H¹ gióp, ®ã lµ ®i ®Õn MËt §¹o cña Minh Gi¸o, chèn Sa M¹c Mª Cung TÇng 3, t×m bia mé cña tiÒn nhiÖm Gi¸o Chñ D­¬ng §Ønh Thiªn vµ D­¬ng Phu Nh©n.","Tr­¬ng V« Kþ: khÊn ®Çu b¸o cho hä biÕt mäi chuyÖn ®· s¸ng tá, Thµnh C«n tõ nay ®· ®­îc thu phôc vÒ chÝnh ®¹o!","Tr­¬ng V« Kþ: Vâ c«ng cña ng­¬i qu¶ thËt tiÕn bé v­ît bËc! §Ó §a t¹, Khi lµm xong viÖc h·y vÒ §Ønh Quang Minh chèn Sa M¹c §Þa BiÓu t×m ta nhÐ.")
elseif (GetTask(369) >= 45) and (GetTask(369) < 46) then
Talk(1,"","Tr­¬ng V« Kþ: H·y mau ®uæi theo Thµnh C«n ®õng ®Ó h¾n ch¹y tho¸t!!!")
elseif (GetTask(369) >= 41) and (GetTask(369) < 44) then
Talk(1,"","Tr­¬ng V« Kþ: C¸c H¹ ®· chuyÓn hÕt c¸c vËt phÈm ta giao cho ng­¬i ch­a?")
elseif (GetTask(369) >= 47) then
Talk(1,"","Tr­¬ng V« Kþ: H·y mau ®i b¸i D­¬ng Gi¸o Chñ vµ Phu Nh©n gióp ta. Chóng ta sÏ hÑn nhau vÒ §Ønh Quang Minh ®Ó héi hîp.")
else
Talk(1,"","Tr­¬ng V« Kþ: Thiªn H¹ nhiÒu ©n o¸n víi nghÜa phô ta nªn kÐo lªn ®©y ®Ó ®ßi nî x­a. Ta kh«ng thÓ nµo ®Ó hä g©y h¹i tíi «ng Êy ®­îc.")
end
end; 

function L4_yt4()
SetFightState(1)
SetTask(369,45)
SetFightState(1);
AddNote("CÊp tèc ®Õn Hå Phãng Sinh gÇn lèi ra vµo Th¸p L©m ®uæi theo Thµnh C«n.") 
Msg2Player("GÆp Gi¸o Chñ Minh Gi¸o Tr­¬ng V« Kþ, nhËn nhiÖm vô trõng trÞ hung ®å, CÊp tèc ®Õn Hå Phãng Sinh gÇn lèi ra vµo Th¸p L©m ®uæi theo Thµnh C«n.") 
end; 

function L4_yt5()
SetTask(369,47)
AddNote("§i Mª Cung Sa B¹c TÇng 3, vèn lµ MËt §¹o Minh Gi¸o, b¸i bia mé D­¬ng §Ønh Thiªn vµ D­¬ng Phu Nh©n. Täa §é 202/216") 
Msg2Player("GÆp Gi¸o Chñ Minh Gi¸o Tr­¬ng V« Kþ, nhËn nhiÖm vô cuèi cïng, §i Mª Cung Sa B¹c TÇng 3, vèn lµ MËt §¹o Minh Gi¸o, b¸i bia mé D­¬ng §Ønh Thiªn vµ D­¬ng Phu Nh©n. Täa §é 202/216") 
end; 