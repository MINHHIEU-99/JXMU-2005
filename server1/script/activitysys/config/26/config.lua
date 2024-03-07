Include("\\script\\activitysys\\config\\26\\variables.lua")
tbConfig = {}
tbConfig[1] = --Add NPC
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Kh�i ��ng Npc",
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
	szName = "T�ng Kim Cao C�p 1000 �i�m",
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
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�ng Qu�n S� Ki�n"},
	tbCondition = 
	{
		{"ThisActivity:CheckDateTime",	{nil} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Top S� Ki�n",18} },
		{"AddDialogOpt",	{"Gh�p Qu� Qu�c Kh�nh Th��ng",4} },
		{"AddDialogOpt",	{"Gh�p Qu� Qu�c Kh�nh ��c Bi�t",5} },
		{"AddDialogOpt",	{"Nh�n M�c S� D�ng Qu�c Kh�nh Th��ng",6} },
		{"AddDialogOpt",	{"Nh�n M�c S� D�ng Qu�c Kh�nh ��c Bi�t",7} },
		{"AddDialogOpt",	{"Reset S� D�ng Qu�c Kh�nh Th��ng",21} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "Gh�p Qu� Qu�c Kh�nh Th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Qu� Qu�c Kh�nh Th��ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ch�o",ITEM_1,1} },
		{"AddOneMaterial",	{"M�ng",ITEM_2,1} },
		{"AddOneMaterial",	{"Ng�y",ITEM_3,1} },
		{"AddOneMaterial",	{"Qu�c",ITEM_4,1} },
		{"AddOneMaterial",	{"Kh�nh",ITEM_5,1} },
		{"AddOneMaterial",	{"50 V�n",TIENVAN_1,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_6,1,EVENT_LOG_TITLE,"Qu� Qu�c Kh�nh Th��ng"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Gh�p Qu� Qu�c Kh�nh ��c Bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Qu� Qu�c Kh�nh ��c Bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ch�o",ITEM_1,1} },
		{"AddOneMaterial",	{"M�ng",ITEM_2,1} },
		{"AddOneMaterial",	{"Ng�y",ITEM_3,1} },
		{"AddOneMaterial",	{"Qu�c",ITEM_4,1} },
		{"AddOneMaterial",	{"Kh�nh",ITEM_5,1} },
		{"AddOneMaterial",	{"Xu",ITEM_XU,3} },
		{"AddOneMaterial",	{"20 V�n",TIENVAN_2,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_7,1,EVENT_LOG_TITLE,"Qu�c Kh�nh ��c Bi�t"} },
	},
}

tbConfig[6] =
{
	nId = 6,
	szMessageType = "CreateDialog",
	szName = "Nh�n M�c S� Qu�c Kh�nh Th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Ch�o C�c H� �� S� Qu�c Kh�nh Th��ng",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Xem S� L�n S� D�ng Qu�c Kh�nh Th��ng",8} },
		{"AddDialogOpt",	{"Nh�n M�c 10000 Qu� Qu�c Kh�nh Th��ng",9} },
	},
}
tbConfig[7] =
{
	nId = 7,
	szMessageType = "CreateDialog",
	szName = "Nh�n M�c S� Qu� Qu�c Kh�nh ��c Bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Ch�o C�c H� �� S� Qu� Qu�c Kh�nh ��c Bi�t",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Xem S� L�n S� D�ng Qu� Qu�c Kh�nh ��c Bi�t",10} },
		{"AddDialogOpt",	{"Nh�n M�c 5000 Qu� Qu�c Kh�nh ��c Bi�t",11} },
		{"AddDialogOpt",	{"Nh�n M�c 10000 Qu� Qu�c Kh�nh ��c Bi�t",12} },
		{"AddDialogOpt",	{"Nh�n M�c 15000 Qu� Qu�c Kh�nh ��c Bi�t",13} },
		{"AddDialogOpt",	{"Nh�n M�c 35000 Qu� Qu�c Kh�nh ��c Bi�t",14} },
	},
}
tbConfig[8] =
{
	nId = 8,
	szMessageType = "nil",
	szName = "Xem S� L�n S� D�ng Qu� Qu�c Kh�nh Th��ng",
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
	szName = "Nh�n Th��ng M�c 10000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"H�nh Trang Kh�ng �� 40 � Tr�ng H�y S�p X�p L�i"} },			
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
	szName = "Xem S� L�n S� D�ng Qu� Qu�c Kh�nh ��c Bi�t",
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
	szName = "Nh�n Th��ng M�c 5000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"H�nh Trang Kh�ng �� 40 � Tr�ng H�y S�p X�p L�i"} },			
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
	szName = "Nh�n Th��ng M�c 10000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"H�nh Trang Kh�ng �� 40 � Tr�ng H�y S�p X�p L�i"} },			
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
	szName = "Nh�n Th��ng M�c 15000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"H�nh Trang Kh�ng �� 40 � Tr�ng H�y S�p X�p L�i"} },			
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
	szName = "Nh�n Th��ng M�c 35000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{40,"H�nh Trang Kh�ng �� 40 � Tr�ng H�y S�p X�p L�i"} },			
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
	szName = "S� D�ng Qu� Qu�c Kh�nh Th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4928,1,0,0},}},
	tbCondition = 
	{

		-- {"PlayerFunLib:CheckTotalLevel",	{120,"��ng C�p 120 Tr� L�n Relife Kh�ng Gi�i H�n ��ng C�p",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�nh Trang Kh�ng �� 10 � Tr�ng H�y S�p X�p L�i"} },			
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
	szName = "Qu� Qu�c Kh�nh ��c Bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4929,1,0,0},}},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{120,"��ng C�p 120 Tr� L�n Relife Kh�ng Gi�i H�n ��ng C�p",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�nh Trang Kh�ng �� 10 � Tr�ng H�y S�p X�p L�i"} },			
	},
	tbActition = 
	{		
		{"ThisActivity:UserQuocKhanhDacBiet",	{nil} },
	},
}


tbConfig[17] = --S� D�ng
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "L� bao qu�c kh�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4922,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�y �� Tr�ng 10 � R�i M�"} },
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
	szName = "Top S� Ki�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Ch�o C�c H� �� S� D�ng Qu� Qu�c Kh�nh ��c Bi�t Ch�a"},
	tbCondition = 
	{
		{"ThisActivity:CheckDateTime",	{nil} },
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"C�p Nh�t X�p H�ng Top 10",24} },
		{"AddDialogOpt",	{"Xem B�ng X�p H�ng",19} },
		{"AddDialogOpt",	{"Nh�n Th��ng X�p H�ng �ua Top",20} },
	},
}

tbConfig[19] =
{
	nId = 19,
	szMessageType = "nil",
	szName = "Xem B�ng X�p H�ng",
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
	szName = "Nh�n Th��ng �ua Top",
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
	szName = "Top S� Ki�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xin Ch�o C�c H� �� S� D�ng Qu� Qu�c Kh�nh ��c Bi�t Ch�a"},
	tbCondition = 
	{
		{"ThisActivity:CheckDateTime",	{nil} },
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"Xem s� l�n Reset",22} },
		{"AddDialogOpt",	{"Ti�n h�nh Reset",23} },
	},
}
tbConfig[22] =
{
	nId = 22,
	szMessageType = "nil",
	szName = "Xem S� L�n S� Reset",
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
	szName = "Reset Qu�c Kh�nh Th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�nh Trang Kh�ng �� 10 � Tr�ng H�y S�p X�p L�i"} },			
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
	szName = "C�p Nh�t X�p H�ng Top 10",
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
tbConfig[25] = --��nh qu�i th��ng
{
	nId = 25,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i th��ng",
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
				{szName="L� bao qu�c kh�nh",tbProp={6,1,4922,1,0,0,},nCount=1},
			  },
			1,
			"2"
		} },
	},
}