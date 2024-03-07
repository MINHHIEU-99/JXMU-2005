Include("\\script\\activitysys\\config\\21\\head.lua")
Include("\\script\\activitysys\\config\\21\\variables.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")

function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {53,1631,3181,},
		[2] = {99,1622,3196,},
		[3] = {20,3543,6222,},
	}
	-- local tbNpc = {
	-- 	[1] = {
	-- 		szName = "T­îng §µi", 
	-- 		nLevel = 95,
	-- 		nNpcId = 1785,
	-- 		nIsboss = 0,
	-- 		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	-- 		},
	-- 	[2] = {
	-- 		szName = "H»ng Nga", 
	-- 		nLevel = 95,
	-- 		nNpcId = 1867,
	-- 		nIsboss = 0,
	-- 		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	-- 		}
	-- }
	local tbNpc = {
			szName = "NguyÖt Nhi", 
			nLevel = 95,
			nNpcId = 1849,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
		}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	end
end	

function pActivity:SuDungBaoNguyenLieu()
	local tbAward = {
		{szName="Bét m×",tbProp={4,520,1,1,0,0},nCount = 1, nRate = 25,nExpiredTime=20230730},
		{szName="§­êng c¸t",tbProp={4,521,1,1,0,0},nCount = 1, nRate = 25,nExpiredTime=20230730},
		{szName="Trøng",tbProp={4,522,1,1,0,0},nCount = 1, nRate = 25,nExpiredTime=20230730},
		{szName="H¹nh nh©n",tbProp={4,525,1,1,0,0},nCount = 1, nRate = 25,nExpiredTime=20230730},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Bao nguyªn liÖu b¸nh trung thu")
end

function pActivity:SuDungBanhThuong()
	Msg2Player("SuDungBanhThuong")
end

function pActivity:SuDungBanhNhanTrung()
	local nExp = 3000000
	AddOwnExp(nExp)
	local tbAward = {
		{szName="Tiªn Th¶o Lé x3",tbProp={6,1,4887,1,0,0},nRate=5,nCount=1},
		{szName="Tiªn Th¶o Lé x4",tbProp={6,1,4887,1,0,0},nRate=4,nCount=1},
		{szName="quÕ hoa töu",tbProp={6,1,125,1,0,0},nRate=5,nCount=1},
		{szName="thiªn s¬n b¶o lé",tbProp={6,1,72,1,0,0},nRate=5,nCount=1},
		{szName="Bao håi thiªn t¸i t¹o lÔ bao",tbProp={6,1,4932,1,0,0},nRate=5,nCount=1},
		{szName="lÔ bao tèng kim",tbProp={6,1,4940,1,0,0},nRate=5,nCount=1},
		{szName="lam thñy tinh",tbProp={4,238,1,1,0,0},nRate=5,nCount=1},
		{szName="lôc thñy tinh",tbProp={4,240,1,1,0,0},nRate=5,nCount=1},
		{szName="tö thñy tinh",tbProp={4,239,1,1,0,0},nRate=5,nCount=1},
		{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=5,nCount=1},
		{szName="Kim b¶o r­¬ng cÊp 1",tbProp={6,1,4908,1,0,0},nRate=5,nCount=10},
		{szName="S¸t thñ truy n· lÖnh",tbProp={6,1,4897,1,0,0},nRate=5,nCount=1},
		{szName="S¸t Thñ Gi¶n lÔ hép",tbProp={6,1,2339,1,0,0},nRate=5,nCount=1},
		{szName="Long HuyÕt Hoµn",tbProp={6,1,2117,1,0,0},nRate=5,nCount=1},
		{szName="§iÓm kinh nghiÖm",nExp_tl=100000000,nRate=3,nCount=1},
		{szName="Bao CÈm nang thay ®æi trêi ®Êt",tbProp={6,1,4933,1,0,0},nRate=3,nCount=1},
		{szName="Nga Mi  PhËt Quang Ch­ëng MËt TÞch",tbProp={6,1,2117,1,0,0},nRate=3,nCount=1},
		{szName="Kim b¶o r­¬ng cÊp 2",tbProp={6,1,4909,1,0,0},nRate=3,nCount=10},
		{szName="Kim b¶o r­¬ng cÊp 3",tbProp={6,1,4910,1,0,0},nRate=3,nCount=5},
		{szName="Tói Thæ ®Þa phï",tbProp={6,1,4918,1,0,0},tbParam={0,3},nRate=3,nCount=1},
		{szName="hçn nguyªn linh lé",tbProp={6,1,2312,1,0,0},nRate=3,nCount=1},
		{szName="Tói ThÇn Hµnh Phï",tbProp={6,1,4917,1,0,0},nRate=2.9,nCount=1},
		{szName="thËp toµn ®¹i bæ thÇn ®an",tbProp={6,1,1399,1,0,0},nRate=2,nCount=1},
		{szName="ngäc tiÒm n¨ng ( 1 viªn)",tbProp={6,1,4921,1,0,0},nRate=0.5,nCount=1,nExpiredTime=20230730},
		{szName="tÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nRate=0.5,nCount=1},
		{szName="hång ¶nh b¶o r­¬ng",tbProp={6,1,4889,1,0,0},nRate=0.5,nCount=1},
		{szName="®¹i thµnh bÝ kÝp 9x",tbProp={6,1,2424,1,0,0},nRate=0.5,nCount=1},
		{szName="M· Bµi-Siªu Quang (1 ngµy)",tbProp={6,1,4943,1,0,0},nRate=0.5,nCount=1},
		{szName="LÔ Bao MÆt N¹ 1 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,1},nRate=0.5,nCount=1},
		{szName="LÔ Bao MÆt N¹ 1 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,1},nRate=0.5,nCount=1},
		{szName="Tö MÉu LÖnh",tbProp={6,1,1427,1,0,0},nRate=0.35,nCount=1},
		{szName="NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,0,0},nRate=0.3,nCount=1,nExpiredTime=20230730},
		{szName="Tiªn Th¶o Lé x10",tbProp={6,1,4903,1,0,0},nRate=0.1,nCount=1},
		{szName="®¹i thµnh bÝ kÝp 12x",tbProp={6,1,2425,1,0,0},nRate=0.06,nCount=1},
		{szName="MU LÖnh (tuÇn)",tbProp={6,1,4884,1,0,0},nRate=0.05,nCount=1},
		{szName="bÝ quyÕt kÜ n¨ng cÊp 120",tbProp={6,1,1125,1,0,0},nRate=0.05,nCount=1},
		{szName="2 viªn ngäc tiÒm n¨ng ",tbProp={6,1,4921,1,0,0},nRate=0.05,nCount=2,nExpiredTime=20230730},
		{szName="3 viªn ngäc tiÒm n¨ng ",tbProp={6,1,4921,1,0,0},nRate=0.05,nCount=3,nExpiredTime=20230730},
		{szName="4 viªn ngäc tiÒm n¨ng ",tbProp={6,1,4921,1,0,0},nRate=0.05,nCount=4,nExpiredTime=20230730},
		{szName="M· Bµi-Siªu Quang (3 ngµy)",tbProp={6,1,4944,1,0,0},nRate=0.05,nCount=1},
		{szName="LÔ Bao MÆt N¹ 3 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,3},nRate=0.05,nCount=1},
		{szName="LÔ Bao MÆt N¹ 3 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,3},nRate=0.05,nCount=1},
		{szName="[§Þnh thêi] ThÕ Tóc Ng©n Giíi ",tbProp={0,379},nQuality=1,nRate=0.005,nCount=1},
		{szName="[§Þnh thêi] ThÕ Tóc Kim Giíi",tbProp={0,378},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T×nh C©n Quèc Nghª Th­êng",tbProp={0,190},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T×nh Thôc N÷ H¹ng Liªn",tbProp={0,191},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T×nh  Phông Nghi Giíi ChØ",tbProp={0,192},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T×nh  TuÖ T©m Ngäc Béi",tbProp={0,193},nQuality=1,nRate=0.005,nCount=1},
		{szName="HiÖp Cèt ThiÕt HuyÕt Sam",tbProp={0,186},nQuality=1,nRate=0.005,nCount=1},
		{szName="HiÖp Cèt §a T×nh Hoµn",tbProp={0,187},nQuality=1,nRate=0.005,nCount=1},
		{szName="HiÖp Cèt §an T©m Giíi",tbProp={0,188},nQuality=1,nRate=0.005,nCount=1},
		{szName="HiÖp Cèt T×nh ý KÕt",tbProp={0,189},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,164},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang Cóc hoa Th¹ch chØ hoµn",tbProp={0,165},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang §iÒn Hoµng th¹ch ngäc béi",tbProp={0,166},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,167},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc Thanh sa Tr­êng sam",tbProp={0,159},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc ¤ Sa Ph¸t Qu¸n",tbProp={0,160},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",tbProp={0,161},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc Tö §»ng Hé UyÓn",tbProp={0,162},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc Ng©n Tµm Yªu §¸i",tbProp={0,163},nQuality=1,nRate=0.005,nCount=1},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"B¸nh Trung Thu Trøng")
end

function pActivity:SuDungBanhThapCam()
	local nExp = 10000000
	AddOwnExp(nExp)
	local tbAward = {
		{szName="Tiªn Th¶o Lé x3",tbProp={6,1,4887,1,0,0},nRate=4,nCount=1},
		{szName="Tiªn Th¶o Lé x4",tbProp={6,1,4888,1,0,0},nRate=4,nCount=1},
		{szName="quÕ hoa töu",tbProp={6,1,125,1,0,0},nRate=4,nCount=1},
		{szName="thiªn s¬n b¶o lé",tbProp={6,1,72,1,0,0},nRate=4,nCount=1},
		{szName="Bao håi thiªn t¸i t¹o lÔ bao",tbProp={6,1,4932,1,0,0},nRate=4,nCount=1},
		{szName="lÔ bao tèng kim",tbProp={6,1,4940,1,0,0},nRate=4,nCount=1},
		{szName="lam thñy tinh",tbProp={4,238,1,1,0,0},nRate=4,nCount=1},
		{szName="lôc thñy tinh",tbProp={4,240,1,1,0,0},nRate=4,nCount=1},
		{szName="tö thñy tinh",tbProp={4,239,1,1,0,0},nRate=4,nCount=1},
		{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=4,nCount=1},
		{szName="Kim b¶o r­¬ng cÊp 1",tbProp={6,1,4908,1,0,0},nRate=4,nCount=10},
		{szName="S¸t thñ truy n· lÖnh",tbProp={6,1,4897,1,0,0},nRate=4,nCount=1},
		{szName="S¸t Thñ Gi¶n lÔ hép",tbProp={6,1,2339,1,0,0},nRate=4,nCount=1},
		{szName="Long HuyÕt Hoµn",tbProp={6,1,2117,1,0,0},nRate=4,nCount=1},
		{szName="Bao CÈm nang thay ®æi trêi ®Êt",tbProp={6,1,4933,1,0,0},nRate=4,nCount=1},
		{szName="Nga Mi  PhËt Quang Ch­ëng MËt TÞch",tbProp={6,1,2117,1,0,0},nRate=4,nCount=1},
		{szName="Kim b¶o r­¬ng cÊp 2",tbProp={6,1,4909,1,0,0},nRate=4,nCount=10},
		{szName="Kim b¶o r­¬ng cÊp 3",tbProp={6,1,4910,1,0,0},nRate=4,nCount=5},
		{szName="§iÓm kinh nghiÖm",nExp_tl=100000000,nRate=3,nCount=1},
		{szName="Tói Thæ ®Þa phï",tbProp={6,1,4918,1,0,0},tbParam={0,3},nRate=3,nCount=1},
		{szName="Tói ThÇn Hµnh Phï",tbProp={6,1,4917,1,0,0},nRate=3,nCount=1},
		{szName="hçn nguyªn linh lé",tbProp={6,1,2312,1,0,0},nRate=3,nCount=1},
		{szName="Tö MÉu LÖnh",tbProp={6,1,1427,1,0,0},nRate=3,nCount=1},
		{szName="NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,0,0},nRate=3,nCount=1,nExpiredTime=20230730},
		{szName="ngäc tiÒm n¨ng ( 1 viªn)",tbProp={6,1,4921,1,0,0},nRate=3,nCount=1,nExpiredTime=20230730},
		{szName="thËp toµn ®¹i bæ thÇn ®an",tbProp={6,1,1399,1,0,0},nRate=2.1,nCount=1},
		{szName="tÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nRate=0.5,nCount=1},
		{szName="hång ¶nh b¶o r­¬ng",tbProp={6,1,4889,1,0,0},nRate=0.5,nCount=1},
		{szName="®¹i thµnh bÝ kÝp 9x",tbProp={6,1,2424,1,0,0},nRate=0.5,nCount=1},
		{szName="M· Bµi-Siªu Quang (1 ngµy)",tbProp={6,1,4943,1,0,0},nRate=0.5,nCount=1},
		{szName="LÔ Bao MÆt N¹ 1 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,1},nRate=0.5,nCount=1},
		{szName="LÔ Bao MÆt N¹ 1 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,1},nRate=0.5,nCount=1},
		-- {szName="mu lÖnh ngµy",nRate=0.3,nCount=1},
		{szName="Tiªn Th¶o Lé x10",tbProp={6,1,4903,1,0,0},nRate=0.1,nCount=1},
		{szName="MU LÖnh (tuÇn)",tbProp={6,1,4884,1,0,0},nRate=0.1,nCount=1},
		{szName="®¹i thµnh bÝ kÝp 12x",tbProp={6,1,2425,1,0,0},nRate=0.1,nCount=1},
		{szName="bÝ quyÕt kÜ n¨ng cÊp 120",tbProp={6,1,1125,1,0,0},nRate=0.1,nCount=1},
		{szName="2 viªn ngäc tiÒm n¨ng ",tbProp={6,1,4921,1,0,0},nRate=0.1,nCount=2,nExpiredTime=20230730},
		{szName="3 viªn ngäc tiÒm n¨ng ",tbProp={6,1,4921,1,0,0},nRate=0.1,nCount=3,nExpiredTime=20230730},
		{szName="4 viªn ngäc tiÒm n¨ng ",tbProp={6,1,4921,1,0,0},nRate=0.1,nCount=4,nExpiredTime=20230730},
		{szName="M· Bµi-Siªu Quang (3 ngµy)",tbProp={6,1,4944,1,0,0},nRate=0.1,nCount=1},
		{szName="LÔ Bao MÆt N¹ 3 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,3},nRate=0.1,nCount=1},
		{szName="LÔ Bao MÆt N¹ 3 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,3},nRate=0.1,nCount=1},
		{szName="MU LÖnh (th¸ng)",tbProp={6,1,4885,1,0,0},nRate=0.1,nCount=1},
		{szName="M· Bµi-Siªu Quang (7 ngµy)",tbProp={6,1,4945,1,0,0},nRate=0.1,nCount=1},
		{szName="LÔ Bao MÆt N¹ 7 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,7},nRate=0.1,nCount=1},
		{szName="LÔ Bao MÆt N¹ 7 ngµy",tbProp={6,1,2428,1,0,0},tbParam={0,7},nRate=0.1,nCount=1},
		{szName="thÇn bÝ kho¸ng th¹ch",tbProp={6,1,398,1,0,0},nRate=0.055,nCount=1},
		{szName="kim tª",tbProp={4,979,1,1,0,0},nRate=0.05,nCount=1},
		{szName="Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,0,0},nRate=0.005,nCount=1,nExpiredTime=20230730},
		{szName="[§Þnh thêi] ThÕ Tóc Ng©n Giíi ",tbProp={0,379},nQuality=1,nRate=0.005,nCount=1},
		{szName="[§Þnh thêi] ThÕ Tóc Kim Giíi",tbProp={0,378},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T×nh C©n Quèc Nghª Th­êng",tbProp={0,190},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T×nh Thôc N÷ H¹ng Liªn",tbProp={0,191},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T×nh  Phông Nghi Giíi ChØ",tbProp={0,192},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T×nh  TuÖ T©m Ngäc Béi",tbProp={0,193},nQuality=1,nRate=0.005,nCount=1},
		{szName="HiÖp Cèt ThiÕt HuyÕt Sam",tbProp={0,186},nQuality=1,nRate=0.005,nCount=1},
		{szName="HiÖp Cèt §a T×nh Hoµn",tbProp={0,187},nQuality=1,nRate=0.005,nCount=1},
		{szName="HiÖp Cèt §an T©m Giíi",tbProp={0,188},nQuality=1,nRate=0.005,nCount=1},
		{szName="HiÖp Cèt T×nh ý KÕt",tbProp={0,189},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,164},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang Cóc hoa Th¹ch chØ hoµn",tbProp={0,165},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang §iÒn Hoµng th¹ch ngäc béi",tbProp={0,166},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,167},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc Thanh sa Tr­êng sam",tbProp={0,159},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc ¤ Sa Ph¸t Qu¸n",tbProp={0,160},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",tbProp={0,161},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc Tö §»ng Hé UyÓn",tbProp={0,162},nQuality=1,nRate=0.005,nCount=1},
		{szName="§Þnh Quèc Ng©n Tµm Yªu §¸i",tbProp={0,163},nQuality=1,nRate=0.005,nCount=1},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"B¸nh Trung Thu ThËp CÈm")
end


function pActivity:ResetBanhTrung()
	local nSolanReset = self:GetTask(%nTaskReset_BanhTrung)
	local nXuRequire = 500
	if nSolanReset >= 6 then
		Msg2Player("B¹n ®· sö dông max Event lo¹i nµy.")
	else
		if (CalcEquiproomItemCount(4, 417, 1, 1) >= nXuRequire) then
			nSolanReset = nSolanReset+1
			ConsumeEquiproomItem(nXuRequire, 4, 417, 1, 1)
			self:SetTask(%nTaskReset_BanhTrung, nSolanReset)
			local tbAward = {}
			if (nSolanReset <= 5) then
				tbAward = {
					{szName="LÖnh bµi ®å tÝm (trang bÞ)",tbProp={6,1,4949,1,0,0},nCount=1},
				}
				self:SetTask(%nTask_BanhTrung, 0)
			else
				tbAward = {
					{szName="LÖnh bµi ®å tÝm (vò khÝ)",tbProp={6,1,4947,1,0,0},nCount=1},
				}
			end
			tbAwardTemplet:GiveAwardByList(tbAward,"ResetBanhTrung-"..nSolanReset)
		
		else
			Msg2Player("Kh«ng ®ñ tiÒn ®ång ®Ó Reset.")
		end
	end
end

function pActivity:ResetBanhThapCam()
	local nSolanReset = self:GetTask(%nTaskReset_BanhThapCam)
	nSolanReset = nSolanReset+1
	local nTienVanRequire = 100000000
	if (GetCash() >= nTienVanRequire) then
        Pay(nTienVanRequire)
		self:SetTask(%nTask_BanhThapCam, 0)
		self:SetTask(%nTaskReset_BanhThapCam, nSolanReset)
		local tbAward = {}
		if (nSolanReset <= 5 ) then
			tbAward = {
				{szName="LÖnh bµi ®å tÝm (trang bÞ)",tbProp={6,1,4949,1,0,0},nCount=1},
			}
		elseif (nSolanReset <= 10 ) then
			tbAward = {
				{szName="LÖnh bµi ®å tÝm (vò khÝ)",tbProp={6,1,4947,1,0,0},nCount=1},
			}
		elseif (nSolanReset <= 14 ) then
			tbAward = {
				{szName="LÖnh bµi ®å tÝm (trang søc)",tbProp={6,1,4948,1,0,0},nCount=1},
			}
		end
		tbAwardTemplet:GiveAwardByList(tbAward,"ResetBanhThapCam-"..nSolanReset)
    else
        Talk(1,"","Ng­¬i kh«ng mang ®ñ tiÒn")
    end
end