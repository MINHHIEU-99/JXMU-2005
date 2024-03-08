IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
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
		Say("Ng��i ch�i ch�a ��t c�p 90 kh�ng th� s� d�ng event.", 0);
		return 1;
        end
			   	if (CalcFreeItemCellCount() < 15) then
		Talk(1,"","H�nh trang c�a b�n kh�ng �� 15 � tr�ng!");
	return 1
	end
	local nTask = GetTask(3700)
	if nTask >= 300 then
		 Say("�� max 300 c�i kh�ng th� s� d�ng th�m")
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
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi S� d�ng max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	end
local s = random(1,4)
if s==1 then
	tbAwardTemplet:GiveAwardByList({{szName="Qu� hoa t�u",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message},}, "", 1);
	tbAwardTemplet:GiveAwardByList({{szName="Qu� hoa t�u",tbProp={6,1,125,1,1},nCount=1},}, "", 1);
	logplayer("dulieu/eventcorona.txt",format("Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Max nh�n qu� hoa t�u ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	write_event()
end;
if s==2 then
	tbAwardTemplet:GiveAwardByList({{szName="thi�n s�n b�o l�",tbProp={6,1,72,1,1},nCount=1, CallBack= _Message},}, "", 1);
	tbAwardTemplet:GiveAwardByList({{szName="thi�n s�n b�o l�",tbProp={6,1,72,1,1},nCount=3},}, "", 1);
		logplayer("dulieu/eventcorona.txt",format("Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Max nh�n thi�n s�n ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		write_event()
end;
if s==3 then
local matnaid = random(900,905)
	tbAwardTemplet:GiveAwardByList({{szName="m�t n� ng� h�nh",tbProp={0,11,matnaid,1,0},nCount=1,nExpiredTime=10080, CallBack= _Message},}, "", 1);
		logplayer("dulieu/eventcorona.txt",format("Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Max nh�n m�t n� ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		write_event()
end;
if s==4 then
	tbAwardTemplet:GiveAwardByList({{szName="ti�n th� l�",tbProp={6,1,71,1,1},nCount=1, CallBack= _Message},}, "", 1);
		tbAwardTemplet:GiveAwardByList({{szName="ti�n th� l�",tbProp={6,1,71,1,1},nCount=4, },}, "", 1);
		logplayer("dulieu/eventcorona.txt",format("Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] Max nh�n ti�n th� l� ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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

