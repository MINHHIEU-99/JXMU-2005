--event xu
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")

startdate= 20191010
enddate=20200628


	

function main()
	dofile("script/global/g7vn/event/0106/keo7mau.lua")
	dofile("script/global/g7vn/g7configall.lua")
	--if GetAccount()~="boquyx123" or GetAccount()=="luuhuanvlv2019" then
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate > enddate) then
		Say("V�t ph�m event �� h�t h�n s� d�ng ")
		return 1
	end

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end
if GetTask(task_eventxu)>=1200 then
		Say("S� d�ng event �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
----------------------------------------------------------------------------------------------------------------------------------------------
local a1 = random(1,300)
if a1 == 100 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4898,1,1},nCount=1,},}, "test", 1);--Huy�t chi�n l� bao(��i)

end
local a = random(1,5)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);--T� Tinh Kho�ng Th�ch 
end;

local b = random(1,50)
if b==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4832,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);--Hoi Thien 900
end;

local c = random(1,120)
if c==30 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4881,1,1},nCount=1,},}, "test", 1);--Tinh S��ng Th�ch (��i)
end;

local d = random(1,5000)
if d==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4369,1,1},nCount=1,},}, "test", 1);--M�t t�ch K� N�ng 150 C�p 21
end;

local d1 = random(1,3000)
if d1==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4370,1,1},nCount=1,},}, "test", 1);--M�t t�ch K� N�ng 150 C�p 22
end;

local d2 = random(1,5000)
if d2==3500 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);--M�t t�ch K� N�ng 150 C�p 23
end;

local d3 = random(1,500)
if d3==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4906,1,1},nCount=1,},}, "test", 1);--B�ch Luy�n Th�nh C��ng
end;

local d4 = random(1,5000)
if d4==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);--C�n Kh�n Song Tuy�t B�i
end;

local e = random(1,80)
if e==50 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);--Ngu Linh Kiem Dinh Phu
end;

local f = random(1,80)
if f==50 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);--Quy Nguyen Kiem Dinh Phu
end;

local i = random(1,120)
if f==60 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4318,1,1},nCount=1,},}, "test", 1);--Ng� S�c B�o Ng�c
end;

local i = random(1,50000)
if t==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4882,1,1},nCount=1,},}, "test", 1);--Tinh S��ng L�nh
end;

local g = random(1,10)
if g==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4806,1,1},nCount=1,},}, "test", 1);--Tinh Ng�c
end;

local h = random(1,1000)
if h==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2126,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);--Nh�t K� C�n Kh�n Ph�
end;

local k = random(1,3000)
if k==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4438,1,1},nCount=1,},}, "test", 1);--�� Ph� Nguy�t Khuy�t H� Gi�i
end;


local l = random(1,2000)
if l==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4431,1,1},nCount=1,},}, "test", 1);--�� Ph� Nguy�t Khuy�t Th��ng Gi�i
end;


local m = random(1,1000)
if m==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2390,1,1},nCount=1,},}, "test", 1);--B�ch Ng�c
end;


local n = random(1,1000)
if n==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2391,1,1},nCount=1,},}, "test", 1);--T� Ng�c
end;

local p = random(1,500)
if p==100 then
--	tbAwardTemplet:GiveAwardByList({{szName = "Xuy�n Y Ph� Gi�p 3",tbProp={0,3990},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local q = random(1,500)
if q==100 then
--	tbAwardTemplet:GiveAwardByList({{szName = "Ng� H�nh �n 3",tbProp={0,3952},nQuality=1,nExpiredTime=30*24*60},}, "test", 1);
end;


local r = random(1,120)
if r==60 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4813,1,1},nCount=1,},}, "test", 1);--Ng� S�c B�o Ng�c
end;

local r1 = random(1,3000)
if r1==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,1989,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);--Nam T�o Thu�n M� Thu�t
end;

local r2 = random(1,600)
if r2==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,1705,1,1},nCount=1,},}, "test", 1);--Tr�n ph�i linh d��c
end;

local r3 = random(1,600)
if r3==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,1704,1,1},nCount=1,},}, "test", 1);--Tr�n ph�i linh ��n
end;


local r4 = random(1,500)
if r4==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4817,1,1},nCount=1,},}, "test", 1);--Nguy�t Khuy�t Tinh Th�ch
end;

local r5 = random(1,500)
if r5==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4912,1,1},nCount=1,},}, "test", 1);--Ng�c Linh H�n
end;

local r6 = random(1,500)
if r6==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4913,1,1},nCount=1,},}, "test", 1);--Ng�c C��ng H�a Nguy�n Li�u
end;



local r9 = random(1,6000)
if r9==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,1670,1,1},nCount=1,},}, "test", 1);--T�n v�t m�n ph�i
end;



local r10 = random(1,40)
if r10==20 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4878,1,1},nCount=1,nExpiredTime=7*24*60},}, "test", 1);--Lang H�o Thi�n Th�ch
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4919,1,1},nCount=1},}, "test", 1);--��i Tinh Ng�c
end;


local r11 = random(1,1000)
if r11==300 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=7*24*60},}, "test", 1);--M�t N� Chi�n Tr��ng Vuong Gi�
end;





local s = random(1,220)
if s==100 then
tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
end;

local x = random(1,400)
if x==30 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 80e6}}, "test", 1);
end;

local y = random(1,1000)
if y==100 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 100e6}}, "test", 1);
end;

local z = random(1,1500)
if z==100 then
--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 20e6}}, "test", 1);
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
local r7 = random(1,4000)
if r7==2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4509,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);--B�o R��ng Tinh S��ng Kh�i
end;

local r8 = random(1,4000)
if r8==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4510,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);--B�o R��ng Tinh S��ng V� Kh�
end;

local ts8=random(1,1200)
if ts8==600 then
				local i2 = random(1,3)
				if i2==1 then
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,random(4429,4430),1,1},nCount=1,},}, "test", 1);--�� Ph� Nguy�t Khuy�t
				else if i2==2 then
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,random(4432,4433),1,1},nCount=1,},}, "test", 1);--�� Ph� Nguy�t Khuy�t
				else if i2==3 then
					tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,random(4436,4437),1,1},nCount=1,},}, "test", 1);--�� Ph� Nguy�t Khuy�t
					end
					end
					end
end				
local tf1 = random(1,120)
if tf1==30 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);--�� Ph� Tinh S��ng Y
end;
local tf2 = random(1,120)
if tf2==30 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);--�� Ph� Tinh S��ng Kh� Gi�i
end;
	if GetTask(task_eventxu) <= 1200 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 120e6}}, "test", 1);
		end

	

	SetTask(task_eventxu,GetTask(task_eventxu)+1)
	Msg2Player("�� s� d�ng l�n th�: <color=green>"..GetTask(task_eventxu) .."<color>")
--	tbAwardTemplet:GiveAwardByList({{szName = "Thi�p ch�c T�t",tbProp={6,1,1346,1,1},nCount=1,nExpiredTime=7*24*60},}, "test", 1);
	--tbAwardTemplet:GiveAwardByList({{szName = "Thi�p ch�c T�t",tbProp={6,1,1346,1,1},nCount=1,nExpiredTime=2*24*60},}, "test", 1);
	tbLogEvent:LuuDSNhanVat()
	tbLogEvent:SapXepDSXepHang()
	return 0
end
