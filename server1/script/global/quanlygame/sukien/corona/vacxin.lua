IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
IncludeLib("LEAGUE")
IncludeLib("TASKSYS");
Include("\\script\\missions\\basemission\\lib.lua")

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")


TASKVACXIN = 3700


function main(sel)
dofile("script/global/quanlygame/sukien/corona/vacxin.lua");


	 
if GetLevel() < 90 then
		Say("Ng­êi ch¬i ch­a ®¹t cÊp 90 kh«ng thÓ sö dông event.", 0);
		return 1;
        end
			   	if (CalcFreeItemCellCount() < 15) then
		Talk(1,"","Hµnh trang cña b¹n kh«ng ®ñ 15 « trèng!");
	return 1
	end
	local nTask = GetTask(3700)
	if nTask >= 300 then
		 Say("§· max 300 c¸i kh«ng thÓ sö dông thªm")
		return 1
	end
		if nTask == 299 then
Randomthuongmaxcuoi()
	end
SetTask(3700,GetTask(3700)+1)
StackExp(2000000);
end


function Randomthuongmaxcuoi()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Sö dông max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	end
local s = random(1,4)
if s==1 then
	tbAwardTemplet:GiveAwardByList({{szName="QuÕ hoa töu",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message},}, "", 1);
	tbAwardTemplet:GiveAwardByList({{szName="QuÕ hoa töu",tbProp={6,1,125,1,1},nCount=1},}, "", 1);
	logplayer("dulieu/eventcorona.txt",format("Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] Max nhËn quÕ hoa töu ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	write_event()
end;
if s==2 then
	tbAwardTemplet:GiveAwardByList({{szName="thiªn s¬n b¶o lé",tbProp={6,1,72,1,1},nCount=1, CallBack= _Message},}, "", 1);
	tbAwardTemplet:GiveAwardByList({{szName="thiªn s¬n b¶o lé",tbProp={6,1,72,1,1},nCount=3},}, "", 1);
		logplayer("dulieu/eventcorona.txt",format("Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] Max nhËn thiªn s¬n ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		write_event()
end;
if s==3 then
local matnaid = random(900,905)
	tbAwardTemplet:GiveAwardByList({{szName="mÆt n¹ ngñ hµnh",tbProp={0,11,matnaid,1,0},nCount=1,nExpiredTime=10080, CallBack= _Message},}, "", 1);
		logplayer("dulieu/eventcorona.txt",format("Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] Max nhËn mÆt n¹ ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		write_event()
end;
if s==4 then
	tbAwardTemplet:GiveAwardByList({{szName="tiªn thæ lé",tbProp={6,1,71,1,1},nCount=1, CallBack= _Message},}, "", 1);
		tbAwardTemplet:GiveAwardByList({{szName="tiªn thæ lé",tbProp={6,1,71,1,1},nCount=4, },}, "", 1);
		logplayer("dulieu/eventcorona.txt",format("Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] Max nhËn tiªn thæ lé ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		write_event()
end;
end


function read_event()
szPath = "dulieu/logevent.txt"
		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tonumber(nValue)
		end
		closefile(handle)	
		return nValue		
end


function write_event()
local nLog = read_event()
dem = nLog + 1
szPath = "dulieu/logevent.txt"
	handle = openfile(szPath, "w+")
	write(handle, dem)	
	closefile(handle)
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

