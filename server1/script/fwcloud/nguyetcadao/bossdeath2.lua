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



function OnDeath(nNpcIndex)
	local nDie = check_count(nAi2);
if nDie == 29 then
add_boss_ai2(984,1481,3175)
Msg2MSAll(73," <color=green> ��i tr��ng nh�m ph�n �� Thi�u L�m �� xu�t hi�n nh�n s� h�y c�n th�n. <color>")
Msg2MSAll(73," <color=green> S� qu�i v�t c�n l�i c�a �i : <color>" .. 30 - nDie -1)
	add_count(nAi2)

else
	add_count(nAi2)

Msg2MSAll(73," <color=green> S� qu�i v�t c�n l�i c�a �i : <color>" .. 30 - nDie -1)
	local x, y, world = GetNpcPos(nNpcIndex);
local nItemIdx = DropItem(world, x, y, PlayerIndex, 1, 2, 0, 5, 0, 0, 0, 0);
ITEM_SetExpiredTime(nItemIdx, 60*60*30)
SyncItem(nItemIdx);
	end
	end
