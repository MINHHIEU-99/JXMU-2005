-------------Lanh Tho Chien Dev By TungHuyen-----------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")
-----------------------tunghuyen

tbKandy = {}
tbKandy.szFile = "\\dulieu\\nguyetcadao.dat"
server_loadfile(tbKandy.szFile)


function OnDeath(nNpcIndex)
local nDie = server_getdata(tbKandy.szFile,"NGUYET_CA_CHECK","ai1");
if tonumber(nDie) == 29 then
add_bosss_ai1(984,1560,3214)
Msg2SubWorld(" <color=green> ��i tr��ng nh�m ph�n �� Thi�n V��ng �� xu�t hi�n nh�n s� h�y c�n th�n. <color>")
Msg2SubWorld(" <color=green> S� qu�i v�t c�n l�i c�a �i : <color>" .. 30 - nDie -1)
	server_setdata(tbKandy.szFile,"NGUYET_CA_CHECK","ai1",nDie + 1);
	server_savedata(tbKandy.szFile);

else
	server_setdata(tbKandy.szFile,"NGUYET_CA_CHECK","ai1",nDie + 1);
	server_savedata(tbKandy.szFile);


Msg2SubWorld(" <color=green> S� qu�i v�t c�n l�i c�a �i : <color>" .. 30 - nDie -1)
	local x, y, world = GetNpcPos(nNpcIndex);
local nItemIdx = DropItem(world, x, y, PlayerIndex, 1, 2, 0, 5, 0, 0, 0, 0);
ITEM_SetExpiredTime(nItemIdx, 60*60*30)
SyncItem(nItemIdx);
	end
	end
