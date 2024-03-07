--PhÇn th­ëng tõ tÝnh n¨ng B¸ch B¶o R­¬ng - Created By DinhHQ - 20120415
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua") -- CÊu h×nh m¸y chñ cho MrChuBo 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
local  _Message =  function (nItemIndex, strBoxName)
	local handle = OB_Create()
	local msg = format("<color=green>Chóc mõng cao thñ <color=yellow>%s<color=green> ®· nhËn ®­îc <color=yellow><%s><color=green> tõ ViÖc Sö dông <color=yellow><%s><color>Mua ë LÔ Quan" ,GetName(),GetItemName(nItemIndex), strBoxName)
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
tbBBRAward = {}
tbBBRAward.tbFlag = {
	["LongLenhKy"] = {szName = "Long LÖnh Kú", tbProp = {6, 1, 3056, 1, 0, 0}},
	["LanLenhKy"] = {szName = "L©n LÖnh Kú", tbProp = {6, 1, 3057, 1, 0, 0}},
	["QuyLenhKy"] = {szName = "Quy LÖnh Kú", tbProp = {6, 1, 3059, 1, 0, 0}},
	["PhungLenhKy"] = {szName = "Phông LÖnh Kú", tbProp = {6, 1, 3058, 1, 0, 0}},
}


tbBBRAward.tbProduct = {--tÊt c¶ ®­îc söa Bëi JXMU.vn 01/08/2023
	["LongLenhKy"] = {
	-- {tbProduct ={szName="Kim B¶o r­¬ng cÊp 4",  tbProp={6,1,4911,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 20},
	{tbProduct ={szName="B¶o r­¬ng §å xanh",  tbProp={6,1,4896,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 20},
	{tbProduct ={szName="S¸t thñ truy n· lÖnh",  tbProp={6,1,4897,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 5},
	{tbProduct ={szName="HiÒn Tin CÊp mo¹t",  tbProp={6,1,147,1,1,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 1},
	{tbProduct ={szName="HiÒn Tin CÊp Hoai",  tbProp={6,1,147,1,2,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 2},
	},
	["LanLenhKy"] = {
	-- {tbProduct ={szName="Kim B¶o r­¬ng cÊp 4",  tbProp={6,1,4911,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "L©n LÖnh Kú") end},nFlagRequire = 20},
	{tbProduct ={szName="B¶o r­¬ng §å xanh",  tbProp={6,1,4896,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "L©n LÖnh Kú") end},nFlagRequire = 20},
	{tbProduct ={szName="S¸t thñ truy n· lÖnh",  tbProp={6,1,4897,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "L©n LÖnh Kú") end},nFlagRequire = 5},
	{tbProduct ={szName="HiÒn Tin CÊp mo¹t",  tbProp={6,1,147,1,1,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 1},
	{tbProduct ={szName="HiÒn Tin CÊp Hoai",  tbProp={6,1,147,1,2,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 2},
	},
	["QuyLenhKy"] = {
	-- {tbProduct ={szName="Kim B¶o r­¬ng cÊp 4",  tbProp={6,1,4911,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Quy LÖnh K×") end},nFlagRequire = 20},
	{tbProduct ={szName="B¶o r­¬ng §å xanh",  tbProp={6,1,4896,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Quy LÖnh K×") end},nFlagRequire = 20},
	{tbProduct ={szName="S¸t thñ truy n· lÖnh",  tbProp={6,1,4897,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Quy LÖnh K×") end},nFlagRequire = 5},
	{tbProduct ={szName="HiÒn Tin CÊp mo¹t",  tbProp={6,1,147,1,1,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 1},
	{tbProduct ={szName="HiÒn Tin CÊp Hoai",  tbProp={6,1,147,1,2,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 2},

	--{tbProduct ={szName="[jxmu] HuyÒn Th¶o Giíi",  tbProp={0,679},nQuality=1,CallBack = function(nParam) %_Message(nParam, "Quy LÖnh K×") end},nFlagRequire = 2000},
	},
	["PhungLenhKy"] = {
	-- {tbProduct ={szName="Kim B¶o r­¬ng cÊp 4",  tbProp={6,1,4911,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Phông LÖnh Kú") end},nFlagRequire = 20},
	{tbProduct ={szName="B¶o r­¬ng §å xanh",  tbProp={6,1,4896,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Phông LÖnh Kú") end},nFlagRequire = 20},
	{tbProduct ={szName="S¸t thñ truy n· lÖnh",  tbProp={6,1,4897,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Phông LÖnh Kú") end},nFlagRequire = 5},
	{tbProduct ={szName="HiÒn Tin CÊp mo¹t",  tbProp={6,1,147,1,1,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 1},
	{tbProduct ={szName="HiÒn Tin CÊp Hoai",  tbProp={6,1,147,1,2,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long LÖnh Kú") end},nFlagRequire = 2},

	},
}
function tbBBRAward:main()
	local tb = {
		format("Ta muèn sö dông Long LÖnh Kú ®æi phÇn th­ëng/#tbBBRAward:SelectAward('%s', %d)", "LongLenhKy", 1),
		format("Ta muèn sö dông L©n LÖnh Kú ®æi phÇn th­ëng/#tbBBRAward:SelectAward('%s', %d)", "LanLenhKy", 1),
		format("Ta muèn sö dông Quy LÖnh Kú ®æi phÇn th­ëng/#tbBBRAward:SelectAward('%s', %d)", "QuyLenhKy", 1),
		format("Ta muèn sö dông Phông LÖnh Kú ®æi phÇn th­ëng/#tbBBRAward:SelectAward('%s', %d)", "PhungLenhKy", 1),
		"Hñy bá/Oncancel",
	}
	Describe("Khi thu thËp ®ñ sè l­îng lÖnh kú, ng­¬i cã thÓ ®em ®Õn ta ®Ó ®æi phÇn th­ëng. Danh s¸ch vËt phÈm th­ëng vµ gi¸ trÞ quy ®æi sÏ ®­îc cËp nhËt liªn tôc.", getn(tb), tb)
end

function tbBBRAward:SelectAward(strFlag, nStartIndex)	
	local tb1 = self.tbProduct[strFlag]
	if nStartIndex < 1 or nStartIndex > getn(tb1) then
		return
	end
	local tb2
	local nEndIndex
	local tbDialog = {}
	if nStartIndex +11 > getn(tb1) then
		nEndIndex = getn(tb1)
	else
		nEndIndex = nStartIndex + 11
	end
	for i = nStartIndex, nEndIndex do
		tb2 = tb1[i]
		tinsert(tbDialog , format("%s/#tbBBRAward:MakeCompose('%s', %d)", tb2.tbProduct.szName, strFlag, i))
	end
	if nEndIndex < getn(tb1) then	
		tinsert(tbDialog, format("Trang kÕ/#tbBBRAward:SelectAward('%s', %d)", strFlag, nEndIndex + 1))
	end
	if nStartIndex > 1 then
		tinsert(tbDialog, format("Trë l¹i/#tbBBRAward:SelectAward('%s', %d)", strFlag, nStartIndex - 12))
	end
	tinsert(tbDialog, "Hñy bá/Oncancel")
	Describe("Xin h·y chän phÇn th­ëng:", getn(tbDialog), tbDialog)
end

function tbBBRAward:MakeCompose(strFlag, nProductID)
	local tbTemp = self.tbProduct[strFlag][nProductID]
	local tbMat = {}
	tbMat[1] = {}
	tbMat[1].nCount = tbTemp.nFlagRequire
	tbMat[1].szName = self.tbFlag[strFlag].szName
	tbMat[1].tbProp = self.tbFlag[strFlag].tbProp	
	local tbFormula = {		
		tbMaterial = tbMat,		
		tbProduct = tbTemp.tbProduct,	
		nWidth = 2,
		nHeight = 1,
		nFreeItemCellLimit = 1,
	}
	pCompos = tbActivityCompose:new(tbFormula, strFlag.."DoiPhanThuong");
	pCompos:ComposeDailog(1);
end

if PhongVanBaoDien.isEnable ~= 0 then
	pEventType:Reg("LÔ Quan", "PhÇn th­ëng Phong V©n B¶o §iÖn", tbBBRAward.main, {tbBBRAward})
end