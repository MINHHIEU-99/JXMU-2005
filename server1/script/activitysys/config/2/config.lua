Include("\\script\\activitysys\\config\\2\\variables.lua")
tbConfig = {}
tbConfig[1] = --Ò»¸öÏ¸½Ú
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "click big xmas tree",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"§¹i Tïng Gi¸ng Sinh"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Giíi thiÖu ho¹t ®éng Gi¸ng Sinh",5} },
		{"AddDialogOpt",	{"NhËn C©y Th«ng Gi¸ng Sinh",2} },
		{"AddDialogOpt",	{"NhËn TÊt Gi¸ng Sinh",3} },
		{"AddDialogOpt",	{"§æi thµnh phÇn th­ëng",4} },
	},
}
tbConfig[2] = --nhËn C©y Th«ng Gi¸ng Sinh råi
{
	nId = 2,
	szMessageType = "nil",
	szName = "get xmas tree",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTaskDaily",	{TSKI_TREE_LIMIT,MAX_GET_TREE_LIMIT,"H«m nay ng­¬i ®· nhËn C©y Th«ng Gi¸ng Sinh råi, ngµy mai h·y quay l¹i.","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_TREE,MAX_GET_TREE_LIMIT,EVENT_LOG_TITLE,"get xmas tree"} },
		{"ThisActivity:AddTaskDaily",	{TSKI_TREE_LIMIT,MAX_GET_TREE_LIMIT} },
	},
}
tbConfig[3] = --H«m nay ng­¬i ®· nhËn TÊt Gi¸ng Sinh råi
{
	nId = 3,
	szMessageType = "nil",
	szName = "get xmas stocking",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTaskDaily",	{TSKI_STOCKING_LIMIT,MAX_GET_STOCKING_LIMIT,"H«m nay ng­¬i ®· nhËn TÊt Gi¸ng Sinh råi, ngµy mai h·y quay l¹i.","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_STOCKING,MAX_GET_STOCKING_LIMIT,EVENT_LOG_TITLE,"get xmas stocking"} },
		{"ThisActivity:AddTaskDaily",	{TSKI_STOCKING_LIMIT,MAX_GET_STOCKING_LIMIT} },
	},
}
tbConfig[4] = --Nãn gi¸ng sinh
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "get award",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"TÝch LÞch ®¬n",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Nãn gi¸ng sinh",ITEM_XMAS_HAT,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_AWARD,1,EVENT_LOG_TITLE,"exchange award"} },
	},
}
tbConfig[5] = --cÊu tróc event
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "event introduction",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Vµo lóc 0:00 ngµy 1 th¸ng 1 n¨m 2024 ®Õn 24:00 ngµy 31 th¸ng 1 n¨m 2024, nh÷ng ®¹i hiÖp cÊp 150 trë lªn ( Relife kh«ng giíi h¹n cÊp ®é) cã thÓ tham gia ho¹t ®éng, ®¹i hiÖp cã thÓ ®Õn §¹i Tïng Gi¸ng Sinh t¹i L©m An (198,184), Ph­îng T­êng (198,199), BiÖn Kinh (213,195), §¹i Lý (202,198), T­¬ng D­¬ng (198,201), Thµnh §«(392,316) nhËn C©y Th«ng Gi¸ng Sinh vµ TÊt Gi¸ng Sinh, ®¹i hiÖp cã thÓ ë trong thµnh nhÊn chuét ph¶i ®Ó sö dông ®¹o cô C©y Th«ng Gi¸ng Sinh, nhËn ®­îc mét C©y Th«ng Gi¸ng Sinh, ®¹i hiÖp cã thÓ sö dông Qu¶ Gi¸ng Sinh, §Ìn Lång Gi¸ng Sinh, Kño Gi¸ng Sinh, Chu«ng Gi¸ng Sinh, Sao Gi¸ng Sinh ®Ó trang trÝ cho C©y Th«ng Gi¸ng Sinh, ®Ó nhËn ®­îc phÇn th­ëng, Qu¶ Gi¸ng Sinh, §Ìn Lång Gi¸ng Sinh, Qu¶ Gi¸ng Sinh, Chu«ng Gi¸ng Sinh, Sao Gi¸ng Sinh cã thÓ ®¸nh qu¸i r¬i ra t¹i Tr­êng B¹ch S¬n Nam, Kháa Lang §éng, Sa M¹c TÇng 3, M¹c Cao QuËt, TiÕn Cóc §éng. Mçi ngµy vµo lóc 19:00 - 23:00, ®¹i hiÖp cã thÓ mang theo TÊt Gi¸ng Sinh ®Õn §Ønh Tr­êng B¹ch ( T­¬ng D­¬ng-ThÇn BÝ Th­¬ng Nh©n LiÔu Êt-§Ønh Tr­êng B¹ch) ®Ó thu thËp LÔ VËt Gi¸ng Sinh, lÔ vËt sÏ v« cïng hÊp dÉn ®Êy! §Æc biÖt trong thêi gian diÔn ra ho¹t ®éng trong Kú Tr©n C¸c cßn cã vËt phÈm Mò Gi¸ng Sinh, ®¹i hiÖp cã thÓ mang theo Mò Gi¸ng Sinh ®i ®Õn §¹i Tïng Gi¸ng Sinh ®æi lÊy Cµn Kh«n TÝch LÞch §¬n, Cµn Kh«n TÝch LÞch §¬n nµy cã uy lùc v« song, cã thÓ sö dông nã ®Ó ®¸no b¹i ¸c Lang T¶ Sø, ¸c Lang T¶ Sø Èn nÊp trong ¸c Lang Cèc, ®¹i hiÖp cã thÓ th«ng qua Xa Phu t¹i c¸c thµnh thÞ ®Ó ®i vµo ¸c Lang Cèc, ®¸nh b¹i ¸c Lang T¶ Sø cã thÓ nhËn ®­îc phÇn th­ëng v« cïng phong phó .",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[6] = --§¹i Tïng Gi¸ng Sinh
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
		{"NpcFunLib:AddDialogNpc",	{"§¹i Tïng Gi¸ng Sinh",XMAS_BIG_TREE_ID,XMAS_BIG_TREE_POS} },
		{"ThisActivity:CreateAmbienceNpc",	{nil} },
	},
}
tbConfig[7] = --ChØ cã thÓ sö dông t¹i nh÷ng khu vùc phi chiÕn ®Êu
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
		{"PlayerFunLib:IsFightState",	{0, "ChØ cã thÓ sö dông t¹i nh÷ng khu vùc phi chiÕn ®Êu."} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "ChØ cã thÓ sö dông t¹i c¸c thµnh thÞ vµ c¸c t©n thñ th«n."} },
		{"PlayerFunLib:CheckTaskDaily",	{2915,60000,"Sö dông vËt phÈm ®¹t giíi h¹n ngµy.","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddTaskDaily",	{2915,1} },
		{"ThisActivity:UseTree",	{nil} },		
		{"ThisActivity:SetTaskByNowTime",	{TSKI_USE_TREE_TIME} },
	},
}
tbConfig[8] = --Hµnh trang kh«ng ®ñ
{
	nId = 8,
	szMessageType = "ItemScript",
	szName = "use pilidan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2739,-1,-1,-1},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{1,"Hµnh trang kh«ng ®ñ"} },
		{"ThisActivity:CheckTaskDaily",	{TSKI_PILIDAN_EXP_LIMIT,MAX_PILIDAN_EXP_LIMIT,"Sö dông vËt phÈm ®¹t giíi h¹n ngµy.","<"} },
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
