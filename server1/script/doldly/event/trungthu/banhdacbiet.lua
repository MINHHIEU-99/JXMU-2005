IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
HOAPHUONGTRANG = 4986
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
--dofile("script/doldly/event/hoaphuong/banhdacbiet.lua")
local nDate = tonumber(GetLocalDate("%Y%m%d"));
local nTime = tonumber(GetLocalDate("%H%M"));
if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
	Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 Trïng Sinh Kh«ng Giíi H¹n §¼ng CÊp")
return end
	if (nDate >= 20180512 and nDate <= 20220930 and nTime >= 0000 and nTime <= 2359) then
		if GetTask(HOAPHUONGTRANG) <50000 then
			if CalcFreeItemCellCount() >= 10 then
				SetTask(HOAPHUONGTRANG,GetTask(HOAPHUONGTRANG)+1) tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng B¸nh Sinh NhËt §Æc BiÖt")
			else
				Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y sö dông",0) return 1
			end
		else
			Say(""..myplayersex().." §· Sö Dông Tèi §a 50000 B¸nh Trung Thu §Æc BiÖt­\nTrong Suèt Thêi Gian Ho¹t §éng") return 1
		end
	else
		Talk(1,"","VËt PhÈm §· Qu¸ H¹n Sö Dông SÏ Tù §éng MÊt §i")
	end
end
-----------------------------------------------------------------------------------------------------------------------
tbAward = {
	[1] = {
		{nExp_tl = 1e7},
	},
	[2] = {
	        {szName="LÖnh Bµi DiÖu D­¬ng",tbProp={6,1,5442,1,0,0},nCount=1,nRate=0.01},
		{szName="§¹i Tinh Ngäc",tbProp={6,1,4873,1,0,0},nCount=10,nRate=0.1},
		{szName="Tinh Ngäc",tbProp={6,1,4807,1,0,0},nCount=10,nRate=5},
		--{szName="MÆt N¹ ChiÕn Tr­êng Hoµng Gi¶ Gi¶",tbProp={0,11,839,1,0,0},nCount=1,nExpiredTime=20160,nRate=0.05},
		{szName="Cµn Kh«n Liªn Hoa",tbProp={6,1,5041,1,0,0},nCount=3,nRate=0.3},
	        {szName="nguyet khuyet lenh",tbProp={6,1,5441,1,0,0},nCount=1,nRate=0.2},
		--{szName="Dieu Duong Thach",tbProp={6,1,5447,1,0,0},nCount=1,nRate=0.03},
		{szName="Anh Hao Thach",tbProp={6,1,5448,1,0,0},nCount=1,nRate=0.01},
		{szName="Anh Hµo LÖnh",tbProp={6,1,5443,1,0,0},nCount=1,nRate=0.001},
		--{szName="®¹i thµnh bÝ kÝp 21",tbProp={6,1,4345,1,0,0},nCount=1,nRate=0.08},

	},
}
------------------------------------------------------------------------------------------------------------------------------------------------