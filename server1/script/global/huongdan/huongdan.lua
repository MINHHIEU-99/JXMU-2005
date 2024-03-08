Include("\\script\\lib\\awardtemplet.lua")
-- Include("\\script\\activitysys\\config\\2002\\config.lua")
-- Include("\\script\\activitysys\\config\\2002\\head.lua")
-- Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")-- lib bittask cua VNG
IncludeLib("TITLE")
Include("\\script\\misc\\spreader\\spreader.lua")
IncludeLib("TITLE")
Include("\\script\\tong\\tong_header.lua");
IncludeLib("TONG")
Include("\\script\\thoduong\\head.lua")
--Include("\\script\\activitysys\\config\\2045\\variables.lua")


function ok1()
local tbKimphong= {
{szName = "Kim Phong Thanh D­¬ng Kh«i",tbProp = {6,1,4500,1},nCount=10,},
--{szName = "Kim Phong Kú L©n HuyÕt",tbProp = {0,178},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong Tr¹c Liªn Quang",tbProp = {0,179},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong C«ng CÈn Tam Th¸n",tbProp = {0,180},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong §o¹t Hån Ngäc ®¸i",tbProp = {0,181},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong HËu NghÖ dÉn cung",tbProp = {0,182},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong Lan §×nh Ngäc",tbProp = {0,183},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong Thiªn Lı Th¶o Th­îng Phi",tbProp = {0,184},nBindState=-2,nCount=1,nQuality=1},
--{szName = "Kim Phong §ång T­íc Xu©n Th©m",tbProp = {0,185},nBindState=-2,nCount=1,nQuality=1},
}
tbAwardTemplet:GiveAwardByList(tbKimphong, "Nhan kim phong den bu")
end

function chucphuc1()
	local nCount = CalcEquiproomItemCount(6,1,4500,1)
	if (nCount < 1) then
		Say("<color=yellow>VŞ b»ng h÷u nµy ta kh«ng thÊy thiÖp cña ng­¬i ®©u c¶ ! Khi nµo cã ®ñ  h·y quay l¹i.",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end
	
checkten()
ConsumeEquiproomItem(1, 6,1,4500,1)
end

function checkten()
return AskClientForString("checktenok","",1,999999999,"Tªn Nh©n VËt")
end

function checkten11(nVar)
	
local gmPlayerIdx = PlayerIndex
local nMap,nX,nY = GetWorldPos();
local nX32, nY32, nMapIndex =  GetPos()
local searchPlayerIDX = SearchPlayer(nVar);
local trangthai = GetFightState()
if searchPlayerIDX > 0 then
	PlayerIndex = searchPlayerIDX
Msg2Player(" duoc chuc phuc")
AddOwnExp(11)
	PlayerIndex = gmPlayerIdx
	return
else
Say("khong tim thay nhan vat")
end
end


function checktenok(nVar)
local gmPlayerIdx = PlayerIndex
local nMap,nX,nY = GetWorldPos();
local nX32, nY32, nMapIndex =  GetPos()
local searchPlayerIDX = SearchPlayer(nVar);
local trangthai = GetFightState()
if searchPlayerIDX > 0 then
	PlayerIndex = searchPlayerIDX
Msg2Player(" duoc chuc phuc")
AddOwnExp(11)
	PlayerIndex = gmPlayerIdx
	return
else
Say("khong tim thay nhan vat")
end
end


function main()
dofile("script/global/huongdan/huongdan.lua");
local tbSay = {
"Mét vµi quy t¾c vµ l­u ı khi tham gia Vâ L©m Bİ Sö/huongdanthamgia",
"Danh S¸ch c¸c tİnh n¨ng ®ang ¸p dông/danhsachhoatdong",
"H­íng dÉn t©n thñ/huongdantanthu",
"KÕt thóc ®èi tho¹i/no",
}
Say("Th¸i S¬n ®­îc x©y dùng dùa trªn ı kiÕn cña céng ®ång game thñ Vâ L©m Bİ Sö cïng sù trë l¹i cña İt nhÊt 5 Bang héi thuë nµo , cïng chê xem chóng ta cã g× phİa tr­íc . . .\n<color=green>Fanpage : <color=yellow>Facebook.com/vlbisu/\n<color=green>Group : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function danhsachhoatdong()
	local tbSay = {
-- "L«i §µi Lo¹n ChiÕn/loidailoanchien",
"Tèng Kim §¹i ChiÕn/tongkimdaichien",
"NhiÖm vô D· tÈu/datau",
-- "Qu¶ Huy Hoµng/sanhathoangkim",
-- "Trèng Kh¶i Hoµng/trongkhaihoang",
-- "ThuyÒn Phong L¨ng §é/thuyenphonglangdo",
-- "V­ît ¶i NhiÕp Thİ TrÇn/vuotai",
-- "Boss §¹i Hoµng Kim/bosshoangkim",
-- "Boss TiÓu Hoµng Kim/bosshoangkimtieu",
"BÇu Cua/choibaucua",
-- "C«ng Thµnh ChiÕn/congthanhchien",
-- "Thiªn Tö §¹i ChiÕn/thientu",
-- "VËn Tiªu Long M«n/vantieu",
"KÕt thóc ®èi tho¹i/no",
	}
Say("Ta ®· ®­îc nghe qua giäng h¸t cña cËu Êy , admin server nµy , cËu Êy thùc sù lµ mét ca sÜ , h·y tin ta . . .\n<color=green>Fanpage : <color=yellow>Facebook.com/vlbisu/\n<color=green>Group : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function huongdanthamgia()
	local tbSay = {
"H­íng t¹i céng ®ång v÷ng m¹nh VLBS cã mét vµi quy t¾c nhá/quytac",
"Thñ tôc mua - b¸n vµ c¶nh gi¸c víi c¸c chiªu trß lõa ®¶o/muaban",
"NhËp Code T©n Thñ ë ®©u/nhapcode",
"ChuyÓn Ph¸i LÊy Skill/chuyenphai",
"KÕt thóc ®èi tho¹i/no",
	}
Say("Ta ®· ®­îc nghe qua giäng h¸t cña cËu Êy , admin server nµy , cËu Êy thùc sù lµ mét ca sÜ , h·y tin ta . . .\n<color=green>Fanpage : <color=yellow>Facebook.com/vlbisu/\n<color=green>Group : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function huongdantanthu()
	local tbSay = {
"VÊn ®Ò vÒ cÊp ®é/capdo",
"VÊn ®Ò vÒ kü n¨ng cÊp 90/kynang90",
"C¸ch lËp bang héi/lapbang",
"C¸c vËt phÈm ®Æc biÖt khi tiªu diÖt Boss xanh/vatphamdacbiet",
"Vßng S¸ng nhËn ë §©u/vongsang",
"KÕt thóc ®èi tho¹i/no",
	}
Say("Ta ®· ®­îc nghe qua giäng h¸t cña cËu Êy , admin server nµy , cËu Êy thùc sù lµ mét ca sÜ , h·y tin ta . . .\n<color=green>Fanpage : <color=yellow>Facebook.com/vlbisu/\n<color=green>Group : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function quytac()
	Say("<color=green>§iÒu 1 : Nh»m x©y dùng mét céng ®ång VLBS v÷ng m¹nh nhÊt tõ tr­íc tíi nay , BQT ¸p dông ®iÒu luËt h¹n chÕ ng­êi ch¬i rao b¸n Nh©n vËt ( ACC ) trªn c¸c TÇn sè giao tiÕp trong game còng nh­ Group trao ®æi mua b¸n , h¹n chÕ nµy ®­îc hñy bá sau khi m¸y chñ míi ®i vµo ho¹t ®éng ®­îc 30 ngµy.\n§iÒu 2 : Nghiªm cÊm sö dông c¸c lo¹i script tù ph¸t hoÆc c¸c phÇn mÒm thø 3 can thiÖp tíi qu¸ tr×nh vËn hµh game nh­ Tools , Mutilog v.v.. - BQT sÏ tiÕn hµnh lo¹i bá nh÷ng ng­êi ch¬i nµy ra khái céng ®ång.")
end

function tongkimdaichien()
	Say("<color=yellow>Thêi gian : 11h - 15h - 21h - 23 - 21h\n                      <color=red>TrËn 15h00 :\n<color=green>+Top 1 : 50 TiÒn ®ång , 01 b×nh Tiªn Th¶o lé 1h\n+Top 2 : 50 TiÒn ®ång\n+Top 3 : 30 TiÒn ®ång\n                      <color=red>TrËn 21h00:\n§¹t trªn 500 ®iÓm tİch lòy sÏ nhËn ngay 2 triÖu ®iÓm kinh nghiÖm bÊt kÓ th¾ng thua\n<color=green>+Top 1 : 100 TiÒn ®ång , 01 b×nh Tiªn Th¶o lé 8h\n+Top 2 : 100 TiÒn ®ång\n+Top 3 : 80 TiÒn ®ång")
end

-- function sanhathoangkim()
	-- Say("<color=yellow>Thêi gian : 12h h»ng ngµy t¹i ®Êu tr­êng sinh tö")
-- end

-- function thuyenphonglangdo()
	-- Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white> tÊt c¶ giê ch¼n riªng 2-16-20-22h lµ chuyÕn cã ®¹i thñy tÆc.\n<color=cyan>Tham gia: <color=white>ChØ cho phĞp ®i 1 bÕn 1 cã thÓ cõu ®å s¸t.\n<color=pink>PhÇn th­ëng:<color=white> hoµn thµnh ®Õn bê b¾c - tiªu diÖt thñy tÆc 1 m·nh HKMP + 1 thñy tinh - tiªu diÖt ®¹i thñy tÆc 2 m·nh HKMP + TTK")
-- end

-- function vuotai()
	-- Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>tÊt c¶ giê lÎ trõ 21h.\n<color=cyan>Tham gia: <color=white>t¹i nhiÕp thİ trÇn.\n<color=pink>PhÇn th­ëng:<color=white> hoµn thµnh v­ît ¶i x¸c xuÊt ra TTK + VLMT  + Thñy Tinh")
-- end

-- function thientu()
	-- Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>21h thø 2 - víi ®iÒu kiÖn lµ ph¶i cã 1 bang chiÕm l©m an 1 bang chiÕm biÖn kinh.NÕu 1 bang chiÕm 2 thµnh th× thø 2 tèng kim b×nh th­êng.\n<color=cyan>Tham gia: <color=white>Bang chñ tr­íc 21h ph¶i qua néi c¸t th­îng th­ ë L©m An vµ BiÖn Kinh nhËn 50 lÖnh bµi quèc chiÕn vµ chŞ nhËn 1 lÇn.\n<color=pink>PhÇn th­ëng:<color=white> NhËn t¹i 204/198 Ba L¨ng HuyÖn")
-- end

-- function bosshoangkim()
	-- Say("<color=yellow>Thêi gian : 19h30 h»ng ngµy")
-- end

-- function bosshoangkimtieu()
	-- Say("<color=yellow>Thêi gian : 12h35 vµ 23h05")
-- end

function choibaucua()
	Say("<color=yellow>§Şa ®iÓm : NPC BÇu cua ®¹i nh©n t¹i trung t©m T­¬ng D­¬ng thµnh - Thêi gian tham gia vµo lóc : 22h - 24h mçi ngµy . Tèi ®a mçi lÇn ch¬i 10 TiÒn ®ång hoÆc 50 v¹n l­îng.")
end

-- function vantieu()
	-- Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : tÊt c¶ c¸c giê.\n<color=cyan>Tham gia: NPC Long M«n Tiªu Côc 201/200 Ba L¨ng HuyÖn ®iÒu kiÖn ph¶i cã hé tiªu lÖnh tham gia tèng kim cã ®­îc<color=white>.\n<color=pink>PhÇn th­ëng:<color=white>vËn thµnh c«ng nhËn 1 m·nh HKMP :  vËn thÊt b¹i tøc bŞ c­íp sÏ r¬i ra hé tiªu lÖnh.")
-- end

-- function trongkhaihoang()
	-- Say("<color=yellow>Thêi gian:20h10 ngµy thø 7..")
-- end

-- function congthanhchien()
	-- Say("<color=yellow>C¸c tİnh n¨ng míi cßn l¹i sÏ ®­îc update liªn tôc trong vµi ngµy tíi:\n<color=green>Thêi gian:<color=white>Thêi gian ®¸nh vµo lóc : 20h30 c¸c ngµy thø 6.\n<color=cyan>Tham gia: bang chñ b¸o danh t¹i tiÕp ®Çu c«ng thµnh chiÕn chi phİ 100 v¹n thêi gian b¸o danh lµ tr­íc 19h30 nÕu sau 19h30 coi nh­ ko thÓ b¸o danh.Giíi h¹n acc 1 bang c«ng thµnh lµ 150 acc qu¸ sè l­îng kh«ng thÓ vµo.<color=white>.\n<color=pink>PhÇn th­ëng: <color=white>NhËn t¹i 204/198 Ba L¨ng HuyÖn.")
-- end

function chuyenphai()
	Say("<color=green>Nh»m gi÷ tİnh c©n b»ng vµ æn ®Şnh tuyÖt ®èi , sau 8 n¨m vËn hµnh Vâ L©m Bİ Sö kh«ng ¸p dông chøc n¨ng nµy.")
end

function datau()
	Say("<color=yellow>Giíi h¹n : Mçi nh©n vËt cã thÓ thùc hiÖn 30 nhiÖm vô mçi ngµy.\nHoµn thµnh 6000 nhiÖm vô D· tÈu nhËn 10 ngµn v¹n l­îng vµ ngÉu nhiªn nhËn ®­îc 01 mãn trang bŞ Hoµng Kim M«n Ph¸i.\nHoµn thµnh nhiÖm vô D· tÈu cã c¬ héi nhËn Ng©n l­îng vµ NÕn vui vÎ ( VËt phÈm gióp nh©n ®«i ®iÓm kinh nghiÖm cho m×nh vµ tæ ®éi )")
end

function muaban()
	Say("<color=green>HiÖn t¹i Admin trung gian duy nhÊt t¹i VLBS lµ b¹n :\n<color=red>§oµn Ngäc Phóc\n<color=green>§Şa chØ FB : https://www.facebook.com/phuc.doanngoc\n<color=green>S§T : 038.729.2209\n<color=green>Vui lßng liªn hÖ víi S§T nµy tr­íc khi giao dŞch nh»m tr¸nh tuyÖt ®èi c¸c thñ ®o¹n lõa ®¶o . Phİ trung gian : 5%")
end

function nhapcode()
	Say("<color=green>HiÖn t¹i t©n thñ khi tham gia server sÏ ®­îc nhËn ­u ®·i v« cïng lín :\n+10 b×nh Tiªn th¶o lé 1h\n+05 b×nh Thiªn s¬n b¶o lé 1h\n§Ó nhËn nh÷ng vËt phÈm nµy ng­êi ch¬i vui lßng nhËp Code ®­îc ph¸t t¹i NPC LÔ qu©n")
end

function capdo()
	Say("<color=yellow>L©u dµi vµ æn ®Şnh - víi t«n chØ nµy c¸c server thuéc VLBS lu«n ¸p dông h­íng ®i nh­ sau : Tõ level 10 tíi 80 ch­ vŞ b»ng h÷u sÏ c¶m thÊy viÖc cµy cÊp kh«ng qu¸ chËm - Tõ level 80 trë ®i ch­ vŞ sÏ c¶m thÊy nhËn ®Şnh cña m×nh h¬i sai sai - Tõ level 90 trë lªn ch­ vŞ huynh ®Ö ch¾c ch¾n sÏ c¶m thÊy sai hoµn toµn vµ thùc sù muèn g¾n bã víi VLBS - mét t­îng ®µi. Tèc ®é xuÊt hiÖn cña qu¸i vËt kh¸ nhanh sau khi bŞ tiªu diÖt - Vßng s¸ng t©n thñ tíi cÊp 80 , h·y tËn dông thËt tèt ®iÒu ®ã")
end

function kynang90()
	Say("<color=yellow>Tham gia tiªu diÖt boss xanh t¹i c¸c b¶n ®å luyÖn cÊp 60 trë lªn ch­ vŞ sÏ cã c¬ héi nhËn Tói bİ kİp cÊp 90 ( LÔ bao chiÕn th¾ng ) , tïy chän 01 cuèn s¸ch kü n¨ng cÊp 90 hoÆc nÕu ch­ vŞ c¶m thÊy qu¸ khã , chóng ta hoµn toµn cã thÓ ®îi tíi level 90 ®Ó cã thÓ häc ®­îc c¸c lo¹i kü n¨ng nµy tõ NPC M«n ph¸i ")
end

function lapbang()
	Say("<color=yellow>Tham gia tiªu diÖt boss xanh t¹i c¸c b¶n ®å luyÖn cÊp ch­ vŞ sÏ cã c¬ héi nhËn Nh¹c V­¬ng Hån Th¹ch ( hoÆc ®æi tõ ®iÓm tİch lòy tèng kim gi¸ 1000 ®iÓm tİch lòy ) , víi 100 vËt phÈm Nh¹c V­¬ng Hån Th¹ch chóng ta ®· cã thÓ së h÷u Nh¹c V­¬ng KiÕm , bang chñ khai lËp bang héi kh«ng cÇn tháa m·n bÊt cø ®iÒu kiÖn nµo vÒ danh väng còng nh­ tµi l·nh ®¹o. ")
end

function vongsang()
	Say("<color=yellow>HiÖn t¹i nh÷ng nh©n vËt cã ®¼ng cÊp 80 trë xuèng sÏ nhËn ®­îc hç trî vßng s¸ng t©n thñ , chøc n¨ng nµy nhËn ®­îc tõ vËt phÈm ThÇn Hµnh Phï hoÆc NPC Hç trî t©n thñ - Vßng s¸ng chØ biÕn mÊt khi nh©n vËt vÒ thµnh d­ìng søc ")
end

function vatphamdacbiet()
	Say("<color=yellow>Tham gia tiªu diÖt boss xanh ë c¸c b¶n ®å cÊp 60 trë lªn nh©n sÜ sÏ cã c¬ héi nhËn ®­îc :\n+ CÈm nang hoµng kim ( bªn trong chøa c¸c lo¹i phóc duyªn , ng©n l­îng , xu , thñy tinh hoÆc tinh hång b¶o th¹ch)\n+ Thiªn s¬n b¶o lé\n+ C¸c lo¹i r­îu may m¾n\n+ Ng­êi tuyÕt tu luyÖn kü n¨ng")
end
