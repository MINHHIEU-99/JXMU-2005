Include("\\script\\activitysys\\config\\37\\variables.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Khi kh�i ��ng server s� t�i �ng Gi� Noel",
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
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "B�n �� ��nh qu�i nh�n ���c �o Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
		{"NpcFunLib:CheckInMap",	{"321,322,75,227,340,93,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{ITEM_XMAS_CLOTHING,1,"0.5"} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "�i�m t�ch l�y T�ng Kim cao c�p l�n h�n 1000 th�p h�n 3000 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_CAKE,10,EVENT_LOG_TITLE,"TongKim1000BanhGiangSinh"} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "�i�m t�ch l�y T�ng Kim cao c�p 3000 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_CAKE,30,EVENT_LOG_TITLE,"TongKim3000BanhGiangSinh"} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i th� 17 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_CAKE,10,EVENT_LOG_TITLE,"VuotAi17BanhGiangSinh"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i th� 28 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_CAKE,10,EVENT_LOG_TITLE,"VuotAi28BanhGiangSinh"} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Th�y T�c ��u L�nh Phong L�ng �� nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_CAKE,10,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinhBanhGiangSinh"} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Th�y T�c ��i ��u L�nh Phong L�ng �� nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_CAKE,20,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinhBanhGiangSinh"} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "YDBZguoguan",
	szName = "Vi�m �� v��t qua �i th� 10 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_BAG,15,EVENT_LOG_TITLE,"VuotAiViemDe10NhanTuiNoel"} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t Boss Ho�ng Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{

		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_CAKE,50,EVENT_LOG_TITLE,"TieuDietBossTheGioiBanhGiangSinh"} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t Boss S�t Th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_CAKE,3,EVENT_LOG_TITLE,"TieuDietBossSatThuBanhGiangSinh"} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "Chuanguan",
	szName = "V��t �i ti�u di�t Boss ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"30"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_XMAS_CAKE,1,EVENT_LOG_TITLE,"VuotAiTieuDietBossBanhGiangSinh"} },
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "YDBZ_KillMaxBoss",
	szName = "Vi�m �� ti�u di�t Boss cu�i ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:YDBZ_GiveStar",	{nil} },
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "Nh�n v�o ��i T�ng Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i T�ng Gi�ng Sinh"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nh�n ph�n th��ng",15} },
		{"AddDialogOpt",	{"H�p th�nh v�t ph�m",17} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "��i tho�i nh�n Qu�n Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V�o l�c 0:00-01-12-2022 ��n 24:00-31-12-2022, c�c ��i hi�p c�p 150 v� 150 tr� l�n (Relife kh�ng gi�i h�n) c� th� tham gia ho�t ��ng Gi�ng Sinh, c� m�i ti�ng ��ng h� oline tr�n m�ng s� nh�n ���c 10 Qu�n Gi�ng Sinh v� 40 B�nh B� ��, m�i ng�y nhi�u nh�t ch� nh�n ���c 5 l�n",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Online nh�n ph�n th��ng",16} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "nil",
	szName = "Quy�t ��nh nh�n Qu�n Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"default",">="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_XMAS_TROUSERS_DAILY,50,"H�m nay ng��i kh�ng th� nh�n n�a, ng�y mai h�y quay l�i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveXmasTrousers",	{nil} },
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "CreateDialog",
	szName = "��i tho�i h�p th�nh v�t ph�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Trong th�i gian ho�t ��ng, ��i hi�p ng��i c� th� ��n ch� c�a ta ��y h�p th�nh H�p Qu� Gi�ng Sinh, �ng Gi� Noel (nh�), �ng Gi� Noel (trung), �ng Gi� Noel (��i), B�nh Gi�ng Sinh, trong �� t� l� h�p th�nh th�nh c�ng c�a H�p Qu� Gi�ng Sinh l� 70%, t� l� h�p th�nh th�nh c�ng c�a �ng Gi� Noel (ti�u) l� 60%, t� l� th�nh c�ng h�p th�nh c�c v�t ph�m kh�c l� 100%, ng��i c� mu�n h�p th�nh kh�ng?",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh H�p Qu� Gi�ng Sinh",18} },
		{"AddDialogOpt",	{"H�p th�nh �ng Gi� Noel (nh�)",19} },
		--T�m ��ng -  - 20111129
	--	{"AddDialogOpt",	{"H�p th�nh �ng Gi� Noel (trung)",20} },
		{"AddDialogOpt",	{"H�p th�nh �ng Gi� Noel (��i)",21} },
		{"AddDialogOpt",	{"H�p th�nh B�nh Gi�ng Sinh",22} },
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh H�p Qu� Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p qu� gi�ng sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu�n Gi�ng Sinh",ITEM_XMAS_TROUSERS,1} },
		--Change request Event Noel -  - 20111129
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},200000} },
	},
	tbActition = 
	{
		{"ThisActivity:ComposeXmasGift",	{nil} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng Gi� Noel (nh�)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng Gi� Noel (nh�)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu�n Gi�ng Sinh",ITEM_XMAS_TROUSERS,1} },
		{"AddOneMaterial",	{"T�i Gi�ng Sinh",ITEM_XMAS_BAG,1} },
		--Change request Event Noel -  - 20111129
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},200000} },
	},
	tbActition = 
	{
		{"ThisActivity:ComposeXmasPerson_S",	{nil} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng Gi� Noel (trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng Gi� Noel (trung)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,3072,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3078,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1,EVENT_LOG_TITLE,"GhepNguoiTuyet(trung)"} },
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh �ng Gi� Noel (��i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng Gi� Noel (��i)",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
		{"AddOneMaterial",	{"Qu�n Gi�ng Sinh",ITEM_XMAS_TROUSERS,1} },
		{"AddOneMaterial",	{"T�i Gi�ng Sinh",ITEM_XMAS_BAG,1} },
		{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,3072,1,0,0},},2} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3079,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1,EVENT_LOG_TITLE,"GhepNguoiTuyet(lon)"} },
	},
}
-- tbConfig[22] = --һ��ϸ��
-- {
-- 	nId = 22,
-- 	szMessageType = "CreateCompose",
-- 	szName = "H�p th�nh B�nh Gi�ng Sinh",
-- 	nStartDate = nil,
-- 	nEndDate  = nil,
-- 	tbMessageParam = {"B�nh Gi�ng Sinh",1,1,1,0.02,0,50},
-- 	tbCondition = 
-- 	{
-- 		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,2} },
-- 		{"AddOneMaterial",	{"T�i Gi�ng Sinh",ITEM_XMAS_BAG,1} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3082,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1,EVENT_LOG_TITLE,"composeXmasCake"} },
-- 	},
-- }
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "��i B�nh Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�nh Gi�ng Sinh",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,1} },
		{"AddOneMaterial",	{"G� quay",{tbProp={6,1,30167,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3082,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1,EVENT_LOG_TITLE,"composeXmasCake"} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "Nh�n v�o �ng Gi� Noel",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng Gi� Noel"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"V�o l�c 0:00-01-12-2022 ��n 24:00-31-12-2022, c�c ��i hi�p c�p 150 v� 150 tr� l�n (Relife kh�ng gi�i h�n) c� th� ��n ��y s� d�ng 300, 400, 500 Ng�i Sao �� ��i l�y l�nh b�i tri�u h�i Boss Tr��ng Tuy�n, Kim Th� L��ng, M� Dung To�n, xin h�i ng��i mu�n �� lo�i n�o?"} },		
		-- {"AddDialogOpt",	{"L�nh B�i tri�u h�i Boss Tr��ng Tuy�n",24} },
		-- {"AddDialogOpt",	{"L�nh B�i tri�u h�i Boss Kim Th� L��ng",25} },
		-- {"AddDialogOpt",	{"L�nh B�i tri�u h�i M� Dung To�n",26} },
		--��n b� exp -  - 20111201
		--{"AddDialogOpt",	{"Nh�n ��n b� �i�m kinh nghi�m",33} },
		--Ho�t ��ng th� 3 -  -20111215
		{"AddDialogOpt",	{"M�n qu� ��m gi�ng sinh",34} },
		{"AddDialogOpt",	{"��i B�nh Gi�ng Sinh",22} },
		{"AddDialogOpt",	{"��i �ng gi� Noel h�ng",38} },
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "L�nh B�i tri�u h�i Boss Tr��ng Tuy�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh b�i Boss - Tr��ng Tuy�n",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel -  - 20111129
		{"AddOneMaterial",	{"Ng�i Sao",ITEM_XMAS_STAR,300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3083,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[25] = --һ��ϸ��
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "L�nh B�i tri�u h�i Boss Kim Th� L��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh b�i Boss - Kim Th� L��ng",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel -  - 20111129
		{"AddOneMaterial",	{"Ng�i Sao",ITEM_XMAS_STAR,400} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3084,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[26] = --һ��ϸ��
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "L�nh B�i tri�u h�i M� Dung To�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L�nh b�i Boss - M� Dung To�n",1,1,1,1,0,50},
	tbCondition = 
	{
		--Change request event noel -  - 20111129
		{"AddOneMaterial",	{"Ng�i Sao",ITEM_XMAS_STAR,500} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3085,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1,EVENT_LOG_TITLE,"DoiLenhBaiGoiBossTaiNpcOngGiaNoel"} },
	},
}
tbConfig[27] = --һ��ϸ��
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "S� d�ng �ng Gi� Noel (nh�)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3077,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_S_LIMIT,MAX_USED_XMAS_PERSON_S_LIMIT,"Ng��i �� s� d�ng �� �ng Gi� Noel (nh�), kh�ng th� s� d�ng th�m n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_S",	{nil} },
	},
}
tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "S� d�ng �ng Gi� Noel (trung)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3078,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_M_LIMIT,MAX_USED_XMAS_PERSON_M_LIMIT,"Ng��i �� s� d�ng �� �ng Gi� Noel (trung), kh�ng th� s� d�ng th�m n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_M",	{nil} },
	},
}
tbConfig[29] = --һ��ϸ��
{
	nId = 29,
	szMessageType = "ItemScript",
	szName = "S� d�ng �ng Gi� Noel (��i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3079,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_PERSON_L_LIMIT,MAX_USED_XMAS_PERSON_L_LIMIT,"Ng��i �� s� d�ng �� �ng Gi� Noel (��i), kh�ng th� s� d�ng th�m n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_L",	{nil} },
	},
}
tbConfig[30] = --һ��ϸ��
{
	nId = 30,
	szMessageType = "ItemScript",
	szName = "S� d�ng h�p qu� gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3080,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_GIFT_LIMIT,MAX_USED_XMAS_GIFT_LIMIT,"Ng��i �� s� d�ng �� H�p Qu� Gi�ng Sinh, kh�ng th� giao th�m ���c n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasGift",	{nil} },
	},
}
tbConfig[31] = --һ��ϸ��
{
	nId = 31,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�nh Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,3082,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{3,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },
		{"ThisActivity:CheckTask",	{TSK_XMAS_CAKE_LIMIT,MAX_USED_XMAS_CAKE_LIMIT,"Ng��i �� s� d�ng �� B�nh Gi�ng Sinh r�i, kh�ng th� giao th�m ���c n�a!","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasCake",	{nil} },
	},
}
tbConfig[32] = --һ��ϸ��
{
	nId = 32,
	szMessageType = "OnLogin",
	szName = "Ng��i ch�i tr�c tuy�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:PlayerOnLogin",	{nil} },
	},
}
tbConfig[33] = 
{
	nId = 33,
	szMessageType = "nil",
	szName = "Nh�n ��n b� gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"default",">="} },
		{"ThisActivity:CheckTimeGetCompensation",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 0, "M�i nh�n v�t ch� ���c nh�n th��ng 1 l�n", "=="}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {{nTaskID = 2911,nStartBit = 29,nBitCount = 1,nMaxValue = 1}, 1}},
		{"PlayerFunLib:AddExp",	{18e6,0,"Event_Noel","NhanThuongDenBuTrongCay"} },
	},
}
tbConfig[34] =
{
	nId = 34,
	szMessageType = "CreateDialog",
	szName = "��i tho�i nh�n ph�n th��ng ��m gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V�o l�c 0:00-24-12-2022 ��n 24:00-25-12-2022, c�c ��i hi�p c�p 150 v� 150 tr� l�n (Relife kh�ng gi�i h�n) c� th� ��n g�p ta �� nh�n m�n qu� gi�ng sinh l� 200 tri�u �i�m kinh nghi�m kh�ng c�ng d�n, m�i nh�n v�t ch� c� th� nh�n m�t l�n duy nh�t.",0},
	tbCondition = 
	{		
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu�n nh�n th��ng",35} },
	},
}
tbConfig[35] = 
{
	nId = 35,
	szMessageType = "nil",
	szName = "nh�n ph�n th��ng ��m gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"default",">="} },
		{"ThisActivity:CheckTimeGetFreeExp",	{nil} },
		{"tbVNG_BitTask_Lib:CheckBitTaskValue", {{nTaskID = 2912,nStartBit = 20,nBitCount = 1,nMaxValue = 1}, 0, "M�i nh�n v�t ch� ���c nh�n th��ng 1 l�n", "=="}},	
	},
	tbActition = 
	{
		{"tbVNG_BitTask_Lib:setBitTask", {{nTaskID = 2912,nStartBit = 20,nBitCount = 1,nMaxValue = 1}, 1}},
		{"PlayerFunLib:AddExp",	{200e6,0,"Event_Noel","NhanThuongDiemKinhNghiemDemGiangSinh"} },
	},
}
tbConfig[36] =--Click h�ng rong mua g� quay quay
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "Nh�n v�o H�ng rong",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
	},
	tbActition = 
	{		
		{"AddDialogOpt",	{"Mua G� Quay",37} },
	},
}
tbConfig[37] =
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua G� Quay",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"G� quay",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},200000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="G� quay",tbProp={6,1,30167,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1,EVENT_LOG_TITLE,"MuaGaQuay"} },
	},
}
tbConfig[38] =
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "��i �ng gi� Noel h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng gi� Noel h�ng",1,1,1,0.02,0,50},
	tbCondition = 
	{		
		{"AddOneMaterial",	{"G� quay",{tbProp={6,1,30167,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1} },		
		{"AddOneMaterial",	{"�o gi�ng sinh",ITEM_XMAS_CLOTHING,1} },
		{"AddOneMaterial",	{"N�n gi�ng sinh",ITEM_XMAS_HAT,1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30168,1,0,0},nExpiredTime=EventNoel2011.ItemExpiredTime,},1, EVENT_LOG_TITLE, "GhepOngGiaNoelHong"} },
	},
}
tbConfig[39] = 
{
	nId = 39,
	szMessageType = "ItemScript",
	szName = "S� d�ng �ng Gi� Noel h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30168,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{20,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCellWH",	{3, 3, 1,"default"} },
		{"PlayerFunLib:CheckInMap",	{"11,1,37,,176,162,78,80,174,121,153,101,99,100,20,53", "Ch� c� th� s� d�ng t�i c�c th�nh th� v� c�c t�n th� th�n."} },
		{"PlayerFunLib:CheckTask",	{2916,50000,"M�i nh�n v�t ch� ���c ph�p s� d�ng t�i �a 50000 v�t ph�m �ng gi� Noel h�ng","<"} },		
	},
	tbActition = 
	{
		{"ThisActivity:UseXmasPerson_Pink",	{nil} },
	},
}