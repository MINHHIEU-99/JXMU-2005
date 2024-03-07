tbConfig = {}
tbConfig[1] = 
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "BÊm vµo LÔ Quan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"LÔ Quan"},
	tbCondition = 
	{
		--{"ThisActivity:IsOpen",	{nil} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta muèn ®æi phi phong",2} },
	},
}
tbConfig[2] = 
{
	nId = 2,
	szMessageType = "CreateDialog",
	szName = "Ta muèn ®æi phi phong",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChØ cã ®¹i hiÖp danh tiÕng lÉy lõng, míi xøng ®¸ng nhËn ®­îc phi phong tuyÖt ®Ñp cña ta, ®¹i hiÖp ngµi muèn chon lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong L¨ng V©n cÊp 1",4} },
		{"AddDialogOpt",	{"Phi phong TuyÖt ThÕ CÊp 2",5} },
		{"AddDialogOpt",	{"Phi phong Ph¸ Qu©n cÊp 3",6} },
		{"AddDialogOpt",	{"Phi phong Ng¹o TuyÕt cÊp 4",10} },
		{"AddDialogOpt",	{"Phi phong Kinh L«i cÊp 5",11} },
		{"AddDialogOpt",	{"Trang kÕ ",3} },
	},
}
tbConfig[3] = 
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "Ta muèn ®æi phi phong",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>ChØ cã ®¹i hiÖp danh tiÕng lÉy lõng, míi xøng ®¸ng nhËn ®­îc phi phong tuyÖt ®Ñp cña ta, ®¹i hiÖp ngµi muèn chon lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong Ngù Phong cÊp 6",12} },
		{"AddDialogOpt",	{"Trang tr­íc",2} },
	},
}
tbConfig[4] = 
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "Phi phong L¨ng V©n cÊp 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong L¨ng V©n cÊp 1",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{1} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		-- {"AddOneMaterial",	{"Phi Phong CÊp ",{tbProp={0,3465},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 4",{tbProp={6,1,4911,1,0,0},},30} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1} },
		--{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},66} },

	
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3465},nExpiredTime= 43200,},1,"Mua phi phong CÊp 1"} },
	},
}
tbConfig[5] = 
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Phi phong TuyÖt ThÕ CÊp 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong TuyÖt ThÕ CÊp 2",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{2} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 1 ",{tbProp={0,3465},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 4",{tbProp={6,1,4911,1,0,0},},60} },
		-- {"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},1000} },
		-- {"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},1000} },
		-- {"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},1000} },
		-- {"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},1000} },
		--{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},462} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3466},nExpiredTime= 43200,},1,"Mua phi phong CÊp 2"} },
	},
}
tbConfig[6] = 
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ph¸ Qu©n cÊp 3",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ph¸ Qu©n cÊp 3",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{3} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 2 ",{tbProp={0,3466},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 4 ",{tbProp={6,1,4911,1,0,0},},120} },
		-- {"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},3000} },
		-- {"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},3000} },
		-- {"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},3000} },
		-- {"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},3000} },
		--{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},1386} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3467},nExpiredTime=43200,},1,"Mua phi phong CÊp 3"} },
	},
}
tbConfig[7] = 
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ng¹o TuyÕt cÊp 4 (DÞch chuyÓn tøc thêi)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ng¹o TuyÕt cÊp 4 (DÞch chuyÓn tøc thêi)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{4} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 3 ",{tbProp={0,3467},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5",{tbProp={6,1,4912,1,0,0},},20} },
		-- {"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},6000} },
		--{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},2310} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3468},nExpiredTime= 43200,},1,"Mua phi phong CÊp 4"} },
	},
}
tbConfig[13] = 
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ng¹o TuyÕt cÊp 4 (X¸c suÊt hãa gi¶i s¸t th­¬ng)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ng¹o TuyÕt cÊp 4 (X¸c suÊt hãa gi¶i s¸t th­¬ng)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{4} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 3",{tbProp={0,3467},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5-2",{tbProp={6,1,4936,1,0,0},},30} },
		-- {"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},6000} },
		-- {"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},6000} },
	--	{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},2310} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3469},nExpiredTime= 43200,},1,"Mua phi phong CÊp 4"} },
	},
}
tbConfig[8] = 
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Phi phong Kinh L«i cÊp 5 (DÞch chuyÓn tøc thêi)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Kinh L«i cÊp 5 (DÞch chuyÓn tøc thêi)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{5} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 4",{tbProp={0,3468},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5",{tbProp={6,1,4912,1,0,0},},70} },
		-- {"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},3234} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3470},nExpiredTime= 43200,},1,"Mua phi phong CÊp 5"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Phi phong Kinh L«i cÊp 5 ( Träng kÝch )",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Kinh L«i cÊp 5 ( Träng kÝch )",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{5} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 4",{tbProp={0,3469},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5",{tbProp={6,1,4912,1,0,0},},70} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5-2",{tbProp={6,1,4936,1},},70} },
		-- {"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},3234} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3472},nExpiredTime= 43200,},1,"Mua phi phong CÊp 5"} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Phi phong Kinh L«i cÊp 5 (X¸c suÊt hãa gi¶i s¸t th­¬ng)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Kinh L«i cÊp 5 (X¸c suÊt hãa gi¶i s¸t th­¬ng)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{5} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 4",{tbProp={0,3469},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5-2",{tbProp={6,1,4936,1},},100} },
		-- {"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		-- {"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},3234} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3471},nExpiredTime= 43200,},1,"Mua phi phong CÊp 5"} },
	},
}

tbConfig[9] = 
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ngù Phong cÊp 6 (DÞch chuyÓn tøc thêi )",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ngù Phong cÊp 6 (DÞch chuyÓn tøc thêi )",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{6} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 5",{tbProp={0,3470},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5",{tbProp={6,1,4912,1,0,0},},70} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5-2",{tbProp={6,1,4936,1,0,0},},70} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},4620} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3473},nExpiredTime= 43200,},1,"Mua phi phong CÊp 6"} },
	},
}

tbConfig[16] = 
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ngù Phong cÊp 6 (X¸c suÊt hãa gi¶i s¸t th­¬ng)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ngù Phong cÊp 6 (X¸c suÊt hãa gi¶i s¸t th­¬ng)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{6} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp 5",{tbProp={0,3471},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5",{tbProp={6,1,4912,1,0,0},},100} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5-2",{tbProp={6,1,4936,1,0,0},},100} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},4620} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3474},nExpiredTime= 43200,},1,"Mua phi phong CÊp 6"} },
	},
}
tbConfig[17] = 
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Phi phong Ngù Phong cÊp 6 (Träng kÝch)",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Phi phong Ngù Phong cÊp 6 (Träng kÝch)",0,1,1,1},
	tbCondition = 
	{
		--{"ThisActivity:CheckFortuneRank",	{6} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"AddOneMaterial",	{"Phi Phong CÊp ",{tbProp={0,3472},},1} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5",{tbProp={6,1,4912,1,0,0},},110} },
		{"AddOneMaterial",	{"Kim B¶o R­¬ng 5-2",{tbProp={6,1,4936,1,0,0},},110} },
		{"AddOneMaterial",	{"Tinh Hång B¶o Th¹ch",{tbProp={4,353,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Tö Thñy Tinh ",{tbProp={4,239,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Lam Thñy Tinh",{tbProp={4,238,1,1,0,0},},10000} },
		{"AddOneMaterial",	{"Lôc Thñy Tinh",{tbProp={4,240,1,1,0,0},},10000} },
	--	{"AddOneMaterial",	{"Tinh lùc",{nCount=1,pGetCount=function () return GetEnergy() end,pConsume=function (self, nConsumeCount) return ReduceEnergy(nConsumeCount) end,},4620} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nQuality=1,tbProp={0,3475},nExpiredTime= 43200,},1,"Mua phi phong CÊp 6"} },
	},
}

tbConfig[10] = 
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "Phi phong Ng¹o TuyÕt cÊp 4",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc><color=yellow>Phi phong Ng¹o TuyÕt cÊp 4 <color> cã mÊy lo¹i d­íi ®©y , ®¹i hiÖp ngµi muèn chän lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong Ng¹o TuyÕt cÊp 4 (DÞch chuyÓn tøc thêi)",7} },
		{"AddDialogOpt",	{"Phi phong Ng¹o TuyÕt cÊp 4 (X¸c suÊt hãa gi¶i s¸t th­¬ng)",13} },
	},
}
tbConfig[11] = 
{
	nId = 11,
	szMessageType = "CreateDialog",
	szName = "Phi phong Kinh L«i cÊp 5",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc><color=yellow>Phi phong Kinh L«i cÊp 5 <color>cã mÊy lo¹i d­íi ®ay, ®¹i hiÖp ngµi muèn chän lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong Kinh L«i cÊp 5 (DÞch chuyÓn tøc thêi)",8} },
		{"AddDialogOpt",	{"Phi phong Kinh L«i cÊp 5 (X¸c suÊt hãa gi¶i s¸t th­¬ng)",14} },
		{"AddDialogOpt",	{"Phi phong Kinh L«i cÊp 5 ( Träng kÝch )",15} },
	},
}
tbConfig[12] = 
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "Phi phong Ngù Phong cÊp 6",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc><color=yellow>Phi phong Ngù Phong cÊp 6<color> cã mÊy lo¹i d­íi ®©y, ®¹i hiÖp ngµi muèn chän lo¹i nµo?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Phi phong Ngù Phong cÊp 6 (DÞch chuyÓn tøc thêi )",9} },
		{"AddDialogOpt",	{"Phi phong Ngù Phong cÊp 6 (X¸c suÊt hãa gi¶i s¸t th­¬ng)",16} },
		{"AddDialogOpt",	{"Phi phong Ngù Phong cÊp 6 (Träng kÝch)",17} },
	},
}

