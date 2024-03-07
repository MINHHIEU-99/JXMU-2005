Include("\\script\\lib\\alonelib.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")

function OnExit()
end;

function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	
	tbDailog.szTitleMsg = "<npc>N�i n�y t�t c� ��u l� k� tr�n d� b�o, ng�i m�c d� t�y � l�a ch�n!"..Note("hangrong_thanhthi")
	
	--Change request 04/06/2011, ����׽�װ��- Modified by DinhHQ - 20110605
--	local w,x,y = GetWorldPos()
--	if w == 176 then
		tbDailog:AddOptEntry("Mua M�nh Thi�n Th�ch To�i Phi�n.", Sale, {171}); 
--	end
	--��ȡ���������- modified by DinhHQ - 20110921
	--tbVng_Exchange_HHL:AddDialog(tbDailog)
	--tbDailog:AddOptEntry("Tham gia �ua thuy�n r�ng", WantBuyBaoshi)
	--tbDailog:AddOptEntry("Li�n quan ��n thuy�n r�ng", dragonboat_main)
	--tbDailog:AddOptEntry("Mua h�i thi�n t�i t�o c�m nang", WantBuyHuiTian)
	--tbDailog:AddOptEntry("Mua T� M�ng Kim B�i", WantBuyJinpai)
	--tbDailog:AddOptEntry("Mua Kim � Kim B�i", WantBuyJinWuJinpai)
	--tbDailog:AddOptEntry("��i l�y B�o Th�ch", WantBuyBaoshi)
	
	--Change request 04/06/2011 - Modified by DinhHQ - 20110605
	--tbDailog:AddOptEntry("�� ta xem n�o (c�a ti�m �� c�)", OpenSecondStore); 
	if tbTriumphDrum:CheckCondition_BuyDrum() == 1 then
		--tbDailog:AddOptEntry("Mua Tr�ng Kh�i Ho�n",  tbTriumphDrum.NpcTalk,{tbTriumphDrum});  	
	end

	--Change request 04/06/2011 - Modified by DinhHQ - 20110605
	--tbDailog:AddOptEntry("Tho�t ra", OnExit, {}); 	
	tbDailog:Show()
end;

function OpenSecondStore()
	--do return end	
	CreateStores();
	AddShop2Stores(178, "C�a ti�m �� c�", 1, 100, "", 1);
	OpenStores();

end

function WantBuyHuiTian()
	--Change request 04/06/2011 - Modified by DinhHQ - 20110605
	local nPrice = 1
	local szTitle = format("Mua v� ng�y t�i t�o c�m nang c�n ph�i c� %s H�nh Hi�p L�nh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X�c nh�n", BuyHuiTian}) 
	tinsert(tbOpt, {"Thu�n ti�n �i ngang qua m� th�i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end

function WantBuyJinpai()
	--Change request 04/06/2011 - Modified by DinhHQ - 20110605
	local nPrice = 100
	local szTitle = format("Mua t� m�ng l�m c�n ph�i c� %s H�nh Hi�p L�nh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X�c nh�n", BuyJinpai}) 
	tinsert(tbOpt, {"Thu�n ti�n �i ngang qua m� th�i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end

function WantBuyJinWuJinpai()
	local nPrice = 400
	local szTitle = format("Mua kim � l�m c�n ph�i c� %s H�nh Hi�p L�nh , ng��i mu�n x�c ��nh mua sao",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X�c nh�n", BuyJinWuJinpai}) 
	tinsert(tbOpt, {"Thu�n ti�n �i ngang qua m� th�i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end


function BuyHuiTian()
	local tbFormula = 
	{
		szName = "H�i thi�n t�i t�o c�m nang",
		--Change request 04/06/2011 - Modified by DinhHQ - 20110605
		tbMaterial = {{szName="H�nh hi�p l�nh",tbProp={6,1,2566,1,0,0},nCount = 1,},},
		tbProduct = {szName="H�i thi�n t�i t�o c�m nang",tbProp={6,1,1781,1,0,0}, tbParam={60},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BuyJinpai()
	local tbFormula = 
	{
		szName = "T� m�ng kim b�i",
		--Change request 04/06/2011 - Modified by DinhHQ - 20110605
		tbMaterial = {{szName="H�nh hi�p l�nh",tbProp={6,1,2566,1,0,0},nCount = 100,},},
		tbProduct = {szName="T� M�ng L�nh",tbProp={6,1,2350,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 0.02,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin2zimangjinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end

function BuyJinWuJinpai()
	local tbFormula = 
	{
		szName = "Kim � kim b�i",
		tbMaterial = {{szName="H�nh hi�p l�nh",tbProp={6,1,2566,1,0,0},nCount = 400,},},
		tbProduct = {szName="Kim � kim b�i",tbProp={6,1,2349,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end


tbEquip2Item = tbActivityCompose:new()

function tbEquip2Item:CheckItem(tbItem ,nItemIndex)
	if IsMyItem(nItemIndex) ~= 1 then
		return
	end
	
	local tbRecItem = self:MakeItem(nItemIndex)
	local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
	local nLeftUsageTime = ITEM_GetLeftUsageTime(nItemIndex)
	if nExpiredTime ~= 0 or nLeftUsageTime ~= 4294967295 then
		return 
	end
	
	for k,v in tbItem do
		if k ~= "szName" and type(v) ~= "table" and v ~= -1 and tbRecItem[k] and v~= tbRecItem[k] then
			return
		elseif  k == "tbProp" and type(v) == "table" then
			local tbProp = tbRecItem[k]
			for k1,v1 in v do
				if type(v1) ~= "table" then
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and v1~= tbProp[k1] then
						return 
					end
				else
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and ( v1[1] > tbProp[k1] or tbProp[k1] > v1[2] )  then
						return 
					end
				end
			end
		end
	end		
	for key, value in tbItem do 
		if strfind(key, "Limit") and  type(value) == "function" then
			if value(tbItem, nItemIndex) ~= 1 then
				return
			end
		end
	end			
	return 1
end

function WantBuyBaoshi()
	local nPrice = 400
	local szTitle = format("Ng��i ngh� ��i lo�i b�o th�ch n�o ��y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		[1] = 
		{
			tbMaterial = 
			{
				{szName = "Trang b� Thanh C�u", tbProp = {0, {905,1134}}, nQuality = 1 },
			},
			tbProduct = {szName="Thanh c�u th�ch", tbProp={6, 1, 2710, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[2] = 
		{
			tbMaterial = 
			{
				{szName = "Trang b� V�n L�c", tbProp = {0, {1135,1364}}, nQuality = 1 },
			},
			tbProduct = {szName="V�n L�c Th�ch", tbProp={6, 1, 2711, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[3] = 
		{
			tbMaterial = 
			{
				{szName = "Trang b� Th��ng Lang", tbProp = {0, {1365,1594}}, nQuality = 1 },
			},
			tbProduct = {szName="Th��ng Lang Th�ch", tbProp={6, 1, 2712, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[4] = 
		{
			tbMaterial = 
			{
				{szName = "Trang b� Huy�n vi�n", tbProp = {0, {1595,1824}}, nQuality = 1 },
			},
			tbProduct = {szName="Huy�n Vi�n Th�ch", tbProp={6, 1, 2713, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},		
		[5] = 
		{
			tbMaterial = 
			{
				{szName = "Trang b� T� M�ng", tbProp = {0, {1825,2054}}, nQuality = 1 },
			},
			tbProduct = {szName="T� M�ng th�ch", tbProp={6, 1, 3000, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("��t ���c %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"H�y b�"})
	CreateNewSayEx(szTitle, tbOpt);
end
