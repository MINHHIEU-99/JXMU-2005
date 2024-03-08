IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
dofile("script/fwcloud/dautruongsinhtu/npc/vebienkinh.lua")
	if GetTask(5859)> 0  then
		Say("V�n Ti�u �i R�i H�y Tr� V� Bi�n Kinh")
		return 1
	end;
	local nHour = tonumber(GetLocalDate("%H%M"));
	local tbSay = {}

	tinsert(tbSay,"V� Bi�n Kinh/vebl")

	tinsert(tbSay,"K�t th�c ��i tho�i ! /#no()")
	Say("Ng��i mu�n v�  Bi�n Kinh", getn(tbSay), tbSay)

	return 1	
end;

function vebl()
local a = random(1,4) 
if a==1 then
NewWorld(37,1696,3218)
end
if a==2 then
NewWorld(37,1634,3189)
end
if a==3 then
NewWorld(37,1622,3016)
end

if a==4 then
NewWorld(37,1856,2966)
end

SetPunish(1);
SetTmpCamp(0);
ForbidChangePK(0)
end

