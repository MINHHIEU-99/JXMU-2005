IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
HOAPHUONGTRANG = 4993
--------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------------------
function main()
if (CalcFreeItemCellCount() < 10) then
		Talk(1,"","H·y §Ó Trèng 10 « trèng råi h·y sö dông")
		return
	end
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=20  then
		Msg2Player("ChØ sö dông ë Giang T©n Th«n nhÐ b¹n.");
		return 1
	end
--dofile("script/doldly/event/hoaphuong/banhdacbiet.lua")
local nDate = tonumber(GetLocalDate("%Y%m%d"));
local nTime = tonumber(GetLocalDate("%H%M"));
if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
	Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 Trïng Sinh Kh«ng Giíi H¹n §¼ng CÊp")
return end
	if (nDate >= 20180512 and nDate <= 20220830 and nTime >= 0000 and nTime <= 2359) then
		if GetTask(HOAPHUONGTRANG) <50000 then
			if CalcFreeItemCellCount() >= 10 then
				SetTask(HOAPHUONGTRANG,GetTask(HOAPHUONGTRANG)+1) tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng B¸nh Sinh NhËt §Æc BiÖt")
			else
				Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y sö dông",0) return 1
			end
		else
			Say(""..myplayersex().." §· Sö Dông Tèi §a 50000 B¸nh Sinh NhËt §Æc BiÖt­\nTrong Suèt Thêi Gian Ho¹t §éng") return 1
		end
	else
		Talk(1,"","VËt PhÈm §· Qu¸ H¹n Sö Dông SÏ Tù §éng MÊt §i")
	end
end
-----------------------------------------------------------------------------------------------------------------------
tbAward = {
	[1] = {
		{nExp_tl = 4e6},
	},
	[2] = {
		
		{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4807,1,0,0},nCount=10,nRate=0.1},
		{szName="Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,0,0},nCount=1,nRate=0.01,nExpiredTime=43200},
		{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4807,1,0,0},nCount=10,nRate=5},
                {szName="§¸ C­êng Hãa +5",tbProp={6,1,4345,1,0,0},nCount=2,nRate=0.001},
		{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=20160,nRate=0.02},
		{szName="MÆt N¹ ChiÕn Tr­êng Hoµng Gi¶ Gi¶",tbProp={0,11,817,1,0,0},nCount=1,nExpiredTime=20160,nRate=0.001},
               {szName="Hµnh HiÖp LÖnh",tbProp={6,1,4346,1,0,0},nCount=1,nRate=0.001},
                {szName="dang long thach",tbProp={6,1,4807,1,0,0},nCount=1,nRate=0.01},
               {szName="dang long thach",tbProp={6,1,5441,1,0,0},nCount=1,nRate=0.01},
		{szName = "Ng©n L­îng",nJxb=50000,nCount=1, nRate = 0.1},
		{szName = "Ng©n L­îng",nJxb=100000,nCount=1, nRate = 0.2},
		{szName = "Ng©n L­îng",nJxb=150000,nCount=1, nRate = 0.3},
	},
}
------------------------------------------------------------------------------------------------------------------------------------------------