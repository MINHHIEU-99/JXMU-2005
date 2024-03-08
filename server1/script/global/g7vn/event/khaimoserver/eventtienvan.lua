--event tien van
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\g7vn\\g7configall.lua")
function main()
	dofile("script/global/g7vn/event/khaimoserver/eventtienvan.lua")
	dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate > enddate) then
		Say("VËt phÈm event ®· hÕt h¹n sö dông")
		return 0
	end
			local nSubWorldID = GetWorldPos();
		if nSubWorldID ~=20  then
		Msg2Player("ChØ sö dông ë Giang T©n Th«n  nhÐ b¹n.");
		return 1
	end
	if (GetTask(task_event_tienvan) >=3000) then
		Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------

local b = random(1,30)
if b==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4832,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);--Håi thiªn t¸i t¹o lÔ bao(900)
end;

local b2 = random(1,1000)
if b3==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,5446,1,0,0},nCount=1,},}, "test", 1);-- diueu duong thach
end;

local m = random(1,50)
if m==10 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4807,1,0,0},nCount=10,},}, "test", 1);--B¹ch Ngäc
end;


local n = random(1,50)
if n==10 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,49006,1,0,0},nCount=1,},}, "test", 1);--Tö Ngäc
end;

local p = random(1,40)
if p==10 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,49004,1,0,0},nCount=1},}, "test", 1);--Tinh S­¬ng Th¹ch (®¹i)
end;

local e = random(1,120)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,30355,1,0,0},nCount=1,},}, "test", 1);--Ngu Linh Kiem Dinh Phu
end;


local h = random(1,20000)
if h==100 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2126,1,1},nCount=1,nExpiredTime=24*60},}, "test", 1);--NhÊt Kû Cµn Kh«n Phï
end;

local a = random(1,6)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = " ",tbProp={6,1,6776,1,0,0},nCount=1,},}, "test", 1);--Tö Tinh Kho¸ng Th¹ch
end;

local ts1 = random(1,8000)
if ts1==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Liªn",tbProp={6,1,6020,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},},}, "test", 1);
end;

local ts2 = random(1,8000)
if ts2==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Kh«i",tbProp={6,1,6021,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},}, "test", 1);
end;

local ts8= random(1,8000)
if ts8==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Th­îng Giíi",tbProp={6,1,6022,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},},}, "test", 1);
end;

local ts3 = random(1,8000)
if ts3==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n UyÓn",tbProp={6,1,6023,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},},}, "test", 1);
end;

local ts4 = random(1,8000)
if ts4==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Yªu §¸i",tbProp={6,1,6024,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},},}, "test", 1);
end;

local ts8=random(1,6000)
if ts8==2000 then
				local i2 = random(1,3)
				if i2==1 then
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,random(5560,5561),1,0,0},nCount=1,},}, "test", 1);--§å Phæ NguyÖt KhuyÕt
				else if i2==2 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,random(5562,5563),1,0,0},nCount=1,},}, "test", 1);--§å Phæ NguyÖt KhuyÕt
				else if i2==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,random(5568,5569),1,0,0},nCount=1,},}, "test", 1);--§å Phæ NguyÖt KhuyÕt
					end
					end
					end
end		
local tt1 = random(1,5000)
if tt1 ==2500 then
	--tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
end;

local s1 = random(1,3000)
if s1==2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4345,1,1},nCount=1,},}, "test", 1);--MËt tÞch Kü N¨ng 150 CÊp 21
end;

local s2 = random(1,6000)
if s2==5000 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,14346,1,1},nCount=1,},}, "test", 1);--MËt tÞch Kü N¨ng 150 CÊp 22
end;


	if GetTask(task_event_tienvan) <= 3000 then
tbAwardTemplet:GiveAwardByList({{nExp_tl = 40e6}}, "test", 1);
		end




	SetTask(task_event_tienvan,GetTask(task_event_tienvan)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..GetTask(task_event_tienvan) .."<color>")
	return 0
end
