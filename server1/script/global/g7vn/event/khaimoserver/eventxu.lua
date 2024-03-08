--event xu
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
function GhiNhanRoiBK24()
szPath = "script/global/g7vn/event/khaimoserver/check24.log"
	handle = openfile(szPath, "w+")
	write(handle, 1)	
	closefile(handle)
end
function DaRaBiKipChua()
szPath = "script/global/g7vn/event/khaimoserver/check24.log"

		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tonumber(nValue)
		end
		closefile(handle)	
		return nValue		
end


	

function main()
	dofile("script/global/g7vn/event/khaimoserver/eventxu.lua")
	dofile("script/global/g7vn/g7configall.lua")
	--tbLogEvent:LuuDSNhanVat()
	--tbLogEvent:SapXepDSXepHang()
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate < startdate or nDate > enddate) then
		Say("VËt phÈm event ®· hÕt h¹n sö dông ")
		return 1
	end

		local nSubWorldID = GetWorldPos();
		if nSubWorldID ~=20  then
		Msg2Player("ChØ sö dông ë Giang T©n Th«n  nhÐ b¹n.");
		return 1
	end

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
		return 1;
	end





----------------------------------------------------------------------------------------------------------------------------------------------

local check=DaRaBiKipChua()

local bk24=random(1,100000)
if bk24==90000 then
	if check ==0 then
		--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4348,1,1},nCount=1,nExpiredTime=30*24*60,},}, "test", 1);--MËt tÞch Kü N¨ng 150 CÊp 24
		GhiNhanRoiBK24()
		WriteLogPro("dulieu/aneventduocbikip24.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An duoc bi kip 24\n");
	end
end

----------------------------------------------------------------------------------------------------------------------------------------------

local cuccl4 = random(1,2000)
if cuccl4 == 1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,128,1,1},nCount=1,nExpiredTime=30*24*60,},}, "test", 1);--B¸ch niªn thÊt tinh th¶o

end

local b = random(1,250)
if b==200 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,417,1,1,0,0,0},nCount=1},}, "test", 1);--Xu 
end;

local d = random(1,5000)
if d==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,random(9523,9530)},nCount=1,nQuality=1,nExpiredTime=3*24*60},}, "test", 1);--Tiªn Th¶o Lé ®Æc biÖt
end;

local d1 = random(1,30000)
if d1==25000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4346,1,1},nCount=1,nExpiredTime=30*24*60,},}, "test", 1);--MËt tÞch Kü N¨ng 150 CÊp 22
end;

local d2 = random(1,80000)
if d2==3000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4347,1,1},nCount=1,nExpiredTime=30*24*60,},}, "test", 1);--MËt tÞch Kü N¨ng 150 CÊp 23
       WriteLogPro("dulieu/aneventduocbikip23.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An duoc bi kip 23\n");
end;

local d3 = random(1,50)
if d3==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,49006,1,0,0},nCount=10,},}, "test", 1);--B¸ch LuyÖn Thµnh C­¬ng
end;


local d5 = random(1,300)
if d5==250 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2219,1,1},nCount=1,nExpiredTime=24*60},}, "test", 1);--Cµn Kh«n Song TuyÖt Béi
end;
local e = random(1,50)
if e==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,49004,1,0,0},nCount=10,},}, "test", 1);--Ngu Linh Kiem Dinh Phu
end;

local f = random(1,50)
if f==25 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,30355,1,0,0},nCount=10,},}, "test", 1);--Quy Nguyen Kiem Dinh Phu
end;


local i = random(1,50000)
if t==2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,5441,1,0,0},nCount=1,},}, "test", 1);--Tinh S­¬ng LÖnh
end;

local g = random(1,3)
if g==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4807,1,0,0},nCount=1,},}, "test", 1);--Tinh Ngäc
end;

local h = random(1,3000)
if h==300 then
	--tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,2126,1,1},nCount=1,nExpiredTime=24*60},}, "test", 1);--NhÊt Kû Cµn Kh«n Phï
end;

local k = random(1,3000)
if k==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,5562,1,0,0},nCount=1,},}, "test", 1);--§å Phæ NguyÖt KhuyÕt H¹ Giíi
end;


local l = random(1,5000)
if l==2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,5425,1,0,0},nCount=1,},}, "test", 1);--§å Phæ NguyÖt KhuyÕt Th­îng Giíi
end;


local m = random(1,1000)
if m==500 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,30336,1,1},nCount=1,nExpiredTime=2*24*60},}, "test", 1);--B¹ch Ngäc
end;




local p = random(1,5000)
if p==2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "cang khon",tbProp={0,random(8826,8855)},nCount=1,nQuality=1,nExpiredTime=3*24*60},}, "test", 1);--Tiªn Th¶o Lé ®Æc biÖt
end;

local q = random(1,5000)
if q==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò Hµnh Ên 3",tbProp={0,9378},nQuality=1,nExpiredTime=3*24*60},}, "test", 1);
end;



local r1 = random(1,3000)
if r1==1000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,1497,1,1,0,0},nCount=1,},}, "test", 1);--Ngò S¾c B¶o Ngäc
end;

local r2 = random(1,600)
if r2==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,1498,1,1,0,0},nCount=1,},}, "test", 1);--TrÊn ph¸i linh d­îc
end;

local r3 = random(1,600)
if r3==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,1499,1,1,0,0},nCount=1,},}, "test", 1);--TrÊn ph¸i linh ®¬n
end;


local r4 = random(1,300)
if r4==150 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,1500,1,1,0,0},nCount=1,},}, "test", 1);--NguyÖt KhuyÕt Tinh Th¹ch
end;

local r5 = random(1,400)
if r5==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,1501,1,1,0,0},nCount=1,},}, "test", 1);--Ngäc Linh Hån
end;

local r6 = random(1,400)
if r6==300 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,1502,1,1,0,0},nCount=1,},}, "test", 1);--Ngäc C­êng Hãa Nguyªn LiÖu
end;




local r10 = random(1,1200)
if r10==20 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,1503,1,1,0,0},nCount=1},}, "test", 1);--§¹i Tinh Ngäc
end;



-----------------------------------------ruong ts maxx -----------------------------------------------
local ts1 = random(1,12000)
if ts1==8000 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Liªn MAX",tbProp={6,1,6200,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},},}, "test", 1);
end;

local ts2 = random(1,12000)
if ts2==9000 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Kh«i MAX",tbProp={6,1,6201,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},}, "test", 1);
end;

local ts8= random(1,12000)
if ts8==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n Th­îng Giíi MAX",tbProp={6,1,6202,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},},}, "test", 1);
end;

local ts3 = random(1,12000)
if ts3==2500 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬n UyÓn MAX",tbProp={6,1,6203,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},},}, "test", 1);
end;
local ts8=random(1,1200)
if ts8==600 then
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
local tf1 = random(1,60000)
if tf1==1230 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4370,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);--§¹i thµnh bÝ kÝp 150 lªn CÊp 21
end;
local tf2 = random(1,80000)
if tf2==2000 then
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,4371,1,1},nCount=1,nExpiredTime=30*24*60},}, "test", 1);--§¹i thµnh bÝ kÝp 150 lªn CÊp 22
end;

local tf3 = random(1,6000)
if tf3==2000 then
tbAwardTemplet:GiveAwardByList({{szName = "NguyÖt KhuyÕt LÖnh",tbProp={6,1,4834,1,1},nCount=1,},}, "test", 1);
end;


local mn1=random(1,750)
if mn1==250 then
	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ngùa Hoµng Kim (1/7)",tbProp={4,1497,1,1,0},nCount=1},}, "test", 1);	
end;

local mn2=random(1,550)
if mn2==200 then
	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ngùa Hoµng Kim (2/7)",tbProp={4,1498,1,1,0},nCount=1},}, "test", 1);	
end;

local mn3=random(1,500)
if mn3==200 then
	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ngùa Hoµng Kim (3/7)",tbProp={4,1499,1,1,0},nCount=1},}, "test", 1);	
end;

local mn4=random(1,1500)
if mn4==200 then
	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ngùa Hoµng Kim (4/7)",tbProp={4,1500,1,1,0},nCount=1},}, "test", 1);	
end;

local mn5=random(1,450)
if mn5==200 then
	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ngùa Hoµng Kim (5/7)",tbProp={4,1501,1,1,0},nCount=1},}, "test", 1);	
end;

local mn6=random(1,3000)
if mn6==200 then
	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ngùa Hoµng Kim (6/7)",tbProp={4,1502,1,1,0},nCount=1},}, "test", 1);	
end;

local mn7=random(1,2000)
if mn7==600 then
	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ngùa Hoµng Kim (7/7)",tbProp={4,1503,1,1,0},nCount=1},}, "test", 1);	
end;

local mn8=random(1,4000)
if mn8==600 then
	--tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ngùa Siªu Quang",tbProp={4,1504,1,1,0},nCount=1},}, "test", 1);	
end;

local mn9=random(1,2800)
if mn9==600 then
	tbAwardTemplet:GiveAwardByList({{szName = "Phông NguyÖt Qu¶ Dung",tbProp={6,1,127,1,0,0},nCount=1},}, "test", 1);	
end;

local mn10=random(1,2800)
if mn10==600 then
	tbAwardTemplet:GiveAwardByList({{szName = "Cèng NguyÖt Phï Dung",tbProp={6,1,128,1,0,0},nCount=1},}, "test", 1);	
end;


	if GetTask(task_eventxu) <= 20000 then
	tbAwardTemplet:GiveAwardByList({{nExp_tl =	50e6}}, "test", 1);
		end

	SetTask(task_eventxu,GetTask(task_eventxu)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..GetTask(task_eventxu) .."<color>")

	return 0
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
