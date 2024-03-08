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
		Say("VËt phÈm event ®· hÕt h¹n sö dông")
		return 0
	end
			local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=53 and nSubWorldID ~=78  then
		Msg2Player("ChØ sö dông ë Ba L¨ng HuyÖn vµ T­¬ng D­¬ng nhÐ b¹n.");
		return 1
	end

--	local task_eventfree=4997
	if (GetTask(task_eventfree) >= 1200) then
		Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------
local b = random(1,15)
if b==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4903,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);--Hoi Thien 300
end;

local m = random(1,500)
if m==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2390,1,1},nCount=1,},}, "test", 1);--B¹ch Ngäc
end;


local n = random(1,500)
if n==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2391,1,1},nCount=1,},}, "test", 1);--Tö Ngäc
end;

local p = random(1,500)
if p==100 then
--	tbAwardTemplet:GiveAwardByList({{szName = "Xuyªn Y Ph¸ Gi¸p 2",tbProp={0,3989},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local q = random(1,500)
if q==100 then
--	tbAwardTemplet:GiveAwardByList({{szName = "Ngò Hµnh Ên 2 ",tbProp={0,3951},nQuality=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local g = random(1,10)
if g==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4808,1,1},nCount=1,},}, "test", 1);--Tinh Ngäc
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
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2126,1,1},nCount=1,},}, "test", 1);--NhÊt Kû Cµn Kh«n Phï
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
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);--§å Phæ Tinh S­¬ng Y
end;
local tf2 = random(1,450)
if tf2==30 then
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);--§å Phæ Tinh S­¬ng KhÝ Giíi
end;

local tf3 = random(1,180)
if tf3 ==30 then
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4813,1,1},nCount=1,},}, "test", 1);--Ngò S¾c B¶o Ngäc
end;

local tf4 = random(1,16)
if tf4==2 then
	tbAwardTemplet:GiveAwardByList({{szName = " ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);--Tö Tinh Kho¸ng Th¹ch
end;

	if GetTask(task_eventfree) <= 1200 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);
		end

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(task_eventfree,GetTask(task_eventfree)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..GetTask(task_eventfree) .."<color>")
	return 0
end
