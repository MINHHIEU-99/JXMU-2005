Include("\\script\\gm_tool\\doxanhtim.lua")
Include("\\script\\gm_tool\\dohoangkim.lua")
Include("\\script\\global\\skills_table.lua")
nAddSkill = 150
----------------------------------------------------------------
function HoTroTest()
	local tbOpt = {
		{"Ch�c N�ng Bang H�i",BangHoi},
		-- {"Nh�n C�p 200",Upleve200},
		-- {"N�ng C�p Tr�ng Sinh 5 C�i L�o 10",UpLevelTransLife},
		-- {"Nh�n S�ch K� N�ng (C�p 25)",NhanKyNang30},
		-- {"Nh�n K� N�ng Th�t Truy�n",NhanKyNang180},
		--{"H� Th�ng Kinh M�ch",HeThongKinhMach},
		{"Nh�n H� Tr�", hotroitem},
		--{"Nh�n Nguy�n Li�u",NhanNL},
		-- {"Chuy�n M�n Ph�i Nhanh", nhanskill},
		-- {"Th� C��i - Ngo�i Trang", fifong},
		-- {"Nh�n Trang B� Maxofftion", DoHoangKimMax},
		-- {"Nh�n Trang B� Ng�u Nhi�n Thu�c T�nh", DoHoangKim},
		-- {"Nh�n C�n Kh�n Gi�i Ch�", get_normal_item},

		--{"Trang B� Ho�ng Kim M�n Ph�i",sethkmp},
		--{"Nh�n b� trang b� An Bang",TestGame_TrangBi_Gold, {1}},
		--{"Nh�n b� trang b� ��nh Qu�c",TestGame_TrangBi_Gold, {2}},
		--{"Nh�n V� kh� xanh",TestGame_TrangBi_DoXanh, {1}},
		--{"Nh�n Trang b� xanh",TestGame_TrangBi_DoXanh, {2}},
		--{"Nh�n �� T�m 6 D�ng",dotim},

		{"M�u PK", trangthai},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n Ch�c N�ng", tbOpt)
end

function HeThongKinhMach()
	local tbOpt = {
		{"Nh�n Full M�ch 16x8",NhanFullMach},
		{"Nh�n �i�m Ch�n Nguy�n",NhanDiemChanNguyen},
		{"Nh�n H� M�ch ��n",HoMachDon},
		{"Nh�n Huy�t Long ��ng",HuyetLongDang},
		{"X�a Kinh M�ch",XoaKinhMach},
		{"K�t Th�c",No},
	}
	CreateNewSayEx("H�y Ch�n Ch�c N�ng", tbOpt)
end
-------------------------------------------------------------------
function BangHoi()
local strTongName = GetTongName()
local tszTitle = "Ch�o M�ng B�n �� Tham Gia H� Th�ng <color=yellow>Bang H�i<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,6,
		"Nh�n �i�u Ki�n T�o Bang H�i/dmcreatetong",
		"T�o bang h�i/dmcreateit",
		"K�t Th�c ��i Tho�i/No")
	end
end

function dmcreatetong()
	if  GetCamp() ~= 0 then
		if GetLevel() >= 50 then
			SetCamp(4)
			SetCurCamp(4)
			AddRepute(450)
			AddLeadExp(1000000)
			AddEventItem(195)
			Msg2Player("<color=yellow>Ng��i �� H�i �� T�t C� �i�u Ki�n C� T�o Bang H�i<color>")
		else
				Talk(1,"","<bclr=red>"..myplayersex().." Ch�a �� C�p 50")
		end
	else
		Talk(1,"","<bclr=red>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� Nh�n �i�u Ki�n Bang H�i")
	end
end

function dmcreateit()
Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 0) then
		if (HaveItem(195) == 1) and (GetRepute() >= 450) and (GetLeadLevel() >= 30) and (GetLevel() >= 50) and (GetCamp() == 4) and (oper == 0) then
			Say("Ki�m Hi�p Ch��ng M�n Nh�n:Khai S�ng Bang H�i, M� R�ng B� Nghi�p",2,"B�t B�u D�ng Bang/TaoBangHoi","��i Ta M�t Ch�t/No")
		else	
			Talk(1,"","<bclr=violet>C�c H� Mu�n T�o D�ng Bang Ph�i:\nY�u C�u ��ng C�p 50 Tr� L�n, Danh V�ng 450, ��ng C�p Th�ng So�i 30, Kh�ng M�n Ph�i, M�i C� Th� Ti�n H�nh\nL�p Bang H�i...!")
		end
	else
		Say("Ki�m Hi�p Ch��ng M�n Nh�n:Khai S�ng Bang H�i, M� R�ng B� Nghi�p",2,"B�t B�u D�ng Bang/TaoBangHoi","��i Ta M�t Ch�t/No")
	end
end

function TaoBangHoi()		
DelItem(195)		
SetTask(99,1)				
CreateTong(1)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Upleve200()
local nCureLevel = GetLevel()
local nAddLevel = 200 - nCureLevel
	if nCureLevel < 200 then
		ST_LevelUp(nAddLevel)
	else
		Talk(1,"","C�c H� �� ��t C�p 200 R�i")
	end
end

function NhanKyNang30()
local faction = GetLastFactionNumber()
local SkillLimit = 25
local nTaskID = 5002
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
		AddMagic(1867,SkillLimit)
		AddMagic(1869,SkillLimit)
		SetTask(nTaskID,SkillLimit)
	end
end

function UpLevelTransLife()
local nCurLevel = GetLevel()
local nAddLevel = 10 - nCurLevel
	if ST_GetTransLifeCount() == 0 then
		ST_LevelUp(nAddLevel)
		for i = 1, 5 do
			ST_LevelUp(200-GetLevel()) ST_DoTransLife()
		end
		SetTask(5969,10) AddProp(3000)
	elseif ST_GetTransLifeCount() == 1 then
		ST_LevelUp(nAddLevel)
		for i = 1, 4 do
			ST_LevelUp(200-GetLevel()) ST_DoTransLife()
		end
		SetTask(5969,10) AddProp(3000) 
	elseif ST_GetTransLifeCount() == 2 then
		ST_LevelUp(nAddLevel)
		for i = 1, 3 do
			ST_LevelUp(200-GetLevel()) ST_DoTransLife()
		end
		SetTask(5969,10) AddProp(3000) 
	elseif ST_GetTransLifeCount() == 3 then
		ST_LevelUp(nAddLevel)
		for i = 1, 2 do
			ST_LevelUp(200-GetLevel()) ST_DoTransLife()
		end
		SetTask(5969,10) AddProp(3000) 
	elseif ST_GetTransLifeCount() == 4 then
		ST_LevelUp(nAddLevel)
		for i = 1, 1 do
			ST_LevelUp(200-GetLevel()) ST_DoTransLife()
		end
		SetTask(5969,10) AddProp(3000) 
	else
		Talk(1,"","C�c H� �� Tr�ng Sinh 5 C�i L�o 10 R�i")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------
function hotroitem()
	local tab_Content = {
		"L�y Kim Nguy�n B�o/Layknb",
		"T�nh N�ng Bang H�i/BangHoi",
		"L�y Ti�n ��ng/Xu",
		"L�y Ng�n L��ng/Tien",
		"L�y V�t ph�m test/kevin_add_vp_test",
		"Nh�n c�c lo�i �i�m/kevin_add_diem",
		
		-- "T�y �i�m/clear_attibute_point",
		"Th�i./no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n !", getn(tab_Content), tab_Content)
end


function kevin_add_diem()
	local tab_Content = {
		"Nh�n �i�m li�n ��u/kevin_add_liendau",
		"Nh�n �i�m ph�c duy�n/kevin_add_phucduyen",
		"Nh�n �i�m T�ng kim/kevin_add_tongkim",
		"Th�i./no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n !", getn(tab_Content), tab_Content)
end

function kevin_add_liendau()
SetTask(2501, 50000000)
Msg2Player("5 tri�u �i�m li�n ��u!")
end

function kevin_add_phucduyen()
SetTask(151, 99999)
Msg2Player("ph�c duy�n l�n 99999 �i�m!")
end

function kevin_add_tongkim()
SetTask(747, 1000000)
Msg2Player( "t�ng kim l�n 1 tri�u �i�m!")
end


-- T� Tinh Kho�ng Th�ch	6	1	8000	\spr\item\christmas\high_purple.spr	333	1	1	V�t li�u d�ng �� ch� t�o ho�c n�ng c�p trang b� c�a Th� r�n ho�ng kim.		100	1	0	\script\item\noscript.lua	0	1	1	1	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (V� kh�)	6	1	8001	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (Nh�n)	6	1	8002	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (Y)	6	1	8003	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (B�i)	6	1	8004	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (H� Uy�n)	6	1	8005	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (Gi�y)	6	1	8006	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (D�y Chuy�n)	6	1	8007	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (�ai)	6	1	8008	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Minh Ph��ng (N�n)	6	1	8009	\spr\item\script\item_huangjintupu.spr	41	1	1	C� Th� Mang ��n Th� R�n �� H�p Th�nh 1 M�n Ho�ng Kim M�n Ph�i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- Thu�n th� quy�n	6	1	8010	\spr\item\zhuangbeilingshi\chilinshi.spr	41	1	1	N�u t�p h�p �� s� l���ng m�nh s� c� c� h�i s� h�u chi�n m�.		0	1	1	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Trang S�c	6	1	8011	\spr\item\script\item_huangjintupu.spr	38	1	1	D�ng �� ch� t�o trang s�c		100	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� �n	6	1	8012	\spr\item\yanditutengsuipian.spr	41	1	1	Sau khi t�p h�p �� m�nh �n ��n g�p th� r�n ho�ng kim �� c� c� h�p s� h�u nh�ng �n qu� b�u.		0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- �� Ph� Phi Phong	6	1	8013	\spr\item\script\seven_city_war\tianshusuipian.spr	41	1	1	D�ng �� ch� t�o Phi Phong		0	1	1	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- H�n Thi�t Ng�n N�m	6	1	8014	\spr\item\newitem\dacuonghoa.spr	41	1	1	Lo�i v�t ph�m Hi�m Th�y D�ng �� N�ng C�p	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- T�i V�ng Th�ch Sanh	6	1	8015	\spr\item\script\pingzi\200805\chuntiandalibao.spr	41	1	1	M� ra nh�n ���c 1000 v�n l��ng	0	0	1	0	\script\global\quanlygame\item\tui_tienvan.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- Ng�c Tr�ng Luy�n L� H�p	6	1	8016	\spr\item\script\item_chrismasbox.spr	41	1	1	S� d�ng nh�n ���c 50 Ng�c Tr�ng Luy�n		0	1	0	\script\global\quanlygame\item\ngoctrungluyenlb.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- Ng�c Tr�ng Luy�n	6	1	8017	\spr\item\questkey\taskobj089.spr	372	1	1	D�ng �� tr�ng luy�n trang b�		0	1	1	\script\item\noscript.lua	0	1	1	0	1		999	0	0	0	0	0	0	0	0	0
-- B� k�p 180	6	1	8018	\spr\item\questkey\obj_item_lection.spr	372	1	1	S� d�ng nh�n ���c skill 180		0	1	1	\script\global\kevin\item\bikip180.lua	0	1	1	0	1		0	0	0	0	0	0	0	0	0	0
-- Thi�n S�n Tuy�t Li�n	6	1	8019	\spr\item\script\tianshanxuelian.spr	41	1	1	�n v�o c�ng l�c s� t�ng ngay level 180			1	0	\script\global\kevin\item\thienson_tuyetlien.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- Huy ch��ng T�ng Kim	6	1	8020	\spr\item\nanfangjiefangri_2007\songjinxunzhang.spr	41	1	1	Huy Ch��ng Ghi Ch� C�ng Lao Chi�n T�ng Kim, Nh�p Ph�I S� D�ng ���c 5.000 �i�m T�ng Kim( Gi� B�n 6.000 �i�m t�ch l�y)	0	100	1	0	\script\global\quanlygame\item\tongkimlebao.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0



function kevin_add_vp_test()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8000,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8001,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8002,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8003,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8004,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8005,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8006,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8007,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8008,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8009,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8010,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8011,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8012,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8013,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8014,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8015,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8016,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8017,1,0,0},nCount=999},"Nh�n H� Tr�")
		-- tbAwardTemplet:GiveAwardByList({tbProp={6,1,8018,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8019,1,0,0},nCount=999},"Nh�n H� Tr�")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8020,1,0,0},nCount=999},"Nh�n H� Tr�")
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
	end
end
--------------------------------------------------------------------------------------------------------------------------------
function Layknb()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=1000},"Nh�n H� Tr�")
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
	end
end

function Xu()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=5000},"Nh�n H� Tr�")
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
	end
end

function Tien()
	if GetCash() < 1000000000 then
		Earn(1000000000)
	else
		Talk(1,"","�� V��t Qu� 100.000 V�n R�i")
	end
end
--------------------------------------------------------------------------------------------------
function clear_attibute_point()
	local tbOpt = {
		{"T�y �i�m k� n�ng.", clear_skill},
		{"T�y �i�m ti�m n�ng.", clear_prop},
		{"Tr� v�", main},
		{"Tho�t."},
	}
	CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------
function clear_skill()
local tbOpt = {
{"X�c nh�n", do_clear_skill},
{"�� ta suy ngh� l�i."},
{"Tr� v�", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y", tbOpt)
end

function do_clear_skill()

local i = HaveMagic(210)
local j = HaveMagic(400)
local n = RollbackSkill()
local x = 0
if (i ~= -1) then i = 1; x = x + i end
if (j ~= -1) then x = x + j end
local rollback_point = n - x
if (rollback_point + GetMagicPoint() < 0) then
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end
if (j ~= -1) then AddMagic(400, j) end 
Msg2Player("T�y t�y th�nh c�ng! Ng��i c� "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
KickOutSelf()
end
--------------------------------------------------------------------------------------------------
function clear_prop()
local tbOpt = {
{"X�c nh�n", do_clear_prop},
{"�� ta suy ngh� l�i."},
{"Tr� v�", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y?", tbOpt)
end

function do_clear_prop()
local base_str = {35,20,25,30,20} 
local base_dex = {25,35,25,20,15}
local base_vit = {25,20,25,30,25}
local base_eng = {15,25,25,20,40}
local player_series = GetSeries() + 1

local Utask88 = GetTask(88)
AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))
AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanNL()
	local tbOpt = {
		{"Nh�n R��ng Nguy�n Li�u",RuongNguyenLieu},
		{"Nh�n C�n Kh�n Li�n Hoa",NhanCanKhon},
		{"Nh�n Event",NguyenLieuEvent},
		{"H�y B�",},
	}
	CreateNewSayEx("Xin Ch�o Nh�n S� �� Tham Gia Ch�c N�ng Test", tbOpt)
end
--------------------------------------------------------------------------------
function RuongNguyenLieu()
	if CalcFreeItemCellCount() >= 40 then
		local tbAward = {
			{szName="R��ng Nguy�n Li�u",tbProp={6,1,4837,1,0,0},nCount=5000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
	end
end

function NhanCanKhon()
	if CalcFreeItemCellCount() >= 10 then
		local tbAward = {
			{szName="C�n Kh�n Li�n Hoa",tbProp={6,1,5041,1,0,0},nCount=1000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n Th��ng")
	end
end

function NguyenLieuEvent()
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
local nFree = CalcFreeItemCellCount()
	if (nDate >= 202101010000 and nDate <= 202101312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="D�y Ph�o ��i",tbProp={6,1,5389,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202102010000 and nDate <= 202102282400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="B�nh Kem S� C� La",tbProp={6,1,5198,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202103010000 and nDate <= 202103312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Gi� Hoa H�ng",tbProp={6,1,3127,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202104010000 and nDate <= 202104302400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="T�m �o Chi�n S�",tbProp={6,1,2306,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202105010000 and nDate <= 202105312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Hoa Ph��ng ��",tbProp={6,1,3161,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202106010000 and nDate <= 202106302400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="B�nh Sinh Nh�t",tbProp={6,1,2859,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202107010000 and nDate <= 202107312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Hoa H�ng Tr�ng",tbProp={6,1,3470,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202108010000 and nDate <= 202108312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="B�nh Trung Thu",tbProp={6,1,1515,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202109010000 and nDate <= 202109302400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Qu�c Kh�nh ��",tbProp={6,1,5352,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202110010000 and nDate <= 202110312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="H�p Qua L�n",tbProp={6,1,5295,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202111010000 and nDate <= 202111302400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="T� �i�n Ti�ng Vi�t",tbProp={6,1,2182,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	elseif (nDate >= 202112010000 and nDate <= 202112312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="B�nh Kem S� C� La",tbProp={6,1,1849,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SKILL_180 = {1220, 1221, 1223, 1222, 1224, 1225, 1227, 1226, 1228, 1229, 1370, 1871}
-------------------------------------------------------------------------------------
function NhanKyNang180()
	local nFaction = GetLastFactionNumber() + 1
	local KyNangThatTruyen = 2
	if nFaction == 0 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� S� D�ng M�t T�ch Th�t Truy�n")
		return 1;
	else
		for i=1,12 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					SetTask(KyNangThatTruyen,20)
					Talk(1,"","<color=green>"..GetName().." �� H�c ���c K� N�ng Th�t Truy�n<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..GetName().." �� H�c K� N�ng N�y Kh�ng Th� H�c N�a")
					return 1;
				end
			end
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanFullMach()
	if (HaveMagic(1612) >= 1 or HaveMagic(1628) >= 1  or HaveMagic(1644) >= 1 or HaveMagic(1660) >= 1 or HaveMagic(1676) >= 1 or HaveMagic(1692) >= 1 or HaveMagic(1708) >= 1 or HaveMagic(1724) >= 1) then
		for i = 1597,1724 do DelMagic(i,1) end
		AddMagic(1612,1) AddMagic(1628,1) AddMagic(1644,1) AddMagic(1660,1) AddMagic(1676,1) AddMagic(1692,1) AddMagic(1708,1) AddMagic(1724,1)
	else
		for i = 1597,1724 do DelMagic(i,1) end
		AddMagic(1612,1) AddMagic(1628,1) AddMagic(1644,1) AddMagic(1660,1) AddMagic(1676,1) AddMagic(1692,1) AddMagic(1708,1) AddMagic(1724,1)
	end
end

function HoMachDon()
	if CalcFreeItemCellCount() >= 30 then
		local tbAward = {
			{szName="H� M�ch ��n",tbProp={6,1,5226,1,0,0},nCount=10000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
	end
end

function HuyetLongDang()
	if CalcFreeItemCellCount() >= 30 then
		local tbAward = {
			{szName="Huy�t Long ��ng",tbProp={6,1,5227,1,0,0},nCount=1000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
	end
end

function NhanDiemChanNguyen()
	if (GetTask(1) < 1000000) then
		SetTask(1,1000000)
	else
		Talk(1,"","Ng��i �� Nh�n �� R�i ��ng Qu� Tham")
	end
end

function XoaKinhMach()
	for i = 1597,1724 do
		DelMagic(i,1)
	end
	for i = 1485,1489 do
		DelMagic(i,1)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function nhanskill()
local tbSay = {}
tinsert(tbSay,"Ch�n M�n Ph�i/choose_faction")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Skill  !", getn(tbSay), tbSay)
end
------------------------------------------------------------------------------------------------
function choose_faction()
local nLevel = GetLevel()
	if (nLevel >= 10) then
		if (CalcItemCount(2,0,-1,-1,-1) == 0) then
			CreateNewSayEx("H�y L�a Ch�n M�n Ph�i",
			{
				{"Thi�u L�m Ph�i",ChonMonPhai,{0}},
				{"Thi�n V��ng Ph�i",ChonMonPhai,{1}},
				{"���ng M�n Ph�i",ChonMonPhai,{2}},
				{"Ng� ��c Ph�i",ChonMonPhai,{3}},
				{"Nga My Ph�i",ChonMonPhai,{4}},
				{"Th�y Y�n Ph�i",ChonMonPhai,{5}},
				{"C�i Bang Ph�i",ChonMonPhai,{6}},
				{"Thi�n Nh�n Ph�i",ChonMonPhai,{7}},
				{"V� �ang Ph�i",ChonMonPhai,{8}},
				{"C�n L�n Ph�i",ChonMonPhai,{9}},
				--{"Hoa S�n Ph�i",ChonMonPhai,{10}},
				--{"V� H�n Ph�i",ChonMonPhai,{11}},
				{"H�y B�"}
			})
		else
			Talk(1,"","Mu�n Thay ��i M�n Ph�i Ph�i G� B� Trang B� Tr�n Ng��i Xu�ng")
		end
	else
		Talk(1,"","��ng C�p C�a Ng��i C�n K�m L�m H�y �i R�n Luy�n Th�m ��t ��n C�p 10 R�i Quay L�i T�m Ta")
	end
end

function ChonMonPhai(nFact)
	if (nFact == 0) then
		SetFaction("shaolin")
		SetLastFactionNumber(0)
		SetTask(7,10*256)
		SetCamp(1)
		SetCurCamp(1)
		SetRank(72)
		rollback_prop()
		del_all_skill()
		add_sl(nAddSkill) 
		AddTaskSkill150()
		SetSeries(0)
		SetSex(0)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Thi�u L�m ���c Phong L� H� Ph�p Tr��ng L�o")
	elseif (nFact == 1) then
		SetFaction("tianwang")
		SetLastFactionNumber(1)
		SetTask(3,10*256) 
		SetCamp(3) 
		SetCurCamp(3)
		SetRank(69)
		rollback_prop()
		del_all_skill()
		add_tw(nAddSkill) 
		AddTaskSkill150() 
		SetSeries(0)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Thi�n V��ng ���c Tr� Th�nh K�nh Thi�n Nguy�n So�i")
	elseif (nFact == 2) then
		SetFaction("tangmen")
		SetLastFactionNumber(2)
		SetTask(2,10*256) 
		SetCamp(3) 
		SetCurCamp(3)
		SetRank(76)
		rollback_prop()
		del_all_skill()
		add_tm(nAddSkill) 
		AddTaskSkill150()
		SetSeries(1)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i ���ng M�n ���c Tr� Th�nh L�c C�c Tr��ng L�o")
	elseif (nFact == 3) then
		SetFaction("wudu")
		SetLastFactionNumber(3)
		SetTask(2,10*256) 
		SetCamp(2) 
		SetCurCamp(2)
		SetRank(80)
		rollback_prop()
		del_all_skill()
		add_wu(nAddSkill)  
		AddTaskSkill150()
		SetSeries(1)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Ng� ��c ���c Tr� Th�nh U Minh Qu� V��ng")
	elseif (nFact == 4) then
		SetFaction("emei")
		SetLastFactionNumber(4)
		SetTask(1,10*256) 
		SetCamp(1) 
		SetCurCamp(1)
		SetRank(64)
		rollback_prop()
		del_all_skill()
		add_em(nAddSkill)
		AddTaskSkill150()
		SetSeries(2)
		SetSex(1)  
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Nga My ���c Tr� Th�nh Kim ��nh Th�nh N�")
	elseif (nFact == 5) then
		SetFaction("cuiyan")
		SetLastFactionNumber(5)
		SetTask(6,10*256) 
		SetCamp(3) 
		SetCurCamp(3)
		SetRank(67)
		rollback_prop()
		del_all_skill()
		add_cy(nAddSkill) 
		AddTaskSkill150()
		SetSeries(2) 
		SetSex(1)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Th�y Y�n ���c Tr� Th�nh Hoa Th�n")
	elseif (nFact == 6) then
		SetFaction("gaibang")
		SetLastFactionNumber(6)
		SetTask(8,10*256) 
		SetCamp(1) 
		SetCurCamp(1)
		SetRank(78)
		rollback_prop()
		del_all_skill()
		add_gb(nAddSkill) 
		AddTaskSkill150()
		SetSeries(3)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i C�i Bang ���c Tr� Th�nh C�u ��i Tr��ng L�o")
	elseif (nFact == 7) then
		SetFaction("tianren")
		SetLastFactionNumber(7)
		SetTask(4,10*256) 
		SetCamp(2) 
		SetCurCamp(2)
		SetRank(81)
		rollback_prop()
		del_all_skill() 
		add_tr(nAddSkill) 
		AddTaskSkill150()
		SetSeries(3)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Thi�n Nh�n ���c Tr� Th�nh Th�nh Gi�o Tr��ng")
	elseif (nFact == 8) then
		SetFaction("wudang")
		SetLastFactionNumber(8)
		SetTask(5,10*256) 
		SetCamp(1) 
		SetCurCamp(1)
		SetRank(73)
		rollback_prop()
		del_all_skill()
		add_wd(nAddSkill) 
		AddTaskSkill150()
		SetSeries(4)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i V� �ang ���c Tr� Th�nh Huy�n V� Ch�n Nh�n")
	elseif (nFact == 9) then
		SetFaction("kunlun")
		SetLastFactionNumber(9)
		SetTask(9,10*256) 
		SetCamp(3) 
		SetCurCamp(3)
		SetRank(75)
		rollback_prop()
		del_all_skill()
		add_kl(nAddSkill) 
		AddTaskSkill150()
		SetSeries(4)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i C�n L�n ���c Tr� Th�nh H� Ph�i Ch�n Qu�n")
	elseif (nFact == 10) then
		SetFaction("huashan")
		SetLastFactionNumber(10)
		SetTask(11,10*256) 
		SetCamp(3) 
		SetCurCamp(3)
		SetRank(89)
		rollback_prop()
		del_all_skill()
		add_hs(nAddSkill) 
		AddTaskSkill150()
		SetSeries(2)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i Hoa S�n ���c Tr� Th�nh Th�i H�c C�c Ch�")
	elseif (nFact == 11) then
		SetFaction("wuhun")
		SetLastFactionNumber(11)
		SetTask(12,10*256);
		SetCamp(3)
		SetCurCamp(3)
		SetRank(97)
		rollback_prop()
		del_all_skill()
		add_wumen(nAddSkill)  
		AddTaskSkill150()
		SetSeries(3)
		Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i V� H�n ���c Tr� Th�nh Th�n H�nh Qu�n �� T�")
	end
end

function AddTaskSkill150()
local TSK_LV150_SKILL = 2885
local SBOOK_150SKILL_TASKSTATE = 14
local nFact = GetLastFactionNumber()
	local sbook_factstep_list = {
		[0] = 0,
		[1] = 1,
		[2] = 2,
		[3] = 3,
		[4] = 4,
		[5] = 5,
		[6] = 6,
		[7] = 7,
		[8] = 8,
		[9] = 9,
		[10] = 10,
		[11] = 11,
	}
	if (nAddSkill >= 150 or nAddSkill >= 180) then
		if (GetTask(TSK_LV150_SKILL) == 0) then
			SetTask(TSK_LV150_SKILL, SBOOK_150SKILL_TASKSTATE*100+sbook_factstep_list[nFact])
		end
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function fifong()
	local tab_Content = {
		"Phi phong/PhiPhong",
		"Ng� H�nh �n/NguHanhAn",
		"Trang s�c/TrangSuc",
		"M�t N�/MatNa",
		"Th� C��i/vip5",
		"Tho�t./no",
		"Tr� l�i"
	}
	Say("Xin m�i ch�n", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------------------
function PhiPhong()
Say("H�y Ch�n Lo�i Phi Phong",12,
	--"Phi Phong K�nh L�i/KinhLoi",
	--"Phi Phong Ng� Phong/NguPhong",
	--"Phi Phong Ph� Quang/PheQuang",
	--"Phi Phong Kh�p Th�n/KhapThan",
	--"Phi Phong K�nh Thi�n/KinhThien",
	--"Phi Phong Huy�n Kim/HuyenKim",
	--"Phi Phong V� C�c/VoCuc",
	--"Phi Phong L�ng Tuy�t/LangTuyet",
	--"Phi Phong T� V�n/TuVan",
	--"Phi Phong V� Song/VoSong",
	"Phi Phong Truy�n Thuy�t/CaoCap",
	"H�y B�/No")
end

function KinhLoi()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9291,9293 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function NguPhong()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9294,9296 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function PheQuang()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9297,9299 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function KhapThan()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9300,9302 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function KinhThien()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9303,9305 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function HuyenKim()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9306,9308 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function VoCuc()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9309,9311 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function LangTuyet()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9312,9314 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function TuVan()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9315,9317 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function VoSong()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9318,9320 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CaoCap()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9321,9323 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end
--------------------------------------------------------------------------------
function NguHanhAn()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9339,9351 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n")
	end
end

function TrangSuc()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9352,9364 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n")
	end
end

function MatNa()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9324,9338 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n")
	end
end

function Ngua()
	local tab_Content = {
		"Ng�a nh�m 1./vip1",
		"Ng�a nh�m 2./vip2",
		"Ng�a nh�m 3./vip3",
		"Ng�a nh�m 4./vip4",
		"Ng�a nh�m 5./vip5",
		"Tho�t./no",
		"Tr� l�i"
	}
	Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Ng�a m� b�n mu�n", getn(tab_Content), tab_Content);
end

function vip1()
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
AddItem(0,10,9,10,0,0,0)
AddItem(0,10,10,10,0,0,0)

end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)

end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)

end
function vip4()
AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
end

function vip5()
	local nRanD = random(9376,9387)
	if CalcFreeItemCellCount() >= 20 then
		AddGoldItem(0,nRanD)
	else
		Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n")
	end
end
----------------------------------------------------------
function get_normal_item()
Say("H�y L�a Ch�n Lo�i Nh�n",12,
	"C�n Kh�n Gi�i Ch� C�p 1/CanKhon1",
	"C�n Kh�n Gi�i Ch� C�p 2/CanKhon2",
	"C�n Kh�n Gi�i Ch� C�p 3/CanKhon3",
	"C�n Kh�n Gi�i Ch� C�p 4/CanKhon4",
	"C�n Kh�n Gi�i Ch� C�p 5/CanKhon5",
	"C�n Kh�n Gi�i Ch� C�p 6/CanKhon6",
	"C�n Kh�n Gi�i Ch� C�p 7/CanKhon7",
	"C�n Kh�n Gi�i Ch� C�p 8/CanKhon8",
	"C�n Kh�n Gi�i Ch� C�p 9/CanKhon9",
	"C�n Kh�n Gi�i Ch� C�p 10/CanKhon10",
	"C�n Kh�n Gi�i Ch� Truy�n Thuy�t/CanKhon11",
	"Th�i/No")
end

function CanKhon1()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9126,9140))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon2()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9141,9155))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon3()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9156,9170))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon4()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9171,9185))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon5()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9186,9200))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon6()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9201,9215))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon7()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9216,9230))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon8()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9231,9245))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon9()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9246,9260))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon10()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9261,9275))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end

function CanKhon11()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9276,9290))
	else
		Talk(1,"","H�y �� Tr�ng 10 � R�i Nh�n")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"Ch�nh Ph�i./mauvang")
tinsert(tbSay,"T� Ph�i./mautim")
tinsert(tbSay,"Trung L�p./mauxanh")
--tinsert(tbSay,"S�t Th�./maudo")
tinsert(tbSay,"Tho�t/no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n tr�ng th�i m� b�n mu�n", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------
function mauvang()
SetCurCamp(1)
SetCamp(1)
end
function mautim()
SetCurCamp(2)
SetCamp(2) 
end
function mauxanh()
SetCurCamp(3)
SetCamp(3) 
end
function maudo()
SetCurCamp(4)
SetCamp(4) 
end
--------------------------------------------------------------------------------------------------------------------------
