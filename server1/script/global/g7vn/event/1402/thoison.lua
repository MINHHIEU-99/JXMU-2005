--event tien van
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
startdate= 20191010
enddate=20200229
function main()
	dofile("script/global/g7vn/event/1402/thoison.lua")
	dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate > enddate) then
		Say("VËt phÈm event ®· hÕt h¹n sö dông")
		return 0
	end
	
	--		if GetAccount()~="boquyx123" and GetAccount()~="luuhuanvlv2019" then
--	Say("HiÖn t¹i ch­a ®­îc sö dông nhÐ huynh")
--	return 1
	--end
--	local task_event_tienvan=4975
	if (GetTask(task_event_tienvan) > 1200) then
		Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------
local b = random(1,30)
if b==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "Hoi Thien 300",tbProp={6,1,4903,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local m = random(1,500)
if m==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¹ch Ngäc",tbProp={6,1,2390,1,1},nCount=1,},}, "test", 1);
end;


local n = random(1,500)
if n==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tö Ngäc",tbProp={6,1,2391,1,1},nCount=1,},}, "test", 1);
end;

local p = random(1,400)
if p==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,0,0},nCount=1},}, "test", 1);
end;

--local q = random(1,60)
--if q==30 then
--		tbAwardTemplet:GiveAwardByList({{szName = "ThiÖp chóc TÕt",tbProp={6,1,1346,1,1},nCount=1,nExpiredTime=2*24*60},}, "test", 1);
--end;

local g = random(1,10)
if g==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngäc",tbProp={6,1,4808,1,1},nCount=1,},}, "test", 1);
end;

local e = random(1,120)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);
end;

local f = random(1,120)
if f==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Quy Nguyen Kiem Dinh Phu",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);
end;

local h = random(1,20000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,1},nCount=1,},}, "test", 1);
end;

local a = random(1,5)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tö Tinh Kho¸ng Th¹ch ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);
end;


local a = random(1,5)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tö Tinh Kho¸ng Th¹ch ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);
end;

local ts1 = random(1,8000)
if ts1==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Liªn",tbProp={6,1,4504,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},},}, "test", 1);
end;

local ts2 = random(1,8000)
if ts2==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Kh«i",tbProp={6,1,4505,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},}, "test", 1);
end;

local ts8= random(1,8000)
if ts8==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Th­îng Giíi",tbProp={6,1,4506,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},},}, "test", 1);
end;

local ts3 = random(1,8000)
if ts3==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n UyÓn",tbProp={6,1,4507,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},},}, "test", 1);
end;

local ts4 = random(1,8000)
if ts4==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Yªu §¸i",tbProp={6,1,4508,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},},}, "test", 1);
end;

local ts5 = random(1,8000)
if ts5==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Hµi",tbProp={6,1,4511,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},},}, "test", 1);
end;

local ts6 = random(1,8000)
if ts6==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Béi",tbProp={6,1,4512,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},},}, "test", 1);
end;

local ts7= random(1,8000)
if ts7==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng H¹ Giíi",tbProp={6,1,4513,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},},}, "test", 1);
end;

local ts8=random(1,6000)
if ts8==2000 then
				local i2 = random(1,3)
				if i2==1 then
				tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4429,4430),1,1},nCount=1,},}, "test", 1);
				else if i2==2 then
				tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4432,4433),1,1},nCount=1,},}, "test", 1);
				else if i2==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt",tbProp={6,1,random(4436,4437),1,1},nCount=1,},}, "test", 1);
					end
					end
					end
end		
--local tt1 = random(1,5000)
--if tt1 ==2500 then
--	tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
--end;


local s = random(1,100)
if s==100 then
tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e6}}, "test", 1);
end;

tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(task_event_tienvan,GetTask(task_event_tienvan)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..GetTask(task_event_tienvan) .."<color>")
	return 0
end
