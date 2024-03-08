------------Lanh Tho Chien Dev By TungHuyen-----------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\droptemplet.lua")

tb_limitsongjin = {}

function add_player()
local hwid = tonumber(check_uid())
tb_limitsongjin[hwid] = tb_limitsongjin[hwid] + 1
Msg2Player(tb_limitsongjin[1])
end


function remove_player()
local hwid = tonumber(check_uid())
tb_limitsongjin[hwid] = tb_limitsongjin[hwid] - 1
--Msg2Player(tb_limitsongjin[1])
end

function check_player()
return tb_limitsongjin[hwid]
end

----/script/fwcloud/limitsongjin_tung/limitsongjin_tung.lua



tbKandy = {}
tbKandy.szFile = "\\dulieu\\songjin.ini"

function check_dang_ky()
server_loadfile(tbKandy.szFile)
local hwid = GetInfo()
Msg2Player(hwid)
local nUID = server_getdata(tbKandy.szFile,"HWID_UID",hwid);
if (nUID == 0) or (nUID == nil) or  (nUID == "") then
--Msg2Player("Ch­a ®¨ng ký")
return 0
end
--Msg2Player("®¨ng ký")
return 1
end

function reg_hwid()
if (check_dang_ky() == 1 ) then
Say("B¹n ®· ®¨ng ký råi")
return
end
dang_ky_hwid()
end

function dang_ky_hwid1(nUID)
server_loadfile(tbKandy.szFile)
local szHwid = GetInfo()
	server_setdata(tbKandy.szFile,"HWID_UID",szHwid,nUID);
	server_savedata(tbKandy.szFile);
end

function dang_ky_hwid()
server_loadfile(tbKandy.szFile)
local nUID = server_getdata(tbKandy.szFile,"COUNT_UID","count");
newUID = nUID + 1
	server_setdata(tbKandy.szFile,"COUNT_UID","count",newUID);
	server_savedata(tbKandy.szFile);
dang_ky_hwid1(nUID)
end

function check_uid()
server_loadfile(tbKandy.szFile)
local hwid = GetInfo()
local UID_hwid = server_getdata(tbKandy.szFile,"HWID_UID",hwid);
if (hwid1 == "") or (hwid1 == nil) then
return 0
else
return UID_hwid
end
end

---function GetHwid()
---local hwid = "26EC9-E0311-CC643-32A9F-55074-CDA35-0EC71-8D09A1"
---return hwid
---end

function server_setdata(filename,szsect,szkey,szvalue)
	IniFile_SetData(filename, szsect, szkey, szvalue)	
end



function server_getdata(filename,szsect,szkey)
	return IniFile_GetData(filename, szsect, szkey)
end

function server_savedata(filename)
	IniFile_Save(filename,filename)
end

function server_loadfile(filename)
	if (IniFile_Load(filename,filename) == 0) then 
			File_Create(filename)
			IniFile_Load(filename, filename)
	end
end


