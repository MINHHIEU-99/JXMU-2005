Include("\\script\\activitysys\\config\\0\\variables.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("script\\global\\mrt\\configserver\\configall.lua")
-------JXMU>VN---
tbConfig = {}
tbConfig[1] = --T�o NPC khi Server Start
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
--============================================================��i Tho�i NPC v� �p R��ng =========================================
tbConfig[14] = --��i tho�i Chi�n T�m T�n Gi�
{
	nId = 14,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Chi�n T�m T�n Gi�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Chi�n T�m T�n Gi�"},
	tbCondition =
	{
	},
	tbActition =
	{
		-- {"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng",15} },
		-- {"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng (kh�ng t�n nguy�n li�u)",39} },
		-- {"AddDialogOpt",	{"Ho�t ��ng s�n Nh�m M�p",38} },
		-- {"AddDialogOpt",	{"Reset Event",52} },
		-- {"AddDialogOpt",	{"H� tr� ng��i ch�i m�i",22} },
	},
}
tbConfig[15] =--"��i tho�i v�i Chi�n T�m T�n Gi�",
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "��i tho�i v�i Chi�n T�m T�n Gi�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang h� l�i c� m�t phen d�y s�ng"},

	tbCondition =
	{
	},
	tbActition =
	{
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 1", 16} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 2", 17} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 3", 18} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 4", 19} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 5", 20} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 5-2", 32} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 6", 25} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 6-2", 33} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 7", 26} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng c�p 7-2", 34} },
	},
}
tbConfig[22] =-- "��i tho�i v�i Chi�n T�m T�n Gi�",
{
	nId = 22,
	szMessageType = "CreateDialog",
	szName = "��i tho�i v�i Chi�n T�m T�n Gi�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang h� l�i c� m�t phen d�y s�ng"},
	tbCondition =
	{
	},
	tbActition =
	{
		{"AddDialogOpt",	{"Nh�p CODE t�n th�", 23} },
	},
}
tbConfig[39] =--"��i tho�i v�i Chi�n T�m T�n Gi�",free nguy�n li�u 
{
	nId = 39,
	szMessageType = "CreateDialog",
	szName = "��i tho�i v�i Chi�n T�m T�n Gi�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang h� l�i c� m�t phen d�y s�ng"},

	tbCondition =
	{
	},
	tbActition =
	{
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng free nguy�n li�u c�p 5", 40} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng free nguy�n li�u c�p 5-2", 41} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng free nguy�n li�u c�p 6", 42} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng free nguy�n li�u c�p 6-2", 43} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng free nguy�n li�u c�p 7", 44} },
		{"AddDialogOpt",	{"Ch� t�o Kim B�o R��ng free nguy�n li�u c�p 7-2", 45} },
	},
}

--=====================================================$$$$$$$$$$$$$$$$Ch� t�o Kim B�o R��ng %%%%%%%%%%%%%++++++++++++++++++++=================

tbConfig[16] = --"Ch� t�o Kim B�o R��ng c�p 1",
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 1",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"Kim B�o R��ng",{tbProp={6,1,4907,1,0,0},},30} },
		-- {"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},2} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4908,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong1"} },
	},
}
tbConfig[17] = --"Ch� t�o Kim B�o R��ng c�p 2",
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 2",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 1",{tbProp={6,1,4908,1,0,0},},30} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=500000},1} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},2} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4909,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong2"} },
	},
}
tbConfig[18] = --"Ch� t�o Kim B�o R��ng c�p 3",
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 3",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 3",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 2",{tbProp={6,1,4909,1,0,0},},20} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},2} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},2} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},2} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4910,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong3"} },
	},
}
tbConfig[19] = --"Ch� t�o Kim B�o R��ng c�p 4",
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 4",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 4",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 3",{tbProp={6,1,4910,1,0,0},},15} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},20} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},50} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4911,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong4"} },
	},
}
tbConfig[20] = --"Ch� t�o Kim B�o R��ng c�p 5",
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 5",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 5",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 4",{tbProp={6,1,4911,1,0,0},},10} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},80} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},50} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4912,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong5"} },
	},
}
tbConfig[25] = --"Ch� t�o Kim B�o R��ng c�p 6",
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 6",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 6",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 5",{tbProp={6,1,4912,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},800} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},500} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},500} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},500} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},500} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4914,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong6"} },
	},
}
tbConfig[26] = --"Ch� t�o Kim B�o R��ng c�p 7",
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 7",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 7",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 6",{tbProp={6,1,4914,1,0,0},},5} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},1000} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},100} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},100} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4915,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong7"} },
	},
}
tbConfig[32] = --"Ch� t�o Kim B�o R��ng c�p 5-2",
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 5-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 5-2",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 4",{tbProp={6,1,4911,1,0,0},},10} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},80} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},50} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},50} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4936,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong5-2"} },
	},
}
tbConfig[33] = --"Ch� t�o Kim B�o R��ng c�p 6-2",
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 6-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 6-2",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 5",{tbProp={6,1,4912,1,0,0},},5} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},800} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},500} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},500} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},500} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},500} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4937,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong6-2"} },
	},
}
tbConfig[34] = --"Ch� t�o Kim B�o R��ng c�p 7-2",
{
	nId = 34,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 7-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 7-2",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 6",{tbProp={6,1,4914,1,0,0},},5} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},1000} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},100} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},100} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},100} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=500000},1} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4938,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong7-2"} },
	},
}
tbConfig[40] = --"Ch� t�o Kim B�o R��ng c�p 5",free nguy�n li�u 
{
	nId = 40,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 5",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 5",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 4",{tbProp={6,1,4911,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4912,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong5"} },
	},
}
tbConfig[41] = --"Ch� t�o Kim B�o R��ng c�p 5-2",free nguy�n li�u 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 5-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 5-2",1,1,1,0},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 4",{tbProp={6,1,4911,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4936,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong5-2"} },
	},
}
tbConfig[42] = --"Ch� t�o Kim B�o R��ng c�p 6",free nguy�n li�u 
{
	nId = 42,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 6",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 6",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 5",{tbProp={6,1,4912,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4914,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong6"} },
	},
}
tbConfig[43] = -- "Ch� t�o Kim B�o R��ng c�p 6-2",free nguy�n li�u 
{
	nId = 43,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 6-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 6-2",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 5-2",{tbProp={6,1,4936,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4937,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong6-2"} },
	},
}
tbConfig[44] = --"Ch� t�o Kim B�o R��ng c�p 7",free nguy�n li�u 
{
	nId = 44,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 7",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 7",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 6",{tbProp={6,1,4914,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4915,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong7"} },
	},
}
tbConfig[45] = --"Ch� t�o Kim B�o R��ng c�p 7-2",free nguy�n li�u 
{
	nId = 45,
	szMessageType = "CreateCompose",
	szName = "Ch� t�o Kim B�o R��ng c�p 7-2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� t�o Kim B�o R��ng c�p 7-2",1,1,1,0},
	tbCondition =
	{
		{"PlayerFunLib:CheckFreeBagCell",	{4,"default"} },
		{"AddOneMaterial",	{"Kim B�o R��ng c�p 6-2",{tbProp={6,1,4937,1,0,0},},40} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4938,1,0,0},},1,"HoatDong_KimBaoRuong\tGhepKimBaoRuong7-2"} },
	},
}



--=====================================================teleport nh�m g�y ===========================================



tbConfig[38] =--"Di chuy�n t�i b�n �� Nh�m M�p",
{
	nId = 38,
	szMessageType = "",
	szName = "Di chuy�n t�i b�n �� Nh�m M�p",
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



tbConfig[23] =--"Nh�p CODE t�n th�",
{
	nId = 23,
	szMessageType = "nil",
	szName = "Nh�p CODE t�n th�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang h� l�i c� m�t phen d�y s�ng"},
	tbCondition =
	{
	},
	tbActition =
	{
		{"ThisActivity:CodeTanThu", {nil}},
	},
}
--=================================================S� d�ng V�t Ph�m Kim B�o R��ng =================================



tbConfig[21] = --S� d�ng Kim B�o R��ng c�p 5
{
	nId = 21,
	szMessageType = "ItemScript",
	szName = "S� d�ng Kim B�o R��ng c�p 5",
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
tbConfig[27] =--"S� d�ng Kim B�o R��ng c�p 6",
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "S� d�ng Kim B�o R��ng c�p 6",
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
tbConfig[28] =--"S� d�ng Kim B�o R��ng c�p 7",
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "S� d�ng Kim B�o R��ng c�p 7",
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
tbConfig[35] =--"S� d�ng Kim B�o R��ng c�p 5-2",
{
	nId = 35,
	szMessageType = "ItemScript",
	szName = "S� d�ng Kim B�o R��ng c�p 5-2",
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
tbConfig[36] =-- "S� d�ng Kim B�o R��ng c�p 6-2",
{
	nId = 36,
	szMessageType = "ItemScript",
	szName = "S� d�ng Kim B�o R��ng c�p 6-2",
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
tbConfig[37] =--"S� d�ng Kim B�o R��ng c�p 7-2",
{
	nId = 37,
	szMessageType = "ItemScript",
	szName = "S� d�ng Kim B�o R��ng c�p 7-2",
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



--=================================================ho�t ��ng event reset l�i s� l�n s� d�ng v�t ph�m =================================



tbConfig[52] = --"��i tho�i v�i Chi�n T�m T�n Gi�",
{
	nId = 52,
	szMessageType = "CreateDialog",
	szName = "��i tho�i v�i Chi�n T�m T�n Gi�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Reset Event"},

	tbCondition =
	{
	},
	tbActition =
	{
		{"AddDialogOpt",	{"Reset Event Th��ng", 53} },
		{"AddDialogOpt",	{"Reset Event ��c bi�t", 54} },
	},
}
tbConfig[53] = --"Reset Event Th��ng",
{
	nId = 53,
	szMessageType = "CreateCompose",
	szName = "Reset Event Th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Reset Event Th��ng",1,1,1,0},
	tbCondition =
	{
		{"AddOneMaterial",	{"10K Event th��ng",{tbProp={6,1,4958,1,0,0},},10000} },
	},
	tbActition =
	{
		{"ThisActivity:ResetEventThuong", {nil}},
	},
}
tbConfig[54] = --"Reset Event ��c bi�t",
{
	nId = 54,
	szMessageType = "CreateCompose",
	szName = "Reset Event ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Reset Event ��c bi�t",1,1,1,0},
	tbCondition =
	{
		{"AddOneMaterial",	{"5K Event ��c bi�t",{tbProp={6,1,4959,1,0,0},},5000} },
	},
	tbActition =
	{
		{"ThisActivity:ResetEventDacBiet", {nil}},
	},
}



--=================================================Nhi�m v� s�t th� c�p 80 =================================



tbConfig[24] = --"Nhi�m v� s�t th� c�p 80",
{
	nId = 24,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m v� s�t th� c�p 80",
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

				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
				{szName="Lam Th�y Tinh",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="T� Th�y Tinh",tbProp={6,1,147,2,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3059,1,0,0},nRate=1},
				{szName="L�c Th�y Tinh",tbProp={6,1,147,3,0,0},nRate=1},
				{szName="Tinh H�ng B�o Th�ch",tbProp={6,1,147,1,0,0},nRate=1},
				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
				{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0},nRate=3},
				{szName="Lenh-Ky", tbProp = {6,1,3056,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3058,1,0,0},nRate=1},
				{szName="Lenh-Ky", tbProp = {6,1,3057,1,0,0},nRate=1},
			

			},
			50,
			"200"
		} },
	},
}
tbConfig[10] = --Nhi�m v� s�t th� c�p 90
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m v� s�t th� c�p 90",
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


--================================================= T�ng Kim Trao Th��ng=================================


tbConfig[2] = --T�ng kim 1000 �i�m
{
	nId = 2,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 1000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "T�ng Kim l�c 21H s� ���c nhi�u th��ng, ng��i h�y gi�p �� nh�"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimCaoCap1000","20-vien-tiem-nang"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3056,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Long-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3057,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Lan-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3058,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Phung-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3059,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Quy-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {4,343,1,1,0,0},nCount = 1,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Kim Nguy�n B�o"}},
		-- {"PlayerFunLib:GetItem",	{{nJxb=30000000},1,"JXMU_TongKim1000","3Kv"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[3] = --T�ng kim 3000 �i�m
{
	nId = 3,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "T�ng Kim l�c 21H s� ���c nhi�u th��ng, ng��i h�y gi�p �� nh�"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimCaoCap3000","20-vien-tiem-nang"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3056,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Long-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3057,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Lan-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3058,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Phung-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,3059,1,0,0},nCount = 50,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Quy-Lenh-Ky"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {4,343,1,1,0,0,0},nCount = 2,nBindState = 0,nExpiredTime = nil},1,"JXMU_TongKimCaoCap1000","Kim Nguy�n B�o"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[30] = --T�ng kim 10000 �i�m
{
	nId = 30,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 10000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,">="} },
		{"lib:CheckTime",	{{{210000,223000}}, "T�ng Kim l�c 21H s� ���c nhi�u th��ng, ng��i h�y gi�p �� nh�"} },
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
tbConfig[46] = --T�ng kim s� c�p 1000 �i�m
{
	nId = 46,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "T�ng kim s� c�p 1000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"1"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "T�ng Kim l�c 21H s� ���c nhi�u th��ng, ng��i h�y gi�p �� nh�"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimSoCap1000","20-vien-tiem-nang"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[47] = --T�ng kim s� c�p 3000 �i�m
{
	nId = 47,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "T�ng kim s� c�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"1"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "T�ng Kim l�c 21H s� ���c nhi�u th��ng, ng��i h�y gi�p �� nh�"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0}},50,"JXMU_TongKimSoCap3000","50 Xu"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimSoCap3000","20-vien-tiem-nang"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[48] = --T�ng kim s� c�p 10000 �i�m
{
	nId = 48,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "T�ng kim s� c�p 10000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"1"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,">="} },
		{"lib:CheckTime",	{{{210000,223000}}, "T�ng Kim l�c 21H s� ���c nhi�u th��ng, ng��i h�y gi�p �� nh�"} },
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
tbConfig[49] = --T�ng kim trung c�p 1000 �i�m
{
	nId = 49,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "T�ng kim trung c�p 1000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"2"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "T�ng Kim l�c 21H s� ���c nhi�u th��ng, ng��i h�y gi�p �� nh�"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimTrungCap1000","20-vien-tiem-nang"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[50] = --T�ng kim  trung c�p 3000 �i�m
{
	nId = 50,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "T�ng kim trung c�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"2"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,"<"} },
		{"lib:CheckTime",	{{{210000,223000}}, "T�ng Kim l�c 21H s� ���c nhi�u th��ng, ng��i h�y gi�p �� nh�"} },
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0}},50,"JXMU_TongKimTrungCap3000","50 Xu"}},
		{"PlayerFunLib:GetItem",	{{tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880},1,"JXMU_TongKimTrungCap3000","20-vien-tiem-nang"}},
		-- {"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[51] = --T�ng kim trung c�p 10000 �i�m
{
	nId = 51,
	szMessageType = "nil",
	-- szMessageType = "FinishSongJin",
	szName = "T�ng kim trung c�p 10000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"2"},
	tbCondition =
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{10000,">="} },
		{"lib:CheckTime",	{{{210000,223000}}, "T�ng Kim l�c 21H s� ���c nhi�u th��ng, ng��i h�y gi�p �� nh�"} },
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

--================================================= V��t �i theo giai �o�n=================================


tbConfig[4] = --V��t qua �i 17 giai �o�n 1
{
	nId = 4,
	szMessageType = "Chuanguan",
	-- szMessageType = "nil",
	szName = "V��t qua �i 17 giai �o�n 1",
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
tbConfig[5] =--V��t qua �i 28 giai �o�n 1
{
	nId = 5,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 28 giai �o�n 1",
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


--================================================= Phong l�ng �� theo giai �o�n=================================


tbConfig[6] = --Th�y t�c ��u l�nh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t ch�t 1 th�y t�c ��u l�nh",
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
		{"PlayerFunLib:GetItem",	{{tbProp = {4,417,1,1,0,0},nCount = 5,nBindState = 0,nExpiredTime = nil},1,"Gi�t ch�t 1 th�y t�c ��u l�nh","Kim Nguy�n B�o"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4913,1,0,0},},5,"HoatDong_KimBaoRuong\tTieuDietThuyTacDauLinh"} },


	},
}
tbConfig[7] = --thu� t�c ��i ��u l�nh
{
	nId = 7,
	szMessageType = "NpcOnDeath", -- l�y v� tr� npc ch�t
	szName = "Ti�u di�t thu� t�c ��i ��u l�nh",
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
		{"PlayerFunLib:GetItem",	{{tbProp = {4,417,1,1,0,0},nCount = 10,nBindState = 0,nExpiredTime = nil},1,"Gi�t ch�t 1 th�y t�c ��i ��u l�nh","Kim Nguy�n B�o"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4913,1,0,0},},10,"HoatDong_KimBaoRuong\tTieuDietThuyTacDaiDauLinh"} },

	},
}
tbConfig[13] = --Ho�n th�nh Phong L�ng ��
{
	nId = 13,
	szMessageType = "FinishFengLingDu",
	szName = "Ho�n th�nh Phong L�ng ��",
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

--================================================= Phong l�ng �� theo giai �o�n=================================



tbConfig[8] = --Vi�m ��
{
	nId = 8,
	-- szMessageType = "YDBZguoguan",
	szMessageType = "nil",
	szName = "V��t qua �i Vi�m �� th� 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition =
	{
		-- {"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition =
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},},100,"Vi�m ��\tV��t qua �i Vi�m ��"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4907,1,0,0},},300,"Vi�m ��\tV��t qua �i Vi�m ��"} },
	
	},
}
tbConfig[9] = --Boss th� gi�i
{
	nId = 9,
		szMessageType = "NpcOnDeath",
		szName = "Ti�u di�t boss th� gi�i",
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

		{"PlayerFunLib:GetItem",	{{{szName="T�i m�nh hkmp",tbProp={6,1,4913,1,0,0,},nCount=25},},1,"Vi�m ��\tV��t qua �i Vi�m ��"} },
		{"PlayerFunLib:GetItem",	{{{szName="T�i m�nh hkmp",tbProp={4,417,1,1,0,0,},nCount=30},},1,"Vi�m ��\tV��t qua �i Vi�m ��"} },



	},
}

tbConfig[11] = --��nh qu�i th��ng
{
	nId = 11,
	-- szMessageType = "nil",
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i th��ng",
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
tbConfig[55] = --��nh qu�i th��ng
{
	nId = 55,
	szMessageType = "nil",
	-- szMessageType = "NpcOnDeath",
	szName = "��nh qu�i vip",
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
				{szName="C�m Nang Ho�ng Kim",tbProp={6,1,1832,1,0,0,},nRate=1},
			  },
			3,
			"1000"
		} },

	},
}
tbConfig[12] = --Ng��i ch�i tr�c tuy�n
{
	nId = 12,
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

tbConfig[31] = --Ti�u di�t qu�i � Phong H�a Li�n Th�nh
{
	nId = 31,
	szMessageType = "NpcOnCityDefenceDeath",
	szName = "Ti�u di�t qu�i � Phong H�a Li�n Th�nh",
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
tbConfig[29] = --Ho�c Kh�c ch�t
{
	nId = 29,
	szMessageType = "HuaKeOnDeath",
	szName = "Ho�c Kh�c ch�t",
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
-- 	szName = "Ti�u di�t boss th� gi�i",
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
				

-- 				{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nRate=1},
-- 				{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nRate=1},
-- 				{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nRate=1},
-- 				{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nRate=1},
-- 				{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nRate=1},

-- 				{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nRate=1},
-- 				{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nRate=1},
-- 				{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nRate=1},
-- 				{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nRate=1},
-- 				{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nRate=1},

-- 				{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nRate=1},
-- 				{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nRate=1},
-- 				{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nRate=1},
-- 				{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nRate=1},
-- 				{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nRate=1},

-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},

-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},

-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},
-- 				{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=1},

-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},

-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},

-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},
-- 				{szName="B�c N�n",tbProp={6,1,69,1,0,0,},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},
-- 				{szName="Ti�n ��ng", tbProp={4,343,1,1,0,0},nRate=1},

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
-- 			100,--s� l��ng r�i ra ngo�i ��t 
-- 			"232"
-- 		} },},
-- }