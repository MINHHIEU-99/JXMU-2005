Include("\\script\\activitysys\\config\\30\\variables.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "�߼��ν���ִ���1000��С��3000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{"751",1000,"",">="} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"","<"} },
	},
	tbActition = 
	{
		--{"ThisActivity:GiveSongjinAward",	{1} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3040,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},10,"Event_NhaGiaoVN", "TongKim1000NhanCayBut"} },
		{"tbVngTransLog:Write", {"202211_20Thang11/", 16, "TongKim1000", "C�y B�t", 1}},
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "�߼��ν���ִ���3000",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:GiveSongjinAward",	{2} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3040,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},20,"Event_NhaGiaoVN", "TongKim3000NhanCayBut"} },
		{"tbVngTransLog:Write", {"202211_20Thang11/", 16, "TongKim3000", "C�y B�t", 1}},
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "�߼����ع�17��",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:GiveChuangguanAward",	{17} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3040,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},10,"Event_NhaGiaoVN", "VuotAi17NhanCayBut"} },
		{"tbVngTransLog:Write", {"202211_20Thang11/", 16, "VuotAi17", "C�y B�t", 1}},
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "�߼����ع�28��",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:GiveChuangguanAward",	{28} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3040,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},10,"Event_NhaGiaoVN", "VuotAi28NhanCayBut"} },
		{"tbVngTransLog:Write", {"202211_20Thang11/", 16, "VuotAi28", "C�y B�t", 1}},
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "FinishKillerBoss",
	szName = "�߼�ɱ��boss",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {90},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:GiveShashouAward",	{nil} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3040,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},2,"Event_NhaGiaoVN", "TieuDietBossSatThuNhanCayBut"} },
		{"tbVngTransLog:Write", {"202211_20Thang11/", 16, "TieuDietBossSatThu", "C�y B�t", 1}},
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "YDBZguoguan",
	szName = "�׵۴���10��",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:GiveYDBZAward",	{10} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3040,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},15,"Event_NhaGiaoVN", "VuotAiViemDe10NhanCayBut"} },
		{"tbVngTransLog:Write", {"202211_20Thang11/", 16, "VuotAiViemDe10", "C�y B�t", 1}},
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Ұ���ֵ����ֽ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckInMap",	{"321,322,75,227,340,93,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3039,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},1,"1"} },		
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "ServerStart",
	szName = "����������ʱ����npc",
	nStartDate = EventNhaGiaoVN2011.StartDate,
	nEndDate  = EventNhaGiaoVN2011.EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "�����ˮ��ͷ��",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:GiveFenglinduAward",	{1} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3040,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},5,"Event_NhaGiaoVN", "TieuDietThuyTacDauLinhNhanCayBut"} },
		{"tbVngTransLog:Write", {"202211_20Thang11/", 16, "TieuDietThuyTacDauLinh", "C�y B�t", 1}},
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "�����ˮ����ͷ��",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckId",	{"1692"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:GiveFenglinduAward",	{2} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3040,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},10,"Event_NhaGiaoVN", "TieuDietThuyTacDaiDauLinhNhanCayBut"} },
		{"tbVngTransLog:Write", {"202211_20Thang11/", 16, "TieuDietThuyTacDaiDauLinh", "C�y B�t", 1}},
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "�ƽ�boss",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		--{"ThisActivity:GiveGoldBossAward",	{nil} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3040,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},20,"Event_NhaGiaoVN", "TieuDietBossTheGioiNhanCayBut"} },
		{"tbVngTransLog:Write", {"202211_20Thang11/", 16, "TieuDietBossTheGioi", "C�y B�t", 1}},
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "ClickNpc",
	szName = "�������ʦ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i L�o S�"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		-- {"AddDialogOpt",	{"Giao n�p Cu�n S�ch",13} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng ng�y nh� gi�o",14} },
		--{"AddDialogOpt",	{"Nh�n �� Ph� Kim �",15} },
		{"SetDialogTitle",	{"Ng�y nh� gi�o m�i n�m l�i ��n, c�c ��i hi�p nh�n s� c� th� th�ng qua giao n�p <color=yellow> Cu�n S�ch <color> cho ta s� nh�n ���c ph�n th��ng, n�u nh� s� l�n giao n�p ��t ��n 700 l�n, v�n c� th� no�n ���c m�t s� lo�i �� Ph� Kim � n�o ��. ��ng th�i ��ng v�o ng�y l� 20/11/2022 c� th� ��n ch� c�a ta ��y nh�n ph�n th��ng ng�y l� nh� gi�o Vi�t Nam, m�i ng��i ch� c� th� nh�n th��ng m�t l�n, ��ng qu�n ng�y h�m �� nh�."} },
	},
}
-- tbConfig[13] = --һ��ϸ��
-- {
-- 	nId = 13,
-- 	szMessageType = "nil",
-- 	szName = "Giao n�p Cu�n S�ch",
-- 	nStartDate = nil,
-- 	nEndDate  = nil,
-- 	tbMessageParam = {nil},
-- 	tbCondition = 
-- 	{
-- 		-- {"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"ThisActivity:HandInBook",	{nil} },
-- 	},
-- }
tbConfig[13] =
{
	nId = 13,
	szMessageType = "ItemScript",
	szName = "S� d�ng Cu�n S�ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"return {tbProp={6,1,3042,-1,-1,0},} "},
	tbCondition = 
	{
		{"PlayerFunLib:VnCheckInCity", {"default"}},
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },		
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"ThisActivity:CheckBookLimit",	{nil} },
	},
	tbActition = 
	{
		{"ThisActivity:UseBook",	{nil} },
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "nil",
	szName = "Nh�n ph�n th��ng ng�y nh� gi�o",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTask",	{TSK_TeacherAward,0,"Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n n�a","=="} },
	},
	tbActition = 
	{
		{"ThisActivity:TeacherAward",	{nil} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "nil",
	szName = "Nh�n �� Ph� Kim �",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTask",	{TSK_JinwuAward,0,"Ng��i �� nh�n ph�n th��ng n�y r�i, kh�ng th� nh�n n�a","=="} },
		{"ThisActivity:CheckTask",	{TSK_HandInBook,700,"S� l��ng Cu�n S�ch m� ��i hi�p giao n�p ch�a �� 700 l�n, kh�ng th� nh�n ph�n th��ng.",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:JinwuAward",	{nil} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "ClickNpc",
	szName = "�����ͯ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th� ��ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Giao n�p Gi�y Tr�ng",17} },
		{"AddDialogOpt",	{"X�p Hoa Tri �n",21} },
		{"AddDialogOpt",	{"H�p th�nh Cu�n S�ch",18} },
		{"AddDialogOpt",	{"Ki�m tra s� l�n s� d�ng Event",24} },
		{"SetDialogTitle",	{"��i hi�p! C� <color=yellow> Gi�y Tr�ng <color> kh�ng, ��a cho ta �i, ta s� cho ng��i ph�n th��ng x�ng ��ng. Ta n�i cho ng��i bi�t m�t b� m�t nh�, s� d�ng <color=yellow> 5 T� Gi�y Tr�ng, 1 C�y B�t, 1 L� M�c <color> th� c� th� h�p th�nh 1 <color=yellow> Cu�n S�ch <color>, l�y Cu�n S�ch giao cho <color=yellow> ��i L�o S� b�n c�nh ta ��y  <color> s� nh�n ���c ph�n th��ng qu� gi�. N�i nh� cho ng��i nghe nh�, Gi�y Tr�ng c� th� ��n <color=yellow> Tr��ng B�ch S�n Nam, Tr��ng B�ch S�n B�c, Kh�a Lang ��ng, Sa M�c S�n ��ng 3, M�c Cao Qu�t, Ti�n C�c ��ng <color> ��nh qu�i r�i ra, c�n C�y B�t c� th� th�ng qua tham gia c�c ho�t ��ng t�nh n�ng �� nh�n ���c, L� M�c c� th� t�m th�y � trong <color=yellow> K� Tr�n C�c <color>, ��ng c� nh�m l�n ��y nh�."} },
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "nil",
	szName = "Giao n�p Gi�y Tr�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:HandInPaper",	{nil} },
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Cu�n S�ch",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Cu�n S�ch",1,1,1,0.02},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"AddOneMaterial",	{"Gi�y Tr�ng",{tbProp={6,1,3039,1,0,0},},5} },
		{"AddOneMaterial",	{"C�y B�t",{tbProp={6,1,3040,1,0,0},},1} },
		{"AddOneMaterial",	{"L� M�c",{tbProp={6,1,3041,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3042,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},1,"Event_NhaGiaoVN","GhepCuonSach"} },
	},
}
-- tbConfig[19] = --һ��ϸ��
-- {
-- 	nId = 19,
-- 	szMessageType = "ItemScript",
-- 	szName = "S� d�ng Hoa Tri �n",
-- 	nStartDate = nil,
-- 	nEndDate  = nil,
-- 	tbMessageParam = {"return {tbProp={6,1,3043,-1,-1,0},} "},
-- 	tbCondition = 
-- 	{
-- 		{"PlayerFunLib:VnCheckInCity", {"default"}},
-- 		-- {"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
-- 		{"ThisActivity:CheckTask",	{TSK_UsedZhienhua,nMaxZhienhua,"Th�t ��ng ti�c hi�n t�i s� l�n s� d�ng �� ��, kh�ng th� s� d�ng ���c n�a","<"} },
-- 		{"ThisActivity:CheckTask",	{TSK_HandInPaper,nMaxPaperCount,format("Hi�n t�i s� l�n giao n�p Gi�y Tr�ng ch�a ��t ��n %s, kh�ng th� s� d�ng",nMaxPaperCount),">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"ThisActivity:UseZhienhua",	{nil} },
-- 	},
-- }
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "ItemScript",
	szName = "S� d�ng Hoa Tri �n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"return {tbProp={6,1,3043,-1,-1,0},} "},
	tbCondition = 
	{
		{"PlayerFunLib:CheckFreeBagCell",	{5,"default"} },
		{"ThisActivity:CheckTask",	{TSK_UsedZhienhua,nMaxZhienhua,"Th�t ��ng ti�c hi�n t�i s� l�n s� d�ng �� ��, kh�ng th� s� d�ng ���c n�a","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseZhienhua_mu",	{nil} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "ItemScript",
	szName = "S� d�ng Thi�n V� H�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"return {tbProp={6,1,3044,-1,-1,0},} "},
	tbCondition = 
	{
		{"PlayerFunLib:VnCheckInCity", {"default"}},
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"ThisActivity:CheckTask",	{TSK_UsedTianyuhun,nMaxTianyuhun,"Th�t ��ng ti�c hi�n t�i s� l�n s� d�ng �� ��, kh�ng th� s� d�ng ���c n�a","<"} },
		--{"ThisActivity:CheckTask",	{TSK_HandInBook,nMaxBookCount,format("Hi�n t�i s� l�n giao n�p Cu�n S�ch  ch�a ��t ��n %s, kh�ng th� s� d�ng",nMaxBookCount),">="} },
	},
	tbActition = 
	{
		{"ThisActivity:UseTianyuhun",	{nil} },
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Hoa Tri �n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Hoa Tri �n",1,1,1,0.02},
	tbCondition = 
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"AddOneMaterial",	{"Gi�y Tr�ng",{tbProp={6,1,3039,1,0,0},},5} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},200000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3043,1,0,0},nExpiredTime=EventNhaGiaoVN2011.ItemExpiredTime,},1,"Event_NhaGiaoVN","GhepHoaTriAn"} },
	},
}

tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = EventNhaGiaoVN2011.StartDate,
	nEndDate  = EventNhaGiaoVN2011.EndDate,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua C�y B�t",23} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "buy pencil",
	nStartDate = EventNhaGiaoVN2011.StartDate,
	nEndDate  = EventNhaGiaoVN2011.EndDate,
	tbMessageParam = {"C�y B�t",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},200000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{ITEM_PENCIL,1,"Event_NhaGiaoVN","buy_pencil"} },
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "nil",
	szName = "check event",
	nStartDate = EventNhaGiaoVN2011.StartDate,
	nEndDate  = EventNhaGiaoVN2011.EndDate,
	tbMessageParam =  {nil},
	tbCondition = 
	{
		
	},
	tbActition = 
	{
		{"ThisActivity:CheckEventCount",	{nil} },
	},
}