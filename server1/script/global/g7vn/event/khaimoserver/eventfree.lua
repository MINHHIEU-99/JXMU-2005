----event free
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	dofile("script/global/g7vn/event/khaimoserver/eventfree.lua")
		dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate >enddate) then
		Say("V�t ph�m event �� h�t h�n s� d�ng")
		return 0
	end
			local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=20  then
		Msg2Player("Ch� s� d�ng � Giang T�n Th�n nh� b�n.");
		return 1
	end

	if (GetTask(task_eventfree) >= 5000) then
		Say("S� d�ng event �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------
local b = random(1,15)
if b==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4832,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);--Hoi Thien 300
end;


local e = random(1,200)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,49006,1,0,0},nCount=1,},}, "test", 1);--Ngu Linh Kiem Dinh Phu
end;	

local f = random(1,200)
if f==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,30355,1,0,0},nCount=1,},}, "test", 1);--Quy Nguyen Kiem Dinh Phu
end;

local h = random(1,20000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2126,1,1},nCount=1,},}, "test", 1);--Nh�t K� C�n Kh�n Ph�
end;



local tf4 = random(1,16)
if tf4==2 then
	tbAwardTemplet:GiveAwardByList({{szName = " ",tbProp={6,1,4807,1,0,0},nCount=1,},}, "test", 1);--T� Tinh Kho�ng Th�ch
end;

	if GetTask(task_eventfree) <= 5000 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
		end

	SetTask(task_eventfree,GetTask(task_eventfree)+1)
	Msg2Player("�� s� d�ng l�n th�: <color=green>"..GetTask(task_eventfree) .."<color>")
	return 0
end
