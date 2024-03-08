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
	--	 Say("§ang cËp nhËt l¹i")
--return
--end
	tbOpt =
	{
		
	"<dec><npc>Shop chuyªn b¸n vËt phÈm game gi¸ trÞ..",
	"§æi Ch×a Khãa ThÇn BÝ/doichiakhoa",
	"§èi So¸i Kú LÊy VËt PhÈm/menuvatpham",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)

end


function menuvatpham()
	tbOpt =
	{
		"<dec><npc>®¹i hiÖp cÇn ®æi g×..",
				  "§æi M¸u XÕp Chång/mauxepchong",
				  						 "M·nh mÆt n¹ ngò hµnh/manhmatna",
		  		--  "MÆt N¹ DÞ Dung/matnadidung",
		  		 -- "MÆt N¹ Nguyªn So¸i/matnadaituongquan",
				  	 "MÆt N¹ ChiÕn T©m (7 ngµy)/matnachientam",
					 				  "§ång Bµi/dongbai",
									  					"§¹i Thµnh 90/daithanh90",
				--  "Ngäc Béi An Bang Max (7 ngµy)/ngocboi",
				--  "NhÉn An Bang Thñy Max (7 ngµy)/nhanbang",
				  "LÔ Bao Trî ChiÕn/lebaotrochien",
				  		"tho¸t./no",


		"trang kÕ./trangke",
	}
	CreateTaskSay(tbOpt)
end

function trangke()
	tbOpt =
	{
		"<dec><npc>®¹i hiÖp cÇn ®æi g×..",
				  "ChiÕu D¹/chieudane",
				  "NhÊt Kû 7 Ngµy/nhatky7",
				  "Méc Bµi/mocbaine",

				 --  "NhÉn An Bang Háa Max (7 ngµy)/nhanhoa",
				--   "D©y ChuyÒn An Bang Thñy Max (7 ngµy)/daychuyen",
		  		-- "Phi V©n 7 Ngµy/phivan7",
				  -- "B«n Tiªu 3 Ngµy/bontieu7",

				--  	"LÔ Bao BÝ KÝp/lebaobikip",

				--  "LÖnh Bµi Boss/lenhbaiboss",
		--"trang kÕ./trangketiep",
				"tho¸t./no",

	}
	CreateTaskSay(tbOpt)
end

function trangketiep()
	tbOpt =
	{
		"<dec><npc>®¹i hiÖp cÇn ®æi g×..",
				--  "Méc Bµi/mocbaine",
				--  "§Æc X¸/dacxane",

				  		  		--  "NhÊt Kû 15 Ngµy/nhatky15",

				  				--  "Tói Tö MÉu/tumaune",
				  				--  "LÖnh Bµi Boss Kim Quang/lbkq",
				  				--  "Cµn Kh«n 7 Ngµy/cankhon7",

		"tho¸t./no",
	}
	CreateTaskSay(tbOpt)
end


function lebaotrochien()
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="lÔ bao trî chiÕn",tbProp={6,1,4486,1,1,0},nCount = 1,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=1},
			},
		tbProduct = {szName="m·nh mÆt n¹",tbProp={4,1673,1,1,0,0},nCount = 1,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="®¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,1,0},nCount = 1,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=5},
			},
		tbProduct = {szName="lª bao bÝ kÝp",tbProp={6,1,4347,1,1,0},nCount = 1,},
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
		{szName="LÔ bao chiÕn tr­êng",tbProp={6,1,4462,-1},nCount=3},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=25},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=20},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=10},
			},
		tbProduct = {szName="tö mÉu",tbProp={6,1,1427,1,1,0},nCount = 1,nExpiredTime=10080},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="nhÊt kû 7 ngµy",tbProp={6,1,4471,1,1,0},nCount = 1,nExpiredTime=10080},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=10},
			},
		tbProduct = {szName="ChiÕu d¹",tbProp={0,10,5,5,0,0},nCount = 1,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=5},
			},
		tbProduct = {szName="®Æc x¸",tbProp={6,1,1375,1,1,0},nCount = 1,nExpiredTime=43200,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=20},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=1},
			},
		tbProduct = {szName="méc bµi",tbProp={6,1,4433,1,1,0},nCount = 1,nExpiredTime=43200,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=6},
			},
		tbProduct = {szName="§ång bµi",tbProp={6,1,4434,1,1,0},nCount = 1,nExpiredTime=43200,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=15},
			},
		tbProduct = {szName="nhÊt kû 15 ngµy",tbProp={6,1,4448,1,1,0},nCount = 1,nExpiredTime=21600,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=30},
			},
		tbProduct = {szName="b«n tiªu",tbProp={0,10,6,1,0,0},nCount = 1,nExpiredTime=4320,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=10},
			},
		tbProduct = {szName="phi v©n",tbProp={0,10,8,1,0,0},nCount = 1,nExpiredTime=10080,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=20},
			},
		tbProduct = {szName="mÆt n¹",tbProp={0,11,561,1,0},nCount = 1,nExpiredTime=10080,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=30},
			},
		tbProduct = {szName="d©y chuyÒn an bang",tbProp={0,408},nCount = 1,nQuality=1,nExpiredTime=10080,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=5},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=10},
			},
		tbProduct = {szName="nhÉn an bang",tbProp={0,411},nCount = 1,nQuality=1,nExpiredTime=10080,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=5},
			},
		tbProduct = {szName="ngäc béi an bang",tbProp={0,410},nCount = 1,nQuality=1,nExpiredTime=10080,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=1},
			},
		tbProduct = {szName="MÆt n¹ dÞ dung",tbProp={6,1,2951,1,1},nCount = 1,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=5},
			},
		tbProduct = {szName="mÆt n¹",tbProp={0,11,562,1,0},nCount = 1,nExpiredTime=60,},
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
		{szName="So¸i Kú",tbProp={6,1,4456,-1},nCount=2},
			},
		tbProduct = {szName="Ch×a Khãa ThÇn BÝ",tbProp={6,1,4459,1,1},nCount = 1,},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
end 
















