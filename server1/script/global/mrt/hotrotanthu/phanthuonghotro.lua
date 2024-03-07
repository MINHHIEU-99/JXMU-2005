
function PhanThuongHoTro()
	local tbSay = {"Ng≠¨i muËn nhÀn ph«n th≠Îng hÁ trÓ Î mËc c p ÆÈ nµo?"};
		tinsert(tbSay, "Ph«n th≠Îng Æπt mËc c p 20/PhanThuongHoTroCap20")
		tinsert(tbSay, "Ph«n th≠Îng Æπt mËc c p 30/PhanThuongHoTroCap30")
		tinsert(tbSay, "Ph«n th≠Îng Æπt mËc c p 40/PhanThuongHoTroCap40")
		tinsert(tbSay, "Ph«n th≠Îng Æπt mËc c p 50/PhanThuongHoTroCap50")
		tinsert(tbSay, "Ph«n th≠Îng Æπt mËc c p 60/PhanThuongHoTroCap60")
		tinsert(tbSay, "Ph«n th≠Îng Æπt mËc c p 70/PhanThuongHoTroCap70")
		tinsert(tbSay, "Ph«n th≠Îng Æπt mËc c p 80/PhanThuongHoTroCap80")
		tinsert(tbSay, "Ph«n th≠Îng Æπt mËc c p 90/PhanThuongHoTroCap90")
		tinsert(tbSay, "K’t thÛc ÆËi thoπi./no")
	CreateTaskSay(tbSay)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap20()
	local nLevel = 20;
	if (GetLevel() < nLevel) then
		Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
	--	Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ l«n Æ«u ti™n, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	--return end

	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	return end
	
	local tbSupportList = {
		{szName="Li÷t Bπch M∑", tbProp={0,10,2,1,0,0}, nBindState=-2, nExpiredTime=1*24*60},
		{szName="Ti™n Th∂o LÈ", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
		{szName ="Ti“n Vπn",nJxb = 20000},	
		{szName = "ßi”m Danh V‰ng", nRepute=500}, -- ßi”m Danh V‰ng
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 20");
	--AddLeadExp(3000000) -- Tµi L∑nh ßπo 
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap30()
	local nLevel = 30;
	if (GetLevel() < nLevel) then
		Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ l«n Æ«u ti™n, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 20, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	return end
	
	local tbSupportList = {	
		{szName="Kim Phong Trπc Li™n Quang", tbProp={0,179}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60 : thÍi hπn sˆ dÙng
		{szName="Kim Phong Thi™n L˝ Th∂o Th≠Óng Phi", tbProp={0,184}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName ="Ti“n Vπn",nJxb = 30000},	
		{szName="Bπch M∑", tbProp={0,10,2,3,0,0}, nBindState=-2, nExpiredTime=1*24*60},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 30");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap40()
	local nLevel = 40;
	if (GetLevel() < nLevel) then
		Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ l«n Æ«u ti™n, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 20, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 30, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	return end
	
	local tbSupportList = {
		{szName="Bπch M∑", tbProp={0,10,2,5,0,0}, nBindState=-2, nExpiredTime=1*24*60},
		{szName="Ti™n Th∂o LÈ", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
		{szName ="Ti“n Vπn",nJxb = 40000},	

		{szName="Kim Phong Thanh D≠¨ng Kh´i", tbProp={0,177}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName="Kim Phong K˙ L©n Huy’t", tbProp={0,178}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName="Kim Phong Lan ß◊nh Ng‰c", tbProp={0,183}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName="Kim Phong C´ng C»n Tam Th∏n", tbProp={0,180}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 40");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap50()
	local nLevel = 50;
	if (GetLevel() < nLevel) then
		Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ l«n Æ«u ti™n, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 20, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 30, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 40, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	return end
	
	local tbSupportList = {
		{szName="ßπi Uy”n Bπch M∑", tbProp={0,10,2,7,0,0}, nBindState=-2, nExpiredTime=1*24*60},
		{szName ="Ti“n Vπn",nJxb = 50000},	
		{szName="Ti™n Th∂o LÈ", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
		{szName="Kim Phong ßoπt HÂn Ng‰c Æ∏i", tbProp={0,181}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName="Kim Phong HÀu Ngh÷ d…n cung", tbProp={0,182}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 50");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap60()
	local nLevel = 60;
	if CalcFreeItemCellCount()<10 then
		Say("Hµnh trang kh´ng ÆÒ 50 ´ trËng.")
		return
	end
	if (GetLevel() < nLevel) then
		Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ l«n Æ«u ti™n, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 20, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 30, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 40, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 50) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 50, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	return end
	
	local tbSupportList = {
		{szName="TÛc S≠¨ng", tbProp={0,10,2,9,0,0}, nBindState=-2, nExpiredTime=1*24*60},
		{szName ="Ti“n Vπn",nJxb = 60000},	
		{szName="Ti™n Th∂o LÈ (Æ∆c bi÷t)", tbProp={6,1,1181,1,0,0}, nCount=3, nBindState=-2},
		  --, nExpiredTime=20*24*60
	};
	for i = 1,9 do 
	--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0, 167+i},nCount=1,nQuality=1,nBindState=-2,nExpiredTime=60*24*15}}, "test", 1);
		end 
	tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 60");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap70()
	local nLevel = 70;
	if (GetLevel() < nLevel) then
		Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ l«n Æ«u ti™n, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 20, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 30, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 40, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 50) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 50, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 60) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 60, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	return end
	
	local tbSupportList = {
		{szName ="Ti“n Vπn",nJxb = 70000},	
	--	{szName="TÛc S≠¨ng", tbProp={0,10,2,10,0,0}, nBindState=-2},
		{szName="Ti™n Th∂o LÈ (Æ∆c bi÷t)", tbProp={6,1,1181,1,0,0}, nCount=5, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 70");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap80()
	local nLevel = 80;
	if (GetLevel() < nLevel) then
		Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ l«n Æ«u ti™n, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 20, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 30, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 40, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 50) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 50, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 60) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 60, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 70) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 70, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	return end
	
	local tbSupportList = {
		{szName ="Ti“n Vπn",nJxb = 80000},	
		{szName="Chi’u Dπ Ng‰c S≠ Tˆ ", tbProp={0,10,5,10,0,0}, nBindState=-2, nExpiredTime=7*24*60}, -- 7: lµ sË ngµy s˘ dÙng
		{szName="B› K›p 9x tÔy ch‰n ", tbProp={6,1,2426,1,0,0}, nCount=1, nBindState=-2},
		{szName="ßπi Thµnh 9x ", tbProp={6,1,2424,1,0,0}, nCount=1, nBindState=-2},
		{szName="Ti™n Th∂o LÈ (Æ∆c bi÷t)", tbProp={6,1,1181,1,0,0}, nCount=5, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 80");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap90()
	local nLevel = 90;
	if (GetLevel() < nLevel) then
		Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ l«n Æ«u ti™n, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 20, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 30, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 40, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 50) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 50, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 60) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 60, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 70) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 70, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end

	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 80) ~= 1) then
		Talk(1,"", "Bπn ch≠a nhÀn hÁ trÓ t©n thÒ c p 80, kh´ng th” nhÀn ph«n th≠Îng nµy!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	return end
	
	local tbSupportList = {
		--{szName="Chi’u Dπ Ng‰c S≠ Tˆ ", tbProp={0,10,5,10,0,0}, nBindState=-2, nExpiredTime=7*24*60}, -- 7: lµ sË ngµy s˘ dÙng
		{szName ="Ti“n Vπn",nJxb = 90000},	
		{szName="Ti™n Th∂o LÈ (Æ∆c bi÷t)", tbProp={6,1,1181,1,0,0}, nCount=5, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 90");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTroCap150()
--	local nLevel = 150;
	--if (GetLevel() < nLevel) then
	--	Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
	--	Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	--return end
	
	--local tbSupportList = {
		--{szName="Tr≠Íng sinh", tbProp={0,3491}, nQuality=1, nBindState=-2},
		--{szName="B´n Ti™u", tbProp={0,10,2,1,0,0}, nBindState=-2},
		--{szName="TÛi phi phong", tbProp={6,1,4865,3,0,0}, nBindState=-2},
		--{szName="TÛi ngÚ hµnh  n", tbProp={6,1,4866,8,0,0}, nBindState=-2},
		--{szName="Ti™n Th∂o LÈ", tbProp={6,1,71,1,0,0}, nBindState=-2},
		--{szN-ame="Lam ThÒy Tinh", tbProp={4,238,1,0,0,0}, nBindState=-2},
		--{szName="Tˆ ThÒy Tinh", tbProp={4,239,1,0,0,0}, nBindState=-2},
		--{szName="LÙc ThÒy Tinh", tbProp={4,240,1,0,0,0}, nBindState=-2},
		--{szName="T◊nh HÂng B∂o Thπch", tbProp={4,353,1,0,0,0}, nCount=6, nBindState=-2},
		--{szName="Th«n Hµnh PhÔ", tbProp={6,1,1266,1,0,0}, nCount=6, nBindState=-2},
		--{szName="ThÊ Æﬁa phÔ (sˆ dÙng v´ hπn)", tbProp={6,1,438,1,0,0}, nCount=6, nBindState=-2},
		--{szName="TÛi trang bﬁ Tˆ M∑ng", tbProp={6,1,4857,1,0,0}, nBindState=-2},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 150");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTroCap180()
	--local nLevel = 150;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		--Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	--return end
	
	--local tbSupportList = {
		--{szName="Kim § L÷nh", tbProp={6,1,2349,1,0,0}, nCount=5, nBindState=-2},
		--{szName="TÛi phi phong", tbProp={6,1,4865,5,0,0}, nBindState=-2},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 150");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro150_TS1()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 1) then
		--Talk(1, "", "Chÿ c„ nh©n vÀt trÔng sinh 1 mÌi nhÀn Æ≠Óc hÁ trÓ nµy")
	--return end
	
	--local nLevel = 150;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel) ~= 0) then
		--Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	--return end
	
	--local tbSupportList = {
		--{szName="Lπc ßµ (10 ngµy)", tbProp={0,10,23,10,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 150 - TrÔng sinh 1");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro170_TS1()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 11) then
		--Talk(1, "", "Chÿ c„ nh©n vÀt trÔng sinh 1 mÌi nhÀn Æ≠Óc hÁ trÓ nµy")
	--return end
	
	--local nLevel = 170;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel) ~= 0) then
		--Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	--return end
	
	--local tbSupportList = {
		--{szName="Bπch HÊ L÷nh", tbProp={6,1,2357,10,0,0}, nBindState=-2},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 170 - TrÔng sinh 1");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro190_TS1()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 1) then
		--Talk(1, "", "Chÿ c„ nh©n vÀt trÔng sinh 1 mÌi nhÀn Æ≠Óc hÁ trÓ nµy")
	--return end
	
	--local nLevel = 190;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel) ~= 0) then
		--Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	--return end
	
	--local tbSupportList = {
		--{szName="TÛi phi phong (c p 6)", tbProp={6,1,4865,6,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 190 - TrÔng sinh 1");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro150_TS2()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 2) then
		--Talk(1, "", "Chÿ c„ nh©n vÀt trÔng sinh 2 mÌi nhÀn Æ≠Óc hÁ trÓ nµy")
	--return end
	
	--local nLevel = 150;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel) ~= 0) then
		--Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	--return end
	
	--local tbSupportList = {
		--{szName="S≠ Tˆ (10 ngµy)", tbProp={0,10,22,10,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 150 - TrÔng sinh 2");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro150_TS2()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 2) then
		--Talk(1, "", "Chÿ c„ nh©n vÀt trÔng sinh 2 mÌi nhÀn Æ≠Óc hÁ trÓ nµy")
	--return end
	
	--local nLevel = 190;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "ßºng c p cÒa bπn ch≠a ÆÒ Æ” nhÀn ph«n th≠Îng nµy!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel) ~= 0) then
		--Talk(1,"", "Bπn Æ∑ nhÀn ph«n th≠Îng hÁ trÓ nµy tı tr≠Ìc Æ„ rÂi!")
	--return end
	
	--local tbSupportList = {
		--{szName="M∆t nπ V≠¨ng Gi∂", tbProp={0,11,561,1,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "HÁ trÓ c p 190 - TrÔng sinh 2");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------