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
tbKandy.szFile = "\\dulieu\\taixiu.ini"

angian=1

function main(nNpcIndex)
server_loadfile(tbKandy.szFile)
local phienhientai = server_getdata(tbKandy.szFile,"PHIEN_CHECK","nPhien");
local phientruoc = tonumber(phienhientai - 1)
local phientruoc2 = tonumber(phienhientai - 2)
local phientruoc3 = tonumber(phienhientai - 3)
local phientruoc4 = tonumber(phienhientai - 4)
local ketquatruoc = server_getdata(tbKandy.szFile,"PHIEN_OLD_CHECK",phientruoc);
local ketquatruoc2 = server_getdata(tbKandy.szFile,"PHIEN_OLD_CHECK",phientruoc2);
local ketquatruoc3 = server_getdata(tbKandy.szFile,"PHIEN_OLD_CHECK",phientruoc3);
local ketquatruoc4 = server_getdata(tbKandy.szFile,"PHIEN_OLD_CHECK",phientruoc4);
dofile("script/fwcloud/taixiu/npc.lua");
local tab_Content = {
"M� b�t (1.xu)./mobat",
"Ki�m tra k�t qu� theo m� phi�n ��nh./dienmaphien",
"Tho�t./no"
	}
Say("<color=cyan>Nh� c�i<color>\n<color=green>K�t qu� tr��c phi�n th� - <color=yellow>"..phientruoc3.."\n"..ketquatruoc3.."\n<color=green>K�t qu� tr��c phi�n th� - <color=yellow>"..phientruoc2.."\n"..ketquatruoc2.."\n<color=green>K�t qu� tr��c phi�n th� - <color=yellow>"..phientruoc.."\n"..ketquatruoc, getn(tab_Content), tab_Content);       
end;

function dienmaphien()
AskClientForNumber("checkketqua", 1, 10000, "H�y nh�p m� phi�n: ");
end

function checkketqua(maphien)
server_loadfile(tbKandy.szFile)
local ketquatruoc = server_getdata(tbKandy.szFile,"PHIEN_OLD_CHECK",maphien);
Say("K�t qu� c�a phi�n " .. maphien .. " l� - "..ketquatruoc)
end

function mobat()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban < 1  then
	Say("B�n kh�ng c� mang theo 1 xu.")
return
end


if angian == 0 then
npctalk()
		ConsumeEquiproomItem(1, 4,417, 1,-1)
end
if angian == 1 then
npctalkangian()
		ConsumeEquiproomItem(1, 4,417, 1,-1)
end
end

function npctalk(nNpcIndex)
server_loadfile(tbKandy.szFile)
local phienhientai = server_getdata(tbKandy.szFile,"PHIEN_CHECK","nPhien");
local phientruoc = tonumber(phienhientai - 1)
local ketquatruoc = server_getdata(tbKandy.szFile,"PHIEN_OLD_CHECK",phientruoc);
local nNpcIndex = GetLastDiagNpc()
local nRan = random(1,4)

if nRan == 1 then
szTitle = "Phi�n " .. phienhientai .." l� "
szTitle1 = "3 tr�ng 1 �en [ L� ] - C�i : [" .. GetName() .."]" 
end

if nRan == 2 then
szTitle = "Phi�n " .. phienhientai .." l� "
szTitle1 = "4 tr�ng [ Ch�n ] - C�i : [" .. GetName() .."]" 
end

if nRan == 3 then
szTitle = "Phi�n " .. phienhientai .." l� "
szTitle1 = "3 �en 1 tr�ng [ L� ] - C�i : [" .. GetName() .."]" 
end

if nRan == 4 then
szTitle = "Phi�n " .. phienhientai .." l� "
szTitle1 = "4 �en [ Ch�n] - C�i : [" .. GetName() .."]" 
end

	server_setdata(tbKandy.szFile,"PHIEN_CHECK","nPhien",phienhientai + 1);
	server_setdata(tbKandy.szFile,"PHIEN_OLD_CHECK",phienhientai,szTitle1);
	server_savedata(tbKandy.szFile);


NpcChat(nNpcIndex,szTitle..szTitle1)
Msg2SubWorld("<color=yellow>" .. szTitle..szTitle1)

end

function npctalkangian(nNpcIndex)
server_loadfile(tbKandy.szFile)
local phienhientai = server_getdata(tbKandy.szFile,"PHIEN_CHECK","nPhien");
local phientruoc = tonumber(phienhientai - 1)
local ketquatruoc = server_getdata(tbKandy.szFile,"PHIEN_OLD_CHECK",phientruoc);
local nNpcIndex = GetLastDiagNpc()
--local nRan = random(1,4)
local nRan = server_getdata(tbKandy.szFile,"VIEW_KET_QUA","view");
if tonumber(nRan) == 1 then
szTitle = "Phi�n " .. phienhientai .." l� "
szTitle1 = "3 tr�ng 1 �en [ L� ] - C�i : [" .. GetName() .."]" 
end

if tonumber(nRan) == 2 then
szTitle = "Phi�n " .. phienhientai .." l� "
szTitle1 = "4 tr�ng [ Ch�n ] - C�i : [" .. GetName() .."]" 
end

if tonumber(nRan) == 3 then
szTitle = "Phi�n " .. phienhientai .." l� "
szTitle1 = "3 �en 1 tr�ng [ L� ] - C�i : [" .. GetName() .."]" 
end

if tonumber(nRan) == 4 then
szTitle = "Phi�n " .. phienhientai .." l� "
szTitle1 = "4 �en [ Ch�n] - C�i : [" .. GetName() .."]" 
end
local ketquaview = random(1,4)
	server_setdata(tbKandy.szFile,"VIEW_KET_QUA","view",ketquaview);
	server_setdata(tbKandy.szFile,"PHIEN_CHECK","nPhien",phienhientai + 1);
	server_setdata(tbKandy.szFile,"PHIEN_OLD_CHECK",phienhientai,szTitle1);
	server_savedata(tbKandy.szFile);


NpcChat(nNpcIndex,szTitle..szTitle1)
Msg2SubWorld("<color=yellow>" .. szTitle..szTitle1)

end




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