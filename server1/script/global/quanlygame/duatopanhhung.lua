IncludeLib("SPREADER")
IncludeLib("SETTING")
IncludeLib("LEAGUE")
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\missions\\citywar_arena\\head.lua");
Include("\\script\\missions\\citywar_global\\head.lua");
Include("\\script\\missions\\citywar_global\\citywar_function.lua");
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\missions\\citywar_global\\ladder.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("TASKSYS");
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("TIMER")
IncludeLib("RELAYLADDER")

Include("\\script\\lib\\common.lua")
Include("\\script\\lib\\string.lua")
Include("\\script\\activitysys\\functionlib.lua")


LadderFunLib = {}

nCityWar_Item_ID_G = 6	--lo¹i
nCityWar_Item_ID_D = 1	--lo¹i
nCityWar_Item_ID_P = 4565	--id vËt phÈm
TIAOZHANLING_TASK_DATE = 2018 -- kkl h»ng ngµy
TIAOZHANLING_TASK_COUNT = 2019 -- sè kkl h»ng ngµy
TIAOZHANLING_LGTYPEE= 541
TIAOZHANLING_LGNameE = "tiaozhanling"
LGTSK_TIAOZHANLING_COUNTT = 1
TASKKKL = 3518
TASKKKL2 = 3516

function main()
       dofile("script/global/quanlygame/duatopanhhung.lua");
	--local nDate = tonumber(GetLocalDate("%Y%m%d"));
	--if nDate >= 20191209 then
		--Say("<pic=26> §· hÕt thêi gian sù kiÖn hiÖn t¹i ban qu¶n trÞ ®ang chèt sè l­îng ®Ó ph¸t th­ëng cho bang héi dµnh th¾ng cuéc trong cuéc ®ua nµy.", 0);
		--Say("§· Cã KÕt Qu¶ Bang Ng¹o Dµnh Th¾ng Lîi.", 0);

	--	return
	--end;
	local tbSay = {}
	--tinsert(tbSay,"Xãa Vßng./xoavong")


--tinsert(tbSay,"Xem Vßng Trong H×nh (1-36)./nhaphinhxem")
--	tinsert(tbSay,"Xem Vßng Trong Video (1-14)./nhaphinhxem2")
	
--	tinsert(tbSay,"NhËn vßng 5 admin test/vongdocco2")
	--tinsert(tbSay,"NhËn L¹i Vßng 5 Míi/nhanlaivong5")

--tinsert(tbSay,"NhËn vßng Kh¸ng TÝnh./vongkhangtinh")

--	tinsert(tbSay,"NhËn vßng ®éc c« cÇu b¹i./vongdocco")
--tinsert(tbSay,"NhËn vßng 6 tr¶./vongtraacc")

--	tinsert(tbSay,"NhËn vßng s¸ng top 1./top1vongsang")
tinsert(tbSay,"NhËn Danh HiÖu Vip 1-10./TOPVIP")

--tinsert(tbSay,"NhËn Vßng Cöu Ngò ChÝ T«n./cuunguchiton")

	--tinsert(tbSay,"Ta ®Õn giao Anh Hïng LÖnh cho bæn bang./GiveTiaoZhanLing1")
		--tinsert(tbSay,"Xem Sè L­îng BÝ Ng« Cña C¸c Bang./XemSoLuong")

	--tinsert(tbSay,"Xem sè l­îng Anh Hïng LÖnh cña bang ta./ViewTiaoZhanLing")
--tinsert(tbSay,"Xem top sè l­îng Anh Hïng LÖnh cña c¸c bang./xemtop")
	--tinsert(tbSay,"Xem tæng sè anh hïng lÖnh ®· ®ãng gãp tõ b¹n./TongKKL")
		--tinsert(tbSay,"Test Vong Sang./vongsaangtest")

	--tinsert(tbSay,"Nhan Mat Na Test./nhanmatnatest")
	--tinsert(tbSay,"Nhan Bi Ngo Test./bingotest")

	--tinsert(tbSay,"Xem c«ng bè xÕp h¹ng Bang Héi Tranh Tµi./citywar_CheckVotes")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i/OnCancel")
	Say("<color=yellow>Mäi chi tiÕt truy cËp trang chñ: tieungaogiangho.net", getn(tbSay), tbSay)
end

function nhaphinhxem()
AskClientForString("xemhinh", "", 1, 50, "ID Vßng");
end

	RemoveSkillState(1578)
	RemoveSkillState(1579)
	RemoveSkillState(1580)
	RemoveSkillState(1581)
	RemoveSkillState(1582)
	RemoveSkillState(1583)
	RemoveSkillState(1584)
	RemoveSkillState(1585)
	RemoveSkillState(1586)
	RemoveSkillState(1587)




function TOPVIP()  --1 ngay la 1555200
if  GetAccount() == "tinpham4" or GetAccount() == "mrlhp145"  or GetAccount() == "bacts1fc"  or GetAccount() == "quyquy11"   or GetAccount() == "mrdoanhtc20"  or GetAccount() == "cuati004" or GetAccount() == "khanhay1" or GetAccount() == "khanhphuongtl"   or GetAccount() == "laodaivn2" or  GetAccount() == "volamtieungaochamnet12" or  GetAccount() == "anhtuyet01" or  GetAccount() == "kosaito2"  or  GetAccount() == "ligosusu"  or  GetAccount() == "nhoyeutien1"  or  GetAccount() == ""  or  GetAccount() == ""  or  GetAccount() == ""  or  GetAccount() == "duylinh04"  or  GetAccount() == "ongvuso2"  or  GetAccount() == "cainoicb1"  or  GetAccount() == ""  or  GetAccount() == "anhemcungcay918"  or  GetAccount() == ""  or  GetAccount() == ""  or  GetAccount() == ""  or  GetAccount() == ""  or  GetAccount() == ""  or  GetAccount() == ""  or  GetAccount() == "" or  GetAccount() == "" or  GetAccount() == "" or  GetAccount() == ""   or  GetAccount() == "" then
	RemoveSkillState(1579)
	RemoveSkillState(1580)
	RemoveSkillState(1581)
	RemoveSkillState(1582)
	RemoveSkillState(1583)
	RemoveSkillState(1584)
	RemoveSkillState(1585)
	RemoveSkillState(1586)
	RemoveSkillState(1587)

PlayerFunLib:AddSkillState(1578,1,3,1555200*150,1)  --212  --6

logplayer("dulieu/nhanvongvip.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] nhËn thµnh c«ng VIP 1 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
return
end
if GetAccount() == "tiennguyen2" or GetAccount() == "anhtuyet04"  or  GetAccount() == "bebopking" or  GetAccount() == "dinhbang"  or  GetAccount() == "" or  GetAccount() == "" or  GetAccount() == "" or  GetAccount() == ""or  GetAccount() == ""or  GetAccount() == "" or  GetAccount() == ""  then
	RemoveSkillState(1578)
	RemoveSkillState(1580)
	RemoveSkillState(1581)
	RemoveSkillState(1582)
	RemoveSkillState(1583)
	RemoveSkillState(1584)
	RemoveSkillState(1585)
	RemoveSkillState(1586)
	RemoveSkillState(1587)
PlayerFunLib:AddSkillState(1579,1,3,1555200*150,1)  --212  --6

logplayer("dulieu/nhanvongvip.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] nhËn thµnh c«ng VIP 2 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
return
end
if   GetAccount() == "volamtieungaochamnet6" or  GetAccount() == "anhsaulb" or  GetAccount() == "thanhson2" or  GetAccount() == "" then
	RemoveSkillState(1578)
	RemoveSkillState(1579)
	RemoveSkillState(1581)
	RemoveSkillState(1582)
	RemoveSkillState(1583)
	RemoveSkillState(1584)
	RemoveSkillState(1585)
	RemoveSkillState(1586)
	RemoveSkillState(1587)
PlayerFunLib:AddSkillState(1580,1,3,1555200*150,1)  --212  --6

logplayer("dulieu/nhanvongvip.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] nhËn thµnh c«ng VIP 3 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
return
end
if GetAccount() == "" or  GetAccount() == ""  or  GetAccount() == ""  or  GetAccount() == ""  then
	RemoveSkillState(1578)
	RemoveSkillState(1579)
	RemoveSkillState(1580)
	RemoveSkillState(1582)
	RemoveSkillState(1583)
	RemoveSkillState(1584)
	RemoveSkillState(1585)
	RemoveSkillState(1586)
	RemoveSkillState(1587)
PlayerFunLib:AddSkillState(1581,1,3,1555200*150,1)  --212  --6
logplayer("dulieu/nhanvongvip.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] nhËn thµnh c«ng VIP 4 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
return
end
if GetAccount() == "" or  GetAccount() == "" or  GetAccount() == ""  or  GetAccount() == "" or  GetAccount() == "" or  GetAccount() == "" or  GetAccount() == ""  then
	RemoveSkillState(1578)
	RemoveSkillState(1579)
	RemoveSkillState(1580)
	RemoveSkillState(1581)
	RemoveSkillState(1583)
	RemoveSkillState(1584)
	RemoveSkillState(1585)
	RemoveSkillState(1586)
	RemoveSkillState(1587)
PlayerFunLib:AddSkillState(1582,1,3,1555200*150,1)  --212  --6

logplayer("dulieu/nhanvongvip.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] nhËn thµnh c«ng VIP 5 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
return
end
if GetAccount() == "docvuong5" or  GetAccount() == ""  or  GetAccount() == ""  then
	RemoveSkillState(1578)
	RemoveSkillState(1579)
	RemoveSkillState(1580)
	RemoveSkillState(1581)
	RemoveSkillState(1582)
	RemoveSkillState(1584)
	RemoveSkillState(1585)
	RemoveSkillState(1586)
	RemoveSkillState(1587)
PlayerFunLib:AddSkillState(1583,1,3,1555200*150,1)  --212  --6
logplayer("dulieu/nhanvongvip.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] nhËn thµnh c«ng VIP 6 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
return
end
if GetAccount() == "ngodung01" or  GetAccount() == ""  or  GetAccount() == "" or  GetAccount() == "" then
	RemoveSkillState(1578)
	RemoveSkillState(1579)
	RemoveSkillState(1580)
	RemoveSkillState(1581)
	RemoveSkillState(1582)
	RemoveSkillState(1583)
	RemoveSkillState(1585)
	RemoveSkillState(1586)
	RemoveSkillState(1587)
PlayerFunLib:AddSkillState(1584,1,3,1555200*150,1)  --212  --6

return
end
if GetAccount() == "" or  GetAccount() == "" then
	RemoveSkillState(1578)
	RemoveSkillState(1579)
	RemoveSkillState(1580)
	RemoveSkillState(1581)
	RemoveSkillState(1582)
	RemoveSkillState(1583)
	RemoveSkillState(1584)
	RemoveSkillState(1586)
	RemoveSkillState(1587)
PlayerFunLib:AddSkillState(1585,1,3,1555200*150,1)  --212  --6

return
end
if GetAccount() == "" or  GetAccount() == ""  or  GetAccount() == "" then
	RemoveSkillState(1578)
	RemoveSkillState(1579)
	RemoveSkillState(1580)
	RemoveSkillState(1581)
	RemoveSkillState(1582)
	RemoveSkillState(1583)
	RemoveSkillState(1584)
	RemoveSkillState(1585)
	RemoveSkillState(1587)
PlayerFunLib:AddSkillState(1586,1,3,1555200*150,1)  --212  --6
--vip 9
return
end
if GetAccount() == "anhduccl" or  GetAccount() == "anphalove" or  GetAccount() == "" or  GetAccount() == ""  or  GetAccount() == "" or  GetAccount() == "" or  GetAccount() == ""  or  GetAccount() == "" or  GetAccount() == ""  or  GetAccount() == "" then
	RemoveSkillState(1578)
	RemoveSkillState(1579)
	RemoveSkillState(1580)
	RemoveSkillState(1581)
	RemoveSkillState(1582)
	RemoveSkillState(1583)
	RemoveSkillState(1584)
	RemoveSkillState(1585)
	RemoveSkillState(1586)

PlayerFunLib:AddSkillState(1587,1,3,1555200*150,1)  --212  --6
	RemoveSkillState(1582)

logplayer("dulieu/nhanvongvip.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] nhËn thµnh c«ng VIP 10 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))

end
Talk(1,"","§¹i hiÖp kh«ng n»m trong danh s¸ch.") 
end


function vongkhangtinh()  --1 ngay la 1555200
if GetAccount() == "dungleo"  then
PlayerFunLib:AddSkillState(1575,1,3,1555200*60,1)  --212  --6
PlayerFunLib:AddSkillState(1112,1,3,1555200*60,1)  --212  --6

logplayer("dulieu/nhanvongvipkhang.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] nhËn thµnh c«ng VIP 1 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
return
end
if GetAccount() == "linhthu19948"  then
PlayerFunLib:AddSkillState(1576,1,3,1555200*60,1)  --212  --6
PlayerFunLib:AddSkillState(1112,1,3,1555200*60,1)  --212  --6

logplayer("dulieu/nhanvongvipkhang.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] nhËn thµnh c«ng VIP 2 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
return
end
end



function vongtraacc()  --1 ngay la 1555200
if GetAccount() == "" or  GetAccount() == "" or  GetAccount() == "" then
xoavong()
	RemoveSkillState(1558)
		RemoveSkillState(1559)
		RemoveSkillState(1544)
			RemoveSkillState(1562)
				RemoveSkillState(1563)
					RemoveSkillState(1548)
						RemoveSkillState(1557)
	--PlayerFunLib:AddSkillState(1568,1,3,1555200*150,1)
--	PlayerFunLib:AddSkillState(1569,1,3,1555200*150,1)
--	PlayerFunLib:AddSkillState(1562,1,3,1555200*150,1)
--	PlayerFunLib:AddSkillState(1563,1,3,1555200*150,1)
		--PlayerFunLib:AddSkillState(1548,1,3,1555200*150,1)
			PlayerFunLib:AddSkillState(1562,1,3,1555200*150,1)  --212  --6
	    PlayerFunLib:AddSkillState(1563,1,3,1555200*150,1) --213 --18
			PlayerFunLib:AddSkillState(1548,1,3,1555200*150,1)  --246--23
		PlayerFunLib:AddSkillState(1557,1,3,1555200*150,1)  --251  33
SetTask(2626,6)
	else
		Talk(1,"","Ph¶i mua vßng sè 5 míi cã thÓ n©ng cÊp vßng sè 6 nµy") 
	return 
	end 
end


function xoavong()

for i = 1480, 1700 do
	RemoveSkillState(i)

end
		Talk(1,"","Xoa thnah cong xin hay out game") 

end


function xemhinh(strings) --130
	local img = "<link=image[0,0]:\\spr\\vongsangnew\\vong"..strings..".spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{

		{"NhËp Tõ 1 ®Õn 36"},
	}
	CreateNewSayEx(strTitle, tbOpt)
end

function nhaphinhxem2()
AskClientForString("xemhinh2", "", 1, 50, "ID Vßng");
end



function xemhinh2(strings) --130
	local img = "<link=image[0,0]:\\spr\\vongsangnew\\"..strings..".spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{

		{"NhËp Tõ 1 ®Õn 14"},
	}
	CreateNewSayEx(strTitle, tbOpt)
end




function nhanlaivong5()
if GetTask(2626) ~= 5 then
Say("b¹n hiÖn t¹i kh«ng cã trong danh s¸ch xin h·y sö dông vßng 5 lÔ bao hµo quang råi h·y ®Õn gÆp ta")
return
end
local kill1 = GetSkillState(1568)
local kill2 = GetSkillState(1569)
local kill3 = GetSkillState(1562)
local kill4 = GetSkillState(1563)
local kill5 = GetSkillState(1548)
local tongcacskill = kill1 + kill2 + kill3 + kill4 + kill5
--if kill1 > 0 and kill2 > 0  and  kill3 > 0 and kill4 > 0  and kill5 > 0  then
if GetTask(2626) == 5 then
	PlayerFunLib:AddSkillState(1562,1,3,1555200*150,1)  --212  --6
	PlayerFunLib:AddSkillState(1563,1,3,1555200*150,1) --213 --18
			PlayerFunLib:AddSkillState(1548,1,3,1555200*150,1)  --246--23
		PlayerFunLib:AddSkillState(1557,1,3,1555200*150,1)  --251  33
RemoveSkillState(1568)
RemoveSkillState(1569)
Say("Thay ®æi thµnh c«ng xin h·y tho¸t game vµo l¹i vµ th­ëng thøc")
else
Say("trªn ng­êi ®¹i hiÖp hiÖn kh«ng ®ñ skill sè 5 lÔ bao hµo quang kh«ng thÓ ®æi skill vßng s¸ng míi")
end
end

function vongdocco()
if GetAccount() == "khainguyen" or  GetAccount() == "xuanphuc1" then
--kiemtraskill()

n_title = 375 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 1002000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1566,1,3,46656000,1)
PlayerFunLib:AddSkillState(1561,1,3,46656000,1)
PlayerFunLib:AddSkillState(1535,1,3,46656000,1)
else
		Say("Kh«ng ph¶i top",0);
end
--kiemtraskill()
--xoavong()
end



function vongdocco2()
if GetAccount() == "khainguyen" or  GetAccount() == "concac1" then
--kiemtraskill()
	PlayerFunLib:AddSkillState(1562,1,3,1555200*150,1)  --212  --6
	PlayerFunLib:AddSkillState(1563,1,3,1555200*150,1) --213 --18
			PlayerFunLib:AddSkillState(1548,1,3,1555200*150,1)  --246--23
		PlayerFunLib:AddSkillState(1557,1,3,1555200*150,1)  --251  33


	--PlayerFunLib:AddSkillState(1562,1,3,1555200*150,1)
	--PlayerFunLib:AddSkillState(1563,1,3,1555200*150,1)
		--PlayerFunLib:AddSkillState(1548,1,3,1555200*150,1)
else
		Say("Kh«ng ph¶i top",0);
	--	xoavong()
end
--kiemtraskill()
--xoavong()
end

function xoavo1ng()
for i = 1480, 1700 do
	RemoveSkillState(i)
end
end

function kiemtraskill()
local skillhientai = GetSkillState(1566)
local skillhientai2 = GetSkillState(1567)
local skillhientai3 = GetSkillState(1535)
Msg2Player(""..skillhientai.." -  "..skillhientai2.." - "..skillhientai3.." ")
end



function vongdocco33()
if GetAccount() == "xuanphuc1" or  GetAccount() == "khainguyen" then

n_title = 375 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 1002000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1560,1,3,46656000,1)
PlayerFunLib:AddSkillState(1561,1,3,46656000,1)
else
		Say("Kh«ng ph¶i top",0);
	RemoveSkillState(1647)

end
end

function main1()
	local tbSay = {}

		--tinsert(tbSay,"Vong 1./vongsangtop1")

		--tinsert(tbSay,"Vong 2./vongsangtop2")
		--tinsert(tbSay,"Vong 3./vongsangtop3")

	tinsert(tbSay,"KÕt thóc ®èi tho¹i/OnCancel")
	Say("<color=yellow>Mäi chi tiÕt truy cËp trang chñ: tieungaogiangho.net", getn(tbSay), tbSay)
end


function top1vongsang()
if GetAccount() == "dun22gltt" or  GetAccount() == "khainguyen" then
n_title = 360 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 30*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1647,1,3,46656000,1)
else
		Say("Kh«ng ph¶i top",0);
	RemoveSkillState(1647)

end
end



function cuunguchiton()
if GetAccount() == "rionabi" or  GetAccount() == "khainguyen" then
n_title = 369 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 6*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1540,1,3,1555200*6,1)
PlayerFunLib:AddSkillState(1547,1,3,1555200*6,1)

RemoveSkillState(1566)
RemoveSkillState(1567)
RemoveSkillState(1535)



else
		Say("Kh«ng ph¶i top",0);

end
end

function cuunguchiton22()
if GetAccount() == "adminvltk" or  GetAccount() == "khainguyen" then
n_title = 367 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 100*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1545,1,3,46656000,1)
PlayerFunLib:AddSkillState(1546,1,3,46656000,1)
else
		Say("Kh«ng ph¶i top",0);
--RemoveSkillState(1647)
end
end




function vongsangtop1()
n_title = 360 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
end

function vongsangtop2()
n_title = 361 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
end

function vongsangtop3()
n_title = 362 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 72000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
end

function XemSoLuong()
local bang123456 =  LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,123456,LGTSK_TIAOZHANLING_COUNTT)		
local banghungba =  LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,HungBa,LGTSK_TIAOZHANLING_COUNTT)		
local bangthich =  LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,Thich,LGTSK_TIAOZHANLING_COUNTT)	
	tinsert(tbSay,"KÕt thóc ®èi tho¹i/OnCancel")
	
	Say("<color=pink>B¶ng cËp nhËt:\n + 123456 " ..bang123456.. "\n + Hïng B¸ " ..banghungba.. "\n + ThÝch  " ..bangthich.. "", getn(tbSay), tbSay)
end


function nhanmatnatest()
	   tbAwardTemplet:GiveAwardByList({{szName="C¸ Lãc",tbProp={0,11,894,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C¸ Lãc",tbProp={0,11,895,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C¸ Lãc",tbProp={0,11,896,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C¸ Lãc",tbProp={0,11,897,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C¸ Lãc",tbProp={0,11,898,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C¸ Lãc",tbProp={0,11,899,1,1},nCount=1   ,},}, "test", 1);
end

function bingotest()
	   tbAwardTemplet:GiveAwardByList({{szName="C¸ Lãc",tbProp={6,1,4549,1,1},nCount=10   ,},}, "test", 1);
end

function TongKKL()
local nTask = GetTask(TASKKKL)
Talk (1, "","T¹i h¹ ®· ®ãng gãp vµo bang tæng <color=yellow>"..nTask.."<color> anh hïng lÖnh.")
end

function citywar_CheckVotes()
	local tbVotes = citywar_tbLadder:GetInfo()
	local szMsg = format("<dec>B¶ng xÕp h¹ng Tranh ®o¹t khiªu khÝch lÖnh: <enter>%s%s%s<enter>", strfill_center("STT",4, " "), strfill_center("Bang héi", 20, " "), strfill_center("Sè l­îng", 20, " "))
	local res = {}
	for i = 1, getn(tbVotes) do
		tinsert(res, strfill_center(i, 4, " "))
		tinsert(res, strfill_center(tbVotes[i].szName, 20, " "))
		tinsert(res, strfill_center(tbVotes[i].nValue, 20, " "))
		tinsert(res, "<enter>")
	end
	PushString(szMsg)
	for i = 1, getn(res) do
		AppendString(res[i])
	end
	szMsg = PopString()
	TaskSayList(szMsg, "C¸m ¬n! Ta ®· râ råi./OnCancel")
end

function checkBangHuiLimit()
	local TongName,TongID = GetTongName();
	if TongName == "" or TongName == nil then
		return 0;
	else
		return 1;
	end
end


function checkCreatLG(szlgname)
	local nlid = LG_GetLeagueObj(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE)
	if nlid == 0 or nlid == nil then
		local nNewLeagueID = LG_CreateLeagueObj()
		LG_SetLeagueInfo(nNewLeagueID, TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE)	--ÉèÖÃÉçÍÅÐÅÏ¢(ÀàÐÍ¡¢Ãû³Æ)
		local ret = LG_ApplyAddLeague(nNewLeagueID, "", "") 
		LG_FreeLeagueObj(nNewLeagueID)
	end
end

function checkJoinLG(szlgname)
	local roleid = LG_GetLeagueObjByRole(TIAOZHANLING_LGTYPEE,szlgname);
	if roleid == 0 or roleid == nil then
		local nMemberID = LGM_CreateMemberObj()
		LGM_SetMemberInfo(nMemberID,szlgname, 0, TIAOZHANLING_LGTYPEE, TIAOZHANLING_LGNameE) 
		local ret = LGM_ApplyAddMember(nMemberID, "", "") 
		LGM_FreeMemberObj(nMemberID)
	end
end

function GiveTiaoZhanLing1()
Say("<color=green>L­u ý khi giao nép ph¶i t¸ch vËt phÈm ra nÕu ®Ó xÕp chång sÏ bÞ mÊt.",2,"Ta hiÓu råi råi/GiveTiaoZhanLing","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end


function GiveTiaoZhanLing()
	if checkBangHuiLimit() == 0 then
			Say("Xin lçi! §¹i hiÖp ch­a gia nhËp bang héi nµo c¶!",0);
			return 0;
	end
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCount = GetTask(TIAOZHANLING_TASK_COUNT);
	--if ( nOlddate == nDate and nCount >= 30) then
			--Say("Mçi ngµy giao n¹p tèi ®a 30 anh hïng lÖnh. H«m nay ng­¬i ®· giao ®ñ råi, ngµy mai h·y tiÕp tôc.",0)
			--return 0;
	--end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	----------------- giíi h¹n sè l­îng khiªu khÝch lÖnh-------------------
--	local szlgname = GetTongName();
--	checkCreatLG(szlgname);	
--	checkJoinLG(szlgname);
--	local szTongName, nTongID = GetTongName();
--	local nsum = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)
--	if nsum >= 2000000000 then   --ÉÏÏÞ´ï20ÒÚÔò²»ÄÜÔÙÌá½»
--		Say("Tæng sè vâ l©m lÖnh ®· ®¹t giíi h¹n. Lóc kh¸c thö l¹i vËy.",0)
--		return 0;
--	end
	---------------------më ra giao diÖn giao n¹p
	GiveItemUI("Giao nép anh hïng lÖnh", "Chó ý kh«ng ®­îc xÕp chång anh hïng lÖnh mµ ph¶i t¸ch ra tr­íc khi bá vµo nÕu kh«ng sÏ mÊt.", "sure_GiveTiaoZhanLing", "OnCancel");
end

function sure_GiveTiaoZhanLing(nCount)
	if nCount <= 0 then
		Say("ThËt ®¸ng tiÕc chØ cho phÐp giao nép 1 lÇn 1 vËt phÈm, ng­¬i ch­a giao vËt phÈm nhiÖm vô cho ta",2,"Giao l¹i vËt phÈm/GiveTiaoZhanLing","§Ó ta suy nghÜ l¹i/OnCancel");
		return 0;
	end
--	local tienvancan = 50000 * nCount
	--if GetCash() < tienvancan then
	--Say("ThËt ®¸ng tiÕc, mçi bÝ ng« giao cÇn ph¶i cã 5 v¹n l­îng.", 0);
	--return
--	end

	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		local g, d, p = GetItemProp(nItemidx);
		if (g ~= nCityWar_Item_ID_G or d ~= nCityWar_Item_ID_D or p ~= nCityWar_Item_ID_P) then
			Say("Ta kh«ng nhËn nh÷ng thø kh¸c, chØ cÇn ®­a ta <color=yellow>anh hïng lÖnh<color> lµ ®­îc råi.", 2,"Giao l¹i vËt phÈm/GiveTiaoZhanLing","§Ó ta suy nghÜ l¹i/OnCancel");
			return 0;
		end;
	end;
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCountall = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCountall+nCount > 100) then
			Say(format("ThËt ®¸ng tiÕc, h«m nay ng­¬i ®· nép vµo %d anh hïng lÖnh, chØ cÇn nép %d anh hïng lÖnh n÷a lµ ®­îc råi.",nCountall,100-nCountall),0)
			return 0;
	end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	local nCityId = getSigningUpCity(1);
	local szTongName, nTongID = GetTongName();
	local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)
	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		RemoveItemByIndex(nItemidx)
	end;
		--local tienvancan = 50000 * nCount

                            local nTask = GetTask(TASKKKL)
	SetTask(TIAOZHANLING_TASK_COUNT,nCountall+nCount);	
	LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE, szTongName, LGTSK_TIAOZHANLING_COUNTT, nCount, "", "");
	szMsg = ''..GetName().." ®· ®ãng gãp <color=red>"..nCount.."<color> anh hïng lÖnh vµo bang héi bæn bang.Thµnh viªn nµy ®· ®ãng tæng céng<color=green> "..nTask.." <color>anh hïng lÖnh."	
	Msg2Tong(nTongID, szMsg)
	Msg2Player(format("B¹n ®· nép vµo %d anh hïng lÖnh vµo bang héi",nCount))
--	StackExp(1000000*nCount);
--SetTask(TASKKKL2,GetTask (TASKKKL2)+nCount)
SetTask(TASKKKL,GetTask(TASKKKL)+nCount)
--Pay(tienvancan)
--matnahenxuoi()
local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)	
		Ladder_NewLadder(10262, szTongName, nTask + nCurCount , 0);

end;



function ViewTiaoZhanLing()
		local szTongName, nTongID = GetTongName();
		if (nTongID == 0 or ( GetTongFigure() ~= TONG_MASTER and GetTongFigure() ~= TONG_ELDER and GetTongFigure() ~= TONG_MANAGER)) then
			Say("ThËt ®¸ng tiÕc, chØ cã bang chñ cïng tr­ëng l·o vµ ®éi tr­ëng míi cã thÓ xem th«ng tin sè l­îng anh hïng lÖnh.", 0);
			return 0
		end
		checkCreatLG(szTongName);
		checkJoinLG(szTongName);
		local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)		
		Say(format(szTongName.." cña ta míi xøng ®¸ng lµ kÎ v« ®Þch:<pic=18><enter><color=green>HiÖn t¹i bang héi cña ta ®· nép ®­îc <color=yellow>%d<color> anh hïng lÖnh bang bªn ®ã g¸ng cè g¾ng ®uæi kÞp bang ta.",nCurCount),0)
logplayer("dulieu/haloween.txt",format("Thêi gian : %s  - Bang Héi [ %s] - Tµi Kho¶n [ %s]- Nh©n vËt : [%s ] Bang Héi §¹t [%s ] BÝ Ng« ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName(),nCurCount))


end

function OnCancel()
end;

function xemtop()
	local tbSay = {}

		tinsert(tbSay,"Trang ®Çu./xembangtop1")
		tinsert(tbSay,"Trang sau./xembangtop2")
		tinsert(tbSay,"Trang cuèi./xembangtop3")

	tinsert(tbSay,"KÕt thóc ®èi tho¹i/OnCancel")
	Say("<color=yellow>Mäi chi tiÕt truy cËp trang chñ: tieungaogiangho.net", getn(tbSay), tbSay)
end



function xembangtop1()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=pink>%d <color> - <color=red>%s<color> sè l­îng Anh Hïng LÖnh <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10262,i)))
	end
	Say(szMsg,0)
end

function xembangtop2()
	local szMsg = ""
	for i=6,10 do
		szMsg = szMsg ..(format("Top <color=pink>%d <color> - <color=red>%s<color> sè l­îng Anh Hïng LÖnh <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10262,i)))
	end
	Say(szMsg,0)
end

function xembangtop3()
	local szMsg = ""
	for i=11,15 do
		szMsg = szMsg ..(format("Top <color=pink>%d <color> - <color=red>%s<color> sè l­îng Anh Hïng LÖnh <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10262,i)))
	end
	Say(szMsg,0)
end





function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
