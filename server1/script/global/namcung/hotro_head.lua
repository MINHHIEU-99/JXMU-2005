Include("\\script\\gm_tool\\doxanhtim.lua")
Include("\\script\\gm_tool\\dohoangkim.lua")
Include("\\script\\global\\skills_table.lua")
nAddSkill = 150
----------------------------------------------------------------
function HoTroTest()
	local tbOpt = {
		{"Chøc N¨ng Bang Héi",BangHoi},
		-- {"NhËn CÊp 200",Upleve200},
		-- {"N©ng CÊp Trïng Sinh 5 C¶i L·o 10",UpLevelTransLife},
		-- {"NhËn S¸ch Kü N¨ng (CÊp 25)",NhanKyNang30},
		-- {"NhËn Kü N¨ng ThÊt TruyÒn",NhanKyNang180},
		--{"HÖ Thèng Kinh M¹ch",HeThongKinhMach},
		{"NhËn Hç Trî", hotroitem},
		--{"NhËn Nguyªn LiÖu",NhanNL},
		-- {"ChuyÓn M«n Ph¸i Nhanh", nhanskill},
		-- {"Thó C­ìi - Ngo¹i Trang", fifong},
		-- {"NhËn Trang BÞ Maxofftion", DoHoangKimMax},
		-- {"NhËn Trang BÞ NgÉu Nhiªn Thuéc TÝnh", DoHoangKim},
		-- {"NhËn Cµn Kh«n Giíi ChØ", get_normal_item},

		--{"Trang BÞ Hoµng Kim M«n Ph¸i",sethkmp},
		--{"NhËn bé trang bÞ An Bang",TestGame_TrangBi_Gold, {1}},
		--{"NhËn bé trang bÞ §Þnh Quèc",TestGame_TrangBi_Gold, {2}},
		--{"NhËn Vò khÝ xanh",TestGame_TrangBi_DoXanh, {1}},
		--{"NhËn Trang bÞ xanh",TestGame_TrangBi_DoXanh, {2}},
		--{"NhËn §å TÝm 6 Dßng",dotim},

		{"Mµu PK", trangthai},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän Chøc N¨ng", tbOpt)
end

function HeThongKinhMach()
	local tbOpt = {
		{"NhËn Full M¹ch 16x8",NhanFullMach},
		{"NhËn §iÓm Ch©n Nguyªn",NhanDiemChanNguyen},
		{"NhËn Hé M¹ch §¬n",HoMachDon},
		{"NhËn HuyÕt Long §»ng",HuyetLongDang},
		{"Xãa Kinh M¹ch",XoaKinhMach},
		{"KÕt Thóc",No},
	}
	CreateNewSayEx("H·y Chän Chøc N¨ng", tbOpt)
end
-------------------------------------------------------------------
function BangHoi()
local strTongName = GetTongName()
local tszTitle = "Chµo Mõng B¹n §· Tham Gia HÖ Thèng <color=yellow>Bang Héi<color>"
	if (strTongName == nil or strTongName == "") then
		Say(tszTitle,6,
		"NhËn §iÒu KiÖn T¹o Bang Héi/dmcreatetong",
		"T¹o bang héi/dmcreateit",
		"KÕt Thóc §èi Tho¹i/No")
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
			Msg2Player("<color=yellow>Ng­êi §· Héi §ñ TÊt C¶ §iªu KiÖn CÓ T¹o Bang Héi<color>")
		else
				Talk(1,"","<bclr=red>"..myplayersex().." Ch­a §ñ CÊp 50")
		end
	else
		Talk(1,"","<bclr=red>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ NhËn §iÒu KiÖn Bang Héi")
	end
end

function dmcreateit()
Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 0) then
		if (HaveItem(195) == 1) and (GetRepute() >= 450) and (GetLeadLevel() >= 30) and (GetLevel() >= 50) and (GetCamp() == 4) and (oper == 0) then
			Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
		else	
			Talk(1,"","<bclr=violet>C¸c H¹ Muèn T¹o Dùng Bang Ph¸i:\nYªu CÇu §¼ng CÊp 50 Trë Lªn, Danh Väng 450, §¼ng CÊp Thèng So¸i 30, Kh«ng M«n Ph¸i, Míi Cã ThÓ TiÕn Hµnh\nLËp Bang Héi...!")
		end
	else
		Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
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
		Talk(1,"","C¸c H¹ §· §¹t CÊp 200 Råi")
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
		Talk(1,"","C¸c H¹ §· Trïng Sinh 5 C¶i L·o 10 Råi")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------
function hotroitem()
	local tab_Content = {
		"LÊy Kim Nguyªn B¶o/Layknb",
		"TÝnh N¨ng Bang Héi/BangHoi",
		"LÊy TiÒn §ång/Xu",
		"LÊy Ng©n L­îng/Tien",
		"LÊy VËt phÈm test/kevin_add_vp_test",
		"NhËn c¸c lo¹i ®iÓm/kevin_add_diem",
		
		-- "TÈy §iÓm/clear_attibute_point",
		"Th«i./no",
		"Trë l¹i"
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end


function kevin_add_diem()
	local tab_Content = {
		"NhËn ®iÓm liªn ®Êu/kevin_add_liendau",
		"NhËn ®iÓm phóc duyªn/kevin_add_phucduyen",
		"NhËn ®iÓm Tèng kim/kevin_add_tongkim",
		"Th«i./no",
		"Trë l¹i"
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end

function kevin_add_liendau()
SetTask(2501, 50000000)
Msg2Player("5 triÖu ®iÓm liªn ®Êu!")
end

function kevin_add_phucduyen()
SetTask(151, 99999)
Msg2Player("phóc duyªn lªn 99999 ®iÓm!")
end

function kevin_add_tongkim()
SetTask(747, 1000000)
Msg2Player( "tèng kim lªn 1 triÖu ®iÓm!")
end


-- Tö Tinh Kho¸ng Th¹ch	6	1	8000	\spr\item\christmas\high_purple.spr	333	1	1	VËt liÖu dïng ®Ó chÕ t¹o hoÆc n©ng cÊp trang bÞ cña Thî rÌn hoµng kim.		100	1	0	\script\item\noscript.lua	0	1	1	1	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Vò khÝ)	6	1	8001	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (NhÉn)	6	1	8002	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Y)	6	1	8003	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Béi)	6	1	8004	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Hé UyÓn)	6	1	8005	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Giµy)	6	1	8006	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (D©y ChuyÒn)	6	1	8007	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (§ai)	6	1	8008	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Minh Ph­îng (Nãn)	6	1	8009	\spr\item\script\item_huangjintupu.spr	41	1	1	Cã ThÓ Mang §Õn Thî RÌn §Ó Hîp Thµnh 1 Mãn Hoµng Kim M«n Ph¸i	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- ThuÇn thó quyÓn	6	1	8010	\spr\item\zhuangbeilingshi\chilinshi.spr	41	1	1	NÕu tËp hîp ®ñ sè l­­îng m¶nh sÏ cã c¬ héi së h÷u chiÕn m·.		0	1	1	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Trang Søc	6	1	8011	\spr\item\script\item_huangjintupu.spr	38	1	1	Dïng ®Ó chÕ t¹o trang søc		100	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Ên	6	1	8012	\spr\item\yanditutengsuipian.spr	41	1	1	Sau khi tËp hîp ®ñ m¶nh Ên ®Õn gÆp thî rÌn hoµng kim ®Ó cã c¬ hîp së h÷u nhøng Ên quÝ b¸u.		0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- §å Phæ Phi Phong	6	1	8013	\spr\item\script\seven_city_war\tianshusuipian.spr	41	1	1	Dïng ®Ó chÕ t¹o Phi Phong		0	1	1	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- Hµn ThiÕt Ngµn N¨m	6	1	8014	\spr\item\newitem\dacuonghoa.spr	41	1	1	Lo¹i vËt phÈm HiÕm ThÊy Dïng §Ó N©ng CÊp	0	0	1	0	\script\item\noscript.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- Tói Vµng Th¹ch Sanh	6	1	8015	\spr\item\script\pingzi\200805\chuntiandalibao.spr	41	1	1	Më ra nhËn ®­îc 1000 v¹n l­îng	0	0	1	0	\script\global\quanlygame\item\tui_tienvan.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- Ngäc Trïng LuyÖn LÔ Hép	6	1	8016	\spr\item\script\item_chrismasbox.spr	41	1	1	Sö dông nhËn ®­îc 50 Ngäc Trïng LuyÖn		0	1	0	\script\global\quanlygame\item\ngoctrungluyenlb.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- Ngäc Trïng LuyÖn	6	1	8017	\spr\item\questkey\taskobj089.spr	372	1	1	Dïng ®Ó trïng luyÖn trang bÞ		0	1	1	\script\item\noscript.lua	0	1	1	0	1		999	0	0	0	0	0	0	0	0	0
-- BÝ kÝp 180	6	1	8018	\spr\item\questkey\obj_item_lection.spr	372	1	1	Sö dông nhËn ®­îc skill 180		0	1	1	\script\global\kevin\item\bikip180.lua	0	1	1	0	1		0	0	0	0	0	0	0	0	0	0
-- Thiªn S¬n TuyÕt Liªn	6	1	8019	\spr\item\script\tianshanxuelian.spr	41	1	1	¡n vµo c«ng lùc sÏ t¨ng ngay level 180			1	0	\script\global\kevin\item\thienson_tuyetlien.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0
-- Huy ch­¬ng Tèng Kim	6	1	8020	\spr\item\nanfangjiefangri_2007\songjinxunzhang.spr	41	1	1	Huy Ch­¬ng Ghi Chó C«ng Lao ChiÕn Tèng Kim, NhÊp Ph¶I Sö Dông §­îc 5.000 §iÓm Tèng Kim( Gi¸ B¸n 6.000 ®iÓm tÝch lòy)	0	100	1	0	\script\global\quanlygame\item\tongkimlebao.lua	0	1	1	0	0		999	0	0	0	0	0	0	0	0	0



function kevin_add_vp_test()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8000,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8001,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8002,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8003,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8004,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8005,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8006,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8007,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8008,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8009,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8010,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8011,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8012,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8013,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8014,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8015,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8016,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8017,1,0,0},nCount=999},"NhËn Hç Trî")
		-- tbAwardTemplet:GiveAwardByList({tbProp={6,1,8018,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8019,1,0,0},nCount=999},"NhËn Hç Trî")
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,8020,1,0,0},nCount=999},"NhËn Hç Trî")
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
	end
end
--------------------------------------------------------------------------------------------------------------------------------
function Layknb()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=1000},"NhËn Hç Trî")
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
	end
end

function Xu()
	if CalcFreeItemCellCount() >= 20 then
		tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=5000},"NhËn Hç Trî")
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
	end
end

function Tien()
	if GetCash() < 1000000000 then
		Earn(1000000000)
	else
		Talk(1,"","§· V­ît Qu¸ 100.000 V¹n Råi")
	end
end
--------------------------------------------------------------------------------------------------
function clear_attibute_point()
	local tbOpt = {
		{"TÈy ®iÓm kü n¨ng.", clear_skill},
		{"TÈy ®iÓm tiÒm n¨ng.", clear_prop},
		{"Trë vÒ", main},
		{"Tho¸t."},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------
function clear_skill()
local tbOpt = {
{"X¸c nhËn", do_clear_skill},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy", tbOpt)
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
Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i cã "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
KickOutSelf()
end
--------------------------------------------------------------------------------------------------
function clear_prop()
local tbOpt = {
{"X¸c nhËn", do_clear_prop},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
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
		{"NhËn R­¬ng Nguyªn LiÖu",RuongNguyenLieu},
		{"NhËn Cµn Kh«n Liªn Hoa",NhanCanKhon},
		{"NhËn Event",NguyenLieuEvent},
		{"Hñy Bá",},
	}
	CreateNewSayEx("Xin Chµo Nh©n SÜ §· Tham Gia Chøc N¨ng Test", tbOpt)
end
--------------------------------------------------------------------------------
function RuongNguyenLieu()
	if CalcFreeItemCellCount() >= 40 then
		local tbAward = {
			{szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,4837,1,0,0},nCount=5000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
	end
end

function NhanCanKhon()
	if CalcFreeItemCellCount() >= 10 then
		local tbAward = {
			{szName="Cµn Kh«n Liªn Hoa",tbProp={6,1,5041,1,0,0},nCount=1000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn Th­ëng")
	end
end

function NguyenLieuEvent()
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
local nFree = CalcFreeItemCellCount()
	if (nDate >= 202101010000 and nDate <= 202101312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="D©y Ph¸o §¹i",tbProp={6,1,5389,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202102010000 and nDate <= 202102282400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="B¸nh Kem S« C« La",tbProp={6,1,5198,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202103010000 and nDate <= 202103312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Giá Hoa Hång",tbProp={6,1,3127,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202104010000 and nDate <= 202104302400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="TÊm ¸o ChiÕn Sü",tbProp={6,1,2306,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202105010000 and nDate <= 202105312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Hoa Ph­îng §á",tbProp={6,1,3161,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202106010000 and nDate <= 202106302400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="B¸nh Sinh NhËt",tbProp={6,1,2859,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202107010000 and nDate <= 202107312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Hoa Hång Tr¾ng",tbProp={6,1,3470,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202108010000 and nDate <= 202108312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="B¸nh Trung Thu",tbProp={6,1,1515,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202109010000 and nDate <= 202109302400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Quèc Kh¸nh §á",tbProp={6,1,5352,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202110010000 and nDate <= 202110312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Hép Qua Lín",tbProp={6,1,5295,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202111010000 and nDate <= 202111302400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="Tõ §iÓn TiÕng ViÖt",tbProp={6,1,2182,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
		end
	elseif (nDate >= 202112010000 and nDate <= 202112312400) then
		if nFree >= 20 then
			tbAwardTemplet:GiveAwardByList({szName="B¸nh Kem S« C« La",tbProp={6,1,1849,1,0,0},nCount=1000,nExpiredTime=43200},1)
		else
			Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
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
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
		return 1;
	else
		for i=1,12 do
			if (nFaction == i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					SetTask(KyNangThatTruyen,20)
					Talk(1,"","<color=green>"..GetName().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<color> <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Talk(1,"","<bclr=violet>"..GetName().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
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
			{szName="Hé M¹ch §¬n",tbProp={6,1,5226,1,0,0},nCount=10000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
	end
end

function HuyetLongDang()
	if CalcFreeItemCellCount() >= 30 then
		local tbAward = {
			{szName="HuyÕt Long §»ng",tbProp={6,1,5227,1,0,0},nCount=1000},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
	end
end

function NhanDiemChanNguyen()
	if (GetTask(1) < 1000000) then
		SetTask(1,1000000)
	else
		Talk(1,"","Ng­êi §· NhËn §ñ Råi §õng Qu¸ Tham")
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
tinsert(tbSay,"Chän M«n Ph¸i/choose_faction")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin mêi <color=yellow>"..GetName().."<color> chän Skill  !", getn(tbSay), tbSay)
end
------------------------------------------------------------------------------------------------
function choose_faction()
local nLevel = GetLevel()
	if (nLevel >= 10) then
		if (CalcItemCount(2,0,-1,-1,-1) == 0) then
			CreateNewSayEx("H·y Lùa Chän M«n Ph¸i",
			{
				{"ThiÕu L©m Ph¸i",ChonMonPhai,{0}},
				{"Thiªn V­¬ng Ph¸i",ChonMonPhai,{1}},
				{"§­êng M«n Ph¸i",ChonMonPhai,{2}},
				{"Ngò §éc Ph¸i",ChonMonPhai,{3}},
				{"Nga My Ph¸i",ChonMonPhai,{4}},
				{"Thóy Yªn Ph¸i",ChonMonPhai,{5}},
				{"C¸i Bang Ph¸i",ChonMonPhai,{6}},
				{"Thiªn NhÉn Ph¸i",ChonMonPhai,{7}},
				{"Vâ §ang Ph¸i",ChonMonPhai,{8}},
				{"C«n L«n Ph¸i",ChonMonPhai,{9}},
				--{"Hoa S¬n Ph¸i",ChonMonPhai,{10}},
				--{"Vò Hån Ph¸i",ChonMonPhai,{11}},
				{"Hñy Bá"}
			})
		else
			Talk(1,"","Muèn Thay §æi M«n Ph¸i Ph¶i Gì Bá Trang BÞ Trªn Ng­êi Xuèng")
		end
	else
		Talk(1,"","§¼ng CÊp Cña Ng­¬i Cßn KÐm L¾m H·y §i RÌn LuyÖn Thªm §¹t §Õn CÊp 10 Råi Quay L¹i T×m Ta")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i ThiÕu L©m §­îc Phong Lµ Hé Ph¸p Tr­ëng L·o")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Thiªn V­¬ng §­îc Trë Thµnh K×nh Thiªn Nguyªn So¸i")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i §­êng M«n §­îc Trë Thµnh Lôc C¸c Tr­ëng L·o")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Ngò §éc §­îc Trë Thµnh U Minh Quû V­¬ng")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Nga My §­îc Trë Thµnh Kim §Ønh Th¸nh N÷")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Thóy Yªn §­îc Trë Thµnh Hoa ThÇn")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i C¸i Bang §­îc Trë Thµnh Cöu §¹i Tr­ëng L·o")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Thiªn NhÉn §­îc Trë Thµnh Th¸nh Gi¸o Tr­ëng")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Vâ §ang §­îc Trë Thµnh HuyÒn Vâ Ch©n Nh©n")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i C«n L«n §­îc Trë Thµnh Hé Ph¸i Ch©n Qu©n")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Hoa S¬n §­îc Trë Thµnh Th¸i Häc C¸c Chñ")
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
		Msg2Player("Chóc Mõng Ng­êi §· Gia NhËp Ph¸i Vò Hån §­îc Trë Thµnh ThÇn Hµnh Qu©n §Ó Tö")
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
		"Ngò Hµnh Ên/NguHanhAn",
		"Trang søc/TrangSuc",
		"MÆt N¹/MatNa",
		"Thó C­ìi/vip5",
		"Tho¸t./no",
		"Trë l¹i"
	}
	Say("Xin mêi chän", getn(tab_Content), tab_Content);
end
-------------------------------------------------------------------------------------------------------------------
function PhiPhong()
Say("H·y Chän Lo¹i Phi Phong",12,
	--"Phi Phong K×nh L«i/KinhLoi",
	--"Phi Phong Ngù Phong/NguPhong",
	--"Phi Phong PhÖ Quang/PheQuang",
	--"Phi Phong KhÊp ThÇn/KhapThan",
	--"Phi Phong K×nh Thiªn/KinhThien",
	--"Phi Phong HuyÒn Kim/HuyenKim",
	--"Phi Phong V« Cùc/VoCuc",
	--"Phi Phong L¨ng TuyÖt/LangTuyet",
	--"Phi Phong Tö V©n/TuVan",
	--"Phi Phong V« Song/VoSong",
	"Phi Phong TruyÒn ThuyÕt/CaoCap",
	"Hñy Bá/No")
end

function KinhLoi()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9291,9293 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function NguPhong()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9294,9296 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function PheQuang()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9297,9299 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function KhapThan()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9300,9302 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function KinhThien()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9303,9305 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function HuyenKim()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9306,9308 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function VoCuc()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9309,9311 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function LangTuyet()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9312,9314 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function TuVan()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9315,9317 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function VoSong()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9318,9320 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CaoCap()
	if CalcFreeItemCellCount() >= 10 then
		for i = 9321,9323 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end
--------------------------------------------------------------------------------
function NguHanhAn()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9339,9351 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn")
	end
end

function TrangSuc()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9352,9364 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn")
	end
end

function MatNa()
	if CalcFreeItemCellCount() >= 20 then
		for i = 9324,9338 do
			AddGoldItem(0,i)
		end
	else
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn")
	end
end

function Ngua()
	local tab_Content = {
		"Ngùa nhãm 1./vip1",
		"Ngùa nhãm 2./vip2",
		"Ngùa nhãm 3./vip3",
		"Ngùa nhãm 4./vip4",
		"Ngùa nhãm 5./vip5",
		"Tho¸t./no",
		"Trë l¹i"
	}
	Say("Xin mêi <color=yellow>"..GetName().."<color> chän Ngùa mµ b¹n muèn", getn(tab_Content), tab_Content);
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
		Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn")
	end
end
----------------------------------------------------------
function get_normal_item()
Say("H·y Lùa Chän Lo¹i Nh·n",12,
	"Cµn Kh«n Giíi ChØ CÊp 1/CanKhon1",
	"Cµn Kh«n Giíi ChØ CÊp 2/CanKhon2",
	"Cµn Kh«n Giíi ChØ CÊp 3/CanKhon3",
	"Cµn Kh«n Giíi ChØ CÊp 4/CanKhon4",
	"Cµn Kh«n Giíi ChØ CÊp 5/CanKhon5",
	"Cµn Kh«n Giíi ChØ CÊp 6/CanKhon6",
	"Cµn Kh«n Giíi ChØ CÊp 7/CanKhon7",
	"Cµn Kh«n Giíi ChØ CÊp 8/CanKhon8",
	"Cµn Kh«n Giíi ChØ CÊp 9/CanKhon9",
	"Cµn Kh«n Giíi ChØ CÊp 10/CanKhon10",
	"Cµn Kh«n Giíi ChØ TruyÒn ThuyÕt/CanKhon11",
	"Th«i/No")
end

function CanKhon1()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9126,9140))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon2()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9141,9155))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon3()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9156,9170))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon4()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9171,9185))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon5()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9186,9200))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon6()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9201,9215))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon7()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9216,9230))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon8()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9231,9245))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon9()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9246,9260))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon10()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9261,9275))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end

function CanKhon11()
	if CalcFreeItemCellCount() >= 10 then
		AddGoldItem(0, random(9276,9290))
	else
		Talk(1,"","H·y §Ó Trèng 10 ¤ Råi NhËn")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"ChÝnh Ph¸i./mauvang")
tinsert(tbSay,"Tµ Ph¸i./mautim")
tinsert(tbSay,"Trung LËp./mauxanh")
--tinsert(tbSay,"S¸t Thñ./maudo")
tinsert(tbSay,"Tho¸t/no")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän tr¹ng th¸i mµ b¹n muèn", getn(tbSay), tbSay)
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
