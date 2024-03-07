-- Hµng rong ë c¸c thµnh thÞ - Editor by JXMU.VN 

Include("\\script\\lib\\alonelib.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua") -- KÕt nèi tÖp lÖnh cho NPC trong hÖ thèng ho¹t ®éng
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
 -- CÊu h×nh m¸y chñ cho MrChuBo 

function OnExit()
end;

function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
	
	
	tbDailog.szTitleMsg = "<npc>N¬i nµy tÊt c¶ ®Òu lµ kú tr©n dÞ b¶o, ngµi mÆc dï tïy ý lùa chän!"..Note("hangrong_thanhthi")
	
	--Change request 04/06/2011, ÖÆÔì°×½ð×°±¸-  - 20110605
	local w,x,y = GetWorldPos()
	-- if w == 176 then
		tbDailog:AddOptEntry("Mua M¶nh Thiªn Th¹ch To¸i PhiÕn.", Sale, {171}); 
	-- end
	
	tbVng_Exchange_HHL:AddDialog(tbDailog)
	-- tbDailog:AddOptEntry("Tham gia ®ua thuyÒn rång", WantBuyBaoshi)
	-- tbDailog:AddOptEntry("Liªn quan ®Õn thuyÒn rång", dragonboat_main)
	tbDailog:AddOptEntry("Mua håi thiªn t¸i t¹o LÔ bao", WantBuyHuiTian)
	-- tbDailog:AddOptEntry("Mua Kho¸ng Th¹ch ChÕ T¹o", jxmukhoangthach)
	if LBSieuNhanHangRong ~= 0 then
		tbDailog:AddOptEntry("§æi lÖnh bµi", mualb)
	
	tbDailog:AddOptEntry("§æi lÊy B¶o Th¹ch", WantBuyBaoshi)
	end
	
	tbDailog:AddOptEntry("§Ó ta xem nµo (cöa tiÖm ®å cò)", OpenSecondStore); 
	-- if tbTriumphDrum:CheckCondition_BuyDrum() == 1 then
		--tbDailog:AddOptEntry("Mua Trèng Kh¶i Hoµn",  tbTriumphDrum.NpcTalk,{tbTriumphDrum});  	
	-- end

	
	--tbDailog:AddOptEntry("Tho¸t ra", OnExit, {}); 	
	tbDailog:Show()
end;

function mualb()
	local nPrice = 1
	local szTitle = format("Ng­¬i muèn ®æi lÖnh bµi nµo",tostring(nPrice))
	local tbOpt = {}
	-- tinsert(tbOpt, {"§æi Thanh C©u Kim Bµi", WantBuythanhcau}) 
	-- tinsert(tbOpt, {"§æi V©n Léc Kim Bµi", WantBuyvanloc}) 
	-- tinsert(tbOpt, {"§æi Th­¬ng Lang Kim Bµi", WantBuythuonglang}) 
	-- tinsert(tbOpt, {"§æi HuyÒn Viªn Kim Bµi", WantBuyhuyenvien}) 
	-- tinsert(tbOpt, {"§æi Tö M·ng Kim Bµi", WantBuytumang}) 
	-- tinsert(tbOpt, {"§æi Kim ¤ Kim Bµi", WantBuykimo}) 
	-- tinsert(tbOpt, {"§æi B¹ch Hæ Kim Bµi", WantBuybachho}) 
	-- tinsert(tbOpt, {"§æi XÝch L©n Kim Bµi", WantBuyxichlan}) 
	-- tinsert(tbOpt, {"§æi Minh Ph­îng Kim Bµi", WantBuyminhphuong}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---
function WantBuythanhcau()
	
	local nPrice = 20
	local szTitle = format("Mua Thanh C©u cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", Buythanhcau}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---
function WantBuyvanloc()
	
	local nPrice = 50
	local szTitle = format("Mua V©n Léc cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", Buyvanloc}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---
function WantBuythuonglang()
	
	local nPrice = 70
	local szTitle = format("Mua Th­¬ng Lang cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", Buythuonglang}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---
function WantBuyhuyenvien()
	
	local nPrice = 100
	local szTitle = format("Mua HuyÒn Viªn cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", Buyhuyenvien}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---
function WantBuytumang()
	
	local nPrice = 150
	local szTitle = format("Mua Tö M·ng cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", Buytumang}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---
function WantBuykimo()
	
	local nPrice = 200
	local szTitle = format("Mua Kim ¤ cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", Buykimo}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---
function WantBuybachho()
	
	local nPrice = 350
	local szTitle = format("Mua B¹ch Hæ cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", Buybachho}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---
function WantBuyxichlan()
	
	local nPrice = 550
	local szTitle = format("Mua XÝch L©n cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", Buyxichlan}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---
function WantBuyminhphuong()
	
	local nPrice = 1000
	local szTitle = format("Mua Minh Ph­îng cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", Buyminhphuong}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end
---------------------

function OpenSecondStore()
	--do return end	
	CreateStores();
	AddShop2Stores(178, "Cöa tiÖm ®å cò", 1, 100, "", 1);
	OpenStores();

end

function WantBuyHuiTian()
	
	local nPrice = 10
	local szTitle = format("Mua Håi thiªn t¸i t¹o LÔ bao cÇn ph¶i cã %s Hµnh HiÖp LÖnh",tostring(nPrice))
	local tbOpt = {}
	tinsert(tbOpt, {"X¸c nhËn", BuyHuiTian}) 
	tinsert(tbOpt, {"ThuËn tiÖn ®i ngang qua mµ th«i"}) 
	CreateNewSayEx(szTitle, tbOpt);
end



function BuyHuiTian()
	local tbFormula = 
	{
		szName = "Håi thiªn t¸i t¹o LÔ bao",
		
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,1,0,0},nCount = 10,},},
		tbProduct = {szName="Håi thiªn t¸i t¹o LÔ bao",tbProp={6,1,2527,1,0,0}, tbParam={0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "hoithientaitaocamnang", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---
function Buythanhcau()
	local tbFormula = 
	{
		szName = "Thanh C©u kim bµi",
		
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,0,0,0},nCount = 20,},},
		tbProduct = nil,--{szName="Thanh C©u LÖnh",tbProp={6,1,2369,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 0.02,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin2zimangjinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---
function Buyvanloc()
	local tbFormula = 
	{
		szName = "V©n Léc kim bµi",
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,0,0,0},nCount = 50,},},
		tbProduct = {szName="V©n Léc kim bµi",tbProp={6,1,2353,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---
function Buythuonglang()
	local tbFormula = 
	{
		szName = "Th­¬ng Lang kim bµi",
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,0,0,0},nCount = 70,},},
		tbProduct = {szName="Th­¬ng Lang kim bµi",tbProp={6,1,2352,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---
function Buyhuyenvien()
	local tbFormula = 
	{
		szName = "HuyÒn Viªn kim bµi",
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,0,0,0},nCount = 100,},},
		tbProduct = {szName="HuyÒn Viªn kim bµi",tbProp={6,1,2351,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---
function Buytumang()
	local tbFormula = 
	{
		szName = "Tö M·ng kim bµi",
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,0,0,0},nCount = 150,},},
		tbProduct = {szName="Tö M·ng kim bµi",tbProp={6,1,2350,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---
function Buykimo()
	local tbFormula = 
	{
		szName = "Kim ¤ kim bµi",
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,0,0,0},nCount = 200,},},
		tbProduct = {szName="Kim ¤ kim bµi",tbProp={6,1,2349,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---
function Buybachho()
	local tbFormula = 
	{
		szName = "B¹ch Hæ kim bµi",
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,0,0,0},nCount = 350,},},
		tbProduct = {szName="B¹ch Hæ kim bµi",tbProp={6,1,2357,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---
function Buyxichlan()
	local tbFormula = 
	{
		szName = "XÝch L©n kim bµi",
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,0,0,0},nCount = 550,},},
		tbProduct = {szName="XÝch L©n kim bµi",tbProp={6,1,2370,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---
function Buyminhphuong()
	local tbFormula = 
	{
		szName = "Minh Ph­îng kim bµi",
		tbMaterial = {{szName="Hµnh hiÖp lÖnh",tbProp={6,1,2566,0,0,0},nCount = 1000,},},
		tbProduct = {szName="Minh Ph­îng kim bµi",tbProp={6,1,2371,1,0,0},},
		
		nWidth = 1,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	
	local p = tbActivityCompose:new(tbFormula, "xingxialin3jinwujinpai", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end
---


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
	local szTitle = format("Ng­¬i nghÜ ®æi lo¹i b¶o th¹ch nµo ®©y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		[1] = 
		{
			tbMaterial = 
			{
				{szName = "Trang bÞ Thanh C©u", tbProp = {0, {905,1134}}, nQuality = 1 },
			},
			tbProduct = {szName="Thanh c©u th¹ch", tbProp={6, 1, 2710, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[2] = 
		{
			tbMaterial = 
			{
				{szName = "Trang bÞ V©n Léc", tbProp = {0, {1135,1364}}, nQuality = 1 },
			},
			tbProduct = {szName="V©n Léc Th¹ch", tbProp={6, 1, 2711, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[3] = 
		{
			tbMaterial = 
			{
				{szName = "Trang bÞ Th­¬ng Lang", tbProp = {0, {1365,1594}}, nQuality = 1 },
			},
			tbProduct = {szName="Th­¬ng Lang Th¹ch", tbProp={6, 1, 2712, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},
		[4] = 
		{
			tbMaterial = 
			{
				{szName = "Trang bÞ HuyÒn viªn", tbProp = {0, {1595,1824}}, nQuality = 1 },
			},
			tbProduct = {szName="HuyÒn Viªn Th¹ch", tbProp={6, 1, 2713, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},		
		[5] = 
		{
			tbMaterial = 
			{
				{szName = "Trang bÞ Tõ M·ng", tbProp = {0, {1825,2054}}, nQuality = 1 },
			},
			tbProduct = {szName="Tö M·ng th¹ch", tbProp={6, 1, 3000, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§¹t ®­îc %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end
