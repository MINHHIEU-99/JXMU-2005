Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
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

	--	Msg2Player("<color=green>L�u � khi giao n�p kh�ng n�n x�p ch�ng anh h�ng l�nh.")
		--Msg2Player("<color=green>L�u � khi giao n�p kh�ng n�n x�p ch�ng anh h�ng l�nh.")
		--Msg2Player("<color=green>L�u � khi giao n�p kh�ng n�n x�p ch�ng anh h�ng l�nh.")
		--Msg2Player("<color=green>L�u � khi giao n�p kh�ng n�n x�p ch�ng anh h�ng l�nh.")
		--Msg2Player("<color=green>L�u � khi giao n�p kh�ng n�n x�p ch�ng anh h�ng l�nh.")



local tab_Content = {
--"Xem V�ng Trong H�nh (1-36)/nhaphinhxem",
--"Xem V�ng Trong Video (1-14)/nhaphinhxem2",

--"Test T�t C� V�ng/testallvong",

--"Nhan Hao Quan Le bao/haoquang",

--"Test V�ng S�ng/testvoong",
--"X�a V�ng S�ng/xoavong",
--"X�a Danh Hi�u/xoanhdanh",

--"N�p Anh H�ng L�nh/nopduatop",
--"Xem B�ng Top Hi�n T�i./xemtop",


"Tho�t./no"
	}
Say("<color=green>Ch�o m�ng ng��i anh em!", getn(tab_Content), tab_Content);       
end;

function nhaphinhxem()
AskClientForString("xemhinh", "", 1, 50, "ID V�ng");
end



function xemhinh(strings) --130
	local img = "<link=image[0,0]:\\spr\\vongsangnew\\vong"..strings..".spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{

		{"Nh�p T� 1 ��n 36"},
	}
	CreateNewSayEx(strTitle, tbOpt)
end

function nhaphinhxem2()
AskClientForString("xemhinh2", "", 1, 50, "ID V�ng");
end



function xemhinh2(strings) --130
	local img = "<link=image[0,0]:\\spr\\vongsangnew\\"..strings..".spr><link>"
	local strTitle = ""..img.."��y l� v� ��p c�a trang b� ph�t s�ng m� c�c h� s�p �p."
	local tbOpt =
	{

		{"Nh�p T� 1 ��n 14"},
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
		Talk(1,"","Th�i gian �ua t�p �� h�t h�n !")
	else
		GiveItemUI("N�p v�t ph�m","Vui l�ng ��t 1 v�t ph�m duy nh�t" ,"nopvatpham1", "no", 1);
	end
end;


function nopvatpham1(nCount)

	if nCount ~=1 then
		Msg2Player("Vui l�ng b� ��ng v�t ph�m")
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
		Msg2Player("N�p v�t ph�m th�nh c�ng !")
	else
		return Msg2Player("V�t ph�m kh�ng ��ng")
	end
end

function xemtop()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=green>%d <color> - <color=red>%s<color> s� l��ng <color=yellow>%d<color>\n ",i,Ladder_GetLadderInfo(10263,i)))
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
"Nh�p ID v�ng s�ng 1529 - 1539/nhapvong",
"Nh�p ID Danh Hi�u/nhapdanhhieu",




"K�t th�c ��i tho�i./no"
	}
Say("<color=green>Nh�n qu� c�c kh�ng t� �ua top anh h�ng l�nh", getn(tab_Content), tab_Content);       
end;

function nhapvong()
AskClientForNumber("sonhapvao",0,111111,"ID V�ng")
end


function sonhapvao(num)
PlayerFunLib:AddSkillState(num,1,3,1425600,1)
end




function nhapdanhhieu()
AskClientForNumber("nhapdanhhieu2",0,111111,"ID V�ng")
end


function nhapdanhhieu2(num)
Title_AddTitle(num, 2, 72000)
Title_ActiveTitle(num)
SetTask(1122, num);
end

function haoquang()
tbAwardTemplet:GiveAwardByList({{szName="L�nh b�i GM",tbProp={6,1,4566,1,1},nCount=1,},}, "test", 1);
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
"V�ng t�ng kim top 1/vongsangtop1",
"V�ng t�ng kim top 2/vongsangtop2",
"V�ng t�ng kim top 3/vongsangtop3",
"V�ng vip 1/vonngsangnew1",
"V�ng vip 2/vonngsangnew2",
"��c C� C�u B�i/doccocaubai",

"ti�p./trang2"
	}
Say("<color=green>Nh�n qu� c�c kh�ng t� �ua top anh h�ng l�nh", getn(tab_Content), tab_Content);       
end;

function trang2()



local tab_Content = {
"C�u Ng� Ch� T�n/cuunguchiton",
"Thi�n H� V� Song/thienhavs",
"V� L�m L�nh/volamlenh",
"Lo�n Chi�n/loanchien",
"Nguy�t Ca ��o/nguyetca",
"H�o Quang l� bao 1/haoquang1",

"ti�p./trang3"
	}
Say("<color=green>Nh�n qu� c�c kh�ng t� �ua top anh h�ng l�nh", getn(tab_Content), tab_Content);       
end;


function trang3()



local tab_Content = {
"H�o Quang l� bao 2/haoquang2",
"H�o Quang l� bao 3/haoquang3",
"H�o Quang l� bao 4/haoquang4",
"H�o Quang l� bao 5/haoquang5",


"tho�t./no"
	}
Say("<color=green>Nh�n qu� c�c kh�ng t� �ua top anh h�ng l�nh", getn(tab_Content), tab_Content);       
end;


