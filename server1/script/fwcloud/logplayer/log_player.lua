------------Lanh Tho Chien Dev By TungHuyen-----------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\droptemplet.lua")

tbKandy = {}
tbKandy.szFile = "\\dulieu\\logplayer.ini"

function ghi_log_player()
server_loadfile(tbKandy.szFile)
local szName = GetName()
local AllCash = GetCash() + GetBoxMoney()
local tongcask = floor(AllCash/10000)
local tiendong =CalcItemCount(3,4,1503,1,1) +  CalcItemCount(4,4,1503,1,1) + CalcItemCount(9,4,1503,1,1) + CalcItemCount(10,4,1503,1,1)
	server_setdata(tbKandy.szFile,"LOG_XU",szName,tonumber(tiendong));
	server_savedata(tbKandy.szFile);
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
