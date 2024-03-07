

Include("\\script\\global\\mrt\\configserver\\configall.lua")
Include("\\script\\activitysys\\config\\21\\variables.lua")

tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
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
tbConfig[2] = --Ò»¸öÏ¸½Ú
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "§¸nh qu¸i rít tói nguyªn liÖu",
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
tbConfig[3] = --Ò»¸öÏ¸½Ú
{
	nId = 3,
	szMessageType = "ClickNpc",
	szName = "H»ng nga hîp thµnh",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"NguyÖt Nhi"},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Hîp thµnh b¸nh Trung Thu",4} },
	},
}
tbConfig[4] = --Ò»¸öÏ¸½Ú
{
	nId = 4,
	szMessageType = "CreateDialog",
	szName = "Hîp thµnh ph©n h¹ng",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"<npc>C¸c h¹ muèn hîp thµnh lo¹i b¸nh nµo?"},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		-- {"AddDialogOpt",	{"B¸nh Trung Thu th­êng",5} },
		{"AddDialogOpt",	{"B¸nh Trung Thu Nh©n Trøng",6} },
		{"AddDialogOpt",	{"B¸nh Trung Thu ThËp CÈm",7} },
		{"AddDialogOpt",	{"Reset sè lÇn sö dông b¸nh",12} },
	},
}
tbConfig[5] = --Ò»¸öÏ¸½Ú
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh B¸nh trung thu th­êng",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"B¸nh trung thu th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Bét m×",{tbProp={4,520,1,1,0,0},},1} },
		{"AddOneMaterial",	{"§­êng c¸t",{tbProp={4,521,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Trøng",{tbProp={4,522,1,1,0,0},},1} },
		{"AddOneMaterial",	{"H¹nh nh©n",{tbProp={4,525,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=100000},1} },
		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Thêi h¹n ®æi ®· kÕt thóc"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4951,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho¹t ®éng trung thu] [B¸nh ®Ëu xanh h¶o h¹ng]"} },
	},
}
tbConfig[6] = --Ò»¸öÏ¸½Ú
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh B¸nh Trung Thu Nh©n Trøng",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"B¸nh Trung Thu Nh©n Trøng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Bét m×",{tbProp={4,520,1,1,0,0},},6} },
		{"AddOneMaterial",	{"§­êng c¸t",{tbProp={4,521,1,1,0,0},},6} },
		{"AddOneMaterial",	{"Trøng",{tbProp={4,522,1,1,0,0},},2} },
		{"AddOneMaterial",	{"H¹nh nh©n",{tbProp={4,525,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=100000},1} },
		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Thêi h¹n ®æi ®· kÕt thóc"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4952,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho¹t ®éng trung thu] [B¸nh h¹t sen h¶o h¹ng]"} },
	},
}
tbConfig[7] = --Ò»¸öÏ¸½Ú
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Hîp thµnh B¸nh Trung Thu ThËp CÈm",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"B¸nh Trung Thu ThËp CÈm",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Bét m×",{tbProp={4,520,1,1,0,0},},4} },
		{"AddOneMaterial",	{"§­êng c¸t",{tbProp={4,521,1,1,0,0},},4} },
		{"AddOneMaterial",	{"Trøng",{tbProp={4,522,1,1,0,0},},2} },
		{"AddOneMaterial",	{"H¹nh nh©n",{tbProp={4,525,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=50000},1} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},10} },
		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Thêi h¹n ®æi ®· kÕt thóc"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4953,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho¹t ®éng trung thu] [B¸nh h¹t sen h¶o h¹ng]"} },
	},
}
tbConfig[8] = --Ò»¸öÏ¸½Ú
{
	nId = 8,
	szMessageType = "ItemScript",
	szName = "Sö dông bao nguyªn liÖu b¸nh trung thu",
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
tbConfig[9] = --Ò»¸öÏ¸½Ú
{
	nId = 9,
	szMessageType = "nil",
	szName = "Sö dông B¸nh Trung Thu th­êng",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {{tbProp={6,1,4951,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhThuong,nMax_BanhThuong,"Trong thêi gian ho¹t ®éng, chØ ®­îc sö dông "..nMax_BanhThuong.." c¸i","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:SuDungBanhThuong", {nil}},	
		{"ThisActivity:AddTask",	{nTask_BanhThuong,1} },	
	},

}
tbConfig[10] = --Ò»¸öÏ¸½Ú
{
	nId = 10,
	szMessageType = "ItemScript",
	szName = "Sö dông B¸nh Trung Thu Nh©n Trøng",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {{tbProp={6,1,4952,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhTrung,nMax_BanhTrung,"Trong thêi gian ho¹t ®éng, chØ ®­îc sö dông "..nMax_BanhTrung.." c¸i","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:SuDungBanhNhanTrung", {nil}},	
		{"ThisActivity:AddTask",	{nTask_BanhTrung,1} },		
	},
}
tbConfig[11] = --Ò»¸öÏ¸½Ú
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "Sö dông B¸nh Trung Thu ThËp CÈm",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {{tbProp={6,1,4953,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhThapCam,nMax_BanhThapCam,"Trong thêi gian ho¹t ®éng, chØ ®­îc sö dông "..nMax_BanhThapCam.." c¸i","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:SuDungBanhThapCam", {nil}},		
		{"ThisActivity:AddTask",	{nTask_BanhThapCam,1} },	
	},
}
tbConfig[12] = --Ò»¸öÏ¸½Ú
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "Reset sè lÇn dïng b¸nh",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {"<npc>C¸c h¹ muèn reset lo¹i b¸nh nµo?"},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		-- {"AddDialogOpt",	{"B¸nh Trung Thu th­êng",5} },
		{"AddDialogOpt",	{"Reset B¸nh Trung Thu Nh©n Trøng (500x)",13} },
		{"AddDialogOpt",	{"Reset B¸nh Trung Thu ThËp CÈm (10Kv)",14} },
	},
}
tbConfig[13] = --Ò»¸öÏ¸½Ú
{
	nId = 13,
	szMessageType = "",
	szName = "Reset B¸nh Trung Thu Nh©n Trøng",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhTrung,nMax_BanhTrung,"Sö dông "..nMax_BanhTrung.." c¸i míi ®­îc Reset","=="} },
		-- {"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},500} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:ResetBanhTrung", {nil}},	
	},
}
tbConfig[14] = --Ò»¸öÏ¸½Ú
{
	nId = 14,
	szMessageType = "",
	szName = "Reset B¸nh Trung Thu ThËp CÈm",
	nStartDate = TrungThu2010.StartDate,
	nEndDate  = TrungThu2010.EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BanhThapCam,nMax_BanhThapCam,"Sö dông "..nMax_BanhThapCam.." c¸i míi ®­îc Reset","=="} },
		-- {"AddOneMaterial",	{"Ng©n l­îng",{nJxb=100000000},1} },
		-- {"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:ResetBanhThapCam", {nil}},	
	},
}
-- tbConfig[1] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 1,
-- 	szMessageType = "NpcOnDeath",
-- 	szName = "§¸nh qu¸i rít tói nguyªn liÖu",
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
-- tbConfig[2] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 2,
-- 	szMessageType = "NpcOnDeath",
-- 	szName = "§¸nh qu¸i rít b¸nh ®Ëu xanh",
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
-- tbConfig[3] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 3,
-- 	szMessageType = "NpcOnDeath",
-- 	szName = "§¸nh qu¸i rít b¸nh khoai m«n",
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
-- tbConfig[4] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 4,
-- 	szMessageType = "FinishSongJin",
-- 	szName = "Tèng kim cao cÊp kÕt thóc tÆng b¸nh dÎo (th¾ng)",
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
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2499,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},40,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh b¸nh dÎo]"} },
-- 	},
-- }
-- tbConfig[5] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 5,
-- 	szMessageType = "FinishSongJin",
-- 	szName = "Tèng kim cao cÊp kÕt thóc tÆng b¸nh dÎo (hßa)",
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
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2499,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},40,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh b¸nh dÎo]"} },
-- 	},
-- }
-- tbConfig[6] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 6,
-- 	szMessageType = "FinishSongJin",
-- 	szName = "Tèng kim cao cÊp kÕt thóc tÆng b¸nh dÎo (thua)",
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
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2499,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},40,"[Ho¹t ®éng trung thu] [Tèng Kim s¶n sinh b¸nh dÎo]"} },
-- 	},
-- }
-- tbConfig[7] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 7,
-- 	szMessageType = "ClickNpc",
-- 	szName = "Hµng rong b¸n b¸nh nh©n thÞt",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"Hµng rong"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"AddDialogOpt",	{"Mua b¸nh nh©n thÞt",8} },
-- 	},
-- }
-- tbConfig[8] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 8,
-- 	szMessageType = "CreateCompose",
-- 	szName = "Mua b¸nh nh©n thÞt",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"B¸nh nh©n thÞt",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"30000 l­îng",{nJxb=30000,},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Thêi h¹n ®æi ®· kÕt thóc"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2500,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[ho¹t ®éng trung thu] [hµng rong mua b¸nh nh©n thÞt]"} },
-- 	},
-- }
-- tbConfig[9] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 9,
-- 	szMessageType = "ClickNpc",
-- 	szName = "H»ng nga hîp thµnh",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"H»ng Nga"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"AddDialogOpt",	{"Hîp thµnh lång ®Ìn",10} },
-- 	},
-- }
-- tbConfig[10] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 10,
-- 	szMessageType = "CreateDialog",
-- 	szName = "Hîp thµnh ph©n h¹ng",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"<npc>C¸c h¹ muèn hîp thµnh lo¹i lång ®Ìn nµo?"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"AddDialogOpt",	{"Lång ®Ìn b­¬m b­ím",11} },
-- 		{"AddDialogOpt",	{"§Ìn ng«i sao",12} },
-- 		{"AddDialogOpt",	{"Lång ®Ìn èng",13} },
-- 		{"AddDialogOpt",	{"Lång ®Ìn trßn",14} },
-- 	},
-- }
-- tbConfig[11] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 11,
-- 	szMessageType = "CreateCompose",
-- 	szName = "Hîp thµnh lång ®Ìn b­¬m b­ím",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"Lång ®Ìn b­¬m b­ím",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"B¸nh H¹t Sen",{tbProp={6,1,2496,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh §Ëu Xanh",{tbProp={6,1,2497,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh Khoai M«n",{tbProp={6,1,2498,1,0,0},},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Thêi h¹n ®æi ®· kÕt thóc"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2502,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
-- 	},
-- }
-- tbConfig[12] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 12,
-- 	szMessageType = "CreateCompose",
-- 	szName = "Hîp thµnh lång ®Ìn ng«i sao",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"§Ìn ng«i sao",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"B¸nh H¹t Sen",{tbProp={6,1,2496,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh §Ëu Xanh",{tbProp={6,1,2497,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh Khoai M«n",{tbProp={6,1,2498,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh dÎo",{tbProp={6,1,2499,1,0,0},},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Thêi h¹n ®æi ®· kÕt thóc"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2503,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
-- 	},
-- }
-- tbConfig[13] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 13,
-- 	szMessageType = "CreateCompose",
-- 	szName = "Hîp thµnh lång ®Ìn èng",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"Lång ®Ìn èng",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"B¸nh H¹t Sen",{tbProp={6,1,2496,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh §Ëu Xanh",{tbProp={6,1,2497,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh Khoai M«n",{tbProp={6,1,2498,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh nh©n thÞt",{tbProp={6,1,2500,1,0,0},},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Thêi h¹n ®æi ®· kÕt thóc"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2504,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
-- 	},
-- }
-- tbConfig[14] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 14,
-- 	szMessageType = "CreateCompose",
-- 	szName = "Hîp thµnh lång ®Ìn trßn",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"Lång ®Ìn trßn",1,1,1,0.02},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"B¸nh H¹t Sen",{tbProp={6,1,2496,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh §Ëu Xanh",{tbProp={6,1,2497,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh Khoai M«n",{tbProp={6,1,2498,1,0,0},},1} },
-- 		{"AddOneMaterial",	{"B¸nh thËp cÈm",{tbProp={6,1,2501,1,0,0},},1} },
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Thêi h¹n ®æi ®· kÕt thóc"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2505,1,0,0},nExpiredTime=TrungThu2010.ExpiredTime,},1,"[Ho¹t ®éng trung thu] [Hîp thµnh lång ®Ìn]"} },
-- 		{"PlayerFunLib:AddTask",	{nTask_Activi_Point,1} },
-- 		{"PlayerFunLib:SimpleMsg",	{"Msg2Player","Gia t¨ng 1 ®iÓm tÝch lòy sù kiÖn"} },
-- 	},
-- }
-- tbConfig[15] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 15,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông lång ®Ìn b­¬m b­ím",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2502,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h·y sö dông t¹i thµnh thÞ hoÆc t©n thñ th«n!"} },
-- 		{"PlayerFunLib:IsFightState",	{1,"Xin h·y sö dông t¹i khu vùc chiÕn ®Êu!"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"ThisActivity:CheckTask",	{nTask_HuDie,1000,"§¹t ®Õn kinh nghiÖm cao nhÊt, kh«ng thÓ nhËn thªm kinh nghiÖm!","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:AwardExp",	{1000000, nTask_HuDie, 1000000000, "Sö dông lång ®Ìn b­¬m b­ím", "[Ho¹t ®éng trung thu][Sö dông lång ®Ìn b­¬m b­ím]"} },
-- 	},
-- }
-- tbConfig[16] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 16,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông lång ®Ìn ng«i sao",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2503,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h·y sö dông t¹i thµnh thÞ hoÆc t©n thñ th«n!"} },
-- 		{"PlayerFunLib:IsFightState",	{1,"Xin h·y sö dông t¹i khu vùc chiÕn ®Êu!"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:AddNpc",	{"§¹i Lùc ThÞ VÖ"} },
-- 	},
-- }
-- tbConfig[17] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 17,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông lång ®Ìn èng",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2504,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h·y sö dông t¹i thµnh thÞ hoÆc t©n thñ th«n!"} },
-- 		{"PlayerFunLib:IsFightState",	{1,"Xin h·y sö dông t¹i khu vùc chiÕn ®Êu!"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:AddNpc",	{"Th­êng Th¾ng ThÞ VÖ"} },
-- 	},
-- }
-- tbConfig[18] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 18,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông Lång ®Ìn trßn",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2505,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h·y sö dông t¹i thµnh thÞ hoÆc t©n thñ th«n!"} },
-- 		{"PlayerFunLib:IsFightState",	{1,"Xin h·y sö dông t¹i khu vùc chiÕn ®Êu!"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:AddNpc",	{"Kim C­¬ng ThÞ VÖ"} },
-- 	},
-- }
-- tbConfig[19] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 19,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông B¸nh Trung Thu Thµnh §«",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2507,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_ChenDu,20,"Trong thêi gian ho¹t ®éng, mçi lo¹i b¸nh chØ ®­îc sö dông 20 c¸i","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho¹t ®éng trung thu][Sö dông B¸nh Trung Thu Thµnh §«]"} },
-- 		{"ThisActivity:AddTask",	{nTask_ChenDu,1} },
-- 	},
-- }
-- tbConfig[20] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 20,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông B¸nh Trung Thu §¹i Lý",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2508,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_DaLi,20,"Trong thêi gian ho¹t ®éng, mçi lo¹i b¸nh chØ ®­îc sö dông 20 c¸i","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho¹t ®éng trung thu][Sö dông B¸nh Trung Thu §¹i Lý]"} },
-- 		{"ThisActivity:AddTask",	{nTask_DaLi,1} },
-- 	},
-- }
-- tbConfig[21] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 21,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông B¸nh Trung Thu Ph­îng T­êng",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2509,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_FengXiang,20,"Trong thêi gian ho¹t ®éng, mçi lo¹i b¸nh chØ ®­îc sö dông 20 c¸i","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho¹t ®éng trung thu][Sö dông B¸nh Trung Thu Ph­îng T­êng]"} },
-- 		{"ThisActivity:AddTask",	{nTask_FengXiang,1} },
-- 	},
-- }
-- tbConfig[22] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 22,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông B¸nh Trung Thu T­¬ng D­¬ng",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2510,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_XiangYang,20,"Trong thêi gian ho¹t ®éng, mçi lo¹i b¸nh chØ ®­îc sö dông 20 c¸i","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho¹t ®éng trung thu][Sö dông B¸nh Trung Thu T­¬ng D­¬ng]"} },
-- 		{"ThisActivity:AddTask",	{nTask_XiangYang,1} },
-- 	},
-- }
-- tbConfig[23] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 23,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông B¸nh Trung Thu BiÖn Kinh",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2511,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_BianJin,20,"Trong thêi gian ho¹t ®éng, mçi lo¹i b¸nh chØ ®­îc sö dông 20 c¸i","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho¹t ®éng trung thu][Sö dông B¸nh Trung Thu BiÖn Kinh]"} },
-- 		{"ThisActivity:AddTask",	{nTask_BianJin,1} },
-- 	},
-- }
-- tbConfig[24] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 24,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông B¸nh Trung Thu L©m An",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2512,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_LinAn,20,"Trong thêi gian ho¹t ®éng, mçi lo¹i b¸nh chØ ®­îc sö dông 20 c¸i","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho¹t ®éng trung thu][Sö dông B¸nh Trung Thu L©m An]"} },
-- 		{"ThisActivity:AddTask",	{nTask_LinAn,1} },
-- 	},
-- }
-- tbConfig[25] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 25,
-- 	szMessageType = "ItemScript",
-- 	szName = "Sö dông B¸nh Trung Thu D­¬ng Ch©u",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {{tbProp={6,1,2513,1,0,0},}},
-- 	tbCondition = 
-- 	{
-- 		{"ThisActivity:CheckTask",	{nTask_YangZhou,20,"Trong thêi gian ho¹t ®éng, mçi lo¹i b¸nh chØ ®­îc sö dông 20 c¸i","<"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"CÊp 50 trë lªn míi cã thÓ tham gia ho¹t ®éng",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho¹t ®éng trung thu][Sö dông B¸nh Trung Thu D­¬ng Ch©u]"} },
-- 		{"ThisActivity:AddTask",	{nTask_YangZhou,1} },
-- 	},
-- }
-- tbConfig[26] = --Ò»¸öÏ¸½Ú
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
-- tbConfig[27] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 27,
-- 	szMessageType = "ClickNpc",
-- 	szName = "§èi tho¹i víi H»ng Nga",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"H»ng Nga"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"SetDialogTitle",	{"<npc>Trong thêi gian 0 giê 20/09/2010 ®Õn 0 giê 11/10/2010, ®ång ®¹o cã thÓ th«ng qua ®¸nh qu¸i, tèng kim, hµng rong, Kú Tr©n C¸c ®Ó nhËn ®­îc c¸c lo¹i b¸nh trung thu, ®ång thêi còng cã thÓ hîp thµnh c¸c lo¹i lång ®Ìn ë chÞ h»ng. Tr­íc 0 giê 18/10 sö dông lång ®Ìn cã thÓ triÖu håi BOSS trung thu, sau khi ®¸nh b¹i sÏ nhËn ®­îc c¸c phÇn th­ëng phong phó, ®ång thêi cã c¬ héi nhËn ®­îc lång ®Ìn kÐo qu©n. Nép lång ®Ìn kÐo quan cho chÞ h»ng sÏ nhËn ®­îc phÇn th­ëng kinh nghiÖm, lÇn nép 1000, 2000, 3000,... sÏ nhËn ®­îc kinh nghiÖm nhiÒu h¬n b×nh th­êng. §é lín cña h»ng nga sÏ tïy thuéc vµo sè l­îng lång ®Ìn kÐo qu©n ®· nép, mçi ngµy vµo lóc 20 giê nÕu nh­ H»ng Nga ë tr¹ng th¸i lín nhÊt sÏ xuÊt hiÖn hiÖu øng b¾n ph¸o hoa, c¸c ®ång ®¹o ®øng xung quanh ®ã cã thÓ nhËn ®­îc phÇn th­ëng kinh nghiÖm. Mçi ngµy 20 giê 30 phót, h»ng nga sÏ trë vÒ tr¹ng th¸i nhá nhÊt, sè l­îng ®Ìn kÐo qu©n còng vÒ 0. Trong thêi gian ho¹t ®éng mçi ng­êi nhiÒu nhÊt chØ ®­îc nép 1999 c¸i."} },
-- 		{"AddDialogOpt",	{"Nép lång ®Ìn kÐo qu©n",28} },
-- 		{"AddDialogOpt",	{"KiÓm tra sè l­îng ®· nép",34} },
-- 	},
-- }
-- tbConfig[28] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 28,
-- 	szMessageType = "CreateCompose",
-- 	szName = "Nép lång ®Ìn kÐo qu©n",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"Nép lång ®Ìn kÐo qu©n",1,1,1,0.01},
-- 	tbCondition = 
-- 	{
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Ho¹t ®éng ®· kÕt thóc"} },
-- 		{"lib:CheckTime",	{{{000000,200000},{203000,240000}}, "Kh«ng ph¶i lµ thêi gian ho¹t ®éng"} },
-- 		{"AddOneMaterial",	{"Lång ®Ìn kÐo qu©n",{tbProp={6,1,2506,1,0,0},},1} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 		{"ThisActivity:CheckTask",	{nTask_GiveCount,"1999 - <ComposeCount> ","Trong thêi gian ho¹t ®éng mçi ng­êi chØ ®­îc nép 1999 c¸i!","<="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:AddTask",	{nTask_Activi_Point,1} },
-- 		{"PlayerFunLib:AddExp",	{500000,0,"[Ho¹t ®éng trung thu][Nép lång ®Ìn kÐo qu©n]"} },
-- 		{"tb2010ZhongQiu:GiveItem2HengE",	{nil} },
-- 		{"ThisActivity:AddTask",	{nTask_GiveCount,1} },
-- 		{"PlayerFunLib:SimpleMsg",	{"Msg2Player","Gia t¨ng 1 ®iÓm tÝch lòy sù kiÖn"} },
-- 	},
-- }
-- tbConfig[29] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 29,
-- 	szMessageType = "ClickNpc",
-- 	szName = "BÊm vµo long nhi",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"BÐ Long"},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"AddDialogOpt",	{"§æi mÆt n¹ cöu mÖnh",33} },
-- 		{"AddDialogOpt",	{"§æi mÆt n¹ tr­êng c«ng",35} },
-- 		{"AddDialogOpt",	{"§æi MÆt n¹ kiªn ng¹nh",36} },
-- 		{"AddDialogOpt",	{"§æi mÆt n¹ quû ¶nh",30} },
-- 		{"AddDialogOpt",	{"§æi håi thiªn t¸i t¹o cÈm nang",31} },
-- 		{"AddDialogOpt",	{"§æi nhÊt kû cµn kh«n phï",32} },
-- 	},
-- }
-- tbConfig[30] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 30,
-- 	szMessageType = "CreateCompose",
-- 	szName = "§æi mÆt n¹ quû ¶nh",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"MÆt n¹ quû ¶nh",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} },
-- 		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},5} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={0,11,455,1,0,0},nExpiredTime=10080,},1,"[Ho¹t ®éng trung thu][§æi quû ¶nh]"} },
-- 	},
-- }
-- tbConfig[31] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 31,
-- 	szMessageType = "CreateCompose",
-- 	szName = "§æi håi thiªn t¸i t¹o cÈm nang",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"CÈm nang thay ®æi trêi ®Êt",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
-- 		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},3} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1781,1,0,0},nExpiredTime=20160, tbParam={60}},1,"[Ho¹t ®éng trung thu][§æi håi thiªn t¸i t¹o cÈm nang]"} },
-- 	},
-- }
-- tbConfig[32] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 32,
-- 	szMessageType = "CreateCompose",
-- 	szName = "§æi nhÊt kû cµn kh«n phï",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"NhÊt Kû Cµn Kh«n Phï",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
-- 		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},300} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2126,1,0,0},nExpiredTime=20160,},1,"[Ho¹t ®éng trung thu][§æi nhÊt kû cµn kh«n phï]"} },
-- 	},
-- }
-- tbConfig[33] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 33,
-- 	szMessageType = "CreateCompose",
-- 	szName = "§æi mÆt n¹ cöu mÖnh",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"MÆt n¹ cöu mÖnh",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
-- 		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},5} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={0,11,454,1,0,0},nExpiredTime=10080,},1,"[Ho¹t ®éng trung thu][§æi mÆt n¹ cöu mÖnh]"} },
-- 	},
-- }
-- tbConfig[34] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 34,
-- 	szMessageType = "nil",
-- 	szName = "KiÓm tra sè l­îng ®· nép Lång ®Ìn kÐo qu©n",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {nil},
-- 	tbCondition = 
-- 	{
-- 		{"lib:CheckDay",	{TrungThu2010.CheckStartDay, TrungThu2010.CheckEndDay, "Ho¹t ®éng ®· kÕt thóc"} },
-- 		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"tb2010ZhongQiu:ShowGiveCount",	{nTask_GiveCount} },
-- 	},
-- }
-- tbConfig[35] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 35,
-- 	szMessageType = "CreateCompose",
-- 	szName = "§æi mÆt n¹ tr­êng c«ng",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"MÆt n¹ tr­êng c«ng",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
-- 		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},5} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={0,11,479,1,0,0},nExpiredTime=10080,},1,"[Ho¹t ®éng trung thu][§æi mÆt n¹ tr­êng c«ng]"} },
-- 	},
-- }
-- tbConfig[36] = --Ò»¸öÏ¸½Ú
-- {
-- 	nId = 36,
-- 	szMessageType = "CreateCompose",
-- 	szName = "§æi MÆt n¹ kiªn ng¹nh",
-- 	nStartDate = TrungThu2010.StartDate,
-- 	nEndDate  = TrungThu2010.EndDate,
-- 	tbMessageParam = {"MÆt n¹ kiªn ng¹nh",0,1,1,1},
-- 	tbCondition = 
-- 	{
-- 		--{"lib:CheckDay",	{20101116, 20101206, "Thêi h¹n ®æi ®· kÕt thóc"} }
-- 		{"AddOneMaterial",	{"Ngò Hµnh Kú Th¹ch",{tbProp={6,1,2125,1,0,0},},20} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={0,11,480,1,0,0},nExpiredTime=10080,},1,"[Ho¹t ®éng trung thu][§æi MÆt n¹ kiªn ng¹nh]"} },
-- 	},
-- }
