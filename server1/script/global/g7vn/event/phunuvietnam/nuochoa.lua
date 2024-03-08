
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

startdate= 20191010
enddate=20191101

function main1()
	dofile("script/global/g7vn/event/phunuvietnam/nuochoa.lua")
	Say("Chua Mo")
	return 1;
	
	end

function main()
	dofile("script/global/g7vn/event/phunuvietnam/nuochoa.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate >= enddate) then
		Say("V�t ph�m event �� h�t h�n s� d�ng ")
		return 1
	end
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end
	local TSK_BDB=4983
	if GetTask(TSK_BDB)>=1200 then
		Say("S� d�ng event �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------
local a1 = random(1,500)
if a1 == 250 then
	tbAwardTemplet:GiveAwardByList({{szName = "Huy�t chi�n l� bao(��i)",tbProp={6,1,4898,1,1},nCount=1,},}, "test", 1);

end
local a = random(1,5)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "T� Tinh Kho�ng Th�ch ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);
end;

local b = random(1,50)
if b==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "Hoi Thien 900",tbProp={6,1,4832,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local c = random(1,300)
if c==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh S��ng Th�ch (��i)",tbProp={6,1,4881,1,1},nCount=1,},}, "test", 1);
end;

local d = random(1,10000)
if d==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "M�t t�ch K� N�ng 150 C�p 21",tbProp={6,1,4369,1,1},nCount=1,},}, "test", 1);
end;

local d1 = random(1,5000)
if d1==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "M�t t�ch K� N�ng 150 C�p 22",tbProp={6,1,4370,1,1},nCount=1,},}, "test", 1);
end;

local d2 = random(1,7000)
if d2==3500 then
	tbAwardTemplet:GiveAwardByList({{szName = "M�t t�ch K� N�ng 150 C�p 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
end;

local d3 = random(1,600)
if d3==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=1,},}, "test", 1);
end;

local d4 = random(1,7000)
if d4==3500 then
	tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
end;

local e = random(1,200)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);
end;

local f = random(1,200)
if f==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Quy Nguyen Kiem Dinh Phu",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);
end;

local i = random(1,120)
if f==60 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� S�c B�o Ng�c",tbProp={6,1,4318,1,1},nCount=1,},}, "test", 1);
end;

local i = random(1,50000)
if t==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh S��ng L�nh",tbProp={6,1,4882,1,1},nCount=1,},}, "test", 1);
end;

local g = random(1,10)
if g==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ng�c",tbProp={6,1,4806,1,1},nCount=1,},}, "test", 1);
end;

local h = random(1,1000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local k = random(1,10000)
if k==5000 then
	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Y",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);
end;


local l = random(1,50000)
if l==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Kh� Gi�i",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
end;


local l = random(1,50000)
if l==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Tinh S��ng Kh� Gi�i",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
end;

local m = random(1,500)
if m==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�ch Ng�c",tbProp={6,1,2390,1,1},nCount=1,},}, "test", 1);
end;


local n = random(1,500)
if n==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "T� Ng�c",tbProp={6,1,2391,1,1},nCount=1,},}, "test", 1);
end;

local p = random(1,500)
if p==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Xuy�n Y Ph� Gi�p 3",tbProp={0,3990},nQuality=1,nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local q = random(1,500)
if q==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� H�nh �n 3",tbProp={0,3952},nQuality=1,nExpiredTime=14*24*60},}, "test", 1);
end;


local r = random(1,120)
if r==60 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� S�c B�o Ng�c",tbProp={6,1,4813,1,1},nCount=1,},}, "test", 1);
end;

local r1 = random(1,2500)
if r1==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Nam T�o Thu�n M� Thu�t",tbProp={6,1,1989,1,1},nCount=1,},}, "test", 1);
end;


local s = random(1,500)
if s==100 then
tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
end;

local x = random(1,750)
if x==100 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
end;

local y = random(1,1000)
if y==100 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
end;

local z = random(1,1500)
if z==100 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
end;
-----------------------------------------ruong ts-----------------------------------------------
local ts1 = random(1,4000)
if ts1==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Li�n",tbProp={6,1,4504,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},},}, "test", 1);
end;

local ts2 = random(1,4000)
if ts2==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Kh�i",tbProp={6,1,4505,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},}, "test", 1);
end;

local ts8= random(1,4000)
if ts8==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Th��ng Gi�i",tbProp={6,1,4506,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},},}, "test", 1);
end;

local ts3 = random(1,4000)
if ts3==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Uy�n",tbProp={6,1,4507,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},},}, "test", 1);
end;

local ts4 = random(1,4000)
if ts4==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Y�u ��i",tbProp={6,1,4508,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},},}, "test", 1);
end;

local ts5 = random(1,4000)
if ts5==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n H�i",tbProp={6,1,4511,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},},}, "test", 1);
end;

local ts6 = random(1,4000)
if ts6==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n B�i",tbProp={6,1,4512,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},},}, "test", 1);
end;

local ts7= random(1,4000)
if ts7==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng H� Gi�i",tbProp={6,1,4513,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},},}, "test", 1);
end;

	tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);
	SetTask(TSK_BDB,GetTask(TSK_BDB)+1)
	Msg2Player("�� s� d�ng l�n th�: <color=green>"..GetTask(TSK_BDB) .."<color>")
--	tbLogEvent:LuuDSNhanVat()
	--tbLogEvent:SapXepDSXepHang()
	return 0
end
