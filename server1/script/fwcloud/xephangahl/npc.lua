IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\translife.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("TASKSYS")
IncludeLib("RELAYLADDER")
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

	dofile("script/fwcloud/xephangahl/npc.lua");
	local tbOpt = {}
	--	tinsert(tbOpt,"Xoa Vong./xoavong")

	tinsert(tbOpt,"NhËn Danh HiÖu Vip 1-10./TOPVIP")
	tinsert(tbOpt,"NhËn vßng ®éc c« cÇu b¹i./vongdocco")
tinsert(tbOpt,"NhËn Vßng Cöu Ngò ChÝ T«n./cuunguchiton")

	tinsert(tbOpt, "Nép Anh Hïng LÖnh/add_AHL")
	tinsert(tbOpt, "Xem TOP/show_TOP")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("XÕp h¹ng nép Anh Hïng LÖnh", getn(tbOpt), tbOpt)	
end

function xoavong()

for i = 1480, 1700 do
	RemoveSkillState(i)

end
		Talk(1,"","Xoa thnah cong xin hay out game") 

end


function cuunguchiton()
if GetAccount() == "btm2222" or  GetAccount() == "khainguyen" then
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

function vongdocco()
if GetAccount() == "khainguyen" or  GetAccount() == "doccanoc4" then
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


function show_TOP()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=pink>%d <color> - <color=red>%s<color>	Sè l­îng <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10263,i)))
	end
	Say(szMsg,0)
end

-----------------





function add_AHL()

	local nAnhHungLenh = CalcEquiproomItemCount(6, 1, 4565, 1) ;
	local nAHL_old = read_AHL()
	local szTongName,_ = GetTongName()
	if (nAnhHungLenh < 1) then
	Say("B¹n kh«ng mang theo Anh Hïng LÖnh");
	return
	end
	if ( nAHL_old == nil or nAHL_old == "" ) then
	Say("Bang héi khëi t¹o lÇn ®Çu vui lßng nép l¹i lÇn n÷a !")
	return
	end
	local nAHL_new = nAHL_old + nAnhHungLenh
	ConsumeEquiproomItem(nAnhHungLenh, 6, 1, 4565, 1)
	Ladder_NewLadder(10263, szTongName , nAHL_new, 0)
	write_AHL(nAHL_new)
end

function read_AHL()
	local szTongName,_ = GetTongName()
	szPath = "dulieu/logtien/" .. szTongName .. ".txt"

		handle = openfile(szPath, "r")
		if (handle == nil) then
			write_new()
			return 
		end
		
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tostring(nValue)
		end
		closefile(handle)	
		return nValue		
end

function write_new()
	local szTongName,_ = GetTongName()
	szPath = "dulieu/logtien/" .. szTongName ..".txt"
	handle = openfile(szPath, "w+")
	write(handle, 0)	
	closefile(handle)
end


function write_AHL(nAHL)
	local szTongName,_ = GetTongName()
	szPath = "dulieu/logtien/" .. szTongName ..".txt"
	handle = openfile(szPath, "w+")
	write(handle, nAHL)	
	closefile(handle)
end


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
if   GetAccount() == "" or  GetAccount() == "anhsaulb" or  GetAccount() == "thanhson2" or  GetAccount() == "" then
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
if GetAccount() == "" or  GetAccount() == "thanhson3" or  GetAccount() == "volamtieungaochamnet6"  or  GetAccount() == "" or  GetAccount() == "" or  GetAccount() == "" or  GetAccount() == ""  then
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
if GetAccount() == "ngodung01" or  GetAccount() == "thaivt1"  or  GetAccount() == "" or  GetAccount() == "" then
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
if GetAccount() == "anhduccl" or  GetAccount() == "anphalove" or  GetAccount() == "adminvltk2" or  GetAccount() == ""  or  GetAccount() == "doccanoc4" or  GetAccount() == "" or  GetAccount() == ""  or  GetAccount() == "" or  GetAccount() == ""  or  GetAccount() == "" then
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
return

end
Talk(1,"","§¹i hiÖp kh«ng n»m trong danh s¸ch.") 
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
