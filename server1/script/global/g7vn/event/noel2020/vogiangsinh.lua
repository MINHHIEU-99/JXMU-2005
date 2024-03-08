----event free
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	dofile("script/global/g7vn/event/noel2020/vogiangsinh.lua")
		dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate >enddate) then
		Say("V�t ph�m event �� h�t h�n s� d�ng")
		return 0
	end
			local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=53 and nSubWorldID ~=78  then
		Msg2Player("Ch� s� d�ng � Ba L�ng Huy�n v� T��ng D��ng nh� b�n.");
		return 1
	end

--	local task_eventfree=4997
	if (GetTask(task_eventfree) >= 1200) then
		Say("S� d�ng event �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------
local b = random(1,15)
if b==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4903,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);--Hoi Thien 300
end;

local m = random(1,500)
if m==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2390,1,1},nCount=1,},}, "test", 1);--B�ch Ng�c
end;


local n = random(1,500)
if n==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2391,1,1},nCount=1,},}, "test", 1);--T� Ng�c
end;

local p = random(1,500)
if p==100 then
--	tbAwardTemplet:GiveAwardByList({{szName = "Xuy�n Y Ph� Gi�p 2",tbProp={0,3989},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local q = random(1,500)
if q==100 then
--	tbAwardTemplet:GiveAwardByList({{szName = "Ng� H�nh �n 2 ",tbProp={0,3951},nQuality=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local g = random(1,10)
if g==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4808,1,1},nCount=1,},}, "test", 1);--Tinh Ng�c
end;

local e = random(1,200)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);--Ngu Linh Kiem Dinh Phu
end;	

local f = random(1,200)
if f==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);--Quy Nguyen Kiem Dinh Phu
end;

local h = random(1,20000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2126,1,1},nCount=1,},}, "test", 1);--Nh�t K� C�n Kh�n Ph�
end;

local s = random(1,100)
if s==50 then
tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e6}}, "test", 1);
end;

local s1 = random(1,200)
if s1==50 then
tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
end;

local tf1 = random(1,450)
if tf1==30 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);--�� Ph� Tinh S��ng Y
end;
local tf2 = random(1,450)
if tf2==30 then
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);--�� Ph� Tinh S��ng Kh� Gi�i
end;

local tf3 = random(1,180)
if tf3 ==30 then
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4813,1,1},nCount=1,},}, "test", 1);--Ng� S�c B�o Ng�c
end;

local tf4 = random(1,16)
if tf4==2 then
	tbAwardTemplet:GiveAwardByList({{szName = " ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);--T� Tinh Kho�ng Th�ch
end;

	if GetTask(task_eventfree) <= 1200 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);
		end

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(task_eventfree,GetTask(task_eventfree)+1)
	Msg2Player("�� s� d�ng l�n th�: <color=green>"..GetTask(task_eventfree) .."<color>")
	return 0
end
