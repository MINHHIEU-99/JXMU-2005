--Edit    by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
if (GetTask(369) == 30) then
Say("TriÖu MÉn: V« Kş lªn ThiÕu L©m Tù t×m T¹ tiÒn bèi, Huynh Êy giao ®Êu víi Chu ChØ Nh­îc. Cã lÏ nµo y còng muèn t×m T¹ Tèn thanh to¸n? §iÒu nµy chóng ta còng kh«ng râ nh­ng ta t×m thÊy bİ kiÕp nµy ghi chĞp l¹i chiªu thøc ®Çy ©m khİ mµ nha ®Çu Êy ®· sö dông khi giao ®Êu víi V« Kş Ca Ca. Ng­¬i h·y lªn Nga Mi hái y  xem cã ph¶i y lµ ng­êi ®Çu ®éc bän ta vµ c­íp lÊy û Thiªn KiÕm vµ §å Long §ao trªn B¨ng Háa §¶o hay kh«ng!",2,"TriÖu C« N­¬ng yªn t©m, ta lËp tøc lªn ®­êng./L3_get_yes","Ta cã viÖc kh¸c ph¶i lµm tr­íc ®·./L3_get_no")
elseif (GetTask(369) > 30) and (GetTask(369) < 35)then
Talk(1,"","TriÖu MÉn: Ng­¬i lªn ®­êng b×nh an, bän ta tr«ng chê tin tøc cña ng­¬i!")
--Danh 4121 Tui Vai = 4162
elseif (GetTask(369) == 35) and (HaveCommonItem(6,1,30158) == 1) then
Talk(3,"L3_done","TriÖu MÉn: Cuèi cïng con nha ®Çu nµy ®· lé bé mÆt thËt cña h¾n. §a t¹ §a t¹! Ta sÏ cho ng­êi rÌn l¹i 2 c©y binh khİ nµy. H·y gi¶i bµy cïng V« Kş Ca Ca lµm tá t­êng sù viÖc gi¶i ®i nçi oan øc bÊy l©u nay cho ta nhĞ!","Ng­êi ch¬i: Chµo TriÖu C« N­¬ng ta ®i ®©y.")
--Danh 973=1648 973=1650
elseif (HaveMagic(1994) < 0) and (HaveMagic(1995) < 0) then
Talk(1,"","TriÖu MÉn: Ng­¬i cã häc ®­îc Cöu D­¬ng ThÇn C«ng, cã Cöu D­¬ng Ch©n Khİ hé thÓ míi cã kh¶ n¨ng ®èi ®Çu víi chiªu thøc vâ c«ng ®Çy ©m khİ cña con nha ®Çu Chu Chi Nh­îc!")	
elseif (GetTask(369) >= 40) then
Talk(1,"","TriÖu MÉn: ng­¬i ®· gióp ta gi¶i oan, ta rÊt c¶m kİch ng­¬i! H·y nhanh b¸o chuyÖn nµy ®Õn V« Kş Ca Ca gÊp, nÕu kh«ng Chu ChØ Nh­îc sÏ t×m tíi T¹ TiÒn Bèi ®Ó giÕt ng­êi bŞt ®Çu mèi.")	
else 
Talk(1,"","TriÖu MÉn: Ta cïng V« Kş Ca Ca sÏ ®i kh¾p thiªn h¹ cïng tËn h­ëng Tiªn S¬n Häa Thñy trong suèt qu·ng ®êi cßn l¹i.")	
end
end

function L3_done()
--4121 - Tui Vai
DelCommonItem(6,1,30158)
SetTask(369,40)
AddNote("Håi ®¸p TriÖu MÉn QuËn Chóa, hoµn thµnh nhiÖm vô, giao l¹i nh÷ng m¶nh vì, chê ngµy 2 mãn binh khİ ®­îc rÌn ®óc l¹i. §i t×m Tr­¬ng Gi¸o Chñ ®Ó håi b¸o.") 
Msg2Player("Håi ®¸p TriÖu MÉn QuËn Chóa, hoµn thµnh nhiÖm vô, giao l¹i nh÷ng m¶nh vì, chê ngµy 2 mãn binh khİ ®­îc rÌn ®óc l¹i. §i t×m Tr­¬ng Gi¸o Chñ ®Ó håi b¸o.") 
end; 


function L3_get_yes() 
--4119 Cuu Am Bach Cot Trao (cu) = 4157
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30153,0,0,0}, nBindState=-2}, "test", 1); 
--tbAwardTemplet:GiveAwardByList({tbProp={4,1506,1,1,0,0},nCount=50},"TiÒn §ång")--  tui tien dong
	SetTask(369,31)
AddNote("GÆp TriÖu MÉn QuËn Chóa, nhËn nhiÖm vô ®Õn Nga Mi Ph¸i ®èi chøng cïng Chu ChØ Nh­îc, täa ®é 260/305.") 
Msg2Player("GÆp TriÖu MÉn QuËn Chóa, nhËn nhiÖm vô ®Õn Nga Mi Ph¸i ®èi chøng cïng Chu ChØ Nh­îc, täa ®é 260/305.") 
end; 

function L3_get_no() 
end; 



