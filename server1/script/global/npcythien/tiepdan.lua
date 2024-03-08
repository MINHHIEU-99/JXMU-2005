IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
--Include("\\script\\global\\hotrothem.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")


function main() 
dofile("script/global/npcythien/tiepdan.lua");
dialog_main()	
end


function dialog_main()
if  (GetTask(369) > 9) then
	Say("Ng­¬i ®ang lµm nhiÖm vô lµm sao cã thÓ nhËn l¹i ®­îc, h·y hoµn thµnh tr­íc ®i")
return 1 
end
	local szTitle = "<npc><enter><color=yellow>Vâ L©m Chİ T«n-B¶o ®ao §å Long<enter>HiÖu lÖnh Thiªn H¹-M¹c c¶m bÊt tßng<enter>û Thiªn bÊt xuÊt-Thïy d÷ tranh phong<color><enter>Nghe nãi <color=red>Gi¸o Chñ Minh Gi¸o Tr­¬ng V« Kş<color> t¸i xuÊt giang hå! H¾n ®ang n¾m gi÷ bİ mËt cña û Thiªn KiÕm vµ §å Long §ao, thiªn h¹ l¹i thªm nhiÒu biÕn ®éng"
	local tbOpt =
	{
		{"Hái chuyÖn", noi},
		{"Tho¸t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end




function noi()
if (GetTask(5981) > 1) then
	Say("Ng­¬i ®· hoµn thµnh 1 lÇn råi, hiÖn t¹i kh«ng thÓ hoµn thµnh ®­îc n÷a")
return 1 
end
if (GetLevel() >= 180) and  (GetTask(5969) >= 3) and  (GetTask(369) ~= 10)	  then		
Say("V« Danh N­¬ng: Ta cã nghe Giang Hå ®ån r»ng cã 1 L·o §¹o SÜ thÇn bİ ®ang ghĞ th¨m §éc C« KiÕm trªn Hoµnh S¬n Ph¸i cã quan hÖ mËt thiÕt víi Tr­¬ng Gi¸o Chñ, ¤ng ta cã thÓ gióp ng­¬i t×m tung tİch cña Tr­¬ng V« Kş, ng­¬i cã muèn thö kh«ng?",2, "§­îc, ta sÏ ®i ngay/go", "§Ó ta suy nghÜ kü l¹i xem/no")
elseif (GetTask(369) > 9)  then
local szTitle = "<npc>H·y lªn Hoµnh S¬n Ph¸i t×m L·o §¹o SÜ ®i"
	local tbOpt =
	{
		{"T¹m BiÖt"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
else
Talk(1,"","ChØ cã ng­êi vâ c«ng cÊp 180 trªn c·i l·o 3 míi cã ®ñ n¨ng lùc truy t×m bİ mËt û Thiªn §å Long! H·y ®i rÌn luyÖn thªm ®i nhĞ!")	
end
end


function go() 
Talk(1,"","Chóc C¸c H¹ th­îng lé b×nh an m· ®¸o thµnh c«ng!")
SetTask(369,10)
SetTask(5980,1)
Msg2Player("Chİnh thøc tiÕp nhËn thö th¸ch truy t×m bİ mËt û Thiªn §å Long truyÒn kú. §i Hoµnh S¬n Ph¸i Trong Phßng §éc C« KiÕm Ngä t×m l·o ®¹o sÜ thÇn bİ")
Msg2SubWorld("<color=green>Chóc Mõng  <color=yellow>"..GetName().." §· NhËn NhiÖm Vô û Thiªn §å Long Kı, §Õn Hoµnh S¬n Ph¸i T×m l·o ®¹o sÜ thÇn bİ<color>")
end 

function no() 
end 

