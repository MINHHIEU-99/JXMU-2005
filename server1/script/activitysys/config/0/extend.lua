Include("\\script\\activitysys\\config\\0\\head.lua")
Include("\\script\\activitysys\\config\\0\\variables.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\0\\count_use7.lua")
Include("\\script\\activitysys\\config\\0\\count_use7_2.lua")
IncludeLib("NPCINFO")

local nYellowDaisyMaxCount = 1000

local tbGiveDaisyTaskInfo =
{
	nTaskID = 2712,
	nStartBit = 1,
	nBitCount = 12,
	nMaxValue = 1000
}
local tbGourdUseTaskInfo =
{
	nTaskID = 2712,
	nStartBit = 13,
	nBitCount = 12,
	nMaxValue = 1000
}
--local tbSteelHeartWineUseTaskInfo =
--{
--	nTaskID = 2712,
--	nStartBit = 25,
--	nBitCount = 6,
--	nMaxValue = 5
--}
local tbGiveDaisy_AdditionalAward = {
	[500] = {szName = "§iÓm kinh nghiÖm", nExp=5000000},
	[1000] = {szName = "§iÓm kinh nghiÖm", nExp=10000000},
}
local tbUseGourd_AdditionalAward = {
	[50] = {szName = "§iÓm kinh nghiÖm", nExp=3000000},
	[100] = {szName = "§iÓm kinh nghiÖm", nExp=6000000},
	[200] = {szName = "§iÓm kinh nghiÖm", nExp=8000000},
	[300] = {szName = "§iÓm kinh nghiÖm", nExp=10000000},
	[400] = {szName = "§iÓm kinh nghiÖm", nExp=12000000},
	[500] = {szName = "§iÓm kinh nghiÖm", nExp=14000000},
	[600] = {szName = "§iÓm kinh nghiÖm", nExp=16000000},
	[700] = {szName = "§iÓm kinh nghiÖm", nExp=18000000},
	[800] = {szName = "§iÓm kinh nghiÖm", nExp=20000000},
	[900] = {szName = "§iÓm kinh nghiÖm", nExp=25000000},
	[1000] = {szName = "§iÓm kinh nghiÖm", nExp=30000000},
}
local tbUseWine_ExpAward = {
	[1] = {szName = "§iÓm kinh nghiÖm", nExp=2000000},
	[2] = {szName = "§iÓm kinh nghiÖm", nExp=3000000},
	[3] = {szName = "§iÓm kinh nghiÖm", nExp=4000000},
	[4] = {szName = "§iÓm kinh nghiÖm", nExp=5000000},
	[5] = {szName = "§iÓm kinh nghiÖm", nExp=6000000},
	[6] = {szName = "§iÓm kinh nghiÖm", nExp=6000000},
	[7] = {szName = "§iÓm kinh nghiÖm", nExp=7000000},
	[8] = {szName = "§iÓm kinh nghiÖm", nExp=8000000},
	[9] = {szName = "§iÓm kinh nghiÖm", nExp=9000000},
	[10] = {szName = "§iÓm kinh nghiÖm", nExp=10000000},
}

local tbUseWine_ItemAward = {
	{szName="§å Phæ Tö M·ng H¹ng Liªn",tbProp={6,1,2719,1,0,0},nCount=1,nRate=1},
	{szName="§å Phæ Tö M·ng Th­îng Giíi ChØ",tbProp={6,1,2721,1,0,0},nCount=1,nRate=1},
	{szName="§å Phæ Tö M·ng H¹ Giíi ChØ",tbProp={6,1,2722,1,0,0},nCount=1,nRate=1},
	{szName="§å Phæ Tö M·ng KhÝ Giíi",tbProp={6,1,2723,1,0,0},nCount=1,nRate=0.5},
	{szName="Tö M·ng LÖnh",tbProp={6,1,2350,1,0,0},nCount=1,nRate=0.5},
	{szName="Phi phong Kinh L«i (DÞch chuyÓn tøc thêi)",tbProp={0,3470},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong Kinh L«i (X¸c suÊt hãa gi¶i s¸t th­¬ng)",tbProp={0,3471},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong Kinh L«i ( Träng kÝch )",tbProp={0,3472},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName="Hoµng Kim Ên (C­êng hãa)",tbProp={0,3210},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName="Hoµng Kim Ên (Nh­îc hãa)",tbProp={0,3220},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName = "Sö dông ThiÕt T©m töu kh«ng may m¾n",
		pFun = function (nItemCount, szLogTitle)
			Msg2Player("LÇn nµy kh«ng may m¾n, ta ph¶i thö thªm lÇn n÷a")
		end,
		nRate = 93.5,
	}
}
local tbUseGourd_ItemAward = {
	{szName="§å Phæ Tö M·ng Kh«i",tbProp={6,1,2714,1,0,0},nCount=1,nRate=0.3},
	{szName="§å Phæ Tö M·ng Y",tbProp={6,1,2715,1,0,0},nCount=1,nRate=0.3},
	{szName="§å Phæ Tö M·ng Yªu §¸i",tbProp={6,1,2717,1,0,0},nCount=1,nRate=0.3},
	{szName="§å Phæ Tö M·ng Hé UyÓn",tbProp={6,1,2718,1,0,0},nCount=1,nRate=0.3},
	{szName="§å Phæ Tö M·ng Béi",tbProp={6,1,2720,1,0,0},nCount=1,nRate=0.3},
	{szName="§å Phæ Tö M·ng Hµi",tbProp={6,1,2716,1,0,0},nCount=1,nRate=0.3},
	{szName="§å Phæ Tö M·ng H¹ng Liªn",tbProp={6,1,2719,1,0,0},nCount=1,nRate=0.1},
	{szName="§å Phæ Tö M·ng Th­îng Giíi ChØ",tbProp={6,1,2721,1,0,0},nCount=1,nRate=0.1},
	{szName="§å Phæ Tö M·ng H¹ Giíi ChØ",tbProp={6,1,2722,1,0,0},nCount=1,nRate=0.1},
	{szName="§å Phæ Tö M·ng KhÝ Giíi",tbProp={6,1,2723,1,0,0},nCount=1,nRate=0.1},
	{szName="HuyÒn Viªn LÖnh",tbProp={6,1,2351,1,0,0},nCount=1,nRate=0.3},
	{szName="Tö M·ng LÖnh",tbProp={6,1,2350,1,0,0},nCount=1,nRate=0.1},
	{szName="LÖnh Bµi Thñy TÆc",tbProp={6,1,2745,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="Qu¶ Hoµng Kim",tbProp={6,1,907,1,0,0},nCount=1,nRate=1, nExpiredTime = 10080},
	{szName="S¸t Thñ Gi¶n lÔ hép",tbProp={6,1,2339,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="M¹c B¾c TruyÒn Tèng LÖnh",tbProp={6,1,1448,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="H¶i long ch©u",tbProp={6,1,2115,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="HuyÒn Thiªn CÈm Nang",tbProp={6,1,2355,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="Long HuyÕt Hoµn",tbProp={6,1,2117,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="Ngäc Qu¸n",tbProp={6,1,2311,1,0,0},nCount=1,nRate=1},
	{szName="Hçn Nguyªn Linh Lé",tbProp={6,1,2312,1,0,0},nCount=1,nRate=1},
	{szName="Hång bao Sum vÇy",tbProp={6,1,2104,1,0,0},nCount=1,nRate=0.1},
	{szName="Hång bao An khang",tbProp={6,1,2105,1,0,0},nCount=1,nRate=0.1},
	{szName="Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=1,nRate=41.6},
	{szName="Phi tèc hoµn lÔ bao",tbProp={6,1,2520,1,0,0},nCount=1,nRate=10,nExpiredTime=20160},
	{szName="§¹i lùc hoµn lÔ bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=10,nExpiredTime=20160},
	{szName="Ngäc Trïng LuyÖn",tbProp={6,1,30104,1,0,0},nCount=1,nRate=0.5},
	{szName="Phi phong L¨ng V©n",tbProp={0,3465},nCount=1,nRate=0.4,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong TuyÖt ThÕ",tbProp={0,3466},nCount=1,nRate=0.3,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong cÊp Ph¸ Qu©n ( dÞch chuyÓn tøc thêi )",tbProp={0,3467},nCount=1,nRate=0.2,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong Ngao tuyÕt (DÞch chuyÓn tøc thêi)",tbProp={0,3468},nCount=1,nRate=0.1,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong Ng¹o TuyÕt (X¸c suÊt hãa gi¶i s¸t th­¬ng)",tbProp={0,3469},nCount=1,nRate=0.1,nQuality = 1,nExpiredTime=20160,},
	{szName = "§iÓm Kinh NghiÖm", nExp=7000000, nRate = 25},
}

function pActivity:VngCheckWeeklyTaskCount(nTaskID, nValue, strComparison, strFailMessage)
	local nResult = dostring("return "..%VngTaskWeekly:GetWeeklyCount(nTaskID)..strComparison..nValue)
	if not nResult then
		Talk(1, "", strFailMessage)
		return nil
	end
	return 1
end

function pActivity:VngAddWeeklyTaskCount(nTaskID, nValue)
	%VngTaskWeekly:AddWeeklyCount(nTaskID, nValue)
end

function pActivity:VngGiveDaisyLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveDaisyTaskInfo) == 1 then
		Talk(1, "", "Ng­¬i tÆng ta nhiÒu hoa råi, sè hoa nµy xin h·y nhËn l¹i.")
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveDaisyTaskInfo)
	if (nTaskVal + nCount) > %nYellowDaisyMaxCount then
		Msg2Player(format("Sè l­îng v­ît qu¸ giíi h¹n, ng­¬i chØ cã thÓ tÆng <color=yellow>%d <color>hoa cóc n÷a.", %nYellowDaisyMaxCount - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:VngGiveDaisy(nCount)
	local tbAward = {szName = "§iÓm kinh nghiÖm", nExp=1000000}
	for i = 1, nCount do
		%tbVNG_BitTask_Lib:addTask(%tbGiveDaisyTaskInfo, 1)
		tbAwardTemplet:Give(tbAward, 1, {"Event_MungPBM", "NopHoaCucVang"})
		
		--phÇn th­ëng thªm khi nép ®ñ 500, 1000 hoa cóc
		local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveDaisyTaskInfo)
		if %tbGiveDaisy_AdditionalAward[nTaskVal] then
			local tbTempAward = %tbGiveDaisy_AdditionalAward[nTaskVal]
			tbAwardTemplet:Give(tbTempAward, 1, {"Event_MungPBM", format("Nop%dlanvatphamHoaCucVang", nTaskVal)})
		end
	end
end

function pActivity:VngGourdUseLimit()
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGourdUseTaskInfo) == 1 then
		Talk(1, "", "Sö dông vËt phÈm ®· ®¹t ®Õn giíi h¹n, kh«ng thÓ sö dông thªm")
		return nil
	end
	return 1
end

function pActivity:VngUseGourd()
	local tbAward = {szName = "§iÓm kinh nghiÖm", nExp=7000000}
	%tbVNG_BitTask_Lib:addTask(%tbGourdUseTaskInfo, 1)	
	tbAwardTemplet:Give(tbAward, 1, {"Event_MungPBM", "SudungvatphamBinhHoLoPhongVanNhanPhanThuong"})
	--PhÇn th­ëng item
	tbAwardTemplet:Give(%tbUseGourd_ItemAward, 1, {"Event_MungPBM", "SudungvatphamBinhHoLoPhongVanNhanPhanThuong"})
	--phÇn th­ëng khi sö dông vËt phÈm ®¹t mèc
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGourdUseTaskInfo)
		if %tbUseGourd_AdditionalAward[nTaskVal] then
			local tbTempAward = %tbUseGourd_AdditionalAward[nTaskVal]
			tbAwardTemplet:Give(tbTempAward, 1, {"Event_MungPBM", format("SuDung%dlanVatPhamBinhHoLoPhongVanPhongVan", nTaskVal)})
		end
end

function pActivity:VngUseSteelHeartWine()
	local nDailyCount = PlayerFunLib:GetTaskDailyCount(2711)	
	local tbAward = %tbUseWine_ExpAward[nDailyCount]
	if tbAward then
		tbAwardTemplet:Give(tbAward, 1, {"Event_MungPBM", "SudungvatphamPhongVanThietTamTuuNhanPhanThuong"})
	end
	tbAwardTemplet:Give(%tbUseWine_ItemAward, 1, {"Event_MungPBM", "SudungvatphamPhongVanThietTamTuuNhanPhanThuong"})	
end

function pActivity:VngCheckWeeklyFeatureMatchCount(nTaskID1, nTaskID2, nTaskID3)
	local nTongKim = %VngTaskWeekly:GetWeeklyCount(nTaskID1)
	local nVuotAi = %VngTaskWeekly:GetWeeklyCount(nTaskID2)
	local nViemDe = %VngTaskWeekly:GetWeeklyCount(nTaskID3)
	local strTittle = format("TuÇn nµy c¸c h¹ ®· hoµn thµnh:\n<color=yellow>\t\t\t%-6d<color> trËn Tèng Kim\n<color=yellow>\t\t\t%-6d<color> lÇn V­ît ¶i\n<color=yellow>\t\t\t%-6d<color> lÇn v­ît ¶i Viªm §Õ", nTongKim, nVuotAi, nViemDe)	
	Say(strTittle, 1, "§ãng/OnCancel")
end


function pActivity:InitNpc()
	local tbNpcPos = {
		[1] = {99,1620,3203,},
		[2] = {53,1619,3170,},
		[3] = {20,3546,6231,},
	}

	local tbNpc = {	
			szName = "ChiÕn T©m T«n Gi¶", 
			nLevel = 95,
			nNpcId = 665,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	end
end

function pActivity:PlayerOnLogin()
	local nDate = GetTask(%TSK_LAST_ONLINEDATA)	
	local nNowDate = tonumber(GetLocalDate("%Y%m%d"))
	local nCount = 0	
	if nDate ~= nNowDate then
		nCurrentOnLineTime = GetGameTime()		
		SetTask(%TSK_LAST_ONLINETIME,nCurrentOnLineTime)
		SetTask(%TSK_LAST_ONLINEDATA,nNowDate)		
	end
	local OrgPlayer = PlayerIndex;
	local autochat = "<color=cyan>Server cho c¸c b¹n ®am mª game <color=green>Vâ L©m TruyÒn Kú phiªn b¶n MU<color>. Chóc c¸c b¹n cã nh÷ng gi©y phót th­ gi·n vui vÎ.<pic=115><pic=115><color>";
	Msg2Player(format(autochat))
	local autochat2 = "<color=cyan>GÆp <color=red>Hç Trî T©n Thñ<color> ë th«n trÊn ®Ó ®­îc hç trî .<pic=115><pic=115><color>";
	Msg2Player(format(autochat2))
----Thong Bao NV Online
	Msg2SubWorld("<color=yellow>§¹i hiÖp<color><color=orange> "..GetName().."<color> ®· <color=green>Online <color> !.")
end

function pActivity:SuDungKimBaoRuongCap5()
	local tbItemAward = {
		{szName="MU LÖnh (tuÇn)",nCount=1,tbProp={6,1,4884,1,0,0},nRate=30},
		{szName="MU LÖnh (th¸ng)",nCount=1,tbProp={6,1,4885,1,0,0},nRate=5},
		{szName="Tói nhÉn thuÇn tÞnh",nCount=1,tbProp={6,1,4931,1,0,0},nRate=60,tbParam={-2,3}},
		{szName="Tiªn Th¶o Lé (x10)",nCount=1,tbProp={6,1,4903,1,0,0},nRate=5},
	}

	tbAwardTemplet:Give(tbItemAward, 1 , {"JXMU", "HoatDong_KimBaoRuong\tSuDungKimBaoRuong5"})
	Msg2SubWorld("<color=green>Ng­ªi ch¬i <color=red> "..GetName().." <color=green> §· sö dông kim b¶o r­¬ng cÊp 5 vµ NhËn ®­îc v« sè phÇn th­ëng <color=blue> Mu lÖnh tuÇn <color=red> Mu lÖnh th¸ng <color=pink> Tói nhÉn thuÇn tÞnh <color=purple> Tiªn Th¶o Lé x10  ")
end

function pActivity:SuDungKimBaoRuongCap6()
	local tbItemAward = {
		{szName="MU LÖnh (tuÇn)",nCount=1,tbProp={6,1,4884,1,0,0},nRate=26},
		{szName="MU LÖnh (th¸ng)",nCount=1,tbProp={6,1,4885,1,0,0},nRate=7},
		{szName="Tói nhÉn thuÇn tÞnh",nCount=1,tbProp={6,1,4931,1,0,0},nRate=60,tbParam={-2,7}},
		{szName="Tiªn Th¶o Lé (x10)",nCount=5,tbProp={6,1,4903,1,0,0},nRate=5},
		{szName="B¶o r­¬ng vò khÝ HKMP",nCount=1,tbProp={6,1,4895},nRate=1,tbParam={-2,7}},
		{szName="NhÊt Kû Cµn Kh«n Phï",nCount=1,tbProp={6,1,2126,1,0,0},nRate=1},
	}

	tbAwardTemplet:Give(tbItemAward, 1 , {"JXMU", "HoatDong_KimBaoRuong\tSuDungKimBaoRuong6"})
	Msg2SubWorld("<color=green>Ng­ªi ch¬i <color=red> "..GetName().." <color=green> §· sö dông kim b¶o r­¬ng cÊp 6 vµ NhËn ®­îc v« sè phÇn th­ëng <color=blue> Mu lÖnh tuÇn <color=red> Mu lÖnh th¸ng <color=pink> Tói nhÉn thuÇn tÞnh <color=white> Tiªn Th¶o Lé x10 <color=red> B¶o r­¬ng vò khÝ Míi nhÊt<color=orange> NhÊt kØ cµn kh«n phï  ")

	
end


local tbBitTaskKimBaoRuong7 =
{
	nTaskID = 2713,
	nStartBit = 1,
	nBitCount = 20,
	nMaxValue = 99999999999999999
}

function pActivity:SuDungKimBaoRuongCap7()
	local tbItemAward = {
		{szName="MU LÖnh (tuÇn)",nCount=1,tbProp={6,1,4884,1,0,0},nRate=26},
		{szName="MU LÖnh (th¸ng)",nCount=1,tbProp={6,1,4885,1,0,0},nRate=6},
		{szName="Tói nhÉn thuÇn tÞnh",nCount=1,tbProp={6,1,4931,1,0,0},nRate=50,tbParam={-2,7}},
		{szName="Tiªn Th¶o Lé (x10)",nCount=10,tbProp={6,1,4903,1,0,0},nRate=10},
		{szName="NhÊt Kû Cµn Kh«n Phï",nCount=1,tbProp={6,1,2126,1,0,0},nRate=5},
		{szName="Cµn Kh«n Song TuyÖt Béi",nCount=1,tbProp={6,1,2219,1,0,0},nRate=1},
		{szName="Thiªn S¬n TuyÕt Liªn (MU)",nCount=1,tbProp={6,1,4901,1,0,0},nRate=1},
		{szName="LÖnh bµi ®å tÝm (trang bÞ)",nCount=1,tbProp={6,1,4949,1,0,0},nRate=1},
	}

    tbVNG_BitTask_Lib:addTask(%tbBitTaskKimBaoRuong7, 1)
	local nCount = tbVNG_BitTask_Lib:getBitTask(%tbBitTaskKimBaoRuong7)
	%tbCountUsed7:GiveItem(GetName(), GetAccount(), nCount)
	tbAwardTemplet:Give(tbItemAward, 1 , {"JXMU", "HoatDong_KimBaoRuong\tSuDungKimBaoRuong7"})
	Msg2SubWorld("<color=green>Ng­ªi ch¬i <color=red> "..GetName().." <color=green> §· sö dông kim b¶o r­¬ng cÊp 7 vµ NhËn ®­îc v« sè phÇn th­ëng ")
	Msg2SubWorld(" Mu lÖnh tuÇn <color=red> Mu lÖnh th¸ng <color=pink> Tói nhÉn thuÇn tÞnh , Tiªn Th¶o Lé x10 <color=red> B¶o r­¬ng vò khÝ Míi nhÊt<color=orange> NhÊt kØ cµn kh«n phï <color=red> Thiªn s¬n tuyÕt liªn <color=green>LÖnh bµi ®å tÝm trang bÞ  ")
	Msg2SubWorld("  NhÊt kØ cµn kh«n phï , Thiªn s¬n tuyÕt liªn <color=green>LÖnh bµi ®å tÝm trang bÞ  ")
end



function pActivity:SuDungKimBaoRuongCap5_2()
	local tbItemAward = {
		{szName="MU LÖnh (tuÇn)",nCount=1,tbProp={6,1,4884,1,0,0},nRate=30},
		{szName="MU LÖnh (th¸ng)",nCount=1,tbProp={6,1,4885,1,0,0},nRate=5},
		{szName="Tói nhÉn thuÇn tÞnh",nCount=1,tbProp={6,1,4931,1,0,0},nRate=60,tbParam={-2,3}},
		{szName="Tiªn Th¶o Lé (x10)",nCount=1,tbProp={6,1,4903,1,0,0},nRate=5},
	}

	tbAwardTemplet:Give(tbItemAward, 1 , {"JXMU", "HoatDong_KimBaoRuong\tSuDungKimBaoRuong5-2"})
	Msg2SubWorld("<color=green>Ng­ªi ch¬i <color=red> "..GetName().." <color=green> §· sö dông kim b¶o r­¬ng cÊp 5-2 vµ NhËn ®­îc v« sè phÇn th­ëng <color=blue> Mu lÖnh tuÇn <color=red> Mu lÖnh th¸ng <color=pink> Tói nhÉn thuÇn tÞnh <color=purple> Tiªn Th¶o Lé x10  ")
	
end

function pActivity:SuDungKimBaoRuongCap6_2()
	local tbItemAward = {
		{szName="MU LÖnh (tuÇn)",nCount=1,tbProp={6,1,4884,1,0,0},nRate=26},
		{szName="MU LÖnh (th¸ng)",nCount=1,tbProp={6,1,4885,1,0,0},nRate=5},
		{szName="Tói nhÉn thuÇn tÞnh",nCount=1,tbProp={6,1,4931,1,0,0},nRate=60,tbParam={-2,7}},
		{szName="Tiªn Th¶o Lé (x10)",nCount=5,tbProp={6,1,4903,1,0,0},nRate=5},
		{szName="B¶o r­¬ng vò khÝ HKMP",nCount=1,tbProp={6,1,4895},nRate=3,tbParam={-2,7}},
		{szName="NhÊt Kû Cµn Kh«n Phï",nCount=1,tbProp={6,1,2126,1,0,0},nRate=1},
	}

	tbAwardTemplet:Give(tbItemAward, 1 , {"JXMU", "HoatDong_KimBaoRuong\tSuDungKimBaoRuong6-2"})
	Msg2SubWorld("<color=green>Ng­ªi ch¬i <color=red> "..GetName().." <color=green> §· sö dông kim b¶o r­¬ng cÊp 6-2 vµ NhËn ®­îc v« sè phÇn th­ëng <color=blue> Mu lÖnh tuÇn <color=red> Mu lÖnh th¸ng <color=pink> Tói nhÉn thuÇn tÞnh <color=white> Tiªn Th¶o Lé x10 <color=red> B¶o r­¬ng vò khÝ Míi nhÊt<color=orange> NhÊt kØ cµn kh«n phï  ")
	
end

local tbBitTaskKimBaoRuong7_2 =
{
	nTaskID = 2714,
	nStartBit = 1,
	nBitCount = 20,
	nMaxValue = 99999999999999999
}

function pActivity:SuDungKimBaoRuongCap7_2()
	local tbItemAward = {
		{szName="MU LÖnh (tuÇn)",nCount=1,tbProp={6,1,4884,1,0,0},nRate=26},
		{szName="MU LÖnh (th¸ng)",nCount=1,tbProp={6,1,4885,1,0,0},nRate=6},
		{szName="Tói nhÉn thuÇn tÞnh",nCount=1,tbProp={6,1,4931,1,0,0},nRate=50,tbParam={-2,7}},
		{szName="Tiªn Th¶o Lé (x10)",nCount=10,tbProp={6,1,4903,1,0,0},nRate=10},
		{szName="NhÊt Kû Cµn Kh«n Phï",nCount=1,tbProp={6,1,2126,1,0,0},nRate=5},
		{szName="Cµn Kh«n Song TuyÖt Béi",nCount=1,tbProp={6,1,2219,1,0,0},nRate=1},
		{szName="Thiªn S¬n TuyÕt Liªn (MU)",nCount=1,tbProp={6,1,4901,1,0,0},nRate=1},
		{szName="LÖnh bµi ®å tÝm (trang bÞ)",nCount=1,tbProp={6,1,4949,1,0,0},nRate=1},
	}

    tbVNG_BitTask_Lib:addTask(%tbBitTaskKimBaoRuong7_2, 1)
	local nCount = tbVNG_BitTask_Lib:getBitTask(%tbBitTaskKimBaoRuong7_2)
	%tbCountUsed7_2:GiveItem(GetName(), GetAccount(), nCount)
	tbAwardTemplet:Give(tbItemAward, 1 , {"JXMU", "HoatDong_KimBaoRuong\tSuDungKimBaoRuong7-2"})
	Msg2SubWorld("<color=green>Ng­ªi ch¬i <color=red> "..GetName().." <color=green> §· sö dông kim b¶o r­¬ng cÊp 7.2 vµ NhËn ®­îc v« sè phÇn th­ëng ")
	Msg2SubWorld(" Mu lÖnh tuÇn <color=red> Mu lÖnh th¸ng <color=pink> Tói nhÉn thuÇn tÞnh , Tiªn Th¶o Lé x10 <color=red> B¶o r­¬ng vò khÝ Míi nhÊt<color=orange> NhÊt kØ cµn kh«n phï <color=red> Thiªn s¬n tuyÕt liªn <color=green>LÖnh bµi ®å tÝm trang bÞ  ")
	Msg2SubWorld("  NhÊt kØ cµn kh«n phï , Thiªn s¬n tuyÕt liªn <color=green>LÖnh bµi ®å tÝm trang bÞ  ")
end

function pActivity:NpcOnDeath(nNpcIndex)
	local nTempPosIndex = GetNpcParam(nNpcIndex, 1)
	if nTempPosIndex ~= 0 then
		AddTimer(tbMuMap.tbTimeRespawn, "tbMuMap:OnTimerRespawn", nTempPosIndex) -- hoi sinh quai
	end
end

function pActivity:DropMagicItem(nNpcIndex)

	local nX, nY, nMapIndex =  GetNpcPos(nNpcIndex); -- lay vi NPC Death

	------------------------------------------------------- DROP MAGIC -------------------------------------------------------
	if mrchuboAllowDropMagicItemManual and mrchuboAllowDropMagicItemManual.isOpen == 1 then
		-- local nMapDroprateFile = GetMapDropRateFile(nMapIndex) -- dropratefile
		
		-- if 	nMapDroprateFile ~= "\\settings\\droprate\\npcdroprate80.ini"	and
		-- 	nMapDroprateFile ~= "\\settings\\droprate\\npcdroprate90.ini"	and
		-- 	nMapDroprateFile ~= "\\settings\\droprate\\npcdroprate90_pld.ini" then
		-- 	return
		-- end

		local nNpcLevel = NPCINFO_GetLevel(nNpcIndex);
		if nNpcLevel < 70 then
			return
		end
	
		local nNpcPowerType = GetNpcPowerType(nNpcIndex)
		if nNpcPowerType ~= 1 and nNpcPowerType ~= 2 then return end -- quai thuong va boss tinh anh
		
		--ti le roi do xin
		-- local nRate = (
		-- 	(nNpcPowerType == 1) and ((random(40000) <= 3) and 1 or nil) --quai thuong
		-- 	or
		-- 	((nNpcPowerType == 2) and ((random(100) <= 10) and 1 or nil)) -- boss tinh anh
		-- ) -- nRate = nil => khong roi Item Vip
		
		-- if not(nRate) then return end
		
		local nDetailType = random(0,9)
		-- ty le xuat hien vu khi, trang suc se thap hon các do khac
		nDetailType = ((nDetailType == 0 or nDetailType == 1) and ((random(100) <= 5) and nDetailType or random(5,9)) or ((nDetailType == 3 or nDetailType == 4 or nDetailType == 9) and ((random(100) <= 8) and nDetailType or random(5,8)) or nDetailType))
		
		-- magic Level: 3->8
		local im_MagicLevel = ((nDetailType == 0 or nDetailType == 1 or nDetailType == 3 or nDetailType == 4 or nDetailType == 9) and random(3,8) or 8)
		local nItemParticularType = random(_mrchuboTbDropNormalItem[(nDetailType + 1)][1][1], _mrchuboTbDropNormalItem[(nDetailType + 1)][1][2])
		--DropItemEx( nSubWorldIdx, nMpsX, nMpsY, nBelonger, nVersion, uRandSeed, nQuality, nItemGenre, nItemDetailType, nItemParticularType, nItemLevel, nItemSeries, nItemLuck, nItemMagicLevel..6 )
		
		local series = GetNpcSeries(nNpcIndex);
		local nItemIndex = DropItemEx(
			nMapIndex, nX, nY, -- nSubWorldIdx, nMpsX, nMpsY: vi tri roi do
			(PlayerIndex or -1), -- nBelonger: thuoc ve ai
			mrchuboAllowDropMagicItemManual.version,  -- version 001->004
			random(), 
			0, -- nQuality:  pham chat
			0, -- nItemGenre: do xanh
			nDetailType, -- nItemDetailType
			nItemParticularType, -- nItemParticularType
			random(7,10), -- nItemLevel: cap do trang bi
			series, -- nItemSeries: he Kim -> he Tho
			((nDetailType == 0 or nDetailType == 1) and random(30) or ((nDetailType == 3 or nDetailType == 4 or nDetailType == 9) and random(50) or random(150))), -- nItemLuck: ty le may man
			random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel),random(im_MagicLevel) -- nItemMagicLevel  (1->6)
		)
		
		item_DropMagic:WriteLogs({nItemMission = "Train", nItemIndex = nItemIndex, nDetailType = nDetailType})
		
	end
	------------------------------------------------------- DROP MAGIC -------------------------------------------------------
end

function pActivity:NhimMapNewWorld()
	local nGo = NewWorld(1108, 1610, 3198)
	if (nGo == 1) then
		Msg2Player("Xin h·y ngåi yªn, chóng ta ®i ®Õn b¶n ®å NhÝm mËp!");
		Msg2SubWorld("<color=green>Ng­êi ch¬i <color=red> "..GetName().." <color=green> §· nhê ChiÕn T©m T«n Gi¶ ®­a ®Õn b¶n ®å NhÝm MËp , c¸c §¹i HiÖp H·y C¶nh Gi¸c!! ")
	else
		Msg2Player("Di chuyÓn ®Õn b¶n ®å NhÝm mËp thÊt b¹i!");
		Msg2SubWorld("<color=green>Ng­êi ch¬i <color=red> "..GetName().." <color=green> §· nhê ChiÕn T©m T«n Gi¶ ®­a ®Õn b¶n ®å NhÝm MËp , c¸c §¹i HiÖp H·y C¶nh Gi¸c!! ")
	end
end

function pActivity:ResetEventThuong()
	SetTask(5706,0)
end

function pActivity:ResetEventDacBiet()
	SetTask(5707,0)
end

function OnCancel()
end