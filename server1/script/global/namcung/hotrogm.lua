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
		szShowName = "Thi�u L�m",
		szFaction = 0 ,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709, 1055, 1056, 1057},
		tbEquip ={{szFaction = "Thi�u L�m Quy�n",},{szFaction = "Thi�u L�m C�n",},{szFaction = "Thi�u L�m �ao",},},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = 1,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708, 1058, 1059, 1060},
		tbEquip ={{szFaction = "Thi�n V��ng Ch�y",},{szFaction = "Thi�n V��ng Th��ng",},{szFaction = "Thi�n V��ng �ao",},},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = 2,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710, 1069, 1070, 1071},
		tbEquip ={{szFaction = "Phi �ao ���ng M�n",},{szFaction = "N� ���ng M�n",},{szFaction = "Phi Ti�u ���ng M�n",},},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
		szFaction = 3,
		szCamp = 2,
		szCurCamp = 2,
		nShortFaction = "wu",
		tbSkill = {353, 355, 711, 1066, 1067},
		tbEquip ={{szFaction = "Ng� ��c Ch��ng",},{szFaction = "Ng� ��c �ao",},},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = 4,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "em",
		tbSkill = {380, 328, 712, 1061, 1062, 1114},
		tbEquip ={{szFaction = "Nga Mi Ki�m",},{szFaction = "Nga Mi Ch��ng",},},
	},
	[6] =
	{
		szShowName = "Th�y Y�n",
		szFaction = 5,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "cy",
		tbSkill = {336, 337, 713, 1063, 1065},
		tbEquip ={{szFaction = "Th�y Y�n �ao (Ngo�i)",},{szFaction = "Th�y Y�n Song �ao (N�i)",},},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = 6,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "gb",
		tbSkill = {357, 359, 714, 1073, 1074},
		tbEquip ={{szFaction = "C�i Bang Ch��ng",},{szFaction = "C�i Bang B�ng",},},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = 7,
		szCamp = 2,
		szCurCamp = 2,
		nShortFaction = "tr",
		tbSkill = {361, 362, 715, 1075, 1076},
		tbEquip ={{szFaction = "Chi�n Nh�n",},{szFaction = "Ma Nh�n",},},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = 8,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "wd",
		tbSkill = {365, 368, 716, 1078, 1079},
		tbEquip ={{szFaction = "V� �ang Kh�",},{szFaction = "V� �ang Ki�m",},},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction =9,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "kl",
		tbSkill = {372, 375, 717, 1080, 1081},
		tbEquip ={{szFaction = "C�n L�n �ao",},{szFaction = "C�n L�n Ki�m",},},
	},
	[11] =
	{
		szShowName = "Hoa S�n",
		szFaction = 10,
		szCamp = 3,
		szCurCamp = 3,
		nShortFaction = "hs",
		tbSkill = {1364, 1382, 1365, 1369, 1384},
		tbEquip =	{{szFaction = "Hoa S�n Ki�m",},{szFaction = "Hoa S�n N�i C�ng",},},
	},
	[12] =
	{
		szShowName = "V� H�n",
		szFaction = 11,
		szCamp = 1,
		szCurCamp = 1,
		nShortFaction = "wh",
		tbSkill = {1967, 1983, 1984, 1969, 1985},
		tbEquip =	{{szFaction = "V� H�n �ao",},{szFaction = "V� H�n Thu�n",},},
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
	local szTitle = "<npc>\n- <color=green>Ch�o ��i hi�p:<color> <bclr=red>"..GetName().."<bclr>";
	local tbOpt =
	{
		{"Nh�n Full TS V� C�i L�o", UpLevelTransLife},
                 {"Nh�n th� nghi�m vip 13.",GmNhapTinBao},
		--{"Nh�n Nguy�n Li�u �p Trang B�+ even.",nguyenlieu},
                {"Nh�n K� N�ng 150 ��t 25 Nhanh.",NhanKyNang30},
		--{"L�p Bang H�i Nhanh.", Lap_Bang},
		{"Nh�n V�t Ph�m H� tr�", VatPhamHoTro},
		--{"T�ng L�n C�p 200", level_up_to190},
		{"H�y Kinh Nghi�m", ExpRecall_Input},
		{"Nh�n Trang B� Cao C�p ", TrangBiCaoCap},
                {"Nh�n Combo Phi Phong + �n + Trang S�c", TrangSucPhiPhongAn},
		{"Nh�n B� FF Cao C�p �� Kh�m ", phiphong},
		{"Nh�n C�c Lo�i �i�m H� Tr�", hotro},
		{"Nh�n Trang B� ��c Bi�t ", TrangBiDacBiet},
		{"Nh�n C�c Lo�i Ng�a Nh�m ", layngua},
		{"T�y T�y Mi�n Ph�", clear_attibute_point},	
		{"D�n H�nh Trang", DonSachRuong},
		{"Tho�t"},
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
Say("<color=red>Npc H� Tr�<color=>: ��i Hi�p <color=yellow>".. GetName().." <color=>�� C�i L�o 1 Ho�c �� TS 5 R�i Kh�ng Th� Nh�n Th�m ���c N�a..!",1,"Bi�t r�i/no") 
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
                      {szName="R��ng Nguy�n Li�u",tbProp={6,1,30283,1,0,0},nCount=4000},
                         {szName="R��ng Nguy�n Li�u",tbProp={6,1,30284,1,0,0},nCount=4000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n Th��ng")
	end
end


function nguyenlieu()
	
	local szTitle = "<npc>\n- <color=green>Ch�o ��i hi�p:<color> <bclr=red>"..GetName().."<bclr>";
	local tbOpt =
	{

              {"Nh�n T�i Code  nap dau",RuongNguyenLieu13},
              {"da kham  + 10",RuongNguyenLieu114},
              {"Nh�n Test �p B�ch Kim",RuongNguyenLieu12},
              {"Nh�n Test Th� Even", even1},
	     {"Nh�n Nguy�n Tinh Ng�c", RuongNguyenLieu1},
	      {"Nh�n Nguy�n Li�u �p Trang B�.", RuongNguyenLieu},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function RuongNguyenLieu()
	if CalcFreeItemCellCount() >= 30 then
		local tbAward = {
			{szName="R��ng Nguy�n Li�u",tbProp={6,1,4837,1,0,0},nCount=25000},
		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 50 � R�i Nh�n Th��ng")
	end
end
function RuongNguyenLieu12()
	if CalcFreeItemCellCount() >= 30 then
		local tbAward = {
			{szName="R��ng Nguy�n Li�u",tbProp={6,1,48003,1,0,0},nCount=15000},
			{szName="R��ng Nguy�n Li�u",tbProp={6,1,48014,1,0,0},nCount=1000},
                        {szName="R��ng Nguy�n Li�u",tbProp={6,1,51087,1,0,0},nCount=1000},
		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 50 � R�i Nh�n Th��ng")
	end
end
function RuongNguyenLieu13()
	if CalcFreeItemCellCount() >= 10 then
		local tbAward = {
			{szName="R��ng Nguy�n Li�u",tbProp={6,1,30143,1,0,0},nCount=1},
		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n Th��ng")
	end
end
function RuongNguyenLieu114()
	if CalcFreeItemCellCount() >= 1 then
		local tbAward1 = {
			{szName="R��ng Nguy�n Li�u",tbProp={6,1,53016,1,0,0},nCount=10},
		
		}
		tbAwardTemplet:GiveAwardByList(tbAward1,1)
	else
		Talk(1,"","H�y �� Tr�ng 1 � R�i Nh�n Th��ng")
	end
end
function RuongNguyenLieu1()
	if CalcFreeItemCellCount() >= 50 then
		local tbAward = {
			
			{szName="R��ng Nguy�n Li�u",tbProp={6,1,4807,1,0,0},nCount=45000},
                        
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 50 � R�i Nh�n Th��ng")
	end
end
-----------------------------------------------------------------------------------------------
function layvatpham() 
g_AskClientStringEx("",1,9000,"Nh�p V�o Glodequip Code:",{TaoItemGlodequip}) 
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
-------------------------------------------------------L�p Bang Nhanh------------------------------------------------------------------------------------

function Lap_Bang()
	local strTongName = GetTongName()
	local tszTitle = "Ch�o m�ng b�n �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,4,"Nh�n �i�u ki�n t�o bang h�i/dmcreatetong","Gia nh�p bang h�i/dmjointong","T�o bang h�i/dmcreateit","K�t th�c ��i tho�i")
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
		Msg2Player("<color=yellow>Ng��i �� h�i �� t�t c� �i�u ki�n �� t�o Bang H�i!<color>")
	end
end

function dmjointong()
	if  GetCamp() ~= 4 then
		SetCamp(4)
		SetCurCamp(4)
		Msg2Player("<color=yellow>Gia nh�p Bang h�i th�nh c�ng!<color>")
	end
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ti�p t�c t�o bang." ,2,"T�o bang/Direct_CreateTong","Ch� m�t ph�t/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng��i ch�i: Ki�m hi�p ch��ng m�n nh�n, xin h�i ta ph�i l�m nh� th� n�o m�i ca th� khai t�ng l�p ph�i tr� th�nh Bang ch� ��y?", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i ca �� n�ng l�c l�nh ��o, ca 16 ng��i c�ng chU h��ng c�ng ng��i l�p bang, tr�i qua 3 ng�y Kh�o Nghi�m K� ", "Ch��ng m�n nh�n:  NOu trong 3 ng�y ca ng��i r�i bang th� n�i trong 3 ng�y �a ng��i ph�i t�m ng��i kh�c thay thO.", "Ch��ng m�n nh�n:  Ng��i ph�i ca �� t�i l�nh ��o v� tUn v�t �a l� Nh�c V��ng KiOm", "Ng��i ch�i: Nh�c V��ng KiOm ? Ng��i nai l� thanh kiOm n�y � ? ", "KiOm hi�p ch��ng m�n nh�n : Th� ra l� ng��i �� ca na... Kh�ng t�, qu� nhi�n tu�i tr� t�i cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: n�u nh� t��ng th�nh l�p ch�nh ��ch bang h�i, s� v� tha n� l�c ��i l��ng th�i gian tinh l�c d� t�m huy�t, thi�t b�t kh� b� v� n�a ch�ng")
		else
			Talk(6,"", "Ki�m hi�p ch��ng m�n nh�n: ng��i v�n th�nh l�p bang h�i h�u �i�u ki�n g�, ta lai ch�m r�i ��ch gi�ng cho ng��i nghe", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i �� xu�t s� ��c l�p m�i b��c ch�n v�o giang h�; th� nh� ng��i kh�ng th� t�i b�t lu�n c�i g� bang h�i trung; l�n th� hai ng��i y�u c� nh�t ��nh ��ch giang h� danh v�ng; t�i h�u c�a ng��i ch� huy l�c b�t n�ng nh� 30 c�p")
		end
	end
end

function create_pay()
	Say("Ki�m hi�p ch��ng m�n nh�n: Ng��i c�n l� phi l� 100 v�n l��ng b�c." ,2,"Kh�ng th�nh v�n ��, ta ca �em 100v l��ng ��y! /create_pay_yes","H�y d�, ta kh�ng �em �� ti�n r�i. /create_pay_no")
end
function create_pay_yes()

	if (GetCash() >= 1000000) then
		Pay(1000000)		
		DelItem(195)			
		SetTask(99,1)				
		Direct_CreateTong()	
		
	else
		Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: Vi�c duy tr� bang h�i r�t t�n ti�n, ng��i ph�i c� g�ng c�ng m�i ng��i tUch gap �� bang ���c gi�u m�nh. ")	
	end
end

function Direct_CreateTong()
	CreateTong(1)	
end

---------------------------------------------------------------T�ng C�p 190------------------------------------------------------------------------------------------
function level_up_to190()
	local nCurLevel = GetLevel()
	if nCurLevel >= 200 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "Ng��i �� ��t c�p 200 r�i.")
		else
			Talk(1, "", "�i chuy�n sinh tr��c �i r�i tr� l�i th�ng c�p.")
		end
		return
	end
	local nAddLevel = 200 - nCurLevel
	ST_LevelUp(nAddLevel)
end
------------------------------------------------------Chuy�n Sinh Mi�n Ph�------------------------------------------------------------------------------------------
function transfer()
	if GetLevel() < 190 then
		Talk(1, "", "C�p 190 tr� l�n m�i ca th� chuy�n sinh.")
		return
	end
	if (GetCash() <= 100000000) then
		Talk(1, "", "Ph�i ca �� 10k v�n m�i ca th� chuy�n sinh.")
		return
	end
	if (ST_GetTransLifeCount() >= 3) then
		if GetLevel() < 200 then
			Talk(1, "", "Chuy�n sinh 3 tr� l�n c�n c�p 200 m�i ca th� chuy�n sinh.")
			return
		end
	end	
	Pay(100000000)
	ST_DoTransLife()
end
-------------------------------------------------------Nh�p ph�i Nhanh Full Skills 150----------------------------------------------------------------------------

function check_faction()
	local szCurFaction = GetLastFactionNumber()
	if szCurFaction <= 10 and szCurFaction >= 0 then
		Talk(1, "", "Ng��i v� danh ti�u t�t ! h�y �i �i.")
		return 
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Tr� v�", dialog_main})
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	CreateNewSayEx("<npc>M�t khi gia nh�p m�n ph�i kh�ng th� thay ��i, h�y suy ngh� k�.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X�c nh�n mu�n gia nh�p m�n ph�i ?<color=yellow>%s<color> m�n ph�i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X�c nh�n!", do_set_faction, {nIndex}},
		{"Tr� v�.", choose_faction},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	local nFaction = GetLastFactionNumber() + 1
	if nFaction >= 0 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end

	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
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
	AddMagic(210, 1) -- khinh c�ng
	Talk(1, "KickOutSelf", format("Ng��i �� gia nh�p th�nh c�ng ph�i %s", %tbFaction[nIndex].szShowName))
end
----------------------------------------------------------------------------Nh�n K� N�ng 180------------------------------------------------------------------------

function nhanskill180()
	local nFaction = GetLastFactionNumber() + 1
	if nFaction==0 then
		Say("Kh�ng c� m�n ph�i m� ��i nh�n skill th�t truy�n, ta kh�ng c� th�i gian ��a v�i ng��i", 0)
		return
	else
		for i=1,12 do
			if (nFaction==i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					Say("B�n h�c ���c k� n�ng c�p 180 <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Say("Ng��i �� c� k� n�ng th�t truy�n r�i, ��ng tham lam", 0)
					return
				end
			end
		end
	end
end
---------------------------------------------------------------------Trang S�c + Phi Phong + �n + M�t N�-------------------------------------------------------------------------------
function TrangSucPhiPhongAn()
	local szTitle = "<npc>Ng��i c�n l�y g�? H�y ch�n �i n�o !"
	local tbOpt =
	{
		
		{"Nh�n �n", an},
		{"Nh�n Trang s�c", trangsuc},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
---------------------------------------------------------------------Trang B� ��c Bi�t-----------------------------------------------------------------------------------------------------------
function TrangBiDacBiet()
	local szTitle = "<npc>Ng��i c�n l�y g�? H�y ch�n �i n�o !"
	local tbOpt =
	{
		
		{"Nh�n C�ng Kh�n", AnBang},
		{"Nh�n Trang B� V� li�t", vuliet},
		{"Nh�n Trang B� H�c th�n", hacthan},
		--{"Nh�n Trang B� Long T��ng", longtuong},
		--{"Nh�n Trang B� long tuong", longtuong},
		--{"Nh�n Trang B� Lang Van", langvan},
		--{"Nh�n Trang B� Thuong Khung", thuongkhung},
		--{"Nh�n Trang B� ��ng S�t", dongsat},
		--{"Nh�n Trang B� H�ng �nh", honganh},
		{"Nh�n Trang B� Huynh ��", huynhde},
		{"Nh�n Trang B� C� s�n", coson},
		--{"Nh�n Trang B� D��ng th�n", duongthan},
		{"Tho�t"},
	}

	CreateNewSayEx(szTitle, tbOpt)

end
function AnBang()
	if CalcFreeItemCellCount() >= 20 then
		for i = 4730,4744 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
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
-------------------------Gi�i ch�----------------------------------
function GioiChi()
local szTitle = "<npc>Ng��i c�n l�y g�? H�y ch�n �i n�o !"
	local tbOpt =
	{
		{"H�ng Bang Chi Gi�i", xb_jz},
		{"Tr�n Nh�c Chi Gi�i", zy_jz},
		{"Th��ng Ph��ng Chi Gi�i", sf_jz},
		{"Thi�n H� Gi�i", sh_jz},
		{"�� Ho�ng Chi Gi�i", dh_jz},
		{"Thi�n T� Chi Gi�i",  tz_jz},
		{"Th� T�c To�n Gi�i", sz_jz},
		{"L�nh B� Nguy�n M�ng Chi Gi�i (M�i)", jz08x},
		{"C�n Kh�n Gi�i Ch� (C�c ph�m)", jz08},
		{"Tho�t"},
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
-----------------------------------�n-------------------------------
function an()
	for i=5003,5007 do
		AddGoldItem(0, i)
	end
end
----------------------------------Phi Phong---------------------
function phiphong()	
local index = AddItem(6,1,30175,0,0,0,0)
Msg2Player("B�n nh�n ���c <color=yellow>T�i FF<color>")
end

function phiphongcapthap()
	for i=3465,3475 do
		AddGoldItem(0, i)
	end
end

function phiphongphequang()
local index = AddItem(6,1,49054,0,0,0,0)
Msg2Player("B�n nh�n ���c <color=yellow>T�i FF<color>")
end


function phiphongkhapthan()
local index = AddItem(6,1,50014,0,0,0,0)
Msg2Player("B�n nh�n ���c <color=yellow>T�i FF<color>")
end


function phiphongkinhthien()
local index = AddItem(6,1,43054,0,0,0,0)
Msg2Player("B�n nh�n ���c <color=yellow>T�i FF<color>")
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

---------C�c Trang B� Long T��ng-H�c Th�n---��ng S�t--V� Li�t--------------------------
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
---------------------------Trang S�c-----------------------------
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

-----L�y Trang B� H�ng �nh----------
function honganh()
	local tab_Content = 
	{
	"H�ng �nh./honganh1",
	"H�ng �nh [Ho�n M�]./honganh2",
	"Tho�t./no",
	}
	Say("Xin m�i ch�n !", getn(tab_Content), tab_Content)
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
		{"M�t n� 1", matna1},
		--{"M�t n� 2", matna2},
		--{"M�t n� 3", matna3},
		--{"M�t n� 4", matna4},
		--{"M�t n� 5", matna5},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n item", tbOpt)
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

--------------------------------------------------------V�t Ph�m H� Tr�-------------------------------------------------------------
local tbFreeItem =
{
	{szName="H�i Thi�n T�i T�o C�m Nang", tbProp={6,1,1781,1,0,0}, tbParam={60}},
}
function VatPhamHoTro()
	local szTitle = "<npc>Ng��i c�n l�y g�? H�y ch�n �i n�o !"
	local tbOpt =
	{
		{"Th�n H�nh Ph�", LayThanHanh},
		{"H�i Thi�n T�i T�o C�m Nang", LayHoiThien},
		{"Nh�n 5000 Ti�n ��ng", tiendong},
		{"Nh�n 100k Ti�n V�n", tienvan},
                {"Nh�n Kim Nguyen Bao", KimNguyenBao},
		{"C�n Kh�n Song Tuy�t B�i", CanKhonBoi},
		{"Nh�n Ph�c Duy�n.", PhucDuyen},
		{"Trang k�.", VatPhamHoTro2},
		{"K�t Th�c."},
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
	local szTitle = "<npc>Ng��i c�n l�y g�? H�y ch�n �i n�o !"
	local tbOpt =
	{
		{"Nh�n V�t Ph�m Tr�ng Sinh", bacdautst},
		{"Nh�n  KNB.", KimNguyenBao},
		--{"Nh�n Huy�n Tinh Kho�ng Th�ch.", HuyenTinh},
		--{"Nh�n �� �p ��", DaEp},
		{"Nh�n Nh�n S�t Th� Gi�n 90", SatThuGian},
		{"Nh�n Long Huy�t Ho�n", longhuyethoan},
		{"K�t Th�c."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function LayHoiThien()
	local nMaxCount = CalcFreeItemCellCount()
	g_AskClientNumberEx(0, nMaxCount, "Xin m�i ��a v�o nh�n l�y", {HoiThien, {nCount}})
end

function HoiThien(nCount)
	if nCount <= 0 then
		return
	end
	if CalcFreeItemCellCount() < nCount then
		Talk(1, "", format("C�n Ut nh�t <color=yellow>%d<color> t�i kh�ng gian...", nCount))
		return
	end
	for i =1,nCount do
		tbAwardTemplet:GiveAwardByList(%tbFreeItem, nCount)
	end

end
function KimNguyenBao()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=5000},"Nh�n H� Tr�")
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
	end
end
function tienvan()
	Earn(1000000000)	
end;

function tiendong()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=10000},"Nh�n H� Tr�")
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
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

-------------------------------Nh�n V�t Ph�m Tr�ng Sinh-------------------------
function bacdautst()
	local tbSay = {}
	tinsert(tbSay,"Combo Nguy�n Li�u Tr�ng Sinh./combo")
	tinsert(tbSay,"Nh�n 4 B�c ��u TST C� S� Thi�n./bacdau1")
	tinsert(tbSay,"Nh�n B�c ��u TST ��i Th�a T�m Ph�p./bacdau2")
	tinsert(tbSay,"Nh�n 999 T�ch L�ch ��n./tichlichdon")
	tinsert(tbSay,"Tho�t/no")
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, Xin h�y l�a ch�n v�t ph�m b�n c�n...!", getn(tbSay), tbSay)
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
	Msg2Player("B�n Nh�n Huy�n Tinh.")
end




function SatThuGian()
	AddItem(6,1,400,90,0,0,0) 
	AddItem(6,1,400,90,1,0,0) 
	AddItem(6,1,400,90,2,0,0) 
	AddItem(6,1,400,90,3,0,0) 
	AddItem(6,1,400,90,4,0,0) 
	Msg2Player("B�n Nh�n 3 S�t Th� Gi�n.")
end

function longhuyethoang()
	AddItem(6,1,2117,90,0,0,0) 
	Msg2Player("B�n Nh�n long huy�t ho�n.")
end

function ThuyTinhTinhHong()
	for i=1,6 do
		AddItem(4, 353, 1, 1, 0, 0)
	end
	for i=238,240 do
		AddItem(4, i, 1, 1, 0, 0)
	end
	Msg2Player("B�n Nh�n 3 Lo�i Th�y tinh v� 6 tinh h�ng b�o th�ch.")
end

function PhucDuyen()
	AddItem(6,1,122,1,0,0,0)
	AddItem(6,1,123,1,0,0,0) 
	AddItem(6,1,124,1,0,0,0)
	Msg2Player("B�n Nh�n 3 Lo�i Ph�c Duy�n.")
end

-------------------------------------------------------Chuy�n ��i Ng� H�nh ------------------------------------------------------------------------------------------
function nguhanh()
local szTitle = "<npc>Ng��i c�n g�?"
	local tbOpt =
	{
		{"Chuy�n ��i sang n� h� Kim", nukim},
		{"Chuy�n ��i sang nam h� Thuy", namthuy},
		{"Tho�t"},
	}

	CreateNewSayEx(szTitle, tbOpt)
end
function nukim()
	if GetSex() == 1 then
		SetSeries(0)
		KickOutSelf()
	else
		Talk(1,"","Ng��i l� P� �� � ?")
	end
end

function namthuy()
	if GetSex() == 0 then
		SetSeries(2)
		KickOutSelf()
	else
		Talk(1,"","Vui l�ng ki�m tra l�i gi�i t�nh")
	end
end

------------------------------------------------------------------L�y Ng�a Vip -----------------------------------------------------------------------------------------------
function layngua()
	local tab_Content =
	{
		--"Ng�a nh�m 80./ngua8x",
		--"Ng�a nh�m 100./ngua10x",
		"Ng�a Ho�ng Kim Nh�m 1/NguaHoangKim",
		--"H�n Huy�t Long C�u./longcau",
		--"M� b�i Si�u quang./mabaisq",
		"Ng�a Vip Nh�m 2./sutu",
		--"Th��ng C� D� Tr�./HeoRung",
		--"Th��ng C� - Chi�n M�./ChienVuong",
		"Tho�t./no",
	}
Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Ng�a m� b�n mu�n !", getn(tab_Content), tab_Content);
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
	Msg2Player("B�n Nh�n Ng�a 80.")

end

function ngua10x()
	AddItem(0,10,random(11,15),10,0,0,0)
	AddItem(0,10,random(16,20),10,0,0,0)
	AddItem(0,10,random(21,25),10,0,0,0)
	Msg2Player("B�n Nh�n Ng�a 100.")
end

function NguaHoangKim()
	local nRanD = random(4959,4968)
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0,nRanD)
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function sutu()
	local nRanD = random(4989,4992)
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0,nRanD)
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end
function sieuquang()
	AddGoldItem(0, 5550)
	Msg2Player("B�n Nh�n Ng�a Si�u Quang.")
end
function longcau()
	AddGoldItem(0, 5553)
	Msg2Player("B�n Nh�n Ng�a H�n Huy�t Long C�u.")
end

--------------------------------------------------------Tr�ng Th�i PK-------------------------------------------------------------------------------------
function trangthai()
	local tbOpt =
	{
		{"Ch�nh ph�i", mauvang},
		{"T� ph�i", mautim},
		{"Trung l�p", mauxanh},
		{"S�t Th�", maudo},
		--{"Admin", mauadmin},
		--{"Tr� l�i", namcung2},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�u", tbOpt)
end

function mauadmin()
		SetCurCamp(5)
		SetCamp(5) 
		Msg2Player("B�n Chuy�n Sang tr�ng th�i Admin.")
end
 
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
		Msg2Player("B�n Chuy�n Sang tr�ng th�i Ch�nh ph�i.")
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)
		Msg2Player("B�n Chuy�n Sang tr�ng th�i T� ph�i.")	
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)
		Msg2Player("B�n Chuy�n Sang tr�ng th�i Trung l�p.")	
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)
		Msg2Player("B�n Chuy�n Sang tr�ng th�i S�t Th�.")	
end
-------------------------------------------------------C�c lo�i �i�m H� Tr�--------------------------------------------------------------------

function hotro()
	local tbOpt =
	{
		{"�i�m Kinh Nghi�m", kn},
		--{"�i�m K� N�ng", pointkynang},
		--{"�i�m Ti�m N�ng", pointtiemnang},
		{"�i�m C�ng Hi�n Bang H�i", conghien},
		{"�i�m Danh v�ng", danhvong},
		{"�i�m Ph�c duy�n", phucduyen},
		{"T�i L�nh ��o Nh�m", lanhdao},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Anh c�n g�?", tbOpt)
end

function conghien()
	AddContribution(100)	
	Msg2Player("B�n nh�n ���c 100 �i�m C�ng Hi�n.")
end

function pointkynang()
	AddMagicPoint(500)
	Msg2Player("B�n nh�n ���c 500 �i�m K� N�ng.")
end;

function pointtiemnang()
	AddProp(10000)
	Msg2Player("B�n nh�n ���c 10000 �i�m Ti�m N�ng.")
end;

	
function lanhdao()
	for i=1,20 do
		AddLeadExp(10000000)
	end
	Msg2Player("B�n nh�n ���c 10000000 �i�m L�nh ��o.")
end

function kn()
	for i=1,10 do
		AddOwnExp(10000000000)
	end

end


function danhvong()
	AddRepute(100000);
	Msg2Player("B�n nh�n ���c 100000 �i�m Danh V�ng.")
end
function phucduyen()
	FuYuan_Start();
	FuYuan_Add(100000);
	Msg2Player("B�n nh�n ���c 100000 �i�m Ph�c Duy�n.")
end
---------------------------------------------------------T�y T�y Mi�n Ph�-------------------------------------------------------------------

function clear_attibute_point()
	local tbOpt =
	{
		{"T�y �i�m k� n�ng", clear_skill},
		{"T�y �i�m ti�m n�ng", clear_prop},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx("<npc>Ng��i quyOt u mu�n t�y t�y?", tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_skill},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", clear_attibute_point},
	}
	CreateNewSayEx("<npc>Ng��i v�n quyOt u mu�n t�y t�y?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)		-- �Ṧ�������
	local j = HaveMagic(400)		-- ���ٸ���ƶ���������
	local n = RollbackSkill()		-- ������ܲ��������м���?㣨�����Ṧ�����⼼�ܣ?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ����µ�������������
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- �Ѽ��ܵ㵱�����е�������������?۳��Ṧ�?
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ���˸���������0��Ϊ�Ժ���ϴ�㱣?��?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- ���ѧ�u�Ṧ�?�ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400, j) end			-- ���ѧ�u���ٸ��Aƶ��ͬ������
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_prop},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", clear_attibute_point},
	}
	CreateNewSayEx("<npc>Ng��i v�n quyOt u mu�n t�y t�y?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}			-- �����������������ֵ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ���ѷ���Ǳ�����ã�task(88)��������ֱ�ӽ��������������ȣ�
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

