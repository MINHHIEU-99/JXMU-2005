----------------------Script*By*Heart*Doldly***-------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
---------------------------------------------------------------------------
AnRuong=5702
MocAnRuong=5703
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
--huyet chien le bao 3002 huyet chien chieu thu 3003
------------------------------------------------------
function main()
	dofile("script/global/g7vn/item/ruongdatau.lua")
	dofile("script/global/g7vn/g7configall.lua")
	local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MocAnRuong) ~= nDate) then
		SetTask(MocAnRuong, nDate) SetTask(AnRuong, 0)
	end
	if (GetTask(AnRuong) >1) then
		Say("<color=yellow>Ng��i �� �n 2 r��ng cho h�m nay r�i, mai l�i �n ti�p nh�")
		return 1
	end

			if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end
	
	local a1 = random(1,2000)
if a1 == 500 then
	tbAwardTemplet:GiveAwardByList({{szName = "C�n Kh�n Song Tuy�t B�i(7 Ng�y)",tbProp={6,1,4867,1,1},nCount=1,},}, "test", 1);

end

local a2 = random(1,600)
if a2 == 300 then
	tbAwardTemplet:GiveAwardByList({{szName = "Nguy�t Khuy�t Tinh Th�ch",tbProp={6,1,4817,1,1},nCount=1,},}, "test", 1);

end

local a3 = random(1,500)
if a3==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng Kh�i",tbProp={6,1,4509,1,1},nCount=1,tbParam={6,0,0,0,0,0}},}, "test", 1);
end;				
				
local a4 = random(1,500)
				if a4==250 then
					tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng V� Kh�",tbProp={6,1,4510,1,1},nCount=1,tbParam={7,0,0,0,0,0}},}, "test", 1);
				end;		

-----------------------------------------ruong ts-----------------------------------------------
local ts1 = random(1,1600)
if ts1==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Li�n",tbProp={6,1,4504,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},},}, "test", 1);
end;

local ts2 = random(1,1600)
if ts2==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Kh�i",tbProp={6,1,4505,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},}, "test", 1);
end;

local ts8= random(1,1600)
if ts8==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Th��ng Gi�i",tbProp={6,1,4506,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},},}, "test", 1);
end;

local ts3 = random(1,1600)
if ts3==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Uy�n",tbProp={6,1,4507,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},},}, "test", 1);
end;

local ts4 = random(1,1600)
if ts4==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n Y�u ��i",tbProp={6,1,4508,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},},}, "test", 1);
end;

local ts5 = random(1,1600)
if ts5==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n H�i",tbProp={6,1,4511,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},},}, "test", 1);
end;

local ts6 = random(1,1600)
if ts6==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��n B�i",tbProp={6,1,4512,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},},}, "test", 1);
end;

local ts7= random(1,1600)
if ts7==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng H� Gi�i",tbProp={6,1,4513,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},},}, "test", 1);
end;	

				local d2 = random(1,5000)
				if d2==2500 then
							local i2 = random(1,2)
							if i2==1 then
							tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,random(4429,4433),1,1},nCount=1,},}, "test", 1);
							else if i2==2 then
							tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t",tbProp={6,1,random(4436,4438),1,1},nCount=1,},}, "test", 1);
								end
								end
				end		

	
local d5 = random(1,200)
if d5==50 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ng�c",tbProp={6,1,4806,1,1},nCount=50,},}, "test", 1);
end;

--local d6 = random(1,600)
--if d6==300 then
	--tbAwardTemplet:GiveAwardByList({{szName = "Nguy�t Khuy�t Tinh Th�ch",tbProp={6,1,4817,1,1},nCount=1,},}, "test", 1);
--end;


local d7 = random(1,3000)
if d7==1500 then
	tbAwardTemplet:GiveAwardByList({{szName = "Nguy�t Khuy�t L�nh",tbProp={6,1,4834,1,1},nCount=1,},}, "test", 1);
end;

local d8 = random(1,600)
if d8==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);
end;

local d9= random(1,600)
if d9==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "Quy Nguyen Kiem Dinh Phu",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);
end;

local d10 = random(1,500)
if d10==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,1},nCount=1,},}, "test", 1);
end;

local d11 = random(1,2000)
if d11==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=1,},}, "test", 1);
end;


tbAwardTemplet:GiveAwardByList({{nExp_tl = 200e6}}, "test", 1);	
SetTask(AnRuong,GetTask(AnRuong)+1)			
end;
