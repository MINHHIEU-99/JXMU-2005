--Edit by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main() 
--4126 Vo Muc Di Thu = 4161
if (GetTask(369) == 43) and (HaveCommonItem(6,1,30157) == 1) then
Talk(5,"L4_yt3","Chu Nguyªn Ch­¬ng: §©y ch¼ng ph¶i Vâ Môc Binh Th­ §Ö NhÊt cña Nh¹c Phi T­íng Qu©n sao? ThËt tuyÖt, cã nã Minh Gi¸o sÏ sím ngµy dÑp ®­îc lo¹n vµ thèng nhÊt Giang S¬n.","Chu Nguyªn Ch­¬ng: Ta sÏ kh«ng phô lßng Tr­¬ng Gi¸o Chñ dÉn d¾t Minh Gi¸o dÑp lo¹n giÆc ngo¹i x¨m, mang l¹i yªn b×nh cho b¸ t¸nh. ThËt §a T¹ vÞ ThiÕu HiÖp!","Ng­êi ch¬i: Chu huynh chí kh¸ch s¸o. Tr­¬ng Gi¸o Chñ cßn dÆn lµ giao l¹i träng tr¸ch Gi¸o Chñ cho Quang Minh T¶ Sø D­¬ng Tiªu, nhê Chu Huynh ra tay phï trî Minh Gi¸o.","Ng­êi ch¬i: NÕu Chu Huynh cã lßng ph¶n gi¸o, lµm h¹i ®Õn mu«n d©n b¸ t¸nh, Gi¸o Chñ sÏ t×m Chu Huynh mµ hái téi. Xin C¸o Tõ!")
elseif (GetTask(369) >= 44) then
Talk(1,"","Chu Nguyªn Ch­¬ng: Ta ®· hiÓu. V× Minh Gi¸o, sèng chÕt kh«ng mµng. Ta còng v× bµn d©n thiªn h¹ mµ dèc søc th«i. Ng­¬i h·y b¶o träng!")
else 
Talk(1,"","Chu Nguyªn Ch­¬ng: M¬ ­íc cña ta lµ thèng nhÊt Giang S¬n cïng c¸c huynh ®Ö Minh Gi¸o, ph¸t d­¬ng quang ®¹i bæn Gi¸o ®Ó quÇn hïng thiªn h¹ ph¶i nÓ phôc!")
end
end;

function L4_yt3()
--Xoa Vo Muc Di Thu
DelCommonItem(6,1,30157)
SetTask(369,44)
AddNote("Giao Vâ Môc Di Th­ cho Chu Nguyªn Ch­¬ng, ®i lªn ThiÕu L©m Tù håi b¸o víi Tr­¬ng V« Kþ")
Msg2Player("Giao Vâ Môc Di Th­ cho Chu Nguyªn Ch­¬ng, ®i lªn ThiÕu L©m Tù håi b¸o víi Tr­¬ng V« Kþ")
end; 




