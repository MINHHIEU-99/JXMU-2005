--   Edit by Jackie Gaming --

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 

-- Neu nhan vat da nhan nhiem vu tu Vo Danh Nuong - thì SetTask(369) là 10
if (GetTask(369) == 10)  then

--Ham Talk (4, so 4 la hien thi 4 dong noi chuyen
-- L1_yt la ham goi sau khi NPC truong tam phong noi xong, nguoi choi noi chuyen lai. se hien thi them nhiem vu (
-- va nhiem vu nay Truong Tam Phong se noi
Talk(4,"L1_yt","Tr­¬ng Tam Phong: Ta ®o¸n r»ng V« Danh N­¬ng b¶o ng­¬i ®Õn ®©y t×m ta? Ha ha ha! Qu¶ nhiªn c« Êy cã cÆp m¾t nh×n ng­êi, ®· t×m ra vÞ cao thñ xøng ®¸ng nh­ ng­¬i ®Õn thØnh gi¸o víi ta!","Ng­êi ch¬i: T¹i H¹ xin b¸i kiÕn Tr­¬ng Ch©n Nh©n, Xin ngµi chØ gi¸o cho ta c¸ch t×m ®Õn Gi¸o Chñ Minh Gi¸o Tr­¬ng V« Kþ. T¹i h¹ muèn thØnh gi¸o víi h¾n vÒ tin tøc cña û Thiªn KiÕm vµ §å Long §ao trong truyÒn thuyÕt!") 

-- Lay dieu kien gettask 369 = 12 tu file cuuduongquyet.lua
-- dieu kien thu hai la trong hanh trang co item 4120 (doi lai la 4158) cuu duong quyet thi truong tam phong noi tiep, neu ko co thi ko noi tiep
elseif (GetTask(369) == 12) and (HaveCommonItem(6,1,30154) == 1) then
-- Du dieu kien thi Truong Chan nhan tra phan thuong nhiem vu la L1_done"
-- so 2 la hien thi 2 dong noi chuyen
Talk(2,"L1_done","Ng­êi ch¬i: Tr­¬ng Ch©n Nh©n, ngµi xem ®©y cã ph¶i lµ cuèn v¨n tù cÇn t×m?","Tr­¬ng Tam Phong: §©y chÝnh lµ YÕu QuyÕt mµ n¨m x­a ThiÕu L©m ®· cÊt c«ng t×m kiÕm, bªn trong cã ghi t©m ph¸p Cöu D­¬ng Ch©n KhÝ. RÊt tiÕc ®©y kh«ng ph¶i lµ BÝ KiÕp Cöu D­¬ng ThÇn C«ng nh­ng lµ vËt rÊt cÇn ®Ó luyÖn nã. §Ó c¶m t¹ ng­¬i, ta sÏ truyÒn thô nh÷ng khÈu quyÕt t©m ph¸p nµy, ng­¬i sÏ häc ®­îc Cöu D­¬ng Ch©n KhÝ.") 
-- Neu GetTask nho hon 12 thi Truong TPhong keu di Khoai Hoat Lam kiem Cuu Duong Quyet
elseif (GetTask(369) < 12) then
Talk(1,"","Tr­¬ng Tam Phong: §Õn C«n L«n Ph¸i, ®i lªn Kho¸i H¹t L©m truy t×m gióp ta 1 cuèn v¨n tù bÞ thÊt l¹c ®­îc V« Kþ ch«n giÊu gÇn täa ®é 215/203")
-- Neu Da co skill ho tro cuu duong chan khi - truong tam phong keu gap truong vo ki 
-- Danh doi 976 = 1651 trong file moi
elseif (HaveMagic(1997) >= 0) then
Talk(1,"","Tr­¬ng Tam Phong: V« Kþ cïng TriÖu MÉn QuËn Chóa hiÖn ®ang ë gÇn Quang Minh §Ønh, chèn Sa M¹c §Þa BiÓu 213/173. Ng­¬i cã ®Õn ®ã cho ta hái th¨m nã nhÐ. Nh¾c nã vÒ th¨m S­ ¤ng cña nã gióp ta. Chóc ng­¬i Th­îng Lé B×nh An!")	
--Truong hop khac thi da co skill roi thi ko nhan nhiem vu gap kiem cuuduongquyet ma di kiem Truong Vo Ky va Trieu Man
else 
Talk(1,"","Tr­¬ng Tam Phong: C¸c H¹ r¶nh rçi ®Õn du ngo¹n Vâ §ang S¬n ghÐ qua ph¸i ch¬i nhÐ...")	
end
end
-- va nhiem vu nay Truong Tam Phong se noi
function L1_yt() 
-- Tao them mot nhiem vu khac - goi ham L1_get_yes
-- Nguoi choi chon Yes se goi ham L1_get_yes, 
Say("Tr­¬ng Tam Phong: Ta biÕt V« Kþ ®ang cïng TriÖu C« N­¬ng hµnh tÈu Giang Hå. Tr­íc khi ®i gÆp nã, ng­¬i h·y ®i Kho¸i H¹t L©m trªn nói C«n L«n t×m cho ta cuèn v¨n th­ bÞ mÊt. Ta cã huyÒn c¬ m¸ch b¶o cho ng­¬i sau khi mang nã vÒ. Sau ®ã ta sÏ cho ng­¬i biÕt S­ T«n V« Kþ ®ang ë ®©u!",2,"Chµo Tr­¬ng Ch©n Nh©n, Ta ®i ngay./L1_get_yes","Ta cã viÖc kh¸c ph¶i lµm/L1_get_no") 
end 

-- Neu nguoi choi nhan nhiem vu thi SetTask 36 tang len 1 la 11
function L1_get_yes()  
	SetTask(369,11)
	--Thong bao cho nguoi choi biet da nhan nhiem vu va neu ro~ di den dau, den Khoai Hoat Lam se SetTask tiep 
	-- Nhan nhiem vu nay lien quan den file thu 3. CUUDUONGQUYET.LUA
AddNote("GÆp Tr­¬ng Tam Phong, nhËn nhiÖm vô t×m Cöu D­¬ng QuyÕt, ®Õn Kho¸i H¹t L©m gÇn täa ®é 215/203 ®Ó t×m kiÕm.") 
-- Thong bao kenh the gioi
Msg2Player("NhËn nhiÖm vô t×m Cöu D­¬ng QuyÕt, ®Õn Kho¸i H¹t L©m gÇn täa ®é 215/203 ®Ó t×m kiÕm") 
Msg2SubWorld("<color=green>Chóc Mõng  <color=yellow>"..GetName().." §· NhËn NhiÖm Vô nhiÖm vô t×m Cöu D­¬ng QuyÕt, ®Õn Kho¸i H¹t L©m gÇn täa ®é 215/203 ®Ó t×m kiÕm<color>")

end; 

function L1_get_no() 
end; 

--Neu nguoi choi lay duoc cuuduongquyet, va gettask la 12 thi Truong Tam Phong thuong skill
function L1_done() 
-- Settask moi la 20
SetTask(369,20)
--Xoa item cuu duong quyet
DelCommonItem(6,1,30154)
--Add skill vao nhan vat (Cuu Duong Chan Khi id: 976 : 20 skill - id moi 1651)
AddMagic(1997,20)
--Thogn bao the gioi
Msg2Player("Gióp ®ì Tr­¬ng Ch©n Nh©n t×m l¹i ®­îc Cöu D­¬ng YÕu QuyÕt, ®­îc ng­êi truyÒn d¹y t©m ph¸p vµ häc ®­îc Cöu D­¬ng Ch©n KhÝ") 
--Thong bao cua so
AddNote("§Õn Quang Minh §Ønh chèn Sa M¹c §Þa BiÓu t×m Tr­¬ng V« Kþ") 
Msg2SubWorld("<color=green>Chóc Mõng  <color=yellow>"..GetName().." §· NhËn NhiÖm Vô nhiÖm vô t×m Tr­¬ng V« Kþ, ë Quang Minh §Ønh 213/173<color>")

end; 

