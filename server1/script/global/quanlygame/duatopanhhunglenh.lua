Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
--Include("\\script\\global\\quanlygame\\sukien\\trungthu\\banhtrungthu.lua")
IncludeLib("LEAGUE")
Include("\\script\\bonus_onlinetime\\func_onlineaward.lua")
IncludeLib("RELAYLADDER")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\nationalwar\\head.lua")
Include( "\\script\\lib\\say.lua" )
Include("\\script\\item\\tianziyuxi.lua")
IncludeLib("ITEM")
IncludeLib("TIMER")

IncludeLib("LEAGUE")
IncludeLib("TASKSYS");
Include("\\script\\missions\\basemission\\lib.lua")

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

function main()

dofile("script/global/quanlygame/duatopanhhunglenh.lua");

--tbAwardTemplet:GiveAwardByList({{szName="bi bao",tbProp={6,1,4567,1,1,0},nCount=1,},}, "test", 1);	

	--	Msg2Player("<color=green>L­u ý khi giao nép kh«ng nªn xÕp chång anh hïng lÖnh.")
		--Msg2Player("<color=green>L­u ý khi giao nép kh«ng nªn xÕp chång anh hïng lÖnh.")
		--Msg2Player("<color=green>L­u ý khi giao nép kh«ng nªn xÕp chång anh hïng lÖnh.")
		--Msg2Player("<color=green>L­u ý khi giao nép kh«ng nªn xÕp chång anh hïng lÖnh.")
		--Msg2Player("<color=green>L­u ý khi giao nép kh«ng nªn xÕp chång anh hïng lÖnh.")



local tab_Content = {
--"Xem Vßng Trong H×nh (1-36)/nhaphinhxem",
--"Xem Vßng Trong Video (1-14)/nhaphinhxem2",

--"Test TÊt C¶ Vßng/testallvong",

--"Nhan Hao Quan Le bao/haoquang",

--"Test Vßng S¸ng/testvoong",
--"Xãa Vßng S¸ng/xoavong",
--"Xãa Danh HiÖu/xoanhdanh",

--"Nép Anh Hïng LÖnh/nopduatop",
--"Xem B¶ng Top HiÖn T¹i./xemtop",


"Tho¸t./no"
	}
Say("<color=green>Chµo mõng ng­êi anh em!", getn(tab_Content), tab_Content);       
end;

function nhaphinhxem()
AskClientForString("xemhinh", "", 1, 50, "ID Vßng");
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


function danhhieuoppen()
Title_AddTitle(362, 2, 7200000)
Title_ActiveTitle(362)
SetTask(1122, 362);
end



function nopduatop()
	if tonumber(GetLocalDate("%Y%m%d%H%M")) >= 202002182359 then
		Talk(1,"","Thêi gian ®ua tãp ®· hÕt h¹n !")
	else
		GiveItemUI("Nép vËt phÈm","Vui lßng ®Æt 1 vËt phÈm duy nhÊt" ,"nopvatpham1", "no", 1);
	end
end;


function nopvatpham1(nCount)

	if nCount ~=1 then
		Msg2Player("Vui lßng bá ®óng vËt phÈm")
		return
	end
	local szName = GetName();
	local nIndex = GetGiveItemUnit(nCount);
	local G,D,P,nLevel = GetItemProp(nIndex);
	if G == 6 and D == 1 and P == 4565 then
		local nNumber = GetTask(4565) + (GetItemStackCount(nIndex) or 1)
		Ladder_NewLadder(10263, szName , nNumber, 0);
		RemoveItemByIndex(nIndex)
		SetTask(4565,nNumber);
		Msg2Player("Nép vËt phÈm thµnh c«ng !")
	else
		return Msg2Player("VËt phÈm kh«ng ®óng")
	end
end

function xemtop()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=green>%d <color> - <color=red>%s<color> sè l­îng <color=yellow>%d<color>\n ",i,Ladder_GetLadderInfo(10263,i)))
	end
	Say(szMsg,0)
end


function xoavong()
for i = 1480, 1700 do
	RemoveSkillState(i)
end
end


function xoanhdanh()
for i = 1, 372 do
Title_RemoveTitle(i)	
end
end



function testvoong()

local tab_Content = {
"NhËp ID vßng s¸ng 1529 - 1539/nhapvong",
"NhËp ID Danh HiÖu/nhapdanhhieu",




"KÕt thóc ®èi tho¹i./no"
	}
Say("<color=green>NhËn quµ cùc khñng tõ ®ua top anh hïng lÖnh", getn(tab_Content), tab_Content);       
end;

function nhapvong()
AskClientForNumber("sonhapvao",0,111111,"ID Vßng")
end


function sonhapvao(num)
PlayerFunLib:AddSkillState(num,1,3,1425600,1)
end




function nhapdanhhieu()
AskClientForNumber("nhapdanhhieu2",0,111111,"ID Vßng")
end


function nhapdanhhieu2(num)
Title_AddTitle(num, 2, 72000)
Title_ActiveTitle(num)
SetTask(1122, num);
end

function haoquang()
tbAwardTemplet:GiveAwardByList({{szName="LÖnh bµi GM",tbProp={6,1,4566,1,1},nCount=1,},}, "test", 1);
end


-------------------------------------------



function vongsangtop1()
n_title = 370 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 10*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1537,1,3,1555200*10,1)
PlayerFunLib:AddSkillState(1535,1,3,1555200*10,1)

end

function vongsangtop2()
n_title = 371 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 10*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
--PlayerFunLib:AddSkillState(1534,1,3,1425600,1)
PlayerFunLib:AddSkillState(1538,1,3,1555200*10,1)
PlayerFunLib:AddSkillState(1548,1,3,1555200*10,1)

end

function vongsangtop3()
n_title = 372 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 10*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1539,1,3,1555200*10,1)
PlayerFunLib:AddSkillState(1550,1,3,1555200*10,1)

end

function vonngsangnew1()
n_title = 366 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 1002000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1529,1,3,15425600,1)
PlayerFunLib:AddSkillState(1554,1,3,15425600,1)
PlayerFunLib:AddSkillState(1542,1,3,15425600,1)

end

function vonngsangnew2()
n_title = 367 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 1002000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1545,1,3,15425600,1)
PlayerFunLib:AddSkillState(1546,1,3,15425600,1)

end

function doccocaubai()
n_title = 375 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 1002000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1560,1,3,15425600,1)
PlayerFunLib:AddSkillState(1561,1,3,15425600,1)

end


function cuunguchiton()
n_title = 369 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 10*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1540,1,3,1555200*10,1)
PlayerFunLib:AddSkillState(1547,1,3,1555200*10,1)

end


function thienhavs()
n_title = 373 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 1002000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1647,1,3,15425600,1)
end


function volamlenh()
n_title = 370 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 1002000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1555,1,3,1555200,1)
end


function loanchien()
n_title = 374 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 10*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1551,1,3,1555200*10,1)
PlayerFunLib:AddSkillState(1552,1,3,1555200*10,1)
PlayerFunLib:AddSkillState(1564,1,3,1555200*10,1)
end



function nguyetca()
n_title = 374 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 10*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
PlayerFunLib:AddSkillState(1556,1,3,1555200*10,1)
PlayerFunLib:AddSkillState(1557,1,3,1555200*10,1)

end


function haoquang1()

	PlayerFunLib:AddSkillState(1541,1,3,1555200*30,1)

end
function haoquang2()

	PlayerFunLib:AddSkillState(1532,1,3,1555200*30,1)

end
function haoquang3()

	PlayerFunLib:AddSkillState(1534,1,3,1555200*300,1)
	PlayerFunLib:AddSkillState(1541,1,3,1555200*300,1)
end
function haoquang4()
	PlayerFunLib:AddSkillState(1558,1,3,1555200*300,1)
				PlayerFunLib:AddSkillState(1559,1,3,1555200*300,1)
	PlayerFunLib:AddSkillState(1544,1,3,1555200*300,1)
end
function haoquang5()



	PlayerFunLib:AddSkillState(1562,1,3,1555200*300,1)
	PlayerFunLib:AddSkillState(1563,1,3,1555200*300,1)
	PlayerFunLib:AddSkillState(1548,1,3,1555200*300,1)
end

function testallvong()



local tab_Content = {
"Vßng tèng kim top 1/vongsangtop1",
"Vßng tèng kim top 2/vongsangtop2",
"Vßng tèng kim top 3/vongsangtop3",
"Vßng vip 1/vonngsangnew1",
"Vßng vip 2/vonngsangnew2",
"§éc C« CÇu B¹i/doccocaubai",

"tiÕp./trang2"
	}
Say("<color=green>NhËn quµ cùc khñng tõ ®ua top anh hïng lÖnh", getn(tab_Content), tab_Content);       
end;

function trang2()



local tab_Content = {
"Cöu Ngò ChÝ T«n/cuunguchiton",
"Thiªn H¹ V« Song/thienhavs",
"Vâ L©m LÖnh/volamlenh",
"Lo¹n ChiÕn/loanchien",
"NguyÖt Ca §¶o/nguyetca",
"Hµo Quang lÔ bao 1/haoquang1",

"tiÕp./trang3"
	}
Say("<color=green>NhËn quµ cùc khñng tõ ®ua top anh hïng lÖnh", getn(tab_Content), tab_Content);       
end;


function trang3()



local tab_Content = {
"Hµo Quang lÔ bao 2/haoquang2",
"Hµo Quang lÔ bao 3/haoquang3",
"Hµo Quang lÔ bao 4/haoquang4",
"Hµo Quang lÔ bao 5/haoquang5",


"tho¸t./no"
	}
Say("<color=green>NhËn quµ cùc khñng tõ ®ua top anh hïng lÖnh", getn(tab_Content), tab_Content);       
end;


