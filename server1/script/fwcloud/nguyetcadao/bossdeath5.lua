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
	local nDie = check_count(nAi5);
if nDie == 29 then
add_boss_ai5(984,1399,2919)
Msg2MSAll(73," <color=green> §éi tr­ëng nhãm ph¶n ®å Thóy Yªn ®· xuÊt hiÖn nh©n sü h·y cÈn thËn. <color>")
Msg2MSAll(73," <color=green> Sè qu¸i vËt cßn l¹i cña ¶i : <color>" .. 30 - nDie -1)
	add_count(nAi5)

else
	add_count(nAi5)

Msg2MSAll(73," <color=green> Sè qu¸i vËt cßn l¹i cña ¶i : <color>" .. 30 - nDie -1)
	local x, y, world = GetNpcPos(nNpcIndex);
local nItemIdx = DropItem(world, x, y, PlayerIndex, 1, 2, 0, 5, 0, 0, 0, 0);
ITEM_SetExpiredTime(nItemIdx, 60*60*30)
SyncItem(nItemIdx);
	end
	end
