Include("\\script\\activitysys\\config\\2\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "click big xmas tree",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i T�ng Gi�ng Sinh"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Gi�i thi�u ho�t ��ng Gi�ng Sinh",5} },
		{"AddDialogOpt",	{"Nh�n C�y Th�ng Gi�ng Sinh",2} },
		{"AddDialogOpt",	{"Nh�n T�t Gi�ng Sinh",3} },
		{"AddDialogOpt",	{"��i th�nh ph�n th��ng",4} },
	},
}
tbConfig[2] = --nh�n C�y Th�ng Gi�ng Sinh r�i
{
	nId = 2,
	szMessageType = "nil",
	szName = "get xmas tree",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTaskDaily",	{TSKI_TREE_LIMIT,MAX_GET_TREE_LIMIT,"H�m nay ng��i �� nh�n C�y Th�ng Gi�ng Sinh r�i, ng�y mai h�y quay l�i.","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_TREE,MAX_GET_TREE_LIMIT,EVENT_LOG_TITLE,"get xmas tree"} },
		{"ThisActivity:AddTaskDaily",	{TSKI_TREE_LIMIT,MAX_GET_TREE_LIMIT} },
	},
}
tbConfig[3] = --H�m nay ng��i �� nh�n T�t Gi�ng Sinh r�i
{
	nId = 3,
	szMessageType = "nil",
	szName = "get xmas stocking",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTaskDaily",	{TSKI_STOCKING_LIMIT,MAX_GET_STOCKING_LIMIT,"H�m nay ng��i �� nh�n T�t Gi�ng Sinh r�i, ng�y mai h�y quay l�i.","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_STOCKING,MAX_GET_STOCKING_LIMIT,EVENT_LOG_TITLE,"get xmas stocking"} },
		{"ThisActivity:AddTaskDaily",	{TSKI_STOCKING_LIMIT,MAX_GET_STOCKING_LIMIT} },
	},
}
tbConfig[4] = --N�n gi�ng sinh
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "get award",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�ch L�ch ��n",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"N�n gi�ng sinh",ITEM_XMAS_HAT,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_AWARD,1,EVENT_LOG_TITLE,"exchange award"} },
	},
}
tbConfig[5] = --c�u tr�c event
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "event introduction",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V�o l�c 0:00 ng�y 1 th�ng 1 n�m 2024 ��n 24:00 ng�y 31 th�ng 1 n�m 2024, nh�ng ��i hi�p c�p 150 tr� l�n ( Relife kh�ng gi�i h�n c�p ��) c� th� tham gia ho�t ��ng, ��i hi�p c� th� ��n ��i T�ng Gi�ng Sinh t�i L�m An (198,184), Ph��ng T��ng (198,199), Bi�n Kinh (213,195), ��i L� (202,198), T��ng D��ng (198,201), Th�nh ��(392,316) nh�n C�y Th�ng Gi�ng Sinh v� T�t Gi�ng Sinh, ��i hi�p c� th� � trong th�nh nh�n chu�t ph�i �� s� d�ng ��o c� C�y Th�ng Gi�ng Sinh, nh�n ���c m�t C�y Th�ng Gi�ng Sinh, ��i hi�p c� th� s� d�ng Qu� Gi�ng Sinh, ��n L�ng Gi�ng Sinh, K�o Gi�ng Sinh, Chu�ng Gi�ng Sinh, Sao Gi�ng Sinh �� trang tr� cho C�y Th�ng Gi�ng Sinh, �� nh�n ���c ph�n th��ng, Qu� Gi�ng Sinh, ��n L�ng Gi�ng Sinh, Qu� Gi�ng Sinh, Chu�ng Gi�ng Sinh, Sao Gi�ng Sinh c� th� ��nh qu�i r�i ra t�i Tr��ng B�ch S�n Nam, Kh�a Lang ��ng, Sa M�c T�ng 3, M�c Cao Qu�t, Ti�n C�c ��ng. M�i ng�y v�o l�c 19:00 - 23:00, ��i hi�p c� th� mang theo T�t Gi�ng Sinh ��n ��nh Tr��ng B�ch ( T��ng D��ng-Th�n B� Th��ng Nh�n Li�u �t-��nh Tr��ng B�ch) �� thu th�p L� V�t Gi�ng Sinh, l� v�t s� v� c�ng h�p d�n ��y! ��c bi�t trong th�i gian di�n ra ho�t ��ng trong K� Tr�n C�c c�n c� v�t ph�m M� Gi�ng Sinh, ��i hi�p c� th� mang theo M� Gi�ng Sinh �i ��n ��i T�ng Gi�ng Sinh ��i l�y C�n Kh�n T�ch L�ch ��n, C�n Kh�n T�ch L�ch ��n n�y c� uy l�c v� song, c� th� s� d�ng n� �� ��no b�i �c Lang T� S�, �c Lang T� S� �n n�p trong �c Lang C�c, ��i hi�p c� th� th�ng qua Xa Phu t�i c�c th�nh th� �� �i v�o �c Lang C�c, ��nh b�i �c Lang T� S� c� th� nh�n ���c ph�n th��ng v� c�ng phong ph� .",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[6] = --��i T�ng Gi�ng Sinh
{
	nId = 6,
	szMessageType = "ServerStart",
	szName = "add big xmas tree",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"NpcFunLib:AddDialogNpc",	{"��i T�ng Gi�ng Sinh",XMAS_BIG_TREE_ID,XMAS_BIG_TREE_POS} },
		{"ThisActivity:CreateAmbienceNpc",	{nil} },
	},
}
tbConfig[7] = --Ch� c� th� s� d�ng t�i nh�ng khu v�c phi chi�n ��u
{
	nId = 7,
	szMessageType = "ItemScript",
	szName = "use xmas tree",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {ITEM_XMAS_TREE},
	tbCondition = 
	{
		{"ThisActivity:CheckTaskbyTime",	{TSKI_USE_TREE_TIME,60} },
		{"PlayerFunLib:IsFightState",	{0, "Ch� c� th� s� d�ng t�i nh�ng khu v�c phi chi�n ��u."} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },
		{"PlayerFunLib:CheckTaskDaily",	{2915,60000,"S� d�ng v�t ph�m ��t gi�i h�n ng�y.","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddTaskDaily",	{2915,1} },
		{"ThisActivity:UseTree",	{nil} },		
		{"ThisActivity:SetTaskByNowTime",	{TSKI_USE_TREE_TIME} },
	},
}
tbConfig[8] = --H�nh trang kh�ng ��
{
	nId = 8,
	szMessageType = "ItemScript",
	szName = "use pilidan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2739,-1,-1,-1},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H�nh trang kh�ng ��"} },
		{"ThisActivity:CheckTaskDaily",	{TSKI_PILIDAN_EXP_LIMIT,MAX_PILIDAN_EXP_LIMIT,"S� d�ng v�t ph�m ��t gi�i h�n ng�y.","<"} },
		{"ELangGuWorld:UseItemKillNpc",	{nil} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTaskDaily",	{TSKI_PILIDAN_EXP_LIMIT,1} },
		{"ThisActivity:UsePiLiDan",	{nil} },
	},
}
tbConfig[9] = --drop apple
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "map321 drop apple",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckInMap",	{"321"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_APPLE,1,25} },
	},
}
tbConfig[10] = --drop apple
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "map75 drop apple",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckInMap",	{"75"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_LANTERN,1,25} },
	},
}
tbConfig[11] = --drop apple
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "map227 drop apple",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckInMap",	{"227"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_CANDY,1,25} },
	},
}
tbConfig[12] = --drop apple
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "map340 drop apple",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckInMap",	{"340"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_BELL,1,25} },
	},
}
tbConfig[13] = --drop apple
{
	nId = 13,
	szMessageType = "NpcOnDeath",
	szName = "map93 drop apple",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckInMap",	{"93"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_STAR,1,25} },
	},
}
tbConfig[14] = --drop apple
{
	nId = 14,
	szMessageType = "NpcOnDeath",
	szName = "map322 drop apple",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckInMap",	{"322,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1128,1129,1130,1131,1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1153,1154,1155,1156,1157,1158,1159,1160,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1184,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1204,1205,1206,1207,1208"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_APPLE,1,1} },
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_LANTERN,1,1} },
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_CANDY,1,1} },
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_BELL,1,1} },
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_STAR,1,1} },
	},
}
