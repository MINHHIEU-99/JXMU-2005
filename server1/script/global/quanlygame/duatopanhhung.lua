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
Include("\\script\\global\\·��_���.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("TIMER")
IncludeLib("RELAYLADDER")

Include("\\script\\lib\\common.lua")
Include("\\script\\lib\\string.lua")
Include("\\script\\activitysys\\functionlib.lua")


LadderFunLib = {}

nCityWar_Item_ID_G = 6	--lo�i
nCityWar_Item_ID_D = 1	--lo�i
nCityWar_Item_ID_P = 4565	--id v�t ph�m
TIAOZHANLING_TASK_DATE = 2018 -- kkl h�ng ng�y
TIAOZHANLING_TASK_COUNT = 2019 -- s� kkl h�ng ng�y
TIAOZHANLING_LGTYPEE= 541
TIAOZHANLING_LGNameE = "tiaozhanling"
LGTSK_TIAOZHANLING_COUNTT = 1
TASKKKL = 3518
TASKKKL2 = 3516

function main()
       dofile("script/global/quanlygame/duatopanhhung.lua");
	--local nDate = tonumber(GetLocalDate("%Y%m%d"));
	--if nDate >= 20191209 then
		--Say("<pic=26> �� h�t th�i gian s� ki�n hi�n t�i ban qu�n tr� �ang ch�t s� l��ng �� ph�t th��ng cho bang h�i d�nh th�ng cu�c trong cu�c �ua n�y.", 0);
		--Say("�� C� K�t Qu� Bang Ng�o D�nh Th�ng L�i.", 0);

	--	return
	--end;
	local tbSay = {}
	--tinsert(tbSay,"X�a V�ng./xoavong")


--tinsert(tbSay,"Xem V�ng Trong H�nh (1-36)./nhaphinhxem")
--	tinsert(tbSay,"Xem V�ng Trong Video (1-14)./nhaphinhxem2")
	
--	tinsert(tbSay,"Nh�n v�ng 5 admin test/vongdocco2")
	--tinsert(tbSay,"Nh�n L�i V�ng 5 M�i/nhanlaivong5")

--tinsert(tbSay,"Nh�n v�ng Kh�ng T�nh./vongkhangtinh")

--	tinsert(tbSay,"Nh�n v�ng ��c c� c�u b�i./vongdocco")
--tinsert(tbSay,"Nh�n v�ng 6 tr�./vongtraacc")

--	tinsert(tbSay,"Nh�n v�ng s�ng top 1./top1vongsang")
tinsert(tbSay,"Nh�n Danh Hi�u Vip 1-10./TOPVIP")

--tinsert(tbSay,"Nh�n V�ng C�u Ng� Ch� T�n./cuunguchiton")

	--tinsert(tbSay,"Ta ��n giao Anh H�ng L�nh cho b�n bang./GiveTiaoZhanLing1")
		--tinsert(tbSay,"Xem S� L��ng B� Ng� C�a C�c Bang./XemSoLuong")

	--tinsert(tbSay,"Xem s� l��ng Anh H�ng L�nh c�a bang ta./ViewTiaoZhanLing")
--tinsert(tbSay,"Xem top s� l��ng Anh H�ng L�nh c�a c�c bang./xemtop")
	--tinsert(tbSay,"Xem t�ng s� anh h�ng l�nh �� ��ng g�p t� b�n./TongKKL")
		--tinsert(tbSay,"Test Vong Sang./vongsaangtest")

	--tinsert(tbSay,"Nhan Mat Na Test./nhanmatnatest")
	--tinsert(tbSay,"Nhan Bi Ngo Test./bingotest")

	--tinsert(tbSay,"Xem c�ng b� x�p h�ng Bang H�i Tranh T�i./citywar_CheckVotes")
	tinsert(tbSay,"K�t th�c ��i tho�i/OnCancel")
	Say("<color=yellow>M�i chi ti�t truy c�p trang ch�: tieungaogiangho.net", getn(tbSay), tbSay)
end

function nhaphinhxem()
AskClientForString("xemhinh", "", 1, 50, "ID V�ng");
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

logplayer("dulieu/nhanvongvip.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] nh�n th�nh c�ng VIP 1 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
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

logplayer("dulieu/nhanvongvip.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] nh�n th�nh c�ng VIP 2 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
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

logplayer("dulieu/nhanvongvip.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] nh�n th�nh c�ng VIP 3 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
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
logplayer("dulieu/nhanvongvip.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] nh�n th�nh c�ng VIP 4 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
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

logplayer("dulieu/nhanvongvip.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] nh�n th�nh c�ng VIP 5 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
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
logplayer("dulieu/nhanvongvip.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] nh�n th�nh c�ng VIP 6 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
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

logplayer("dulieu/nhanvongvip.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] nh�n th�nh c�ng VIP 10 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))

end
Talk(1,"","��i hi�p kh�ng n�m trong danh s�ch.") 
end


function vongkhangtinh()  --1 ngay la 1555200
if GetAccount() == "dungleo"  then
PlayerFunLib:AddSkillState(1575,1,3,1555200*60,1)  --212  --6
PlayerFunLib:AddSkillState(1112,1,3,1555200*60,1)  --212  --6

logplayer("dulieu/nhanvongvipkhang.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] nh�n th�nh c�ng VIP 1 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
return
end
if GetAccount() == "linhthu19948"  then
PlayerFunLib:AddSkillState(1576,1,3,1555200*60,1)  --212  --6
PlayerFunLib:AddSkillState(1112,1,3,1555200*60,1)  --212  --6

logplayer("dulieu/nhanvongvipkhang.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] nh�n th�nh c�ng VIP 2 ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName()))
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
		Talk(1,"","Ph�i mua v�ng s� 5 m�i c� th� n�ng c�p v�ng s� 6 n�y") 
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




function nhanlaivong5()
if GetTask(2626) ~= 5 then
Say("b�n hi�n t�i kh�ng c� trong danh s�ch xin h�y s� d�ng v�ng 5 l� bao h�o quang r�i h�y ��n g�p ta")
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
Say("Thay ��i th�nh c�ng xin h�y tho�t game v�o l�i v� th��ng th�c")
else
Say("tr�n ng��i ��i hi�p hi�n kh�ng �� skill s� 5 l� bao h�o quang kh�ng th� ��i skill v�ng s�ng m�i")
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
		Say("Kh�ng ph�i top",0);
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
		Say("Kh�ng ph�i top",0);
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
		Say("Kh�ng ph�i top",0);
	RemoveSkillState(1647)

end
end

function main1()
	local tbSay = {}

		--tinsert(tbSay,"Vong 1./vongsangtop1")

		--tinsert(tbSay,"Vong 2./vongsangtop2")
		--tinsert(tbSay,"Vong 3./vongsangtop3")

	tinsert(tbSay,"K�t th�c ��i tho�i/OnCancel")
	Say("<color=yellow>M�i chi ti�t truy c�p trang ch�: tieungaogiangho.net", getn(tbSay), tbSay)
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
		Say("Kh�ng ph�i top",0);
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
		Say("Kh�ng ph�i top",0);

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
		Say("Kh�ng ph�i top",0);
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
	tinsert(tbSay,"K�t th�c ��i tho�i/OnCancel")
	
	Say("<color=pink>B�ng c�p nh�t:\n + 123456 " ..bang123456.. "\n + H�ng B� " ..banghungba.. "\n + Th�ch  " ..bangthich.. "", getn(tbSay), tbSay)
end


function nhanmatnatest()
	   tbAwardTemplet:GiveAwardByList({{szName="C� L�c",tbProp={0,11,894,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C� L�c",tbProp={0,11,895,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C� L�c",tbProp={0,11,896,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C� L�c",tbProp={0,11,897,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C� L�c",tbProp={0,11,898,1,1},nCount=1   ,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="C� L�c",tbProp={0,11,899,1,1},nCount=1   ,},}, "test", 1);
end

function bingotest()
	   tbAwardTemplet:GiveAwardByList({{szName="C� L�c",tbProp={6,1,4549,1,1},nCount=10   ,},}, "test", 1);
end

function TongKKL()
local nTask = GetTask(TASKKKL)
Talk (1, "","T�i h� �� ��ng g�p v�o bang t�ng <color=yellow>"..nTask.."<color> anh h�ng l�nh.")
end

function citywar_CheckVotes()
	local tbVotes = citywar_tbLadder:GetInfo()
	local szMsg = format("<dec>B�ng x�p h�ng Tranh �o�t khi�u kh�ch l�nh: <enter>%s%s%s<enter>", strfill_center("STT",4, " "), strfill_center("Bang h�i", 20, " "), strfill_center("S� l��ng", 20, " "))
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
	TaskSayList(szMsg, "C�m �n! Ta �� r� r�i./OnCancel")
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
		LG_SetLeagueInfo(nNewLeagueID, TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE)	--����������Ϣ(���͡�����)
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
Say("<color=green>L�u � khi giao n�p ph�i t�ch v�t ph�m ra n�u �� x�p ch�ng s� b� m�t.",2,"Ta hi�u r�i r�i/GiveTiaoZhanLing","Kh�ng c�n ��u! C�m �n!/cancel")
end


function GiveTiaoZhanLing()
	if checkBangHuiLimit() == 0 then
			Say("Xin l�i! ��i hi�p ch�a gia nh�p bang h�i n�o c�!",0);
			return 0;
	end
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCount = GetTask(TIAOZHANLING_TASK_COUNT);
	--if ( nOlddate == nDate and nCount >= 30) then
			--Say("M�i ng�y giao n�p t�i �a 30 anh h�ng l�nh. H�m nay ng��i �� giao �� r�i, ng�y mai h�y ti�p t�c.",0)
			--return 0;
	--end
	if ( nOlddate ~= nDate ) then
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),1,tonumber(GetLocalDate("%y"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),2,tonumber(GetLocalDate("%m"))));
		SetTask(TIAOZHANLING_TASK_DATE,SetByte(GetTask(TIAOZHANLING_TASK_DATE),3,tonumber(GetLocalDate("%d"))));
		SetTask(TIAOZHANLING_TASK_COUNT,0);
	end
	----------------- gi�i h�n s� l��ng khi�u kh�ch l�nh-------------------
--	local szlgname = GetTongName();
--	checkCreatLG(szlgname);	
--	checkJoinLG(szlgname);
--	local szTongName, nTongID = GetTongName();
--	local nsum = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)
--	if nsum >= 2000000000 then   --���޴�20���������ύ
--		Say("T�ng s� v� l�m l�nh �� ��t gi�i h�n. L�c kh�c th� l�i v�y.",0)
--		return 0;
--	end
	---------------------m� ra giao di�n giao n�p
	GiveItemUI("Giao n�p anh h�ng l�nh", "Ch� � kh�ng ���c x�p ch�ng anh h�ng l�nh m� ph�i t�ch ra tr��c khi b� v�o n�u kh�ng s� m�t.", "sure_GiveTiaoZhanLing", "OnCancel");
end

function sure_GiveTiaoZhanLing(nCount)
	if nCount <= 0 then
		Say("Th�t ��ng ti�c ch� cho ph�p giao n�p 1 l�n 1 v�t ph�m, ng��i ch�a giao v�t ph�m nhi�m v� cho ta",2,"Giao l�i v�t ph�m/GiveTiaoZhanLing","�� ta suy ngh� l�i/OnCancel");
		return 0;
	end
--	local tienvancan = 50000 * nCount
	--if GetCash() < tienvancan then
	--Say("Th�t ��ng ti�c, m�i b� ng� giao c�n ph�i c� 5 v�n l��ng.", 0);
	--return
--	end

	for i = 1, nCount do
		local nItemidx = GetGiveItemUnit(i);
		local g, d, p = GetItemProp(nItemidx);
		if (g ~= nCityWar_Item_ID_G or d ~= nCityWar_Item_ID_D or p ~= nCityWar_Item_ID_P) then
			Say("Ta kh�ng nh�n nh�ng th� kh�c, ch� c�n ��a ta <color=yellow>anh h�ng l�nh<color> l� ���c r�i.", 2,"Giao l�i v�t ph�m/GiveTiaoZhanLing","�� ta suy ngh� l�i/OnCancel");
			return 0;
		end;
	end;
	local nDate = tonumber(tonumber(GetLocalDate("%y"))..tonumber(GetLocalDate("%m"))..tonumber(GetLocalDate("%d")));
	local nLibao = GetTask(TIAOZHANLING_TASK_DATE);
	local nOlddate = tonumber(GetByte(nLibao,1)..GetByte(nLibao,2)..GetByte(nLibao,3));
	local nCountall = GetTask(TIAOZHANLING_TASK_COUNT);
	if ( nOlddate == nDate and nCountall+nCount > 100) then
			Say(format("Th�t ��ng ti�c, h�m nay ng��i �� n�p v�o %d anh h�ng l�nh, ch� c�n n�p %d anh h�ng l�nh n�a l� ���c r�i.",nCountall,100-nCountall),0)
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
	szMsg = ''..GetName().." �� ��ng g�p <color=red>"..nCount.."<color> anh h�ng l�nh v�o bang h�i b�n bang.Th�nh vi�n n�y �� ��ng t�ng c�ng<color=green> "..nTask.." <color>anh h�ng l�nh."	
	Msg2Tong(nTongID, szMsg)
	Msg2Player(format("B�n �� n�p v�o %d anh h�ng l�nh v�o bang h�i",nCount))
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
			Say("Th�t ��ng ti�c, ch� c� bang ch� c�ng tr��ng l�o v� ��i tr��ng m�i c� th� xem th�ng tin s� l��ng anh h�ng l�nh.", 0);
			return 0
		end
		checkCreatLG(szTongName);
		checkJoinLG(szTongName);
		local nCurCount = LG_GetMemberTask(TIAOZHANLING_LGTYPEE,TIAOZHANLING_LGNameE,szTongName,LGTSK_TIAOZHANLING_COUNTT)		
		Say(format(szTongName.." c�a ta m�i x�ng ��ng l� k� v� ��ch:<pic=18><enter><color=green>Hi�n t�i bang h�i c�a ta �� n�p ���c <color=yellow>%d<color> anh h�ng l�nh bang b�n �� g�ng c� g�ng �u�i k�p bang ta.",nCurCount),0)
logplayer("dulieu/haloween.txt",format("Th�i gian : %s  - Bang H�i [ %s] - T�i Kho�n [ %s]- Nh�n v�t : [%s ] Bang H�i ��t [%s ] B� Ng� ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetTongName(),GetAccount(),GetName(),nCurCount))


end

function OnCancel()
end;

function xemtop()
	local tbSay = {}

		tinsert(tbSay,"Trang ��u./xembangtop1")
		tinsert(tbSay,"Trang sau./xembangtop2")
		tinsert(tbSay,"Trang cu�i./xembangtop3")

	tinsert(tbSay,"K�t th�c ��i tho�i/OnCancel")
	Say("<color=yellow>M�i chi ti�t truy c�p trang ch�: tieungaogiangho.net", getn(tbSay), tbSay)
end



function xembangtop1()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=pink>%d <color> - <color=red>%s<color> s� l��ng Anh H�ng L�nh <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10262,i)))
	end
	Say(szMsg,0)
end

function xembangtop2()
	local szMsg = ""
	for i=6,10 do
		szMsg = szMsg ..(format("Top <color=pink>%d <color> - <color=red>%s<color> s� l��ng Anh H�ng L�nh <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10262,i)))
	end
	Say(szMsg,0)
end

function xembangtop3()
	local szMsg = ""
	for i=11,15 do
		szMsg = szMsg ..(format("Top <color=pink>%d <color> - <color=red>%s<color> s� l��ng Anh H�ng L�nh <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10262,i)))
	end
	Say(szMsg,0)
end





function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
