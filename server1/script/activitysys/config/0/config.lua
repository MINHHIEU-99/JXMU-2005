Include("\\script\\activitysys\\config\\0\\variables.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("script\\global\\mrt\\configserver\\configall.lua")
-------JXMU>VN---
tbConfig = {}
tbConfig[1] = --T¹o NPC khi Server Start
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Add npc when server start",
	nStartDate = JXMU.StartDate,
	nEndDate  = JXMU.EndDate,
	tbMessageParam = {nil},
	tbCondition =
	{
	},
	tbActition =
	{
		{"ThisActivity:InitNpc",	{nil} },
	},
}
--============================================================§èi Tho¹i NPC vµ Ðp R­¬ng =========================================
tbConfig[14] = --§èi tho¹i ChiÕn T©m T«n Gi¶
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo ChiÕn T©m T«n Gi¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ChiÕn T©m T«n Gi¶"},
	tbCondition =
	{
	},
	tbActition =
	{
		-- {"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng",15} },
		-- {"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng (kh«ng tèn nguyªn liÖu)",39} },
		-- {"AddDialogOpt",	{"Ho¹t ®éng s¨n NhÝm M©p",38} },
		-- {"AddDialogOpt",	{"Reset Event",52} },
		-- {"AddDialogOpt",	{"Hç trî ng­êi ch¬i míi",22} },
	},
}
tbConfig[15] =--"§èi tho¹i víi ChiÕn T©m T«n Gi¶",
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i víi ChiÕn T©m T«n Gi¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang hå l¹i cã mét phen dËy sãng"},

	tbCondition =
	{
	},
	tbActition =
	{
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 1", 16} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 2", 17} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 3", 18} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 4", 19} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 5", 20} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 5-2", 32} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 6", 25} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 6-2", 33} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 7", 26} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng cÊp 7-2", 34} },
	},
}
tbConfig[22] =-- "§èi tho¹i víi ChiÕn T©m T«n Gi¶",
{
	nId = 22,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i víi ChiÕn T©m T«n Gi¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang hå l¹i cã mét phen dËy sãng"},
	tbCondition =
	{
	},
	tbActition =
	{
		{"AddDialogOpt",	{"NhËp CODE t©n thñ", 23} },
	},
}
tbConfig[39] =--"§èi tho¹i víi ChiÕn T©m T«n Gi¶",free nguyªn liÖu 
{
	nId = 39,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i víi ChiÕn T©m T«n Gi¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang hå l¹i cã mét phen dËy sãng"},

	tbCondition =
	{
	},
	tbActition =
	{
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng free nguyªn liÖu cÊp 5", 40} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng free nguyªn liÖu cÊp 5-2", 41} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng free nguyªn liÖu cÊp 6", 42} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng free nguyªn liÖu cÊp 6-2", 43} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng free nguyªn liÖu cÊp 7", 44} },
		{"AddDialogOpt",	{"ChÕ t¹o Kim B¶o R­¬ng free nguyªn liÖu cÊp 7-2", 45} },
	},
}

--=====================================================$$$$$$$$$$$$$$$$ChÕ t¹o Kim B¶o R­¬ng %%%%%%%%%%%%%++++++++++++++++++++=================

tbConfig[16] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 1",
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 1",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng",{tbProp={6,1,4907,1,0,0},},30} },
		-- {"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4908,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong1"} },
	},
}
tbConfig[17] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 2",
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 2",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 1",{tbProp={6,1,4908,1,0,0},},30} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=500000},1} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4909,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong2"} },
	},
}
tbConfig[18] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 3",
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 3",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 3",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 2",{tbProp={6,1,4909,1,0,0},},20} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4910,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong3"} },
	},
}
tbConfig[19] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 4",
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 4",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 4",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 3",{tbProp={6,1,4910,1,0,0},},15} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},20} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4911,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong4"} },
	},
}
tbConfig[20] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 5",
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 5",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 5",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 4",{tbProp={6,1,4911,1,0,0},},10} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},80} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},50} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4912,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong5"} },
	},
}
tbConfig[25] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 6",
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 6",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 6",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 5",{tbProp={6,1,4912,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},800} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},500} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},500} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},500} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},500} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4914,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong6"} },
	},
}
tbConfig[26] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 7",
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 7",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 7",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 6",{tbProp={6,1,4914,1,0,0},},5} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},1000} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4915,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong7"} },
	},
}
tbConfig[32] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 5-2",
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 5-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 5-2",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 4",{tbProp={6,1,4911,1,0,0},},10} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},80} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},50} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},100} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4936,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong5-2"} },
	},
}
tbConfig[33] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 6-2",
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 6-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 6-2",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 5",{tbProp={6,1,4912,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},800} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},500} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},500} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},500} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},500} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4937,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong6-2"} },
	},
}
tbConfig[34] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 7-2",
{
	nId = 34,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 7-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 7-2",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 6",{tbProp={6,1,4914,1,0,0},},5} },
		{"AddOneMaterial",	{"TiÒn §ång",{tbProp={4,417,1,1,0,0,0},},1000} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Ng©n l­îng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4938,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong7-2"} },
	},
}
tbConfig[40] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 5",free nguyªn liÖu 
{
	nId = 40,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 5",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 5",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 4",{tbProp={6,1,4911,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4912,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong5"} },
	},
}
tbConfig[41] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 5-2",free nguyªn liÖu 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 5-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 5-2",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"§¼ng cÊp cña ng­¬i kh«ng ®ñ, lÇn sau h·y ®Õn nhÐ!",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 4",{tbProp={6,1,4911,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4936,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong5-2"} },
	},
}
tbConfig[42] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 6",free nguyªn liÖu 
{
	nId = 42,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 6",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 6",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 5",{tbProp={6,1,4912,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4914,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong6"} },
	},
}
tbConfig[43] = -- "ChÕ t¹o Kim B¶o R­¬ng cÊp 6-2",free nguyªn liÖu 
{
	nId = 43,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 6-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 6-2",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 5-2",{tbProp={6,1,4936,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4937,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong6-2"} },
	},
}
tbConfig[44] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 7",free nguyªn liÖu 
{
	nId = 44,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 7",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 7",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 6",{tbProp={6,1,4914,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4915,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong7"} },
	},
}
tbConfig[45] = --"ChÕ t¹o Kim B¶o R­¬ng cÊp 7-2",free nguyªn liÖu 
{
	nId = 45,
	szMessageType = "CreateCompose",
	szName = "ChÕ t¹o Kim B¶o R­¬ng cÊp 7-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChÕ t¹o Kim B¶o R­¬ng cÊp 7-2",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng cÊp 6-2",{tbProp={6,1,4937,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4938,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong7-2"} },
	},
}



--=====================================================teleport nhÝm gÇy ===========================================



tbConfig[38] =--"Di chuyÓn tíi b¶n ®å NhÝm MËp",
{
	nId = 38,
	szMessageType = "",
	szName = "Di chuyÓn tíi b¶n ®å NhÝm MËp",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition =
	{
		{"ThisActivity:NhimMapNewWorld", {nil}},
	},
}




--===========================================================code tan thu ============================================



tbConfig[23] =--"NhËp CODE t©n thñ",
{
	nId = 23,
	szMessageType = "nil",
	szName = "NhËp CODE t©n thñ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang hå l¹i cã mét phen dËy sãng"},
	tbCondition =
	{
	},
	tbActition =
	{
		{"ThisActivity:CodeTanThu", {nil}},
	},
}
--=================================================Sö dông VËt PhÈm Kim B¶o R­¬ng =================================



tbConfig[21] = --Sö dông Kim B¶o R­¬ng cÊp 5
{
	nId = 21,
	szMessageType = "ItemScript",
	szName = "Sö dông Kim B¶o R­¬ng cÊp 5",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4912,1,0,0},}},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition =
	{
		{"ThisActivity:SuDungKimBaoRuongCap5", {nil}},
	},
}
tbConfig[27] =--"Sö dông Kim B¶o R­¬ng cÊp 6",
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "Sö dông Kim B¶o R­¬ng cÊp 6",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4914,1,0,0},}},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition =
	{
		{"ThisActivity:SuDungKimBaoRuongCap6", {nil}},
	},
}
tbConfig[28] =--"Sö dông Kim B¶o R­¬ng cÊp 7",
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "Sö dông Kim B¶o R­¬ng cÊp 7",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4915,1,0,0},}},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition =
	{
		{"ThisActivity:SuDungKimBaoRuongCap7", {nil}},
	},
}
tbConfig[35] =--"Sö dông Kim B¶o R­¬ng cÊp 5-2",
{
	nId = 35,
	szMessageType = "ItemScript",
	szName = "Sö dông Kim B¶o R­¬ng cÊp 5-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4936,1,0,0},}},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition =
	{
		{"ThisActivity:SuDungKimBaoRuongCap5_2", {nil}},
	},
}
tbConfig[36] =-- "Sö dông Kim B¶o R­¬ng cÊp 6-2",
{
	nId = 36,
	szMessageType = "ItemScript",
	szName = "Sö dông Kim B¶o R­¬ng cÊp 6-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4937,1,0,0},}},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition =
	{
		{"ThisActivity:SuDungKimBaoRuongCap6_2", {nil}},
	},
}
tbConfig[37] =--"Sö dông Kim B¶o R­¬ng cÊp 7-2",
{
	nId = 37,
	szMessageType = "ItemScript",
	szName = "Sö dông Kim B¶o R­¬ng cÊp 7-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4938,1,0,0},}},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{10,"default"} },
	},
	tbActition =
	{
		{"ThisActivity:SuDungKimBaoRuongCap7_2", {nil}},
	},
}



--=================================================ho¹t §éng event reset l¹i sè lÇn sö dông vËt phÈm =================================



tbConfig[52] = --"§èi tho¹i víi ChiÕn T©m T«n Gi¶",
{
	nId = 52,
	szMessageType = "CreateDialog",
	szName = "§èi tho¹i víi ChiÕn T©m T«n Gi¶",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Reset Event"},

	tbCondition =
	{
	},
	tbActition =
	{
		{"AddDialogOpt",	{"Reset Event Th­êng", 53} },
		{"AddDialogOpt",	{"Reset Event §Æc biÖt", 54} },
	},
}
tbConfig[53] = --"Reset Event Th­êng",
{
	nId = 53,
	szMessageType = "CreateCompose",
	szName = "Reset Event Th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Reset Event Th­êng",1,1,1,0},
	tbCondition =
	{
		{"AddOneMaterial",	{"10K Event th­êng",{tbProp={6,1,4958,1,0,0},},10000} },
	},
	tbActition =
	{
		{"ThisActivity:ResetEventThuong", {nil}},
	},
}
tbConfig[54] = --"Reset Event §Æc biÖt",
{
	nId = 54,
	szMessageType = "CreateCompose",
	szName = "Reset Event §Æc biÖt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Reset Event §Æc biÖt",1,1,1,0},
	tbCondition =
	{
		{"AddOneMaterial",	{"5K Event §Æc biÖt",{tbProp={6,1,4959,1,0,0},},5000} },
	},
	tbActition =
	{
		{"ThisActivity:ResetEventDacBiet", {nil}},
	},
}



--=================================================NhiÖm vô s¸t thñ cÊp 80 =================================



tbConfig[24] = --"NhiÖm vô s¸t thñ cÊp 80",
{
	nId = 24,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 80",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{80} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3103,1,0,0},},1,"HoatDong_KimBaoRuong\tTieuDietBossSatThu"}},
		{"NpcFunLib:DropSingleItem",	{
			{

				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Thñy Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="Tö Thñy Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="Lôc Thñy Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh Hång B¶o Th¹ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="TiÒn §ång", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
			

			},
			50,
			"200"
		} },
	},
}
tbConfig[10] = --NhiÖm vô s¸t thñ cÊp 90
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "NhiÖm vô s¸t thñ cÊp 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4913,1,0,0},},1,"HoatDong_KimBaoRuong\tTieuDietThuyTacDaiDauLinh"} },

	},
}


--================================================= Tèng Kim Trao Th­ëng=================================


tbConfig[2] = --Tèng kim 1000 ®iÓm
{
	nId = 2,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "Tèng Kim lóc 21H sÏ ®­îc nhiÒu th­ëng, ng­êi h·y gióp ®ì nhÐ"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimCaoCap1000","20-vien-tiem-nang"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3056,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Long-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3057,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Lan-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3058,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Phung-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3059,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Quy-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {4,343,1,1,0,0},nCount = 1,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Kim Nguyªn B¶o"}},
		-- {"PlayerFunLib:GetItem",	{{nJxb=30000000},1,"JXMU_TongKim1000","3Kv"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[3] = --Tèng kim 3000 ®iÓm
{
	nId = 3,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "Tèng Kim lóc 21H sÏ ®­îc nhiÒu th­ëng, ng­êi h·y gióp ®ì nhÐ"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimCaoCap3000","20-vien-tiem-nang"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3056,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Long-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3057,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Lan-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3058,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Phung-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3059,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Quy-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {4,343,1,1,0,0,0},nCount = 2,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Kim Nguyªn B¶o"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[30] = --Tèng kim 10000 ®iÓm
{
	nId = 30,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "Tèng kim cao cÊp 10000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,">="} },
		{"lib:CheckTime",	{{{210000,223000}}, "Tèng Kim lóc 21H sÏ ®­îc nhiÒu th­ëng, ng­êi h·y gióp ®ì nhÐ"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{

		{"PlayerFunLib:GetItem",	{{tbProp={4,343,1,1,0,0,0}},5,"JXMU_TongKimCaoCap10000","5 kim"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,4959,1,0,0}},50,"JXMU_TongKimCaoCap10000","Event-Dac-Biet"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0}},50,"JXMU_TongKimCaoCap10000","50 Xu"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3103,1,0,0},nCount = 40,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimCaoCap10000","20-vien-tiem-nang"}},
	},
}
tbConfig[46] = --Tèng kim s¬ cÊp 1000 ®iÓm
{
	nId = 46,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "Tèng kim s¬ cÊp 1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"1"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "Tèng Kim lóc 21H sÏ ®­îc nhiÒu th­ëng, ng­êi h·y gióp ®ì nhÐ"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimSoCap1000","20-vien-tiem-nang"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[47] = --Tèng kim s¬ cÊp 3000 ®iÓm
{
	nId = 47,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "Tèng kim s¬ cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"1"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "Tèng Kim lóc 21H sÏ ®­îc nhiÒu th­ëng, ng­êi h·y gióp ®ì nhÐ"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0}},50,"JXMU_TongKimSoCap3000","50 Xu"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimSoCap3000","20-vien-tiem-nang"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[48] = --Tèng kim s¬ cÊp 10000 ®iÓm
{
	nId = 48,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "Tèng kim s¬ cÊp 10000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"1"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,">="} },
		{"lib:CheckTime",	{{{210000,223000}}, "Tèng Kim lóc 21H sÏ ®­îc nhiÒu th­ëng, ng­êi h·y gióp ®ì nhÐ"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{nJxb=50000000},1,"JXMU_TongKimSoCap10000","5Kv"}},
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0}},100,"JXMU_TongKimSoCap10000","100 Xu"}},
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0}},50,"JXMU_TongKimSoCap10000","50 Xu"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimSoCap10000","20-vien-tiem-nang"}},
	},
}
tbConfig[49] = --Tèng kim trung cÊp 1000 ®iÓm
{
	nId = 49,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "Tèng kim trung cÊp 1000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"2"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "Tèng Kim lóc 21H sÏ ®­îc nhiÒu th­ëng, ng­êi h·y gióp ®ì nhÐ"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimTrungCap1000","20-vien-tiem-nang"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[50] = --Tèng kim  trung cÊp 3000 ®iÓm
{
	nId = 50,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "Tèng kim trung cÊp 3000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"2"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "Tèng Kim lóc 21H sÏ ®­îc nhiÒu th­ëng, ng­êi h·y gióp ®ì nhÐ"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0}},50,"JXMU_TongKimTrungCap3000","50 Xu"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimTrungCap3000","20-vien-tiem-nang"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[51] = --Tèng kim trung cÊp 10000 ®iÓm
{
	nId = 51,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "Tèng kim trung cÊp 10000 ®iÓm",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"2"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,">="} },
		{"lib:CheckTime",	{{{210000,223000}}, "Tèng Kim lóc 21H sÏ ®­îc nhiÒu th­ëng, ng­êi h·y gióp ®ì nhÐ"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{nJxb=50000000},1,"JXMU_TongKimTrungCap10000","5Kv"}},
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0}},100,"JXMU_TongKimTrungCap10000","100 Xu"}},
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0}},50,"JXMU_TongKimTrungCap10000","50 Xu"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimTrungCap10000","20-vien-tiem-nang"}},
	},
}

--================================================= V­ît ¶i theo giai ®o¹n=================================


tbConfig[4] = --V­ît qua ¶i 17 giai ®o¹n 1
{
	nId = 4,
	szMessageType = "Chuanguan",
	-- szMessageType = "nil",
	szName = "V­ît qua ¶i 17 giai ®o¹n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4913,1,0,0},},3,"HoatDong_KimBaoRuong\tTieuDietThuyTacDaiDauLinh"} },

		
	},
}
tbConfig[5] =--V­ît qua ¶i 28 giai ®o¹n 1
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "V­ît qua ¶i 28 giai ®o¹n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4913,1,0,0},},5,"HoatDong_KimBaoRuong\tTieuDietThuyTacDaiDauLinh"} },
	
	},
}


--================================================= Phong l¨ng ®é theo giai ®o¹n=================================


tbConfig[6] = --Thñy tÆc ®Çu lÜnh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "GiÕt chÕt 1 thñy tÆc ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{
		-- {"NpcFunLib:CheckBoatBoss",	{nil} },
		{"NpcFunLib:CheckId",	{"725"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckInMap",	{"337,338,339,53"} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {4,417,1,1,0,0},nCount = 5,nBindState = 0,nExpiredTime = nil},1,"GiÕt chÕt 1 thñy tÆc ®Çu lÜnh","Kim Nguyªn B¶o"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4913,1,0,0},},5,"HoatDong_KimBaoRuong\tTieuDietThuyTacDauLinh"} },


	},
}
tbConfig[7] = --thuû tÆc ®¹i ®Çu lÜnh
{
	nId = 7,
	szMessageType = "NpcOnDeath", -- lÊy vÞ trÝ npc chÕt
	szName = "Tiªu diÖt thuû tÆc ®¹i ®Çu lÜnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339,53"} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {4,417,1,1,0,0},nCount = 10,nBindState = 0,nExpiredTime = nil},1,"GiÕt chÕt 1 thñy tÆc ®¹i ®Çu lÜnh","Kim Nguyªn B¶o"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4913,1,0,0},},10,"HoatDong_KimBaoRuong\tTieuDietThuyTacDaiDauLinh"} },

	},
}
tbConfig[13] = --Hoµn thµnh Phong L¨ng §é
{
	nId = 13,
	szMessageType = "FinishFengLingDu",
	szName = "Hoµn thµnh Phong L¨ng §é",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{

	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4913,1,0,0},},20,"HoatDong_KimBaoRuong\tTieuDietThuyTacDaiDauLinh"} },

	},
}

--================================================= Phong l¨ng ®é theo giai ®o¹n=================================



tbConfig[8] = --Viªm ®Õ
{
	nId = 8,
	-- szMessageType = "YDBZguoguan",
	szMessageType = "nil",
	szName = "V­ît qua ¶i Viªm §Õ thø 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},},100,"Viªm §Õ\tV­ît qua ¶i Viªm §Õ"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4907,1,0,0},},300,"Viªm §Õ\tV­ît qua ¶i Viªm §Õ"} },
	
	},
}
tbConfig[9] = --Boss thÕ giíi
{
	nId = 9,
		szMessageType = "NpcOnDeath",
		szName = "Tiªu diÖt boss thÕ giíi",
		nStartDate = nil,
		nEndDate  = nil,
		tbMessageParam = {nil},
		tbCondition = 
		{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		-- {"NpcFunLib:CheckId",	{"566,740,1366,582,568,744,583,563,562,747,739,1365,741,742,743,567,745,565,1367,1368,743"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		},
	tbActition =
	{

		{"PlayerFunLib:GetItem",	{{{szName="Tói m¶nh hkmp",tbProp={6,1,4913,1,0,0,},nCount=25},},1,"Viªm §Õ\tV­ît qua ¶i Viªm §Õ"} },
		{"PlayerFunLib:GetItem",	{{{szName="Tói m¶nh hkmp",tbProp={4,417,1,1,0,0,},nCount=30},},1,"Viªm §Õ\tV­ît qua ¶i Viªm §Õ"} },



	},
}

tbConfig[11] = --§¸nh qu¸i th­êng
{
	nId = 11,
	-- szMessageType = "nil",
	szMessageType = "NpcOnDeath",
	szName = "§¸nh qu¸i th­êng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition =
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,4913,1,0,0},},1,"2"} },
},
}
tbConfig[55] = --§¸nh qu¸i th­êng
{
	nId = 55,
	szMessageType = "nil",
	-- szMessageType = "NpcOnDeath",
	szName = "§¸nh qu¸i vip",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		-- {"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105"} },
	},
	tbActition =
	{
		-- {"ThisActivity:NpcOnDeath",	{nil} },
		-- {"ThisActivity:DropMagicItem",	{nil} },
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,4907,1,0,0},},1,"HoatDong_KimBaoRuong\tTieuDietBossSatThu"} },
		{"NpcFunLib:DropSingleItem",	{
			{
				{szName="CÈm Nang Hoµng Kim",tbProp={6,1,1832,1,0,0,},nRate=1},
			  },
			3,
			"1000"
		} },

	},
}
tbConfig[12] = --Ng­êi ch¬i trùc tuyÕn
{
	nId = 12,
	szMessageType = "OnLogin",
	szName = "Ng­êi ch¬i trùc tuyÕn",
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

tbConfig[31] = --Tiªu diÖt qu¸i ë Phong Háa Liªn Thµnh
{
	nId = 31,
	szMessageType = "NpcOnCityDefenceDeath",
	szName = "Tiªu diÖt qu¸i ë Phong Háa Liªn Thµnh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		-- {"NpcFunLib:CheckId",	{"1692"} },
		-- {"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition =
	{},
}
tbConfig[29] = --Ho¾c Kh¾c chÕt
{
	nId = 29,
	szMessageType = "HuaKeOnDeath",
	szName = "Ho¾c Kh¾c chÕt",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		-- {"NpcFunLib:CheckKillerdBoss",	{80} },
	},
	tbActition =
	{},
}
-- tbConfig[56]
-- {
-- 	nId = 56,
-- 	szMessageType = "NpcOnDeath",
-- 	szName = "Tiªu diÖt boss thÕ giíi",
-- 	nStartDate = nil,
-- 	nEndDate  = nil,
-- 	tbMessageParam = {nil},
-- 	tbCondition = 
-- 	{
-- 		{"NpcFunLib:CheckWorldBoss",	{nil} },
-- 		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
-- 	},
-- 	tbActition = 
-- 	{
-- 		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4907,1,0,0},},3000,"HoatDong_KimBaoRuong\tTieuDietThuyTacDaiDauLinh"} },
-- 		{"NpcFunLib:DropSingleItem",	{
-- 			{
				

-- 				{szName="Lam Thñy Tinh",tbProp={4,238,1,1,0,0},nRate=1},
-- 				{szName="Lam Thñy Tinh",tbProp={4,238,1,1,0,0},nRate=1},
-- 				{szName="Lam Thñy Tinh",tbProp={4,238,1,1,0,0},nRate=1},
-- 				{szName="Lam Thñy Tinh",tbProp={4,238,1,1,0,0},nRate=1},
-- 				{szName="Lam Thñy Tinh",tbProp={4,238,1,1,0,0},nRate=1},

-- 				{szName="Tö Thñy Tinh",tbProp={4,239,1,1,0,0},nRate=1},
-- 				{szName="Tö Thñy Tinh",tbProp={4,239,1,1,0,0},nRate=1},
-- 				{szName="Tö Thñy Tinh",tbProp={4,239,1,1,0,0},nRate=1},
-- 				{szName="Tö Thñy Tinh",tbProp={4,239,1,1,0,0},nRate=1},
-- 				{szName="Tö Thñy Tinh",tbProp={4,239,1,1,0,0},nRate=1},

-- 				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1,0,0},nRate=1},
-- 				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1,0,0},nRate=1},
-- 				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1,0,0},nRate=1},
-- 				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1,0,0},nRate=1},
-- 				{szName="Lôc Thñy Tinh",tbProp={4,240,1,1,0,0},nRate=1},

-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},

-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},

-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0},nRate=1},

-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},

-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},

-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B¹c NÐn",tbProp={6,1,69,1,0,0,},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="TiÒn §ång", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},

-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
-- 			},
-- 			100,--sè l­îng r¬i ra ngoµi ®Êt 
-- 			"232"
-- 		} },},
-- }