--------------------------------------------------------------------------------------------------------
-- File Name		:	thorenhoangkim.lua
--	Author			:	Alone_ (Nguyen Khai)
--	Create Time	:	27/10/2017 - 20:20
--	Description		:	
--------------------------------------------------------------------------------------------------------
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("ITEM")
IncludeLib("SETTING")
IncludeLib("QUESTKEY")
IncludeLib("LEAGUE")
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
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")


function main()
dofile("script/global/quanlygame/shopsoaiky.lua")
--if GetAccount() ~= "adminvltruyenky" then
	--	 Say("�ang c�p nh�t l�i")
--return
--end
	tbOpt =
	{
		
	"<dec><npc>Shop chuy�n b�n v�t ph�m game gi� tr�..",
	"��i Ch�a Kh�a Th�n B�/doichiakhoa",
	"��i So�i K� L�y V�t Ph�m/menuvatpham",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)

end


function menuvatpham()
	tbOpt =
	{
		"<dec><npc>��i hi�p c�n ��i g�..",
				  "��i M�u X�p Ch�ng/mauxepchong",
				  						 "M�nh m�t n� ng� h�nh/manhmatna",
		  		--  "M�t N� D� Dung/matnadidung",
		  		 -- "M�t N� Nguy�n So�i/matnadaituongquan",
				  	 "M�t N� Chi�n T�m (7 ng�y)/matnachientam",
					 				  "��ng B�i/dongbai",
									  					"��i Th�nh 90/daithanh90",
				--  "Ng�c B�i An Bang Max (7 ng�y)/ngocboi",
				--  "Nh�n An Bang Th�y Max (7 ng�y)/nhanbang",
				  "L� Bao Tr� Chi�n/lebaotrochien",
				  		"tho�t./no",


		"trang k�./trangke",
	}
	CreateTaskSay(tbOpt)
end

function trangke()
	tbOpt =
	{
		"<dec><npc>��i hi�p c�n ��i g�..",
				  "Chi�u D�/chieudane",
				  "Nh�t K� 7 Ng�y/nhatky7",
				  "M�c B�i/mocbaine",

				 --  "Nh�n An Bang H�a Max (7 ng�y)/nhanhoa",
				--   "D�y Chuy�n An Bang Th�y Max (7 ng�y)/daychuyen",
		  		-- "Phi V�n 7 Ng�y/phivan7",
				  -- "B�n Ti�u 3 Ng�y/bontieu7",

				--  	"L� Bao B� K�p/lebaobikip",

				--  "L�nh B�i Boss/lenhbaiboss",
		--"trang k�./trangketiep",
				"tho�t./no",

	}
	CreateTaskSay(tbOpt)
end

function trangketiep()
	tbOpt =
	{
		"<dec><npc>��i hi�p c�n ��i g�..",
				--  "M�c B�i/mocbaine",
				--  "��c X�/dacxane",

				  		  		--  "Nh�t K� 15 Ng�y/nhatky15",

				  				--  "T�i T� M�u/tumaune",
				  				--  "L�nh B�i Boss Kim Quang/lbkq",
				  				--  "C�n Kh�n 7 Ng�y/cankhon7",

		"tho�t./no",
	}
	CreateTaskSay(tbOpt)
end


function lebaotrochien()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="l� bao tr� chi�n",tbProp={6,1,4486,1,1,0},nCount = 1,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function manhmatna()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=1},
			},
		tbProduct = {szName="m�nh m�t n�",tbProp={4,1673,1,1,0,0},nCount = 1,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function daithanh90()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="��i th�nh b� k�p 90",tbProp={6,1,2424,1,1,0},nCount = 1,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function lebaobikip()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=5},
			},
		tbProduct = {szName="l� bao b� k�p",tbProp={6,1,4347,1,1,0},nCount = 1,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function mauxepchong()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="L� bao chi�n tr��ng",tbProp={6,1,4462,-1},nCount=3},
			},
		tbProduct = {szName="Boss",tbProp={6,1,215,1,1,0},nCount = 100,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function cankhon7()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=25},
			},
		tbProduct = {szName="Boss Kim Quang",tbProp={6,1,4473,1,1,0},nCount = 1,nExpiredTime=10080},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function lbkq()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="Boss Kim Quang",tbProp={6,1,4479,1,1,0},nCount = 1,nExpiredTime=10080},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function tumaune()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=10},
			},
		tbProduct = {szName="t� m�u",tbProp={6,1,1427,1,1,0},nCount = 1,nExpiredTime=10080},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function nhatky7()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="nh�t k� 7 ng�y",tbProp={6,1,4471,1,1,0},nCount = 1,nExpiredTime=10080},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function chieudane()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=10},
			},
		tbProduct = {szName="Chi�u d�",tbProp={0,10,5,5,0,0},nCount = 1,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function dacxane()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=5},
			},
		tbProduct = {szName="��c x�",tbProp={6,1,1375,1,1,0},nCount = 1,nExpiredTime=43200,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function lenhbaiboss()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="Boss",tbProp={6,1,1022,1,1,0},nCount = 1,nExpiredTime=1440,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function mocbaine()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=1},
			},
		tbProduct = {szName="m�c b�i",tbProp={6,1,4433,1,1,0},nCount = 1,nExpiredTime=43200,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function dongbai()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=6},
			},
		tbProduct = {szName="��ng b�i",tbProp={6,1,4434,1,1,0},nCount = 1,nExpiredTime=43200,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 



function nhatky15()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=15},
			},
		tbProduct = {szName="nh�t k� 15 ng�y",tbProp={6,1,4448,1,1,0},nCount = 1,nExpiredTime=21600,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function bontieu7()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=30},
			},
		tbProduct = {szName="b�n ti�u",tbProp={0,10,6,1,0,0},nCount = 1,nExpiredTime=4320,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function phivan7()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=10},
			},
		tbProduct = {szName="phi v�n",tbProp={0,10,8,1,0,0},nCount = 1,nExpiredTime=10080,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function matnachientam()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="m�t n�",tbProp={0,11,561,1,0},nCount = 1,nExpiredTime=10080,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function daychuyen()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=30},
			},
		tbProduct = {szName="d�y chuy�n an bang",tbProp={0,408},nCount = 1,nQuality=1,nExpiredTime=10080,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function nhanbang()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=5},
			},
		tbProduct = {szName=" an bang",tbProp={0,409},nCount = 1,nQuality=1,nExpiredTime=10080,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function nhanhoa()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=10},
			},
		tbProduct = {szName="nh�n an bang",tbProp={0,411},nCount = 1,nQuality=1,nExpiredTime=10080,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function ngocboi()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=5},
			},
		tbProduct = {szName="ng�c b�i an bang",tbProp={0,410},nCount = 1,nQuality=1,nExpiredTime=10080,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 

function matnadidung()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=1},
			},
		tbProduct = {szName="M�t n� d� dung",tbProp={6,1,2951,1,1},nCount = 1,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 


function matnadaituongquan()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=5},
			},
		tbProduct = {szName="m�t n�",tbProp={0,11,562,1,0},nCount = 1,nExpiredTime=60,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 






function doichiakhoa()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So�i K�",tbProp={6,1,4456,-1},nCount=2},
			},
		tbProduct = {szName="Ch�a Kh�a Th�n B�",tbProp={6,1,4459,1,1},nCount = 1,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 
















