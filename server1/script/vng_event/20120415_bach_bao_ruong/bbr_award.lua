--Ph�n th��ng t� t�nh n�ng B�ch B�o R��ng - Created By DinhHQ - 20120415
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua") -- C�u h�nh m�y ch� cho MrChuBo 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
local  _Message =  function (nItemIndex, strBoxName)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� Vi�c S� d�ng <color=yellow><%s><color>Mua � L� Quan" ,GetName(),GetItemName(nItemIndex), strBoxName)
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
tbBBRAward = {}
tbBBRAward.tbFlag = {
	["LongLenhKy"] = {szName = "Long L�nh K�", tbProp = {6, 1, 3056, 1, 0, 0}},
	["LanLenhKy"] = {szName = "L�n L�nh K�", tbProp = {6, 1, 3057, 1, 0, 0}},
	["QuyLenhKy"] = {szName = "Quy L�nh K�", tbProp = {6, 1, 3059, 1, 0, 0}},
	["PhungLenhKy"] = {szName = "Ph�ng L�nh K�", tbProp = {6, 1, 3058, 1, 0, 0}},
}


tbBBRAward.tbProduct = {--t�t c� ���c s�a B�i JXMU.vn 01/08/2023
	["LongLenhKy"] = {
	-- {tbProduct ={szName="Kim B�o r��ng c�p 4",  tbProp={6,1,4911,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 20},
	{tbProduct ={szName="B�o r��ng �� xanh",  tbProp={6,1,4896,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 20},
	{tbProduct ={szName="S�t th� truy n� l�nh",  tbProp={6,1,4897,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 5},
	{tbProduct ={szName="Hi�n Tin C�p mo�t",  tbProp={6,1,147,1,1,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 1},
	{tbProduct ={szName="Hi�n Tin C�p Hoai",  tbProp={6,1,147,1,2,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 2},
	},
	["LanLenhKy"] = {
	-- {tbProduct ={szName="Kim B�o r��ng c�p 4",  tbProp={6,1,4911,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "L�n L�nh K�") end},nFlagRequire = 20},
	{tbProduct ={szName="B�o r��ng �� xanh",  tbProp={6,1,4896,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "L�n L�nh K�") end},nFlagRequire = 20},
	{tbProduct ={szName="S�t th� truy n� l�nh",  tbProp={6,1,4897,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "L�n L�nh K�") end},nFlagRequire = 5},
	{tbProduct ={szName="Hi�n Tin C�p mo�t",  tbProp={6,1,147,1,1,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 1},
	{tbProduct ={szName="Hi�n Tin C�p Hoai",  tbProp={6,1,147,1,2,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 2},
	},
	["QuyLenhKy"] = {
	-- {tbProduct ={szName="Kim B�o r��ng c�p 4",  tbProp={6,1,4911,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Quy L�nh K�") end},nFlagRequire = 20},
	{tbProduct ={szName="B�o r��ng �� xanh",  tbProp={6,1,4896,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Quy L�nh K�") end},nFlagRequire = 20},
	{tbProduct ={szName="S�t th� truy n� l�nh",  tbProp={6,1,4897,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Quy L�nh K�") end},nFlagRequire = 5},
	{tbProduct ={szName="Hi�n Tin C�p mo�t",  tbProp={6,1,147,1,1,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 1},
	{tbProduct ={szName="Hi�n Tin C�p Hoai",  tbProp={6,1,147,1,2,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 2},

	--{tbProduct ={szName="[jxmu] Huy�n Th�o Gi�i",  tbProp={0,679},nQuality=1,CallBack = function(nParam) %_Message(nParam, "Quy L�nh K�") end},nFlagRequire = 2000},
	},
	["PhungLenhKy"] = {
	-- {tbProduct ={szName="Kim B�o r��ng c�p 4",  tbProp={6,1,4911,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Ph�ng L�nh K�") end},nFlagRequire = 20},
	{tbProduct ={szName="B�o r��ng �� xanh",  tbProp={6,1,4896,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Ph�ng L�nh K�") end},nFlagRequire = 20},
	{tbProduct ={szName="S�t th� truy n� l�nh",  tbProp={6,1,4897,1,0,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Ph�ng L�nh K�") end},nFlagRequire = 5},
	{tbProduct ={szName="Hi�n Tin C�p mo�t",  tbProp={6,1,147,1,1,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 1},
	{tbProduct ={szName="Hi�n Tin C�p Hoai",  tbProp={6,1,147,1,2,0},nCount=1,CallBack = function(nParam) %_Message(nParam, "Long L�nh K�") end},nFlagRequire = 2},

	},
}
function tbBBRAward:main()
	local tb = {
		format("Ta mu�n s� d�ng Long L�nh K� ��i ph�n th��ng/#tbBBRAward:SelectAward('%s', %d)", "LongLenhKy", 1),
		format("Ta mu�n s� d�ng L�n L�nh K� ��i ph�n th��ng/#tbBBRAward:SelectAward('%s', %d)", "LanLenhKy", 1),
		format("Ta mu�n s� d�ng Quy L�nh K� ��i ph�n th��ng/#tbBBRAward:SelectAward('%s', %d)", "QuyLenhKy", 1),
		format("Ta mu�n s� d�ng Ph�ng L�nh K� ��i ph�n th��ng/#tbBBRAward:SelectAward('%s', %d)", "PhungLenhKy", 1),
		"H�y b�/Oncancel",
	}
	Describe("Khi thu th�p �� s� l��ng l�nh k�, ng��i c� th� �em ��n ta �� ��i ph�n th��ng. Danh s�ch v�t ph�m th��ng v� gi� tr� quy ��i s� ���c c�p nh�t li�n t�c.", getn(tb), tb)
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
		tinsert(tbDialog, format("Trang k�/#tbBBRAward:SelectAward('%s', %d)", strFlag, nEndIndex + 1))
	end
	if nStartIndex > 1 then
		tinsert(tbDialog, format("Tr� l�i/#tbBBRAward:SelectAward('%s', %d)", strFlag, nStartIndex - 12))
	end
	tinsert(tbDialog, "H�y b�/Oncancel")
	Describe("Xin h�y ch�n ph�n th��ng:", getn(tbDialog), tbDialog)
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
	pEventType:Reg("L� Quan", "Ph�n th��ng Phong V�n B�o �i�n", tbBBRAward.main, {tbBBRAward})
end