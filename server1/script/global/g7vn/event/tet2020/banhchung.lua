
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
IncludeLib("SETTING")
IncludeLib("ITEM")
startdate= 20191204
enddate=20200215
function main()
	dofile("script/global/g7vn/event/tet2020/banhchung.lua")
		dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate >enddate) then
		Say("VËt phÈm event ®· hÕt h¹n sö dông")
		return 0
	end
		--if GetAccount()~="boquyx123" and GetAccount()~="luuhuanvlv2019" then
--	Say("HiÖn t¹i ch­a ®­îc sö dông nhÐ huynh")
--	return 1
--	end

--	local task_eventfree=4997
	if (GetTask(task_eventfree) >= 1200) then
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
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngäc",tbProp={6,1,4808,1,1},nCount=1,},}, "test", 1);
end;

local e = random(1,200)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);
end;	

local f = random(1,200)
if f==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Quy Nguyen Kiem Dinh Phu",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);
end;

local h = random(1,20000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,1},nCount=1,},}, "test", 1);
end;

local s = random(1,100)
if s==50 then
tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e6}}, "test", 1);
end;

local s1 = random(1,30)
if s1==15 then
		tbAwardTemplet:GiveAwardByList({{szName = "ThiÖp chóc TÕt",tbProp={6,1,1346,1,1},nCount=1,nExpiredTime=2*24*60},}, "test", 1);
end;
tbAwardTemplet:GiveAwardByList({{nExp_tl = 60e6}}, "test", 1);

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(task_eventfree,GetTask(task_eventfree)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..GetTask(task_eventfree) .."<color>")
	return 0
end
