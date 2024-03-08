
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")

startdate= 20191010
enddate=20200115


	

function main()
	dofile("script/global/g7vn/event/noel/hopquagiangsinh.lua")
	dofile("script/global/g7vn/g7configall.lua")
	--if GetAccount()~="boquyx123" or GetAccount()=="luuhuanvlv2019" then
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate > enddate) then
		Say("VËt phÈm event ®· hÕt h¹n sö dông ")
		return 1
	end
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
		return 1;
	end
	--if GetTask(task_hopquagiangsinh)>=1200 then
		--	Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
	--	return 1;
	--end
----------------------------------------------------------------------------------------------------------------------------------------------
local a1 = random(1,500)
if a1 == 250 then
	tbAwardTemplet:GiveAwardByList({{szName = "HuyÕt chiÕn lÔ bao(§¹i)",tbProp={6,1,4898,1,1},nCount=1,},}, "test", 1);

end
local a = random(1,5)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tö Tinh Kho¸ng Th¹ch ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);
end;

local b = random(1,50)
if b==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "Hoi Thien 900",tbProp={6,1,4832,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local c = random(1,125)
if c==60 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng Th¹ch (®¹i)",tbProp={6,1,4881,1,1},nCount=1,},}, "test", 1);
end;

local d = random(1,2000)
if d==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,1},nCount=1,},}, "test", 1);
end;

local d1 = random(1,5000)
if d1==2500 then
	tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4370,1,1},nCount=1,},}, "test", 1);
end;

local d2 = random(1,10000)
if d2==3500 then
	tbAwardTemplet:GiveAwardByList({{szName = "MËt tÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,},}, "test", 1);
end;

local d3 = random(1,600)
if d3==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=1,},}, "test", 1);
end;

local d4 = random(1,10000)
if d4==3500 then
	tbAwardTemplet:GiveAwardByList({{szName = "Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,1},nCount=1,},}, "test", 1);
end;

local e = random(1,80)
if e==50 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);
end;

local f = random(1,80)
if f==50 then
	tbAwardTemplet:GiveAwardByList({{szName = "Quy Nguyen Kiem Dinh Phu",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);
end;

local i = random(1,120)
if f==60 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò S¾c B¶o Ngäc",tbProp={6,1,4318,1,1},nCount=1,},}, "test", 1);
end;

local i = random(1,50000)
if t==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh S­¬ng LÖnh",tbProp={6,1,4882,1,1},nCount=1,},}, "test", 1);
end;

local g = random(1,10)
if g==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ngäc",tbProp={6,1,4806,1,1},nCount=1,},}, "test", 1);
end;

local h = random(1,1000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local k = random(1,1000)
if k==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng Y",tbProp={6,1,4883,1,1},nCount=1,},}, "test", 1);
end;


local l = random(1,2000)
if l==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng KhÝ Giíi",tbProp={6,1,4884,1,1},nCount=1,},}, "test", 1);
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
--	tbAwardTemplet:GiveAwardByList({{szName = "Xuyªn Y Ph¸ Gi¸p 3",tbProp={0,3990},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local q = random(1,500)
if q==100 then
--	tbAwardTemplet:GiveAwardByList({{szName = "Ngò Hµnh Ên 3",tbProp={0,3952},nQuality=1,nExpiredTime=30*24*60},}, "test", 1);
end;


local r = random(1,120)
if r==60 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò S¾c B¶o Ngäc",tbProp={6,1,4813,1,1},nCount=1,},}, "test", 1);
end;

local r1 = random(1,3000)
if r1==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Nam Tµo ThuÇn M· ThuËt",tbProp={6,1,1989,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);
end;

local r2 = random(1,600)
if r2==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "TrÊn ph¸i linh d­îc",tbProp={6,1,1705,1,1},nCount=1,},}, "test", 1);
end;

local r3 = random(1,600)
if r3==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "TrÊn ph¸i linh ®¬n",tbProp={6,1,1704,1,1},nCount=1,},}, "test", 1);
end;


local r4 = random(1,1200)
if r4==600 then
	tbAwardTemplet:GiveAwardByList({{szName = "NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,4817,1,1},nCount=1,},}, "test", 1);
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
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Liªn",tbProp={6,1,4504,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},},}, "test", 1);
end;

local ts2 = random(1,4000)
if ts2==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Kh«i",tbProp={6,1,4505,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},}, "test", 1);
end;

local ts8= random(1,4000)
if ts8==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Th­îng Giíi",tbProp={6,1,4506,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},},}, "test", 1);
end;

local ts3 = random(1,4000)
if ts3==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n UyÓn",tbProp={6,1,4507,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},},}, "test", 1);
end;

local ts4 = random(1,4000)
if ts4==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Yªu §¸i",tbProp={6,1,4508,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},},}, "test", 1);
end;

local ts5 = random(1,4000)
if ts5==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Hµi",tbProp={6,1,4511,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},},}, "test", 1);
end;

local ts6 = random(1,4000)
if ts6==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Béi",tbProp={6,1,4512,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},},}, "test", 1);
end;

local ts7= random(1,4000)
if ts7==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng H¹ Giíi",tbProp={6,1,4513,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},},}, "test", 1);
end;

local ts8=random(1,1200)
if ts8==600 then
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

	if GetTask(task_hopquagiangsinh) <= 1200 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 150e6}}, "test", 1);
		end

	

	SetTask(task_hopquagiangsinh,GetTask(task_hopquagiangsinh)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..GetTask(task_hopquagiangsinh) .."<color>")
--	tbAwardTemplet:GiveAwardByList({{szName = "ThiÖp Chóc Mõng",tbProp={6,1,2621,1,1},nCount=1,nExpiredTime=2*24*60},}, "test", 1);
	tbLogEvent:LuuDSNhanVat()
	tbLogEvent:SapXepDSXepHang()
	return 0
end
