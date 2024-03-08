IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\gm_tool\\dohoangkim.lua")
--Include("\\script\\global\\namcung\\gmquanlyserver\\ds_gm.lua");
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229,1370,1986}
local tbFaction =
{
	[1] =
	{
		szShowName = "ThiÕu L©m",
		szFaction = 0 ,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
		tbEquip ={{szFaction = "ThiÕu L©m QuyÒn",},{szFaction = "ThiÕu L©m C«n",},{szFaction = "ThiÕu L©m §ao",},},
	},
	[2] =
	{
		szShowName = "Thiªn V­¬ng Bang",
		szFaction = 1,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
		tbEquip ={{szFaction = "Thiªn V­¬ng Chïy",},{szFaction = "Thiªn V­¬ng Th­¬ng",},{szFaction = "Thiªn V­¬ng §ao",},},
	},
	[3] =
	{
		szShowName = "§­êng M«n",
		szFaction = 2,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
		tbEquip ={{szFaction = "Phi §ao §­êng M«n",},{szFaction = "Ná §­êng M«n",},{szFaction = "Phi Tiªu §­êng M«n",},},
	},
	[4] =
	{
		szShowName = "Ngò §éc Gi¸o",
		szFaction = 3,
		szCamp = 2,
		szCurCamp = 2,
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
		tbEquip ={{szFaction = "Ngò §éc Ch­ëng",},{szFaction = "Ngò §éc §ao",},},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = 4,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "em",
		tbSkill = {380, 328, 712, 1061, 1062, 1114},
		tbEquip ={{szFaction = "Nga Mi KiÕm",},{szFaction = "Nga Mi Ch­ëng",},},
	},
	[6] =
	{
		szShowName = "Thóy Yªn",
		szFaction = 5,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
		tbEquip ={{szFaction = "Thóy Yªn §ao (Ngo¹i)",},{szFaction = "Thóy Yªn Song §ao (Néi)",},},
	},
	[7] =
	{
		szShowName = "C¸i Bang",
		szFaction = 6,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
		tbEquip ={{szFaction = "C¸i Bang Ch­ëng",},{szFaction = "C¸i Bang Bæng",},},
	},
	[8] =
	{
		szShowName = "Thiªn NhÉn Gi¸o",
		szFaction = 7,
		szCamp = 2,
		szCurCamp = 2,
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
		tbEquip ={{szFaction = "ChiÕn NhÉn",},{szFaction = "Ma NhÉn",},},
	},
	[9] =
	{
		szShowName = "Vâ §ang",
		szFaction = 8,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
		tbEquip ={{szFaction = "Vâ §ang KhÝ",},{szFaction = "Vâ §ang KiÕm",},},
	},
	[10] =
	{
		szShowName = "C«n L«n",
		szFaction =9,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
		tbEquip ={{szFaction = "C«n L«n §ao",},{szFaction = "C«n L«n KiÕm",},},
	},
	[11] =
	{
		szShowName = "Hoa S¬n",
		szFaction = 10,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "hs",
		tbSkill = {1364, 1382, 1365, 1369, 1384},
		tbEquip =	{{szFaction = "Hoa S¬n KiÕm",},{szFaction = "Hoa S¬n Néi C«ng",},},
	},
	[12] =
	{
		szShowName = "Vò Hån",
		szFaction = 11,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "wh",
		tbSkill = {1967, 1983, 1984, 1969, 1985},
		tbEquip =	{{szFaction = "Vò Hån §ao",},{szFaction = "Vò Hån ThuÉn",},},
	},
}

local tbFactionSeries =
{
	[1] = {1, 2},
	[2] = {3, 4},
	[3] = {5, 6,11},
	[4] = {7, 8,12},
	[5] = {9, 10},
}


function HoTroTest()
		dofile("script/global/namcung/hotrogm.lua")	
	local szTitle = "<npc>\n- <color=green>Chµo ®¹i hiÖp:<color> <bclr=red>"..GetName().."<bclr>";
	local tbOpt =
	{
		{"NhËn Full TS Vµ C·i L·o", UpLevelTransLife},
                 {"NhËn thö nghiÖm vip 13.",GmNhapTinBao},
		--{"NhËn Nguyªn LiÖu Ðp Trang BÞ+ even.",nguyenlieu},
                {"NhËn Kü N¨ng 150 §¹t 25 Nhanh.",NhanKyNang30},
		--{"LËp Bang Héi Nhanh.", Lap_Bang},
		{"NhËn VËt PhÈm Hæ trî", VatPhamHoTro},
		--{"T¨ng Lªn CÊp 200", level_up_to190},
		{"Hñy Kinh NghiÖm", ExpRecall_Input},
		{"NhËn Trang BÞ Cao CÊp ", TrangBiCaoCap},
                {"NhËn Combo Phi Phong + Ên + Trang Søc", TrangSucPhiPhongAn},
		{"NhËn Bé FF Cao CÊp §· Kh¶m ", phiphong},
		{"NhËn C¸c Lo¹i §iÓm Hæ Trî", hotro},
		{"NhËn Trang BÞ §Æc BiÖt ", TrangBiDacBiet},
		{"NhËn C¸c Lo¹i Ngùa Nhãm ", layngua},
		{"TÈy Tñy MiÔn PhÝ", clear_attibute_point},	
		{"Dän Hµnh Trang", DonSachRuong},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function GmNhapTinBao()
--AddMagic(1764,1)
--AddMagic(1750,1)
PlayerFunLib:AddSkillState(1764,1,3,10886400,1)
end
function UpLevelTransLife()
local n_solan = GetTask(5969);
local nZTransLife = ST_GetTransLifeCount();
if n_solan >=1 and nZTransLife >= 5 then
Say("<color=red>Npc Hç Trî<color=>: §¹i HiÖp <color=yellow>".. GetName().." <color=>§· C·i L·o 1 HoÆc §· TS 5 Råi Kh«ng ThÓ NhËn Thªm §­îc N÷a..!",1,"BiÕt råi/no") 
return 0;
   end
local nTransLife = GetTask(1963)
local nCureLevel = GetLevel()
local nAddLevel = 200 - nCureLevel
	if (nTransLife == 0) then
		for i = 1, 5 do ST_LevelUp(nAddLevel) ST_DoTransLife() end
		ST_LevelUp(nAddLevel)  
		AddMagicPoint(50); AddProp(3000); SetTask(5969,10); AddMagic(1719,20);PlayerFunLib:AddSkillState(1729,1,3,279936000,1) 
	end

end
function no()
end
function even1()
	if CalcFreeItemCellCount() >= 10 then
		local tbAward = {
                      {szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,30283,1,0,0},nCount=4000},
                         {szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,30284,1,0,0},nCount=4000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng")
	end
end


function nguyenlieu()
	
	local szTitle = "<npc>\n- <color=green>Chµo ®¹i hiÖp:<color> <bclr=red>"..GetName().."<bclr>";
	local tbOpt =
	{

              {"NhËn Tói Code  nap dau",RuongNguyenLieu13},
              {"da kham  + 10",RuongNguyenLieu114},
              {"NhËn Test Ðp B¹ch Kim",RuongNguyenLieu12},
              {"NhËn Test Thö Even", even1},
	     {"NhËn Nguyªn Tinh Ngäc", RuongNguyenLieu1},
	      {"NhËn Nguyªn LiÖu Ðp Trang BÞ.", RuongNguyenLieu},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function RuongNguyenLieu()
	if CalcFreeItemCellCount() >= 30 then
		local tbAward = {
			{szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,4837,1,0,0},nCount=25000},
		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 50 ¤ Råi NhËn Th­ëng")
	end
end
function RuongNguyenLieu12()
	if CalcFreeItemCellCount() >= 30 then
		local tbAward = {
			{szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,48003,1,0,0},nCount=15000},
			{szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,48014,1,0,0},nCount=1000},
                        {szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,51087,1,0,0},nCount=1000},
		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 50 ¤ Råi NhËn Th­ëng")
	end
end
function RuongNguyenLieu13()
	if CalcFreeItemCellCount() >= 10 then
		local tbAward = {
			{szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,30143,1,0,0},nCount=1},
		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng")
	end
end
function RuongNguyenLieu114()
	if CalcFreeItemCellCount() >= 1 then
		local tbAward1 = {
			{szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,53016,1,0,0},nCount=10},
		
		}
		tbAwardTemplet:GiveAwardByList(tbAward1,1)
	else
		Talk(1,"","H·y §Ó Trèng 1 ¤ Råi NhËn Th­ëng")
	end
end
function RuongNguyenLieu1()
	if CalcFreeItemCellCount() >= 50 then
		local tbAward = {
			
			{szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,4807,1,0,0},nCount=45000},
                        
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 50 ¤ Råi NhËn Th­ëng")
	end
end
-----------------------------------------------------------------------------------------------
function layvatpham() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)
local nItemIndex = AddGoldItem(0, ""..idgq.."")  SyncItem(nItemIndex) 
end
-----------------------------------------------------------------------------------------------
function DonSachRuong()
	local tbItems = {}
			tbItems = GetRoomItems(0);
			if (getn(tbItems) > 0) then
				for i = 1, getn(tbItems) do
					RemoveItemByIndex(tbItems[i],-1);
				end
			end
end
-------------------------------------------------------LËp Bang Nhanh------------------------------------------------------------------------------------

function Lap_Bang()
	local strTongName = GetTongName()
	local tszTitle = "Chµo mõng b¹n ®· tham gia hÖ thèng <color=yellow>Bang Héi<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,4,"NhËn ®iÒu kiÖn t¹o bang héi/dmcreatetong","Gia nhËp bang héi/dmjointong","T¹o bang héi/dmcreateit","KÕt thóc ®èi tho¹i")
	else
		Say(tszTitle,0)
	end	
end

function dmcreatetong()	
	if  GetCamp() ~= 4 then
		SetCamp(4)
		SetCurCamp(4)
		AddRepute(1000000)
		AddLeadExp(1000000)
		AddEventItem(195)
		Earn(1000000)
		Msg2Player("<color=yellow>Ng­êi ®· héi ®ñ tÊt c¶ ®iªu kiÖn ®Ó t¹o Bang Héi!<color>")
	end
end

function dmjointong()
	if  GetCamp() ~= 4 then
		SetCamp(4)
		SetCurCamp(4)
		Msg2Player("<color=yellow>Gia nhËp Bang héi thµnh c«ng!<color>")
	end
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("TiÕp tôc t¹o bang." ,2,"T¹o bang/Direct_CreateTong","Chß mét phót/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng­êi ch¬i: KiÕm hiÖp ch­ëng m«n nh©n, xin hái ta ph¶i lµm nh­ thÕ nµo míi ca thÓ khai t«ng lËp ph¸i trë thµnh Bang chñ ®©y?", "KiÕm hiÖp ch­ëng m«n nh©n: §Çu tiªn ng­¬i ph¶i ca ®ñ n¨ng lùc l·nh ®¹o, ca 16 ng­êi cïng chU h­íng cïng ng­¬i lËp bang, tr¶i qua 3 ngµy Kh¶o NghiÖm Kú ", "Ch­ëng m«n nh©n:  NOu trong 3 ngµy ca ng­êi rêi bang th× néi trong 3 ngµy ®a ng­êi ph¶i t×m ng­êi kh¸c thay thO.", "Ch­ëng m«n nh©n:  Ng­¬i ph¶i ca ®ñ tµi l·nh ®¹o vµ tUn vËt ®a lµ Nh¹c V­¬ng KiOm", "Ng­êi ch¬i: Nh¹c V­¬ng KiOm ? Ng­êi nai lµ thanh kiOm nµy µ ? ", "KiOm hiÖp ch­ëng m«n nh©n : Th× ra lµ ng­¬i ®· ca na... Kh«ng tÖ, qu¶ nhiªn tuæi trÎ tµi cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "KiÕm hiÖp ch­ëng m«n nh©n: nÕu nh­ t­ëng thµnh lËp chÝnh ®Ých bang héi, sÏ v× tha nç lùc ®¹i l­îng thêi gian tinh lùc d÷ t©m huyÕt, thiÕt bÊt kh¶ bá vë nöa chõng")
		else
			Talk(6,"", "KiÕm hiÖp ch­ëng m«n nh©n: ng­¬i vÊn thµnh lËp bang héi h÷u ®iÒu kiÖn g×, ta lai chËm r·i ®Ých gi¶ng cho ng­¬i nghe", "KiÕm hiÖp ch­ëng m«n nh©n: ®Çu tiªn ng­¬i ph¶i ®· xuÊt s­ ®éc lËp míi b­íc ch©n vµo giang hå; thø nh× ng­¬i kh«ng thÓ t¹i bÊt luËn c¸i g× bang héi trung; lÇn thø hai ng­¬i yÕu cã nhÊt ®Þnh ®Ých giang hå danh väng; tèi hËu cña ng­¬i chØ huy lùc bÊt n¨ng nhá 30 cÊp")
		end
	end
end

function create_pay()
	Say("KiÕm hiÖp ch­ëng m«n nh©n: Ng­¬i cÇn lÖ phi lµ 100 v¹n l­îng b¹c." ,2,"Kh«ng thµnh vÊn ®ª, ta ca ®em 100v l­îng ®©y! /create_pay_yes","H©y dµ, ta kh«ng ®em ®ñ tiªn råi. /create_pay_no")
end
function create_pay_yes()

	if (GetCash() >= 1000000) then
		Pay(1000000)		
		DelItem(195)			
		SetTask(99,1)				
		Direct_CreateTong()	
		
	else
		Talk(1,"", "KiÕm hiÖp ch­ëng m«n nh©n: ViÖc duy tr× bang héi rÊt tèn tiÒn, ng­êi ph¶i cè g¾ng cïng mäi ng­êi tUch gap ®Ó bang ®­îc giµu m¹nh. ")	
	end
end

function Direct_CreateTong()
	CreateTong(1)	
end

---------------------------------------------------------------T¨ng CÊp 190------------------------------------------------------------------------------------------
function level_up_to190()
	local nCurLevel = GetLevel()
	if nCurLevel >= 200 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "Ng­¬i ®· ®¹t cÊp 200 råi.")
		else
			Talk(1, "", "§i chuyÓn sinh tr­íc ®i råi trë l¹i th¨ng cÊp.")
		end
		return
	end
	local nAddLevel = 200 - nCurLevel
	ST_LevelUp(nAddLevel)
end
------------------------------------------------------ChuyÓn Sinh MiÔn PhÝ------------------------------------------------------------------------------------------
function transfer()
	if GetLevel() < 190 then
		Talk(1, "", "CÊp 190 trë lªn míi ca thÓ chuyÓn sinh.")
		return
	end
	if (GetCash() <= 100000000) then
		Talk(1, "", "Ph¶i ca ®ñ 10k v¹n míi ca thÓ chuyÓn sinh.")
		return
	end
	if (ST_GetTransLifeCount() >= 3) then
		if GetLevel() < 200 then
			Talk(1, "", "ChuyÓn sinh 3 trë lªn cÇn cÊp 200 míi ca thÓ chuyÓn sinh.")
			return
		end
	end	
	Pay(100000000)
	ST_DoTransLife()
end
-------------------------------------------------------NhËp ph¸i Nhanh Full Skills 150----------------------------------------------------------------------------

function check_faction()
	local szCurFaction = GetLastFactionNumber()
	if szCurFaction <= 10 and szCurFaction >= 0 then
		Talk(1, "", "Ng­¬i v« danh tiÓu tèt ! h·y ®i ®i.")
		return 
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Trë vÒ", dialog_main})
	tinsert(tbOpt, {"KÕt thóc ®èi tho¹i."})
	CreateNewSayEx("<npc>Mét khi gia nhËp m«n ph¸i kh«ng thÓ thay ®æi, h·y suy nghÜ kü.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X¸c nhËn muèn gia nhËp m«n ph¸i ?<color=yellow>%s<color> m«n ph¸i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X¸c nhËn!", do_set_faction, {nIndex}},
		{"Trë vÒ.", choose_faction},
		{"KÕt thóc ®èi tho¹i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	local nFaction = GetLastFactionNumber() + 1
	if nFaction >= 0 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end

	if check_faction() ~= 1 then
		Talk(1, "", "Ng­¬i ®· gia nhËp m«n ph¸i.")
		return
	end
	local nResult = SetLastFactionNumber(%tbFaction[nIndex].szFaction)
	local nCurCamp = SetCurCamp(%tbFaction[nIndex].szCurCamp)
	local nCamp = SetCamp(%tbFaction[nIndex].szCamp)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do  -- add Skills 90 - 120 - 150
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	AddMagic(210, 1) -- khinh c«ng
	Talk(1, "KickOutSelf", format("Ng­¬i ®· gia nhËp thµnh c«ng ph¸i %s", %tbFaction[nIndex].szShowName))
end
----------------------------------------------------------------------------NhËn Kü N¨ng 180------------------------------------------------------------------------

function nhanskill180()
	local nFaction = GetLastFactionNumber() + 1
	if nFaction==0 then
		Say("Kh«ng cã m«n ph¸i mµ ®åi nhËn skill thÊt truyÒn, ta kh«ng cã thêi gian ®ïa víi ng­¬i", 0)
		return
	else
		for i=1,12 do
			if (nFaction==i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					Say("B¹n häc ®­îc kü n¨ng cÊp 180 <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Say("Ng­¬i ®· cã kü n¨ng thÊt truyÒn råi, ®õng tham lam", 0)
					return
				end
			end
		end
	end
end
---------------------------------------------------------------------Trang Søc + Phi Phong + Ên + MÆt N¹-------------------------------------------------------------------------------
function TrangSucPhiPhongAn()
	local szTitle = "<npc>Ng­¬i cÇn lÊy g×? H·y chän ®i nµo !"
	local tbOpt =
	{
		
		{"NhËn Ên", an},
		{"NhËn Trang søc", trangsuc},
		{"Tho¸t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------------------Trang BÞ §Æc BiÖt-----------------------------------------------------------------------------------------------------------
function TrangBiDacBiet()
	local szTitle = "<npc>Ng­¬i cÇn lÊy g×? H·y chän ®i nµo !"
	local tbOpt =
	{
		
		{"NhËn Cµng Kh«n", AnBang},
		{"NhËn Trang BÞ Vò liÖt", vuliet},
		{"NhËn Trang BÞ H¾c thÇn", hacthan},
		--{"NhËn Trang BÞ Long T­¬ng", longtuong},
		--{"NhËn Trang BÞ long tuong", longtuong},
		--{"NhËn Trang BÞ Lang Van", langvan},
		--{"NhËn Trang BÞ Thuong Khung", thuongkhung},
		--{"NhËn Trang BÞ §éng S¸t", dongsat},
		--{"NhËn Trang BÞ Hång ¶nh", honganh},
		{"NhËn Trang BÞ Huynh ®Ö", huynhde},
		{"NhËn Trang BÞ Cè s¬n", coson},
		--{"NhËn Trang BÞ D­¬ng thÇn", duongthan},
		{"Tho¸t"},
	}

	CreateNewSayEx(szTitle, tbOpt)

end
function AnBang()
	if CalcFreeItemCellCount() >= 20 then
		for i = 4730,4744 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end
function DinhQuoc()
	for i=159,163  do
		AddGoldItem(0, i)
	end
end
function NhuTinhHiepCot()
	for i=190,193  do
		AddGoldItem(0, i)
	end
	for i= 186,189  do
		AddGoldItem(0, i)
	end
end
-------------------------Giíi chØ----------------------------------
function GioiChi()
local szTitle = "<npc>Ng­¬i cÇn lÊy g×? H·y chän ®i nµo !"
	local tbOpt =
	{
		{"H­ng Bang Chi Giíi", xb_jz},
		{"TrÊn Nh¹c Chi Giíi", zy_jz},
		{"Th­îng Ph­¬ng Chi Giíi", sf_jz},
		{"Thiªn Hµ Giíi", sh_jz},
		{"§Õ Hoµng Chi Giíi", dh_jz},
		{"Thiªn Tö Chi Giíi",  tz_jz},
		{"ThÕ Tóc Toµn Giíi", sz_jz},
		{"L·nh B¸ Nguyªn Méng Chi Giíi (Míi)", jz08x},
		{"Cµn Kh«n Giíi ChØ (Cùc phÈm)", jz08},
		{"Tho¸t"},
	}

	CreateNewSayEx(szTitle, tbOpt)
end

function xb_jz()
	AddGoldItem(0, 508)
end	
function zy_jz()
	AddGoldItem(0, 509)
end	
function sf_jz()
	AddGoldItem(0, 510)
end	
function sh_jz()
	AddGoldItem(0, 511)
end	
function dh_jz()
	AddGoldItem(0, 530)
end	
function tz_jz()
	AddGoldItem(0, 531)
end	
function sz_jz()
	AddGoldItem(0, 498)
end	
function jz08()
	AddGoldItem(0, 3878)
end	
function jz08x()
	AddGoldItem(0, 3541)
end
-----------------Set ComBo-----------------------------------
function SetComBo()
	--AddGoldItem(0, 5592)
	AddGoldItem(0, 5199)
	AddGoldItem(0, 5015)
	AddGoldItem(0, 5018)
       AddItem(0,11,841,1,0,0)
       --  AddGoldItem(0, 5211)
end
-----------------------------------Ên-------------------------------
function an()
	for i=5003,5007 do
		AddGoldItem(0, i)
	end
end
----------------------------------Phi Phong---------------------
function phiphong()	
local index = AddItem(6,1,30175,0,0,0,0)
Msg2Player("B¹n nhËn ®­îc <color=yellow>Tói FF<color>")
end

function phiphongcapthap()
	for i=3465,3475 do
		AddGoldItem(0, i)
	end
end

function phiphongphequang()
local index = AddItem(6,1,49054,0,0,0,0)
Msg2Player("B¹n nhËn ®­îc <color=yellow>Tói FF<color>")
end


function phiphongkhapthan()
local index = AddItem(6,1,50014,0,0,0,0)
Msg2Player("B¹n nhËn ®­îc <color=yellow>Tói FF<color>")
end


function phiphongkinhthien()
local index = AddItem(6,1,43054,0,0,0,0)
Msg2Player("B¹n nhËn ®­îc <color=yellow>Tói FF<color>")
end

function phiphongvocuc()
	for i=5290,5292 do
		AddGoldItem(0, i)
	end
end

function phiphongcaocap()
	for i=5293,5304 do
		AddGoldItem(0, i)
	end
end

---------C¸c Trang BÞ Long T­¬ng-H¾c ThÇn---§éng S¸t--Vò LiÖt--------------------------
function longtuong()
	for i=5174,5182 do
		AddGoldItem(0, i)
	end
end

function langvan()
	for i=5212,5216 do
		AddGoldItem(0, i)
	end
end

function thuongkhung()
	for i=5134,5138 do
		AddGoldItem(0, i)
	end
end


function hacthan()
	for i=5139,5143 do
		AddGoldItem(0, i)
	end
end
function huynhde()
	for i=6003,6004 do
		AddGoldItem(0, i)
	end
	for i=5019,5020 do
		AddGoldItem(0, i)
	end
end
function vuliet()
	for i=5114,5118 do
	AddGoldItem(0, i)
	end
end
function dongsat()
	for i=494,497 do
		AddGoldItem(0, i)
	end
	for i=378,379 do
		AddGoldItem(0, i)
	end
end
function coson()
	for i=5989,6000 do
		AddGoldItem(0, i)
	end
end	
function duongthan()
	for i=514,520 do
		AddGoldItem(0, i)
	end
end
---------------------------Trang Søc-----------------------------
function trangsuc()
	for i=4984,4988 do
		AddGoldItem(0, i)
	end
end


function trangsuc1()
	for i=4917,4928 do
		AddGoldItem(0, i)
	end
end
function longdam()
	for i=4929,4938 do
		AddGoldItem(0, i)
	end
end

function cuonglan()
	for i=4488,4492 do
		AddGoldItem(0, i)
	end
end

-----LÊy Trang BÞ Hång ¶nh----------
function honganh()
	local tab_Content = 
	{
	"Hång ¶nh./honganh1",
	"Hång ¶nh [Hoµn Mü]./honganh2",
	"Tho¸t./no",
	}
	Say("Xin mêi chän !", getn(tab_Content), tab_Content)
end

function honganh1()
	for i=204,207 do
		AddGoldItem(0, i)
	end
end

function honganh2()
	for i=434,437 do
		AddGoldItem(0, i)
	end
end

function matna()
	local tbOpt =
	{
		{"MÆt n¹ 1", matna1},
		--{"MÆt n¹ 2", matna2},
		--{"MÆt n¹ 3", matna3},
		--{"MÆt n¹ 4", matna4},
		--{"MÆt n¹ 5", matna5},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän item", tbOpt)
end

function matna1()
	for i=5332,5354 do
		AddGoldItem(0, i)
	end
	for i=5193,5194 do
		AddGoldItem(0, i)
	end

end
function matna2()
	for i=4524,4554 do
		AddGoldItem(0, i)
	end
end
function matna3()
	for i=4555,4585 do
		AddGoldItem(0, i)
	end
end
function matna4()
	for i=4586,4616 do
		AddGoldItem(0, i)
	end
end
function matna5()
	for i=4617,4630 do
		AddGoldItem(0, i)
	end
end

--------------------------------------------------------VËt PhÈm Hæ Trî-------------------------------------------------------------
local tbFreeItem =
{
	{szName="Håi Thiªn T¸i T¹o CÈm Nang", tbProp={6,1,1781,1,0,0}, tbParam={60}},
}
function VatPhamHoTro()
	local szTitle = "<npc>Ng­¬i cÇn lÊy g×? H·y chän ®i nµo !"
	local tbOpt =
	{
		{"ThÇn Hµnh Phï", LayThanHanh},
		{"Håi Thiªn T¸i T¹o CÈm Nang", LayHoiThien},
		{"NhËn 5000 TiÒn §ång", tiendong},
		{"NhËn 100k TiÒn V¹n", tienvan},
                {"NhËn Kim Nguyen Bao", KimNguyenBao},
		{"Cµn Kh«n Song TuyÖt Béi", CanKhonBoi},
		{"NhËn Phóc Duyªn.", PhucDuyen},
		{"Trang kÕ.", VatPhamHoTro2},
		{"KÕt Thóc."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function LayThanHanh()
	AddItem(6,1,1266,0,0,0)

end
function CanKhonBoi()
	AddItem(6,1,2219,0,0,0)
end
function LeVatHuyHoang()
	AddItem(6,1,1075,0,0,0)
end
function NhacVuongLeBao()
	AddItem(6,1,2340,0,0,0)
end
function VatPhamHoTro2()
	local szTitle = "<npc>Ng­¬i cÇn lÊy g×? H·y chän ®i nµo !"
	local tbOpt =
	{
		{"NhËn VËt PhÈm Trïng Sinh", bacdautst},
		{"NhËn  KNB.", KimNguyenBao},
		--{"NhËn HuyÒn Tinh Kho¸ng Th¹ch.", HuyenTinh},
		--{"NhËn §¸ Ðp §å", DaEp},
		{"NhËn NhËn S¸t Thñ Gi¶n 90", SatThuGian},
		{"NhËn Long HuyÕt Hoµn", longhuyethoan},
		{"KÕt Thóc."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function LayHoiThien()
	local nMaxCount = CalcFreeItemCellCount()
	g_AskClientNumberEx(0, nMaxCount, "Xin mêi ®­a vµo nhËn lÊy", {HoiThien, {nCount}})
end

function HoiThien(nCount)
	if nCount <= 0 then
		return
	end
	if CalcFreeItemCellCount() < nCount then
		Talk(1, "", format("CÇn Ut nhÊt <color=yellow>%d<color> tói kh«ng gian...", nCount))
		return
	end
	for i =1,nCount do
		tbAwardTemplet:GiveAwardByList(%tbFreeItem, nCount)
	end

end
function KimNguyenBao()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=5000},"NhËn Hç Trî")
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
	end
end
function tienvan()
	Earn(1000000000)	
end;

function tiendong()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=10000},"NhËn Hç Trî")
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
	end
end

function tiendongkhoa()
	for i =1,5 do
		AddStackItem(100,4,1496,1,1,0,0,0)
	end
end;

function goiboss()	
	AddItem(6,1,1022,0,0,0)
	AddItem(6,1,4349,0,0,0)
end

-------------------------------NhËn VËt PhÈm Trïng Sinh-------------------------
function bacdautst()
	local tbSay = {}
	tinsert(tbSay,"Combo Nguyªn LiÖu Trïng Sinh./combo")
	tinsert(tbSay,"NhËn 4 B¾c §Èu TST C¬ Së Thiªn./bacdau1")
	tinsert(tbSay,"NhËn B¾c §Èu TST §¹i Thõa T©m Ph¸p./bacdau2")
	tinsert(tbSay,"NhËn 999 TÝch LÞch §¬n./tichlichdon")
	tinsert(tbSay,"Tho¸t/no")
	Say("Xin chµo <color=yellow>"..GetName().."<color>, Xin h·y lùa chän vËt phÈm b¹n cÇn...!", getn(tbSay), tbSay)
end

function bacdau1()
	AddItem(6,1,1390,0,0,0)
	AddItem(6,1,1390,0,0,0)
	AddItem(6,1,1390,0,0,0)
	AddItem(6,1,1390,0,0,0)
end

function bacdau2()
	AddItem(6,1,2974,0,0,0)
end

function tichlichdon()
	for i =1,999 do
	AddItem(6,1,2973,0,0,0)
	end
end

function combo()
	AddItem(6,1,1390,0,0,0)
	AddItem(6,1,1390,0,0,0)
	AddItem(6,1,1390,0,0,0)
	AddItem(6,1,1390,0,0,0)
	AddItem(6,1,2974,0,0,0)
	for i =1,999 do
		AddItem(6,1,2973,0,0,0)
	end
end

function bacdauttd()
	AddItem(6,1,30127,0,0,0)
end

function HuyenTinh() 
	for i =1,10 do
		AddItem(6,1,147,i,0,0,0) 
	end
	Msg2Player("B¹n NhËn HuyÒn Tinh.")
end




function SatThuGian()
	AddItem(6,1,400,90,0,0,0) 
	AddItem(6,1,400,90,1,0,0) 
	AddItem(6,1,400,90,2,0,0) 
	AddItem(6,1,400,90,3,0,0) 
	AddItem(6,1,400,90,4,0,0) 
	Msg2Player("B¹n NhËn 3 S¸t Thñ Gi¶n.")
end

function longhuyethoang()
	AddItem(6,1,2117,90,0,0,0) 
	Msg2Player("B¹n NhËn long huyÕt hoµn.")
end

function ThuyTinhTinhHong()
	for i=1,6 do
		AddItem(4, 353, 1, 1, 0, 0)
	end
	for i=238,240 do
		AddItem(4, i, 1, 1, 0, 0)
	end
	Msg2Player("B¹n NhËn 3 Lo¹i Thñy tinh vµ 6 tinh hång b¶o th¹ch.")
end

function PhucDuyen()
	AddItem(6,1,122,1,0,0,0)
	AddItem(6,1,123,1,0,0,0) 
	AddItem(6,1,124,1,0,0,0)
	Msg2Player("B¹n NhËn 3 Lo¹i Phóc Duyªn.")
end

-------------------------------------------------------ChuyÓn §æi Ngñ Hµnh ------------------------------------------------------------------------------------------
function nguhanh()
local szTitle = "<npc>Ng­¬i cÇn g×?"
	local tbOpt =
	{
		{"ChuyÓn ®æi sang n÷ hÖ Kim", nukim},
		{"Chuyªn ®æi sang nam hÖ Thuy", namthuy},
		{"Tho¸t"},
	}

	CreateNewSayEx(szTitle, tbOpt)
end
function nukim()
	if GetSex() == 1 then
		SetSeries(0)
		KickOutSelf()
	else
		Talk(1,"","Ng­¬i lµ Pª §ª µ ?")
	end
end

function namthuy()
	if GetSex() == 0 then
		SetSeries(2)
		KickOutSelf()
	else
		Talk(1,"","Vui lßng kiÓm tra l¹i giíi tÝnh")
	end
end

------------------------------------------------------------------LÊy Ngùa Vip -----------------------------------------------------------------------------------------------
function layngua()
	local tab_Content =
	{
		--"Ngùa nhãm 80./ngua8x",
		--"Ngùa nhãm 100./ngua10x",
		"Ngùa Hoµng Kim Nhãm 1/NguaHoangKim",
		--"H·n HuyÕt Long C©u./longcau",
		--"M· bµi Siªu quang./mabaisq",
		"Ngùa Vip Nhãm 2./sutu",
		--"Th­îng Cæ D· Tr­./HeoRung",
		--"Th­îng Cæ - ChiÕn M·./ChienVuong",
		"Tho¸t./no",
	}
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Ngùa mµ b¹n muèn !", getn(tab_Content), tab_Content);
end
function HeoRung()
	AddGoldItem(0,5552)
end
function ChienVuong()
	AddGoldItem(0,5551)
end
function ngua8x()
	AddItem(0,10,5,random(6,7),0,0,0)
	AddItem(0,10,5,random(8,9),0,0,0)
	AddItem(0,10,5,10,0,0,0)
	Msg2Player("B¹n NhËn Ngùa 80.")

end

function ngua10x()
	AddItem(0,10,random(11,15),10,0,0,0)
	AddItem(0,10,random(16,20),10,0,0,0)
	AddItem(0,10,random(21,25),10,0,0,0)
	Msg2Player("B¹n NhËn Ngùa 100.")
end

function NguaHoangKim()
	local nRanD = random(4959,4968)
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0,nRanD)
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function sutu()
	local nRanD = random(4989,4992)
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0,nRanD)
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end
function sieuquang()
	AddGoldItem(0, 5550)
	Msg2Player("B¹n NhËn Ngùa Siªu Quang.")
end
function longcau()
	AddGoldItem(0, 5553)
	Msg2Player("B¹n NhËn Ngùa H·n HuyÕt Long C©u.")
end

--------------------------------------------------------Tr¹ng Th¸i PK-------------------------------------------------------------------------------------
function trangthai()
	local tbOpt =
	{
		{"ChÝnh ph¸i", mauvang},
		{"Tµ ph¸i", mautim},
		{"Trung lËp", mauxanh},
		{"S¸t Thñ", maudo},
		--{"Admin", mauadmin},
		--{"Trë l¹i", namcung2},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän mµu", tbOpt)
end

function mauadmin()
		SetCurCamp(5)
		SetCamp(5) 
		Msg2Player("B¹n ChuyÓn Sang tr¹ng th¸i Admin.")
end
 
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Msg2Player("B¹n ChuyÓn Sang tr¹ng th¸i ChÝnh ph¸i.")
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Msg2Player("B¹n ChuyÓn Sang tr¹ng th¸i Tµ ph¸i.")	
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Msg2Player("B¹n ChuyÓn Sang tr¹ng th¸i Trung lËp.")	
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Msg2Player("B¹n ChuyÓn Sang tr¹ng th¸i S¸t Thñ.")	
end
-------------------------------------------------------C¸c lo¹i §iÓm Hæ Trî--------------------------------------------------------------------

function hotro()
	local tbOpt =
	{
		{"§iÓm Kinh NghiÖm", kn},
		--{"§iÓm Kü N¨ng", pointkynang},
		--{"§iÓm TiÒm N¨ng", pointtiemnang},
		{"§iÓm Cèng HiÕn Bang Héi", conghien},
		{"§iÓm Danh väng", danhvong},
		{"§iÓm Phóc duyªn", phucduyen},
		{"Tµi L·nh §¹o Nhãm", lanhdao},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Anh cÇn g×?", tbOpt)
end

function conghien()
	AddContribution(100)	
	Msg2Player("B¹n nhËn ®­îc 100 ®iÓm Cèng HiÕn.")
end

function pointkynang()
	AddMagicPoint(500)
	Msg2Player("B¹n nhËn ®­îc 500 ®iÓm Kü N¨ng.")
end;

function pointtiemnang()
	AddProp(10000)
	Msg2Player("B¹n nhËn ®­îc 10000 ®iÓm TiÒm N¨ng.")
end;

	
function lanhdao()
	for i=1,20 do
		AddLeadExp(10000000)
	end
	Msg2Player("B¹n nhËn ®­îc 10000000 ®iÓm L·nh §¹o.")
end

function kn()
	for i=1,10 do
		AddOwnExp(10000000000)
	end

end


function danhvong()
	AddRepute(100000);
	Msg2Player("B¹n nhËn ®­îc 100000 ®iÓm Danh Väng.")
end
function phucduyen()
	FuYuan_Start();
	FuYuan_Add(100000);
	Msg2Player("B¹n nhËn ®­îc 100000 ®iÓm Phóc Duyªn.")
end
---------------------------------------------------------TÈy Tñy MiÔn PhÝ-------------------------------------------------------------------

function clear_attibute_point()
	local tbOpt =
	{
		{"TÈy ®iÓm kü n¨ng", clear_skill},
		{"TÈy ®iÓm tiÒm n¨ng", clear_prop},
		{"KÕt thóc ®èi tho¹i."},
	}
	CreateNewSayEx("<npc>Ng­¬i quyOt u muèn tÈy tñy?", tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_skill},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", clear_attibute_point},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyOt u muèn tÈy tñy?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)		-- Çá¹¦ÁíÍâ²Ù×÷
	local j = HaveMagic(400)		-- ¡°½Ù¸»¼ÃÆ¶¡±ÁíÍâ²Ù×÷
	local n = RollbackSkill()		-- Çå³ý¼¼ÄÜ²¢·µ»ØËùÓÐ¼¼ÄÜ?ã£¨°üÀ¨Çá¹¦µÈÌØÊâ¼¼ÄÜ£?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- ÕâÁ½¾äÅÐ¶ÏÊÇÅÅ³ý´ÓÎ´Ñ§¹ýÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµãÊý¼ÆËã´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- °Ñ¼¼ÄÜµãµ±×ö¿ÕÏÐµãÊý·µ»¹£¬µ«ÏÈ?Û³ýÇá¹¦µ?
	if (rollback_point + GetMagicPoint() < 0) then		-- Èç¹ûÏ´³ÉÁË¸ºÊý£¬Ôòµ±×÷0£¨ÎªÒÔºó¶à´ÎÏ´µã±£?ô£?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- Èç¹ûÑ§¹uÇá¹¦Ô?¼Ó»ØÔ­ÓÐµÈ¼¶
	if (j ~= -1) then AddMagic(400, j) end			-- Èç¹ûÑ§¹u¡°½Ù¸»¼AÆ¶¡±Í¬Ñù´¦Àí
	Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_prop},
		{"§Ó ta suy nghÜ l¹i."},
		{"Trë vÒ", clear_attibute_point},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyOt u muèn tÈy tñy?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}			-- ÎåÐÐÈËÎïµÄÌìÉúÊôÐÔÖµ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ½«ÒÑ·ÖÅäÇ±ÄÜÖØÖÃ£¨task(88)ÊÇÈÎÎñÖÐÖ±½Ó½±ÀøµÄÁ¦Á¿¡¢Éí·¨µÈ£©
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end

function write_info()
	tbInputDialog:InputServer()
end

----------------------------------
--------------------------------------------------------------------
function NhanKyNang30()
local faction = GetLastFactionNumber()
local SkillLimit = 25
local nTaskID = 5126
	if faction == 0 then
		AddMagic(1055,SkillLimit)
		AddMagic(1056,SkillLimit)
		AddMagic(1057,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 1 then
		AddMagic(1058,SkillLimit)
		AddMagic(1059,SkillLimit)
		AddMagic(1060,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 2 then
		AddMagic(1069,SkillLimit)
		AddMagic(1070,SkillLimit)
		AddMagic(1071,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 3 then
		AddMagic(1066,SkillLimit)
		AddMagic(1067,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 4 then
		AddMagic(1061,SkillLimit)
		AddMagic(1062,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 5 then
		AddMagic(1063,SkillLimit)
		AddMagic(1065,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 6 then
		AddMagic(1073,SkillLimit)
		AddMagic(1074,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 7 then
		AddMagic(1075,SkillLimit)
		AddMagic(1076,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 8 then
		AddMagic(1078,SkillLimit)
		AddMagic(1079,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 9 then
		AddMagic(1080,SkillLimit)
		AddMagic(1081,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 10 then
		AddMagic(1369,SkillLimit)
		AddMagic(1384,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	elseif faction == 11 then
		AddMagic(1985,SkillLimit)
		AddMagic(1969,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	end
end
----------------------------------------------------------------------

