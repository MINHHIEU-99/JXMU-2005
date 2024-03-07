tbConfig = {}
tbConfig[1] = 
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "B�m v�o L� Quan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L� Quan"},
	tbCondition = 
	{
		--{"ThisActivity:IsOpen",	{nil} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu�n ��i phi phong",2} },
	},
}
tbConfig[2] = 
{
	nId = 2,
	szMessageType = "CreateDialog",
	szName = "Ta mu�n ��i phi phong",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� c� ��i hi�p danh ti�ng l�y l�ng, m�i x�ng ��ng nh�n ���c phi phong tuy�t ��p c�a ta, ��i hi�p ng�i mu�n chon lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong L�ng V�n c�p 1",4} },
		{"AddDialogOpt",	{"Phi phong Tuy�t Th� C�p 2",5} },
		{"AddDialogOpt",	{"Phi phong Ph� Qu�n c�p 3",6} },
		{"AddDialogOpt",	{"Phi phong Ng�o Tuy�t c�p 4",10} },
		{"AddDialogOpt",	{"Phi phong Kinh L�i c�p 5",11} },
		{"AddDialogOpt",	{"Trang k� ",3} },
	},
}
tbConfig[3] = 
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "Ta mu�n ��i phi phong",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch� c� ��i hi�p danh ti�ng l�y l�ng, m�i x�ng ��ng nh�n ���c phi phong tuy�t ��p c�a ta, ��i hi�p ng�i mu�n chon lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong Ng� Phong c�p 6",12} },
		{"AddDialogOpt",	{"Trang tr��c",2} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "Phi phong L�ng V�n c�p 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong L�ng V�n c�p 1",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{1} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		-- {"AddOneMaterial",	{"Phi Phong C�p ",{tbProp={0,3465},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 4",{tbProp={6,1,4911,1,0,0},},30} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1} },
		--{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},66} },

	
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3465},nExpiredTime= 43200,},1,"Mua phi phong C�p 1"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Phi phong Tuy�t Th� C�p 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Tuy�t Th� C�p 2",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{2} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p 1 ",{tbProp={0,3465},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 4",{tbProp={6,1,4911,1,0,0},},60} },
		-- {"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},1000} },
		-- {"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},1000} },
		-- {"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},1000} },
		-- {"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},1000} },
		--{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},462} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3466},nExpiredTime= 43200,},1,"Mua phi phong C�p 2"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ph� Qu�n c�p 3",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ph� Qu�n c�p 3",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{3} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p 2 ",{tbProp={0,3466},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 4 ",{tbProp={6,1,4911,1,0,0},},120} },
		-- {"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},3000} },
		-- {"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},3000} },
		-- {"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},3000} },
		-- {"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},3000} },
		--{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},1386} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3467},nExpiredTime=43200,},1,"Mua phi phong C�p 3"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ng�o Tuy�t c�p 4 (D�ch chuy�n t�c th�i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ng�o Tuy�t c�p 4 (D�ch chuy�n t�c th�i)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{4} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p 3 ",{tbProp={0,3467},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5",{tbProp={6,1,4912,1,0,0},},20} },
		-- {"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},6000} },
		--{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},2310} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3468},nExpiredTime= 43200,},1,"Mua phi phong C�p 4"} },
	},
}
tbConfig[13] = 
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ng�o Tuy�t c�p 4 (X�c su�t h�a gi�i s�t th��ng)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ng�o Tuy�t c�p 4 (X�c su�t h�a gi�i s�t th��ng)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{4} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p 3",{tbProp={0,3467},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5-2",{tbProp={6,1,4936,1,0,0},},30} },
		-- {"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},6000} },
	--	{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},2310} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3469},nExpiredTime= 43200,},1,"Mua phi phong C�p 4"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Phi phong Kinh L�i c�p 5 (D�ch chuy�n t�c th�i)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Kinh L�i c�p 5 (D�ch chuy�n t�c th�i)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{5} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p 4",{tbProp={0,3468},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5",{tbProp={6,1,4912,1,0,0},},70} },
		-- {"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},3234} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3470},nExpiredTime= 43200,},1,"Mua phi phong C�p 5"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Phi phong Kinh L�i c�p 5 ( Tr�ng k�ch )",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Kinh L�i c�p 5 ( Tr�ng k�ch )",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{5} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p 4",{tbProp={0,3469},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5",{tbProp={6,1,4912,1,0,0},},70} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5-2",{tbProp={6,1,4936,1},},70} },
		-- {"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},3234} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3472},nExpiredTime= 43200,},1,"Mua phi phong C�p 5"} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Phi phong Kinh L�i c�p 5 (X�c su�t h�a gi�i s�t th��ng)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Kinh L�i c�p 5 (X�c su�t h�a gi�i s�t th��ng)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{5} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p 4",{tbProp={0,3469},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5-2",{tbProp={6,1,4936,1},},100} },
		-- {"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},3234} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3471},nExpiredTime= 43200,},1,"Mua phi phong C�p 5"} },
	},
}

tbConfig[9] = 
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ng� Phong c�p 6 (D�ch chuy�n t�c th�i )",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ng� Phong c�p 6 (D�ch chuy�n t�c th�i )",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{6} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p 5",{tbProp={0,3470},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5",{tbProp={6,1,4912,1,0,0},},70} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5-2",{tbProp={6,1,4936,1,0,0},},70} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},4620} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3473},nExpiredTime= 43200,},1,"Mua phi phong C�p 6"} },
	},
}

tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ng� Phong c�p 6 (X�c su�t h�a gi�i s�t th��ng)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ng� Phong c�p 6 (X�c su�t h�a gi�i s�t th��ng)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{6} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p 5",{tbProp={0,3471},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5",{tbProp={6,1,4912,1,0,0},},100} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5-2",{tbProp={6,1,4936,1,0,0},},100} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},4620} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3474},nExpiredTime= 43200,},1,"Mua phi phong C�p 6"} },
	},
}
tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ng� Phong c�p 6 (Tr�ng k�ch)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ng� Phong c�p 6 (Tr�ng k�ch)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{6} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong C�p ",{tbProp={0,3472},},1} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5",{tbProp={6,1,4912,1,0,0},},110} },
		{"AddOneMaterial",	{"Kim B�o R��ng 5-2",{tbProp={6,1,4936,1,0,0},},110} },
		{"AddOneMaterial",	{"Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"T� Th�y Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Lam Th�y Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"L�c Th�y Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh l�c",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},4620} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3475},nExpiredTime= 43200,},1,"Mua phi phong C�p 6"} },
	},
}

tbConfig[10] = 
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "Phi phong Ng�o Tuy�t c�p 4",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc><color=yellow>Phi phong Ng�o Tuy�t c�p 4 <color> c� m�y lo�i d��i ��y , ��i hi�p ng�i mu�n ch�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong Ng�o Tuy�t c�p 4 (D�ch chuy�n t�c th�i)",7} },
		{"AddDialogOpt",	{"Phi phong Ng�o Tuy�t c�p 4 (X�c su�t h�a gi�i s�t th��ng)",13} },
	},
}
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "CreateDialog",
	szName = "Phi phong Kinh L�i c�p 5",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc><color=yellow>Phi phong Kinh L�i c�p 5 <color>c� m�y lo�i d��i �ay, ��i hi�p ng�i mu�n ch�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong Kinh L�i c�p 5 (D�ch chuy�n t�c th�i)",8} },
		{"AddDialogOpt",	{"Phi phong Kinh L�i c�p 5 (X�c su�t h�a gi�i s�t th��ng)",14} },
		{"AddDialogOpt",	{"Phi phong Kinh L�i c�p 5 ( Tr�ng k�ch )",15} },
	},
}
tbConfig[12] = 
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "Phi phong Ng� Phong c�p 6",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc><color=yellow>Phi phong Ng� Phong c�p 6<color> c� m�y lo�i d��i ��y, ��i hi�p ng�i mu�n ch�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong Ng� Phong c�p 6 (D�ch chuy�n t�c th�i )",9} },
		{"AddDialogOpt",	{"Phi phong Ng� Phong c�p 6 (X�c su�t h�a gi�i s�t th��ng)",16} },
		{"AddDialogOpt",	{"Phi phong Ng� Phong c�p 6 (Tr�ng k�ch)",17} },
	},
}

