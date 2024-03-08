--event tien van
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\g7vn\\g7configall.lua")
function main()
	dofile("script/global/g7vn/event/eventthang52021/eventtienvan.lua")
	dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate > enddate) then
		Say("V�t ph�m event �� h�t h�n s� d�ng")
		return 0
	end
			local nSubWorldID = GetWorldPos();
		if nSubWorldID ~=53  then
		Msg2Player("Ch� s� d�ng � Ba L�ng Huy�n  nh� b�n.");
		return 1
	end
	if (GetTask(task_event_tienvan) >=1200) then
		Say("S� d�ng event �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------
local thiep1 = random(1,800)
if thiep1 == 100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,1887,1,1},nCount=1,nExpiredTime=TimeHetHanEventFree,},}, "test", 1);--Chi�c g�y Tr�ng S�n

end

local thiep2 = random(1,800)
if thiep2 == 100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,1888,1,1},nCount=1,nExpiredTime=TimeHetHanEventFree,},}, "test", 1);--Chi�c M� Chi�n S�

end
local thiep3 = random(1,800)
if thiep3 == 100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,1889,1,1},nCount=1,nExpiredTime=TimeHetHanEventFree,},}, "test", 1);--��i Gi�y B� ��i

end
local thiep4 = random(1,800)
if thiep4 == 100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,1890,1,1},nCount=1,nExpiredTime=TimeHetHanEventFree,},}, "test", 1);--T�m �o Chi�n S�

end
local thiep5 = random(1,800)
if thiep5 == 100 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2307,1,1},nCount=1,nExpiredTime=TimeHetHanEventFree,},}, "test", 1);--Chi�c v�ng Tr�ng S�n

end

local b = random(1,30)
if b==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4832,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);--H�i thi�n t�i t�o l� bao(900)
end;
local b1 = random(1,50)
if b1==20 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4893,1,1},nCount=1,nBindState = -2},}, "test", 1);--Xu kh�a
end;

local b2 = random(1,800)
if b3==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,5447,1,0,0},nCount=1,},}, "test", 1);-- diueu duong thach
end;

local m = random(1,500)
if m==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4807,1,0,0},nCount=1,},}, "test", 1);--B�ch Ng�c
end;


local n = random(1,500)
if n==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,49006,1,0,0},nCount=1,},}, "test", 1);--T� Ng�c
end;

local p = random(1,400)
if p==100 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,49004,1,0,0},nCount=1},}, "test", 1);--Tinh S��ng Th�ch (��i)
end;

local q = random(1,240)
if q==60 then
		--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,1181,1,1},nCount=1,nExpiredTime=30*24*60,},}, "test", 1);--Ti�n Th�o L� ��c bi�t
end;

local g = random(1,4)
if g==2 then
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4806,1,1},nCount=1,},}, "test", 1);--Tinh Ng�c
end;

local e = random(1,120)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,30355,1,0,0},nCount=1,},}, "test", 1);--Ngu Linh Kiem Dinh Phu
end;

local f = random(1,120)
if f==100 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);--Quy Nguyen Kiem Dinh Phu
end;

local h = random(1,20000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2126,1,1},nCount=1,},}, "test", 1);--Nh�t K� C�n Kh�n Ph�
end;

local a = random(1,6)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = " ",tbProp={6,1,6776,1,0,0},nCount=1,},}, "test", 1);--T� Tinh Kho�ng Th�ch
end;



local a1 = random(1,600)
if a1==300 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4878,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);--Lang H�o Thi�n Th�ch
end;


local a2 = random(1,500)
if a2==300 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=7*24*60},}, "test", 1);--M�t N� Chi�n Tr��ng Vuong Gi�
end;

local a3 = random(1,1200)
if a3 == 300 then
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4898,1,1},nCount=1,},}, "test", 1);--Huy�t chi�n l� bao(��i)

end

local a4 = random(1,70)
if a4 ==3 then
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4813,1,1},nCount=1,},}, "test", 1);--Ng� S�c B�o Ng�c
end;

local ts1 = random(1,8000)
if ts1==250 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Li�n",tbProp={6,1,4504,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},},}, "test", 1);
end;

local ts2 = random(1,8000)
if ts2==250 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Kh�i",tbProp={6,1,4505,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},}, "test", 1);
end;

local ts8= random(1,8000)
if ts8==250 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Th��ng Gi�i",tbProp={6,1,4506,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},},}, "test", 1);
end;

local ts3 = random(1,8000)
if ts3==250 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Uy�n",tbProp={6,1,4507,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},},}, "test", 1);
end;

local ts4 = random(1,8000)
if ts4==250 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Y�u ��i",tbProp={6,1,4508,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},},}, "test", 1);
end;

local ts5 = random(1,8000)
if ts5==250 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n H�i",tbProp={6,1,4511,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},},}, "test", 1);
end;

local ts6 = random(1,8000)
if ts6==250 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n B�i",tbProp={6,1,4512,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},},}, "test", 1);
end;

local ts7= random(1,8000)
if ts7==250 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng H� Gi�i",tbProp={6,1,4513,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},},}, "test", 1);
end;

local ts8=random(1,6000)
if ts8==2000 then
				local i2 = random(1,3)
				if i2==1 then
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,random(5560,5561),1,0,0},nCount=1,},}, "test", 1);--�� Ph� Nguy�t Khuy�t
				else if i2==2 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,random(5562,5563),1,0,0},nCount=1,},}, "test", 1);--�� Ph� Nguy�t Khuy�t
				else if i2==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,random(5568,5569),1,0,0},nCount=1,},}, "test", 1);--�� Ph� Nguy�t Khuy�t
					end
					end
					end
end		
local tt1 = random(1,5000)
if tt1 ==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
end;
local r5 = random(1,600)
if r5==300 then
--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={{6,1,6691,1,0,0},nCount=1,},}, "test", 1);--Ng�c Linh H�n
end;

local r6 = random(1,600)
if r6==300 then
--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4913,1,1},nCount=1,},}, "test", 1);--Ng�c C��ng H�a Nguy�n Li�u
end;


local s = random(1,100)
if s==100 then
--tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e6}}, "test", 1);
end;

local s1 = random(1,3000)
if s1==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4345,1,1},nCount=1,},}, "test", 1);--M�t t�ch K� N�ng 150 C�p 21
end;

local s2 = random(1,4000)
if s2==200 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,14346,1,1},nCount=1,},}, "test", 1);--M�t t�ch K� N�ng 150 C�p 22
end;

local s3 = random(1,2500)
if s3==200 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4347,1,1},nCount=1,},}, "test", 1);--M�t t�ch K� N�ng 150 C�p 23
end;


	if GetTask(task_event_tienvan) <= 1200 then
tbAwardTemplet:GiveAwardByList({{nExp_tl = 60e6}}, "test", 1);
		end




	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(task_event_tienvan,GetTask(task_event_tienvan)+1)
	Msg2Player("�� s� d�ng l�n th�: <color=green>"..GetTask(task_event_tienvan) .."<color>")
	return 0
end