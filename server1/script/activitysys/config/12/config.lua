Include("\\script\\global\\mrt\\configserver\\configall.lua")
Include("\\script\\activitysys\\config\\12\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "click npc1",
	nStartDate = VanTieu.nStartDate, -- 201204020000,
	nEndDate  = VanTieu.nEndDate, --203205010000,
	tbMessageParam = {"T�ng Ti�u ��u"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu�n h� t�ng ",2} },
		{"SetDialogTitle",	{"Giao n�p 1 H� Ti�u L�nh cho ta th� c� th� ti�p nh�n nhi�m v� h� t�ng, h� t�ng h�ng ��n ch� th��ng bu�n th� c� th� nh�n ���c ph�n th��ng phong ph�, m�i ��i hi�p m�i ng�y c� th� ti�p nh�n nhi�m v� 3 l�n, trong h�nh tr�nh h� t�ng, ��i hi�p c�n ph�I b�o v� s� an to�n c�a Xe Ng�a, n�u Xe Ng�a b� ch�t, th� s� r�i ra 1 H� Ti�u L�nh v� nhi�m v� s� th�t b�i"} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "nil",
	szName = "give task",
	nStartDate =VanTieu.nStartDate, -- 201204020000,
	nEndDate  = VanTieu.nEndDate, --203205010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{40,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
		{"ThisActivity:CheckTaskDaily",	{TSKI_DAILY_COUNT,MAX_DAILY_COUNT,"H�m nay ��i hi�p �� h� t�ng 2 l�n r�i, ��i ng�y mai ti�p t�c nh�.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:GiveTask",	{nil} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "nil",
	szName = "give award",
	nStartDate =VanTieu.nStartDate, -- 201204020000,
	nEndDate  = VanTieu.nEndDate, --203205010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:IsWinner",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{40,szLEVEL_TIP,">="} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
	},
	tbActition = 
	{
		{"ThisActivity:DelWinner",	{nil} },
		{"ThisActivity:AddTaskDaily",	{TSKI_DAILY_COUNT,1} },
		{"ThisActivity:GiveAward",	{nil} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "ServerStart",
	szName = "server start",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:ServerStart",	{nil} },
		{"NpcFunLib:AddDialogNpc",	{"Th��ng Bu�n",1905,{{1,1865,2755}}} },
		{"NpcFunLib:AddDialogNpc",	{"T�ng Ti�u ��u",1904,{{1,1564,2759}}} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "ClickNpc",
	szName = "click npc2",
	nStartDate =VanTieu.nStartDate, -- 201204020000,
	nEndDate  = VanTieu.nEndDate, --203205010000,
	tbMessageParam = {"Th��ng Bu�n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Nh�n ph�n th��ng nhi�m v� h� t�ng",3} },
		{"SetDialogTitle",	{"L�y h�ng t� Ng��i V�n Chuy�n giao cho ta, ta s� th��ng cho ng��i th�t h�u h�nh"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "ClickNpc",
	szName = "Click lingfan",
	nStartDate =VanTieu.nStartDate, -- 201204020000,
	nEndDate  = VanTieu.nEndDate, --201205010000,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"ThisActivity:CheckCamp",	{0} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua Gia Huy�t Ph�",7} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "buy healing bag",
	nStartDate =VanTieu.nStartDate, -- 201204020000,
	nEndDate  = VanTieu.nEndDate, --203205010000,
	tbMessageParam = {"Gia Huy�t Ph�",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=50000},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"ThisActivity:CheckCamp",	{0, szCAMP_TIP} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="Gia Huy�t Ph�",tbProp={6,1,3146,1,0,0},nExpiredTime=10080},1,EVENT_LOG_TITLE,"Mua Gia Huy�t Ph�"} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "nil",
	szName = "��ϸ��",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "nil",
	szName = "nil",
	nStartDate =VanTieu.nStartDate, -- nil,
	nEndDate  = VanTieu.nEndDate, --nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
