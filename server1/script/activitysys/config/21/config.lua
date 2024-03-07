

Include("\\script\\global\\mrt\\configserver\\configall.lua")
Include("\\script\\activitysys\\config\\21\\variables.lua")

tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Loading NPC",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
		-- {"tb2010ZhongQiu:AddTaskNpc",	{nil} },
		{"tb2010ZhongQiu:AddDecorationNpc",	{nil} },
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "Цnh qu竔 r韙 t骾 nguy猲 li謚",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		-- {"NpcFunLib:CheckNormalMonster",	{"90"} },
		-- {"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2456,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"2"} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "ClickNpc",
	szName = "H籲g nga h頿 th祅h",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"Nguy謙 Nhi"},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H頿 th祅h b竛h Trung Thu",4} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "CreateDialog",
	szName = "H頿 th祅h ph﹏ h筺g",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"<npc>C竎 h� mu鑞 h頿 th祅h lo筰 b竛h n祇?"},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		-- {"AddDialogOpt",	{"B竛h Trung Thu thng",5} },
		{"AddDialogOpt",	{"B竛h Trung Thu Nh﹏ Tr鴑g",6} },
		{"AddDialogOpt",	{"B竛h Trung Thu Th藀 C萴",7} },
		{"AddDialogOpt",	{"Reset s� l莕 s� d鬾g b竛h",12} },
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h B竛h trung thu thng",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"B竛h trung thu thng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B閠 m�",{tbProp={4,520,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Л阯g c竧",{tbProp={4,521,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tr鴑g",{tbProp={4,522,1,1,0,0},},1} },
		{"AddOneMaterial",	{"H筺h nh﹏",{tbProp={4,525,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=100000},1} },
		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Th阨 h筺 i  k誸 th骳"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4951,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho箃 ng trung thu] [B竛h u xanh h秓 h筺g]"} },
	},
}
tbConfig[6] = --一个细节
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h B竛h Trung Thu Nh﹏ Tr鴑g",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"B竛h Trung Thu Nh﹏ Tr鴑g",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B閠 m�",{tbProp={4,520,1,1,0,0},},6} },
		{"AddOneMaterial",	{"Л阯g c竧",{tbProp={4,521,1,1,0,0},},6} },
		{"AddOneMaterial",	{"Tr鴑g",{tbProp={4,522,1,1,0,0},},2} },
		{"AddOneMaterial",	{"H筺h nh﹏",{tbProp={4,525,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=100000},1} },
		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Th阨 h筺 i  k誸 th骳"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4952,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho箃 ng trung thu] [B竛h h箃 sen h秓 h筺g]"} },
	},
}
tbConfig[7] = --一个细节
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "H頿 th祅h B竛h Trung Thu Th藀 C萴",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"B竛h Trung Thu Th藀 C萴",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B閠 m�",{tbProp={4,520,1,1,0,0},},4} },
		{"AddOneMaterial",	{"Л阯g c竧",{tbProp={4,521,1,1,0,0},},4} },
		{"AddOneMaterial",	{"Tr鴑g",{tbProp={4,522,1,1,0,0},},2} },
		{"AddOneMaterial",	{"H筺h nh﹏",{tbProp={4,525,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Ng﹏ lng",{nJxb=50000},1} },
		{"AddOneMaterial",	{"Ti襫 уng",{tbProp={4,417,1,1,0,0,0},},10} },
		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Th阨 h筺 i  k誸 th骳"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4953,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho箃 ng trung thu] [B竛h h箃 sen h秓 h筺g]"} },
	},
}
tbConfig[8] = --一个细节
{
	nId = 8,
	szMessageType = "ItemScript",
	szName = "S� d鬾g bao nguy猲 li謚 b竛h trung thu",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {{tbProp={6,1,2456,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{2,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:SuDungBaoNguyenLieu", {nil}},		
	},
}
tbConfig[9] = --一个细节
{
	nId = 9,
	szMessageType = "nil",
	szName = "S� d鬾g B竛h Trung Thu thng",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {{tbProp={6,1,4951,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhThuong,nMax_BanhThuong,"Trong th阨 gian ho箃 ng, ch� 頲 s� d鬾g "..nMax_BanhThuong.." c竔","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:SuDungBanhThuong", {nil}},	
		{"ThisActivity:AddTask",	{nTask_BanhThuong,1} },	
	},

}
tbConfig[10] = --一个细节
{
	nId = 10,
	szMessageType = "ItemScript",
	szName = "S� d鬾g B竛h Trung Thu Nh﹏ Tr鴑g",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {{tbProp={6,1,4952,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhTrung,nMax_BanhTrung,"Trong th阨 gian ho箃 ng, ch� 頲 s� d鬾g "..nMax_BanhTrung.." c竔","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:SuDungBanhNhanTrung", {nil}},	
		{"ThisActivity:AddTask",	{nTask_BanhTrung,1} },		
	},
}
tbConfig[11] = --一个细节
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "S� d鬾g B竛h Trung Thu Th藀 C萴",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {{tbProp={6,1,4953,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhThapCam,nMax_BanhThapCam,"Trong th阨 gian ho箃 ng, ch� 頲 s� d鬾g "..nMax_BanhThapCam.." c竔","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:SuDungBanhThapCam", {nil}},		
		{"ThisActivity:AddTask",	{nTask_BanhThapCam,1} },	
	},
}
tbConfig[12] = --一个细节
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "Reset s� l莕 d飊g b竛h",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"<npc>C竎 h� mu鑞 reset lo筰 b竛h n祇?"},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		-- {"AddDialogOpt",	{"B竛h Trung Thu thng",5} },
		{"AddDialogOpt",	{"Reset B竛h Trung Thu Nh﹏ Tr鴑g (500x)",13} },
		{"AddDialogOpt",	{"Reset B竛h Trung Thu Th藀 C萴 (10Kv)",14} },
	},
}
tbConfig[13] = --一个细节
{
	nId = 13,
	szMessageType = "",
	szName = "Reset B竛h Trung Thu Nh﹏ Tr鴑g",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhTrung,nMax_BanhTrung,"S� d鬾g "..nMax_BanhTrung.." c竔 m韎 頲 Reset","=="} },
		-- {"AddOneMaterial",	{"Ti襫 уng",{tbProp={4,417,1,1,0,0,0},},500} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:ResetBanhTrung", {nil}},	
	},
}
tbConfig[14] = --一个细节
{
	nId = 14,
	szMessageType = "",
	szName = "Reset B竛h Trung Thu Th藀 C萴",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhThapCam,nMax_BanhThapCam,"S� d鬾g "..nMax_BanhThapCam.." c竔 m韎 頲 Reset","=="} },
		-- {"AddOneMaterial",	{"Ng﹏ lng",{nJxb=100000000},1} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:ResetBanhThapCam", {nil}},	
	},
}
-- tbConfig[1] = --一个细节
-- {
-- 	nId = 1,
-- 	szMessageType = "NpcOnDeath",
-- 	szName = "Цnh qu竔 r韙 t骾 nguy猲 li謚",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {nil},
-- 	tbCondition = 
-- 	{
-- 		-- {"NpcFunLib:CheckNormalMonster",	{"90"} },
-- 		-- {"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
-- 		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2456,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"2"} },
-- 	},
-- }
-- tbConfig[2] = --一个细节
-- {
-- 	nId = 2,
-- 	szMessageType = "NpcOnDeath",
-- 	szName = "Цnh qu竔 r韙 b竛h u xanh",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {nil},
-- 	tbCondition = 
-- 	{
-- 		{"NpcFunLib:CheckNormalMonster",	{"90"} },
-- 		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2497,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"5"} },
-- 	},
-- }
-- tbConfig[3] = --一个细节
-- {
-- 	nId = 3,
-- 	szMessageType = "NpcOnDeath",
-- 	szName = "Цnh qu竔 r韙 b竛h khoai m玭",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {nil},
-- 	tbCondition = 
-- 	{
-- 		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2498,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"1"} },
-- 	},
-- }
-- tbConfig[4] = --一个细节
-- {
-- 	nId = 4,
-- 	szMessageType = "FinishSongJin",
-- 	szName = "T鑞g kim cao c蕄 k誸 th骳 t苙g b竛h d蝟 (th緉g)",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {1,"3"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2499,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},40,"[Ho箃 ng trung thu] [T鑞g Kim s秐 sinh b竛h d蝟]"} },
-- 	},
-- }
-- tbConfig[5] = --一个细节
-- {
-- 	nId = 5,
-- 	szMessageType = "FinishSongJin",
-- 	szName = "T鑞g kim cao c蕄 k誸 th骳 t苙g b竛h d蝟 (h遖)",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {0,"3"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2499,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},40,"[Ho箃 ng trung thu] [T鑞g Kim s秐 sinh b竛h d蝟]"} },
-- 	},
-- }
-- tbConfig[6] = --一个细节
-- {
-- 	nId = 6,
-- 	szMessageType = "FinishSongJin",
-- 	szName = "T鑞g kim cao c蕄 k誸 th骳 t苙g b竛h d蝟 (thua)",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {-1,"3"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2499,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},40,"[Ho箃 ng trung thu] [T鑞g Kim s秐 sinh b竛h d蝟]"} },
-- 	},
-- }
-- tbConfig[7] = --一个细节
-- {
-- 	nId = 7,
-- 	szMessageType = "ClickNpc",
-- 	szName = "H祅g rong b竛 b竛h nh﹏ th辴",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"H祅g rong"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"AddDialogOpt",	{"Mua b竛h nh﹏ th辴",8} },
-- 	},
-- }
-- tbConfig[8] = --一个细节
-- {
-- 	nId = 8,
-- 	szMessageType = "CreateCompose",
-- 	szName = "Mua b竛h nh﹏ th辴",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"B竛h nh﹏ th辴",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"30000 lng",{nJxb=30000,},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Th阨 h筺 i  k誸 th骳"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2500,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[ho箃 ng trung thu] [h祅g rong mua b竛h nh﹏ th辴]"} },
-- 	},
-- }
-- tbConfig[9] = --一个细节
-- {
-- 	nId = 9,
-- 	szMessageType = "ClickNpc",
-- 	szName = "H籲g nga h頿 th祅h",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"H籲g Nga"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"AddDialogOpt",	{"H頿 th祅h l錸g n",10} },
-- 	},
-- }
-- tbConfig[10] = --一个细节
-- {
-- 	nId = 10,
-- 	szMessageType = "CreateDialog",
-- 	szName = "H頿 th祅h ph﹏ h筺g",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"<npc>C竎 h� mu鑞 h頿 th祅h lo筰 l錸g n n祇?"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"AddDialogOpt",	{"L錸g n bm bm",11} },
-- 		{"AddDialogOpt",	{"n ng玦 sao",12} },
-- 		{"AddDialogOpt",	{"L錸g n 鑞g",13} },
-- 		{"AddDialogOpt",	{"L錸g n tr遪",14} },
-- 	},
-- }
-- tbConfig[11] = --一个细节
-- {
-- 	nId = 11,
-- 	szMessageType = "CreateCompose",
-- 	szName = "H頿 th祅h l錸g n bm bm",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"L錸g n bm bm",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"B竛h H箃 Sen",{tbProp={6,1,2496,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h u Xanh",{tbProp={6,1,2497,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h Khoai M玭",{tbProp={6,1,2498,1,0,0},},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Th阨 h筺 i  k誸 th骳"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2502,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
-- 	},
-- }
-- tbConfig[12] = --一个细节
-- {
-- 	nId = 12,
-- 	szMessageType = "CreateCompose",
-- 	szName = "H頿 th祅h l錸g n ng玦 sao",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"n ng玦 sao",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"B竛h H箃 Sen",{tbProp={6,1,2496,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h u Xanh",{tbProp={6,1,2497,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h Khoai M玭",{tbProp={6,1,2498,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h d蝟",{tbProp={6,1,2499,1,0,0},},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Th阨 h筺 i  k誸 th骳"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2503,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
-- 	},
-- }
-- tbConfig[13] = --一个细节
-- {
-- 	nId = 13,
-- 	szMessageType = "CreateCompose",
-- 	szName = "H頿 th祅h l錸g n 鑞g",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"L錸g n 鑞g",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"B竛h H箃 Sen",{tbProp={6,1,2496,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h u Xanh",{tbProp={6,1,2497,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h Khoai M玭",{tbProp={6,1,2498,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h nh﹏ th辴",{tbProp={6,1,2500,1,0,0},},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Th阨 h筺 i  k誸 th骳"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2504,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
-- 	},
-- }
-- tbConfig[14] = --一个细节
-- {
-- 	nId = 14,
-- 	szMessageType = "CreateCompose",
-- 	szName = "H頿 th祅h l錸g n tr遪",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"L錸g n tr遪",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"B竛h H箃 Sen",{tbProp={6,1,2496,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h u Xanh",{tbProp={6,1,2497,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h Khoai M玭",{tbProp={6,1,2498,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B竛h th藀 c萴",{tbProp={6,1,2501,1,0,0},},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Th阨 h筺 i  k誸 th骳"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2505,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho箃 ng trung thu] [H頿 th祅h l錸g n]"} },
-- 		{"PlayerFunLib:AddTask",	{nTask_Activi_Point,1} },
-- 		{"PlayerFunLib:SimpleMsg",	{"Msg2Player","Gia t╪g 1 甶觤 t輈h l騳 s� ki謓"} },
-- 	},
-- }
-- tbConfig[15] = --一个细节
-- {
-- 	nId = 15,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g l錸g n bm bm",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2502,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h穣 s� d鬾g t筰 th祅h th� ho芻 t﹏ th� th玭!"} },
-- 		{"PlayerFunLib:IsFightState",	{1,"Xin h穣 s� d鬾g t筰 khu v鵦 chi課 u!"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"ThisActivity:CheckTask",	{nTask_HuDie,1000,"Чt n kinh nghi謒 cao nh蕋, kh玭g th� nh薾 th猰 kinh nghi謒!","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:AwardExp",	{1000000, nTask_HuDie, 1000000000, "S� d鬾g l錸g n bm bm", "[Ho箃 ng trung thu][S� d鬾g l錸g n bm bm]"} },
-- 	},
-- }
-- tbConfig[16] = --一个细节
-- {
-- 	nId = 16,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g l錸g n ng玦 sao",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2503,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h穣 s� d鬾g t筰 th祅h th� ho芻 t﹏ th� th玭!"} },
-- 		{"PlayerFunLib:IsFightState",	{1,"Xin h穣 s� d鬾g t筰 khu v鵦 chi課 u!"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:AddNpc",	{"Чi L鵦 Th� V�"} },
-- 	},
-- }
-- tbConfig[17] = --一个细节
-- {
-- 	nId = 17,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g l錸g n 鑞g",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2504,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h穣 s� d鬾g t筰 th祅h th� ho芻 t﹏ th� th玭!"} },
-- 		{"PlayerFunLib:IsFightState",	{1,"Xin h穣 s� d鬾g t筰 khu v鵦 chi課 u!"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:AddNpc",	{"Thng Th緉g Th� V�"} },
-- 	},
-- }
-- tbConfig[18] = --一个细节
-- {
-- 	nId = 18,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g L錸g n tr遪",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2505,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h穣 s� d鬾g t筰 th祅h th� ho芻 t﹏ th� th玭!"} },
-- 		{"PlayerFunLib:IsFightState",	{1,"Xin h穣 s� d鬾g t筰 khu v鵦 chi課 u!"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:AddNpc",	{"Kim Cng Th� V�"} },
-- 	},
-- }
-- tbConfig[19] = --一个细节
-- {
-- 	nId = 19,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g B竛h Trung Thu Th祅h Й",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2507,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_ChenDu,20,"Trong th阨 gian ho箃 ng, m鏸 lo筰 b竛h ch� 頲 s� d鬾g 20 c竔","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho箃 ng trung thu][S� d鬾g B竛h Trung Thu Th祅h Й]"} },
-- 		{"ThisActivity:AddTask",	{nTask_ChenDu,1} },
-- 	},
-- }
-- tbConfig[20] = --一个细节
-- {
-- 	nId = 20,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g B竛h Trung Thu Чi L�",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2508,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_DaLi,20,"Trong th阨 gian ho箃 ng, m鏸 lo筰 b竛h ch� 頲 s� d鬾g 20 c竔","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho箃 ng trung thu][S� d鬾g B竛h Trung Thu Чi L齗"} },
-- 		{"ThisActivity:AddTask",	{nTask_DaLi,1} },
-- 	},
-- }
-- tbConfig[21] = --一个细节
-- {
-- 	nId = 21,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g B竛h Trung Thu Phng Tng",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2509,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_FengXiang,20,"Trong th阨 gian ho箃 ng, m鏸 lo筰 b竛h ch� 頲 s� d鬾g 20 c竔","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho箃 ng trung thu][S� d鬾g B竛h Trung Thu Phng Tng]"} },
-- 		{"ThisActivity:AddTask",	{nTask_FengXiang,1} },
-- 	},
-- }
-- tbConfig[22] = --一个细节
-- {
-- 	nId = 22,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g B竛h Trung Thu Tng Dng",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2510,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_XiangYang,20,"Trong th阨 gian ho箃 ng, m鏸 lo筰 b竛h ch� 頲 s� d鬾g 20 c竔","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho箃 ng trung thu][S� d鬾g B竛h Trung Thu Tng Dng]"} },
-- 		{"ThisActivity:AddTask",	{nTask_XiangYang,1} },
-- 	},
-- }
-- tbConfig[23] = --一个细节
-- {
-- 	nId = 23,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g B竛h Trung Thu Bi謓 Kinh",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2511,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_BianJin,20,"Trong th阨 gian ho箃 ng, m鏸 lo筰 b竛h ch� 頲 s� d鬾g 20 c竔","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho箃 ng trung thu][S� d鬾g B竛h Trung Thu Bi謓 Kinh]"} },
-- 		{"ThisActivity:AddTask",	{nTask_BianJin,1} },
-- 	},
-- }
-- tbConfig[24] = --一个细节
-- {
-- 	nId = 24,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g B竛h Trung Thu L﹎ An",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2512,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_LinAn,20,"Trong th阨 gian ho箃 ng, m鏸 lo筰 b竛h ch� 頲 s� d鬾g 20 c竔","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho箃 ng trung thu][S� d鬾g B竛h Trung Thu L﹎ An]"} },
-- 		{"ThisActivity:AddTask",	{nTask_LinAn,1} },
-- 	},
-- }
-- tbConfig[25] = --一个细节
-- {
-- 	nId = 25,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d鬾g B竛h Trung Thu Dng Ch﹗",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2513,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_YangZhou,20,"Trong th阨 gian ho箃 ng, m鏸 lo筰 b竛h ch� 頲 s� d鬾g 20 c竔","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"C蕄 50 tr� l猲 m韎 c� th� tham gia ho箃 ng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho箃 ng trung thu][S� d鬾g B竛h Trung Thu Dng Ch﹗]"} },
-- 		{"ThisActivity:AddTask",	{nTask_YangZhou,1} },
-- 	},
-- }
-- tbConfig[26] = --一个细节
-- {
-- 	nId = 26,
-- 	szMessageType = "ServerStart",
-- 	szName = "Loading NPC",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {nil},
-- 	tbCondition = 
-- 	{
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"ThisActivity:AddInitNpc",	{nil} },
-- 		{"tb2010ZhongQiu:AddTaskNpc",	{nil} },
-- 		{"tb2010ZhongQiu:AddDecorationNpc",	{nil} },
-- 	},
-- }
-- tbConfig[27] = --一个细节
-- {
-- 	nId = 27,
-- 	szMessageType = "ClickNpc",
-- 	szName = "цi tho筰 v韎 H籲g Nga",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"H籲g Nga"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"SetDialogTitle",	{"<npc>Trong th阨 gian 0 gi� 20/09/2010 n 0 gi� 11/10/2010, ng o c� th� th玭g qua nh qu竔, t鑞g kim, h祅g rong, K� Tr﹏ C竎  nh薾 頲 c竎 lo筰 b竛h trung thu, ng th阨 c騨g c� th� h頿 th祅h c竎 lo筰 l錸g n � ch� h籲g. Trc 0 gi� 18/10 s� d鬾g l錸g n c� th� tri謚 h錳 BOSS trung thu, sau khi nh b筰 s� nh薾 頲 c竎 ph莕 thng phong ph�, ng th阨 c� c� h閕 nh薾 頲 l錸g n k衞 qu﹏. N閜 l錸g n k衞 quan cho ch� h籲g s� nh薾 頲 ph莕 thng kinh nghi謒, l莕 n閜 1000, 2000, 3000,... s� nh薾 頲 kinh nghi謒 nhi襲 h琻 b譶h thng. ч l韓 c馻 h籲g nga s� t飝 thu閏 v祇 s� lng l錸g n k衞 qu﹏  n閜, m鏸 ng祔 v祇 l骳 20 gi� n誹 nh� H籲g Nga � tr筺g th竔 l韓 nh蕋 s� xu蕋 hi謓 hi謚 鴑g b緉 ph竜 hoa, c竎 ng o ng xung quanh  c� th� nh薾 頲 ph莕 thng kinh nghi謒. M鏸 ng祔 20 gi� 30 ph髏, h籲g nga s� tr� v� tr筺g th竔 nh� nh蕋, s� lng n k衞 qu﹏ c騨g v� 0. Trong th阨 gian ho箃 ng m鏸 ngi nhi襲 nh蕋 ch� 頲 n閜 1999 c竔."} },
-- 		{"AddDialogOpt",	{"N閜 l錸g n k衞 qu﹏",28} },
-- 		{"AddDialogOpt",	{"Ki觤 tra s� lng  n閜",34} },
-- 	},
-- }
-- tbConfig[28] = --一个细节
-- {
-- 	nId = 28,
-- 	szMessageType = "CreateCompose",
-- 	szName = "N閜 l錸g n k衞 qu﹏",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"N閜 l錸g n k衞 qu﹏",1,1,1,0.01},
-- 	tbCondition = 
-- 	{
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Ho箃 ng  k誸 th骳"} },
-- 		{"lib:CheckTime",	{{{000000,200000},{203000,240000}}, "Kh玭g ph秈 l� th阨 gian ho箃 ng"} },
-- 		{"AddOneMaterial",	{"L錸g n k衞 qu﹏",{tbProp={6,1,2506,1,0,0},},1} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 		{"ThisActivity:CheckTask",	{nTask_GiveCount,"1999 - <ComposeCount> ","Trong th阨 gian ho箃 ng m鏸 ngi ch� 頲 n閜 1999 c竔!","<="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddTask",	{nTask_Activi_Point,1} },
-- 		{"PlayerFunLib:AddExp",	{500000,0,"[Ho箃 ng trung thu][N閜 l錸g n k衞 qu﹏]"} },
-- 		{"tb2010ZhongQiu:GiveItem2HengE",	{nil} },
-- 		{"ThisActivity:AddTask",	{nTask_GiveCount,1} },
-- 		{"PlayerFunLib:SimpleMsg",	{"Msg2Player","Gia t╪g 1 甶觤 t輈h l騳 s� ki謓"} },
-- 	},
-- }
-- tbConfig[29] = --一个细节
-- {
-- 	nId = 29,
-- 	szMessageType = "ClickNpc",
-- 	szName = "B蕀 v祇 long nhi",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"B� Long"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"AddDialogOpt",	{"фi m苩 n� c鰑 m謓h",33} },
-- 		{"AddDialogOpt",	{"фi m苩 n� trng c玭g",35} },
-- 		{"AddDialogOpt",	{"фi M苩 n� ki猲 ng筺h",36} },
-- 		{"AddDialogOpt",	{"фi m苩 n� qu� 秐h",30} },
-- 		{"AddDialogOpt",	{"фi h錳 thi猲 t竔 t筼 c萴 nang",31} },
-- 		{"AddDialogOpt",	{"фi nh蕋 k� c祅 kh玭 ph�",32} },
-- 	},
-- }
-- tbConfig[30] = --一个细节
-- {
-- 	nId = 30,
-- 	szMessageType = "CreateCompose",
-- 	szName = "фi m苩 n� qu� 秐h",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"M苩 n� qu� 秐h",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Th阨 h筺 i  k誸 th骳"} },
-- 		{"AddOneMaterial",	{"Ng� H祅h K� Th筩h",{tbProp={6,1,2125,1,0,0},},5} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={0,11,455,1,0,0},nExpiredTime=10080,},1,"[Ho箃 ng trung thu][фi qu� 秐h]"} },
-- 	},
-- }
-- tbConfig[31] = --一个细节
-- {
-- 	nId = 31,
-- 	szMessageType = "CreateCompose",
-- 	szName = "фi h錳 thi猲 t竔 t筼 c萴 nang",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"C萴 nang thay i tr阨 t",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Th阨 h筺 i  k誸 th骳"} }
-- 		{"AddOneMaterial",	{"Ng� H祅h K� Th筩h",{tbProp={6,1,2125,1,0,0},},3} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1781,1,0,0},nExpiredTime=20160, tbParam={60}},1,"[Ho箃 ng trung thu][фi h錳 thi猲 t竔 t筼 c萴 nang]"} },
-- 	},
-- }
-- tbConfig[32] = --一个细节
-- {
-- 	nId = 32,
-- 	szMessageType = "CreateCompose",
-- 	szName = "фi nh蕋 k� c祅 kh玭 ph�",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"Nh蕋 K� C祅 Kh玭 Ph�",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Th阨 h筺 i  k誸 th骳"} }
-- 		{"AddOneMaterial",	{"Ng� H祅h K� Th筩h",{tbProp={6,1,2125,1,0,0},},300} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2126,1,0,0},nExpiredTime=20160,},1,"[Ho箃 ng trung thu][фi nh蕋 k� c祅 kh玭 ph颹"} },
-- 	},
-- }
-- tbConfig[33] = --一个细节
-- {
-- 	nId = 33,
-- 	szMessageType = "CreateCompose",
-- 	szName = "фi m苩 n� c鰑 m謓h",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"M苩 n� c鰑 m謓h",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Th阨 h筺 i  k誸 th骳"} }
-- 		{"AddOneMaterial",	{"Ng� H祅h K� Th筩h",{tbProp={6,1,2125,1,0,0},},5} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={0,11,454,1,0,0},nExpiredTime=10080,},1,"[Ho箃 ng trung thu][фi m苩 n� c鰑 m謓h]"} },
-- 	},
-- }
-- tbConfig[34] = --一个细节
-- {
-- 	nId = 34,
-- 	szMessageType = "nil",
-- 	szName = "Ki觤 tra s� lng  n閜 L錸g n k衞 qu﹏",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {nil},
-- 	tbCondition = 
-- 	{
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Ho箃 ng  k誸 th骳"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:ShowGiveCount",	{nTask_GiveCount} },
-- 	},
-- }
-- tbConfig[35] = --一个细节
-- {
-- 	nId = 35,
-- 	szMessageType = "CreateCompose",
-- 	szName = "фi m苩 n� trng c玭g",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"M苩 n� trng c玭g",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Th阨 h筺 i  k誸 th骳"} }
-- 		{"AddOneMaterial",	{"Ng� H祅h K� Th筩h",{tbProp={6,1,2125,1,0,0},},5} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={0,11,479,1,0,0},nExpiredTime=10080,},1,"[Ho箃 ng trung thu][фi m苩 n� trng c玭g]"} },
-- 	},
-- }
-- tbConfig[36] = --一个细节
-- {
-- 	nId = 36,
-- 	szMessageType = "CreateCompose",
-- 	szName = "фi M苩 n� ki猲 ng筺h",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"M苩 n� ki猲 ng筺h",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Th阨 h筺 i  k誸 th骳"} }
-- 		{"AddOneMaterial",	{"Ng� H祅h K� Th筩h",{tbProp={6,1,2125,1,0,0},},20} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={0,11,480,1,0,0},nExpiredTime=10080,},1,"[Ho箃 ng trung thu][фi M苩 n� ki猲 ng筺h]"} },
-- 	},
-- }
