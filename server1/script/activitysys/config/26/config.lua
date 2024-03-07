Include("\\script\\activitysys\\config\\26\\variables.lua")
tbConfig = {}
tbConfig[1] = --Add NPC
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khëi §éng Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
	},
}

tbConfig[2] = 
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Tèng Kim Cao CÊp 1000 §iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		-- {"PlayerFunLib:CheckTotalLevel",	{120,"",">="} },
	},
	tbActition = 
	{
		-- {"ThisActivity:CheckTongKim", {nil}},
	},
}

tbConfig[3] =
{
	nId = 3,
	szMessageType = "ClickNpc",
	szName = "§èi Tho¹i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tæng Qu¶n Sù KiÖn"},
	tbCondition = 
	{
		{"ThisActivity:CheckDateTime",	{nil} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Top Sù KiÖn",18} },
		{"AddDialogOpt",	{"GhÐp Quµ Quèc Kh¸nh Th­êng",4} },
		{"AddDialogOpt",	{"GhÐp Quµ Quèc Kh¸nh §Æc BiÖt",5} },
		{"AddDialogOpt",	{"NhËn Mèc Sö Dông Quèc Kh¸nh Th­êng",6} },
		{"AddDialogOpt",	{"NhËn Mèc Sö Dông Quèc Kh¸nh §Æc BiÖt",7} },
		{"AddDialogOpt",	{"Reset Sö Dông Quèc Kh¸nh Th­êng",21} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "GhÐp Quµ Quèc Kh¸nh Th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Quµ Quèc Kh¸nh Th­êng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Chµo",ITEM_1,1} },
		{"AddOneMaterial",	{"Mõng",ITEM_2,1} },
		{"AddOneMaterial",	{"Ngµy",ITEM_3,1} },
		{"AddOneMaterial",	{"Quèc",ITEM_4,1} },
		{"AddOneMaterial",	{"Kh¸nh",ITEM_5,1} },
		{"AddOneMaterial",	{"50 V¹n",TIENVAN_1,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_6,1,EVENT_LOG_TITLE,"Quµ Quèc Kh¸nh Th­êng"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "GhÐp Quµ Quèc Kh¸nh §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Quµ Quèc Kh¸nh §Æc BiÖt",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Chµo",ITEM_1,1} },
		{"AddOneMaterial",	{"Mõng",ITEM_2,1} },
		{"AddOneMaterial",	{"Ngµy",ITEM_3,1} },
		{"AddOneMaterial",	{"Quèc",ITEM_4,1} },
		{"AddOneMaterial",	{"Kh¸nh",ITEM_5,1} },
		{"AddOneMaterial",	{"Xu",ITEM_XU,3} },
		{"AddOneMaterial",	{"20 V¹n",TIENVAN_2,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_7,1,EVENT_LOG_TITLE,"Quèc Kh¸nh §Æc BiÖt"} },
	},
}

tbConfig[6] =
{
	nId = 6,
	szMessageType = "CreateDialog",
	szName = "NhËn Mèc Sö Quèc Kh¸nh Th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Chµo C¸c H¹ §· Sö Quèc Kh¸nh Th­êng",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Xem Sè LÇn Sö Dông Quèc Kh¸nh Th­êng",8} },
		{"AddDialogOpt",	{"NhËn Mèc 10000 Quµ Quèc Kh¸nh Th­êng",9} },
	},
}
tbConfig[7] =
{
	nId = 7,
	szMessageType = "CreateDialog",
	szName = "NhËn Mèc Sö Quµ Quèc Kh¸nh §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Chµo C¸c H¹ §· Sö Quµ Quèc Kh¸nh §Æc BiÖt",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Xem Sè LÇn Sö Dông Quµ Quèc Kh¸nh §Æc BiÖt",10} },
		{"AddDialogOpt",	{"NhËn Mèc 5000 Quµ Quèc Kh¸nh §Æc BiÖt",11} },
		{"AddDialogOpt",	{"NhËn Mèc 10000 Quµ Quèc Kh¸nh §Æc BiÖt",12} },
		{"AddDialogOpt",	{"NhËn Mèc 15000 Quµ Quèc Kh¸nh §Æc BiÖt",13} },
		{"AddDialogOpt",	{"NhËn Mèc 35000 Quµ Quèc Kh¸nh §Æc BiÖt",14} },
	},
}
tbConfig[8] =
{
	nId = 8,
	szMessageType = "nil",
	szName = "Xem Sè LÇn Sö Dông Quµ Quèc Kh¸nh Th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{				
	},
	tbActition = 
	{
		{"ThisActivity:ShowItemThuong",	{nil} },
	},
}
tbConfig[9] =
{
	nId = 9,
	szMessageType = "nil",
	szName = "NhËn Th­ëng Mèc 10000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"Hµnh Trang Kh«ng §ñ 40 ¤ Trèng H·y S¾p XÕp L¹i"} },			
	},
	tbActition = 
	{
		{"ThisActivity:GetAwardThuong_10000",	{nil} },
	},
}
tbConfig[10] =
{
	nId = 10,
	szMessageType = "nil",
	szName = "Xem Sè LÇn Sö Dông Quµ Quèc Kh¸nh §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{				
	},
	tbActition = 
	{
		{"ThisActivity:ShowItemDacBiet",	{nil} },
	},
}
tbConfig[11] =
{
	nId = 11,
	szMessageType = "nil",
	szName = "NhËn Th­ëng Mèc 5000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"Hµnh Trang Kh«ng §ñ 40 ¤ Trèng H·y S¾p XÕp L¹i"} },			
	},
	tbActition = 
	{
		{"ThisActivity:GetAwardDacBiet_5000",	{nil} },
	},
}
tbConfig[12] =
{
	nId = 12,
	szMessageType = "nil",
	szName = "NhËn Th­ëng Mèc 10000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"Hµnh Trang Kh«ng §ñ 40 ¤ Trèng H·y S¾p XÕp L¹i"} },			
	},
	tbActition = 
	{
		{"ThisActivity:GetAwardDacBiet_10000",	{nil} },
	},
}
tbConfig[13] =
{
	nId = 13,
	szMessageType = "nil",
	szName = "NhËn Th­ëng Mèc 15000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"Hµnh Trang Kh«ng §ñ 40 ¤ Trèng H·y S¾p XÕp L¹i"} },			
	},
	tbActition = 
	{
		{"ThisActivity:GetAwardDacBiet_15000",	{nil} },
	},
}
tbConfig[14] =
{
	nId = 14,
	szMessageType = "nil",
	szName = "NhËn Th­ëng Mèc 35000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"Hµnh Trang Kh«ng §ñ 40 ¤ Trèng H·y S¾p XÕp L¹i"} },			
	},
	tbActition = 
	{
		{"ThisActivity:GetAwardDacBiet_35000",	{nil} },
	},
}

tbConfig[15] = 
{
	nId = 15,
	szMessageType = "ItemScript",
	szName = "Sö Dông Quµ Quèc Kh¸nh Th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4928,1,0,0},}},
	tbCondition = 
	{

		-- {"PlayerFunLib:CheckTotalLevel",	{120,"§¼ng CÊp 120 Trë Lªn Relife Kh«ng Giíi H¹n §¼ng CÊp",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"Hµnh Trang Kh«ng §ñ 10 ¤ Trèng H·y S¾p XÕp L¹i"} },			
	},
	tbActition = 
	{		
		{"ThisActivity:UseQuocKhanhThuong",	{nil} },
	},
}
tbConfig[16] = 
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "Quµ Quèc Kh¸nh §Æc BiÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4929,1,0,0},}},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{120,"§¼ng CÊp 120 Trë Lªn Relife Kh«ng Giíi H¹n §¼ng CÊp",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"Hµnh Trang Kh«ng §ñ 10 ¤ Trèng H·y S¾p XÕp L¹i"} },			
	},
	tbActition = 
	{		
		{"ThisActivity:UserQuocKhanhDacBiet",	{nil} },
	},
}


tbConfig[17] = --Sö Dông
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "LÔ bao quèc kh¸nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4922,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H·y §Ó Trèng 10 ¤ Råi Më"} },
	},
	tbActition = 
	{
		{"ThisActivity:LeBaoQuocKhanh", {nil}},
	},
}
tbConfig[18] =
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "Top Sù KiÖn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Chµo C¸c H¹ §· Sö Dông Quµ Quèc Kh¸nh §Æc BiÖt Ch­a"},
	tbCondition = 
	{
		{"ThisActivity:CheckDateTime",	{nil} },
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"CËp NhËt XÕp H¹ng Top 10",24} },
		{"AddDialogOpt",	{"Xem B¶ng XÕp H¹ng",19} },
		{"AddDialogOpt",	{"NhËn Th­ëng XÕp H¹ng §ua Top",20} },
	},
}

tbConfig[19] =
{
	nId = 19,
	szMessageType = "nil",
	szName = "Xem B¶ng XÕp H¹ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{				
	},
	tbActition = 
	{
		{"ThisActivity:ShowTopList",	{nil} },
	},
}

tbConfig[20] =
{
	nId = 20,
	szMessageType = "nil",
	szName = "NhËn Th­ëng §ua Top",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{		
	},
	tbActition = 
	{
		{"ThisActivity:GetTopListAward",	{nil} },
			--{"ThisActivity:AwardTop100",	{nil} },
	},
}
tbConfig[21] =
{
	nId = 21,
	szMessageType = "CreateDialog",
	szName = "Top Sù KiÖn",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Chµo C¸c H¹ §· Sö Dông Quµ Quèc Kh¸nh §Æc BiÖt Ch­a"},
	tbCondition = 
	{
		{"ThisActivity:CheckDateTime",	{nil} },
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"Xem sè lÇn Reset",22} },
		{"AddDialogOpt",	{"TiÕn hµnh Reset",23} },
	},
}
tbConfig[22] =
{
	nId = 22,
	szMessageType = "nil",
	szName = "Xem Sè LÇn Sö Reset",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{				
	},
	tbActition = 
	{
		{"ThisActivity:ShowReset",	{nil} },
	},
}
tbConfig[23] =
{
	nId = 23,
	szMessageType = "nil",
	szName = "Reset Quèc Kh¸nh Th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"Hµnh Trang Kh«ng §ñ 10 ¤ Trèng H·y S¾p XÕp L¹i"} },			
	},
	tbActition = 
	{
		{"ThisActivity:ResetEvent",	{nil} },
	},
}
tbConfig[24] =
{
	nId = 24,
	szMessageType = "nil",
	szName = "CËp NhËt XÕp H¹ng Top 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{			
	},
	tbActition = 
	{
		{"ThisActivity:UpdateTopList",	{nil} },
	},
}
tbConfig[25] = --§¸nh qu¸i th­êng
{
	nId = 25,
	szMessageType = "NpcOnDeath",
	szName = "§¸nh qu¸i th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckInMap",	{"995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{
			{
				{szName="LÔ bao quèc kh¸nh",tbProp={6,1,4922,1,0,0,},nCount=1},
			  },
			1,
			"2"
		} },
	},
}