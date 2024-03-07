------------------------***Create*By*Heart*Doldly***----------------------------------
Include("\\script\\chucnang_adm\\include.lua")
Include("\\script\\gmscript.lua")
function myplayersex()
    if GetSex() == 1 then
        return "N÷ HiÖp"
    else
        return "§¹i HiÖp"
    end
end

---------------------------------------------------------------------------------
function main()
    dofile("script/gm_tool/mrt.lua")

     -- 	local mapID, xPos, yPos = GetWorldPos();
    -- 	local index = AddNpcEx(413, 80, 4, SubWorldID2Idx(mapID), xPos * 32, yPos * 32, 1, "AddNPC", 1);
    --     local file = openfile("npcpos.txt", "a+")
    -- 	write(file, strchar(34) .. mapID.. ",".. xPos .. "," .. yPos.. strchar(34), '\n')
    --     closefile(file)
    --         return 1;

    local szAccount = GetAccount()
    --kiem tra tai khoan Admin
    if (isAdminAccount(szAccount) == 1) then --(isSupportAccount2(szAccount) == 1) then
        teamhotro()
    elseif (isGMAccount(szAccount) == 1 or isAdminAccount(szAccount) == 1) then
        gmjxmu()
    else
        return Msg2Player("<color=yellow>B¹n kh«ng ph¶i GM hÖ thèng tù ®éng hñy bá vËt phÈm!")
    end
    return 1
end
function teamhotro()
    local szTitle = "Xin chµo <color=red>" .. GetName() .. "<color>,Nh÷ng chøc n¨ng bªn d­íi cã thÓ hç trî b¹n."
    local tbOpt = {
        -- { "NhËn VËt PhÈm", NhanVatPham },
        -- { "NhËn CÊp §é", capdo },

        -- { "Nguyªn LiÖu ChÕ T¹o §å TÝm", epdotim },
    -- { "NhËn §å Xanh", laydoxanh },
        -- { "Thiªn S¬n TuyÕt Liªn Mu", ThienSonTuyetLienMu },
        -- { "Céng ®iÓm nhanh", add_prop },
        -- { "NhËn thuèc.", getthuoclac },
        -- { "NhËn Thñy Tinh.", ThuyTinh },
        { "Hñy vËt phÈm", DisposeItem },
        { "Tho¸t" },
                                                                                                        -- { "NhËn Trang BÞ", TrangBi },                        
                                                                                                         -- { "NhËn Reset 150.", nhancailao },                       
                                                                                                         -- { "NhËn Event.", getEvent },                     
                                                                                                         -- { "NhËn Point", Point },                     
    }
    CreateNewSayEx(szTitle, tbOpt)
    return 1;
end
function gmjxmu()

    local szTitle =  "Xin chµo <color=red>" .. GetName() .. "<color>,Nh÷ng chøc n¨ng bªn d­íi cã thÓ hç trî b¹n."
    local tbOpt = {
        {"Qu¶n Lý Chøc N¨ng GM",ChucNangGM},
										--		{"Chøc N¨ng Ch½n LÎ",quanlychanle},
				{"Xo¸ NPC",kickacc},
		{"Céng ®iÓm nhanh ", tangdiemnhanh},
		{"nhËn point", PowerUp,{120}},

	--			{"LÊy Full Skill 9x",tangskill120},
					{"Reload",ReLoadScript},
					{"Reload All Gs", Bil_ReLoadScript_MultiGamerSVWithLinkInput},

			{"trang Sau",trangsau},
        { "Tho¸t" },
    }
    CreateNewSayEx(szTitle, tbOpt)
-- 	--PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,1)
    return 1;
end
function trangsau()

    local szTitle =  "Xin chµo <color=red>" .. GetName() .. "<color>,Nh÷ng chøc n¨ng bªn d­íi cã thÓ hç trî b¹n."
    local tbOpt = {
	{"Xo¸ Hµnh Trang",xoatoanboitem},
	--{"Test Map 1xx",testmap100},
	{"RESET EVENT",resetevent},
	{"Gäi Boss",chucnangbosss},
	{"vËt phÈm",vatpham},
	
	{"Test vßng s¸ng",nhanvongsang},
	{"Xo¸ XÕp H¹ng",XoaXepHang},
	{"trë l¹i",main},
	{ "Tho¸t" },
}
CreateNewSayEx(szTitle, tbOpt)
-- 	--PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,1)
return 1;
end
function ChucNangGM()
	local tbOpt = {
		{"Kick Nh©n VËt (ID §¨ng NhËp)", timnhanvat},
											{"Chøc N¨ng Më Khãa IP",GioiHanIP},

		{"NhËn Hç Trî Game",HoTroGameLuaChon},
					{"Chøc N¨ng Qu¶n Lý GM",ChucNangQuanLyGM},
		--{"Hñy VËt PhÈm",DisposeItem},
		{"Chøc N¨ng LÊy §å Theo ID",LayDoTheoID},
		{"LÊy VËt PhÈm.....", layvatpham},		
	--	{"Chøc N¨ng Bang Héi",BangHoi},
		{"Qu¶n Lý Gamer", thongtingamer},
		{"LÊy §å Xanh",laydoxanh},
		{"N©ng §iÓm Kinh NghiÖm", diemexp},
	--	{"NhËn §iÓm - Vßng S¸ng", hotro},
	--	{"Gäi Siªu Boss", CallBossad},
		{"LÊy TiÒn §ång", LayTienDOngtest},
	--	{"NhËn Trang BÞ Maxop", dohoangkimmax},
		--{"Thó C­ìi - Ngo¹i Trang", fifong},
		--{"Ta Muèn LÊy VËt PhÈm - Giíi ChØ", show_item},
		{"Thay §æi Tr¹ng Th¸i", trangthai},
	--	{"Më §ua Ngùa", MoDuaNgua},
	--	{"Më Hoa S¬n Lo¹n ChiÕn", hosonloanchienttt},
	{"Admin BiÕn H×nh", AdminBienHinh},
		--{"", MoTieuBangChien},
		--{"NhËn Skill", nhanskill},
		--{"Trang BÞ H¾c ThÇn - Long T­¬ng",TrangBiHiem},
		--{"LÊy Nguyªn LiÖu Kho¸ng Th¹ch",khoangth},
		--{"Hoµng Kim M«n Ph¸i - §å Xanh - §å TÝm", hkmpdoxanh},
		{"Tho¸t",},
	}

	CreateNewSayEx("<bclr=violet>Xin Mêi "..myplayersex().." Chän Chøc N¨ng CÇn Hç Trî<bclr>", tbOpt)
end
function tiengvan()
    local szTitle =  "Xin chµo <color=red>" .. GetName() .. "<color>,Nh÷ng chøc n¨ng bªn d­íi cã thÓ hç trî b¹n."
    local tbOpt = {



		{"NhËn TiÒn V¹n", themtienvan1},
		

        { "Tho¸t" },
    }
    CreateNewSayEx(szTitle, tbOpt)
-- 	--PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,1)
    return 1;

end
function tangskill120()
AddMagic(318,20)
AddMagic(319,20)
AddMagic(321,20)
AddMagic(325,20)
AddMagic(323,20)
AddMagic(322,20)
AddMagic(339,20)
AddMagic(302,20)
AddMagic(342,20)
AddMagic(353,20)
AddMagic(355,20)
AddMagic(380,20)
AddMagic(328,20)
AddMagic(337,20)
AddMagic(336,20)
AddMagic(357,20)
AddMagic(359,20)
AddMagic(362,20)
AddMagic(361,20)
AddMagic(365,20)
AddMagic(368,20)
AddMagic(375,20)
AddMagic(372,20)

end


function Bil_ReLoadScript_MultiGamerSVWithLinkInput(bilLinkReload)
	if type(bilLinkReload) == "string" then
		local bilLinkReload = bilLinkReload
		local Keywk1 = strfind(bilLinkReload, "\\script")
		bilLinkReload = strsub(bilLinkReload, Keywk1-1, strlen(bilLinkReload))
		RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadScriptMultiGamesv", {bilLinkReload})
		return Msg2Player("§· göi yªu cÇu ®Õn S3Relay!")
	end
	return AskClientForString("Bil_ReLoadScript_MultiGamerSVWithLinkInput", "", 1, 500, "<#>NhËp ®­êng dÉn")
end



function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end


function ClearBagCell()
	Say("B¹n cã muèn xãa toµn bé kh«ng?", 2, "§óng vËy!/xoatoanbo", "Ta nhÇm./no")
end


function kickacc()

ClearMapNpcWithName(1022, "ThËp Ph­¬ng C©u DiÖt");

end
function kickacc_ok(ten)
ForceExitGame(ten)
ForceKickOut(ten)
end
Include("\\script\\task\\random\\treasure_head.lua");
function resetevent()
SetTask(5360,0)
SetTask(5361,0)
SetTask(5362,0)
SetTask(5363,0)
	SetTask(4992,0)
	SetTask(4993,0)
	SetTask(4994,0)
	SetTask(4995,0)
	SetTask(4996,0)
	SetTask(4997,0)
	SetTask(4998,0)
	SetTask(4999,0)
SetTask(5364,0) --hu©n ch­¬ng chiÕn c«ng
SetTask(5365,0) --chao cê
SetTask(5333,0) --trång c©y lóa
SetTask(5334,0) --huyÒn ch©n ®¬n
CallBossDown_Fixure()
-- PayExtPoint(0,GetExtPoint(0)+1)
--Msg2Player("KIM "..GetMissionV(36 + 6 - 1).."-- TONG "..GetMissionV(30 + 6 - 1).."")
	--GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	--	tbAwardTemplet:GiveAwardByList({{tbProp={4,1660,1,1},nCount=10},}, "test", 1);
--CreateTreasureMap()
--local Index = AddItem(0, 0, 0, 1, random(0,4), 0, 0)
--local totalcount =CalcEquiproomItemCount(1,2,0,5);
--Msg2Player(""..totalcount.."")
--AddProp(-10000)
--AddMagicPoint(-44800)

end
function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
function BossDongPhuong2()
GoiBossTieuRa()

end

function call_npc1_test22() 
--BossDongPhuong2()
--BossDongPhuong3()
end
function nhandocongthanh()
tbAwardTemplet:GiveAwardByList({{szName="Lenh Bai",tbProp={0,11,561,1,1},nCount=1,nExpiredTime=(6*24*60)+(23*60)},}, "test", 1);
end


function LayThienThach()
	if CalcFreeItemCellCount() < 20 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y më.",0);
		return 0;
	end
--	for i=1317,1325 do
--tbAwardTemplet:GiveAwardByList({{szName = "M¶nh thiªn th¹ch",tbProp={4,i,1,1},nCount=100},}, "test", 1);
--end
local ranvk=random(1,2)
		if ranvk==1 then
			local randong=random(51,100)
			if randong>=51 and randong<=70 then
				AddQualityItem(2,0,0,random(0,5),10,0,0,-1,-1,-1,0,0,0)
			elseif randong>=71 and randong<=85 then
				AddQualityItem(2,0,0,random(0,5),10,0,0,-1,-1,-1,-1,0,0)
			elseif randong>=86 and randong<=95 then
				AddQualityItem(2,0,0,random(0,5),10,0,0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,0,random(0,5),10,0,0,-1,-1,-1,-1,-1,-1)
			end
		else
			local randong=random(51,100)
			if randong>=51 and randong<=70 then
				AddQualityItem(2,0,1,random(0,2),10,0,0,-1,-1,-1,0,0,0)
			elseif randong>=71 and randong<=85 then
				AddQualityItem(2,0,1,random(0,2),10,0,0,-1,-1,-1,-1,0,0)
			elseif randong>=86 and randong<=95 then
				AddQualityItem(2,0,1,random(0,2),10,0,0,-1,-1,-1,-1,-1,0)
			elseif randong>=96 and randong<=100 then
				AddQualityItem(2,0,1,random(0,2),10,0,0,-1,-1,-1,-1,-1,-1)
			end
		end

end






function TestTamThoi1()
xoavongsang()
PlayerFunLib:AddSkillState(1211,20,3,18*60*60*24*1,1)       --998       --1211
--PlayerFunLib:AddSkillState(1622,20,3,46656000,1)
end





function ThamGiaOanTuTi()
tbAloneScriptGame:DialogMain();
end


---------------------------------------------------------------------------------
function NguyenLieuEp()
	if CalcFreeItemCellCount() >= 40 then
		for i = 1,2000 do AddItem(6,1,2566,1,0,0) end
	else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
	end
end
-------------------------------------------------------------------------------------------------------------------------
function NguyenLieuEvent()
	if CalcFreeItemCellCount() >= 40 then
		for i = 1,500 do
			AddItem(6,1,3161,1,0,0)
			AddItem(6,1,3162,1,0,0)
			AddItem(6,1,3163,1,0,0)
		end
	else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
	end
end
-------------------------------------------------------------------------------------------------------------------------

function HoTroGameLuaChon()
if (CalcFreeItemCellCount() < 20) then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
end
	local tbOpt = {
		{"NhËn Ngùa Theo Ngµy",LuaChonNguaTheoNgay},
		{"NhËn Th­ëng C«ng Thµnh ChiÕn",nhanthuongcongthanhchien},
		{"NhËn Th­ëng Thiªn Tö",nhanthuongthientu},
		{"NhËn LÔ Bao Nh¹c V­¬ng KiÕm",NhanTinVatMonPhai},
		{"NhËn Ph¸t Th­ëng Top CÊp ",nhanthuongphattop},
		{"NhËn TuÖ Thanh + Duyªn Qu©n ",TueThanhDuyenQuan},
		{"NhËn §Õ hoµng chi giíi + Cµn Kh«n Giíi ChØ + Thiªn Tö Chi Giíi ",CanKhonHoangDe},
		{"NhËn Cµn Kh«n Song TuyÖt Béi",NhanCanKhonSongTuyetBoi},
		{"Set M·nh S­ Theo Ngµy",NhanDoVat},				
		{"NhËn MÆt ChiÕn Tr­êng V­¬ng Gi¶",MatNaTheoNgay},
		{"NhËn MÆt N¹ 3 CÊp Theo Ngµy",MatNaTheoNgay3},
		{"Phi Phong V« Cùc( §¹i Th¸nh)",VoCucDaiThanh},
		{"T©n NhËm Hµnh Ên Gi¸m (H¹)",TanNhamHa},
		{"T©n NhËm Hµnh Ên Gi¸m (Trung)",TanNhamTrung},
		{"T©n NhËm Hµnh Ên Gi¸m (Th­îng)",TanNhamThuong},
		{"Set H¾c ThÇn Theo Ngµy",HacThanTheoNgay},
		{"Set H¾c ThÇn Míi Theo Ngµy",HacThanMoiTheoNgay},
		{"Set Vò LiÖt Theo Ngµy",VuLietTheoNgay},
		{"NhÉn Cµn Kh«n",CanKhonLuaChon},
		{"NhÉn 5 NhÉn Max",CanKhonLuaChonMax},
		{"NhËn Nhat ky 7 ngay",NhanTinVatMonPhai},
		{"NhÉn Nguyªn LiÖu Test",NhanNguyenLieuTest},
		{"NhÉn 5000 HHL",HHL5000},
		{"Tho¸t"},	
	}
	CreateNewSayEx("<bclr=violet>Xin Mêi "..myplayersex().." Chän Chøc N¨ng CÇn Hç Trî<bclr>", tbOpt)
end
----------------------------------------------------------------------
function LuaChonNguaTheoNgay()
	local tbOpt = {
		{"Siªu Quang",SieuQuangLuaChon_xanh},		
		{"XÝch Long C©u",XichLongCauLuaChon_xanh},		
		{"Phiªn Vò",PhienVuLuaChon_xanh},		
		{"H·n HuyÕt",HanHuyetLuaChon_xanh},		
		{"NhËn MÆt N¹  1 Skill",NhanMatNa1Skill},		
		{"Phiªn Vò TruyÒn ThuyÕt",PhiVanLuaChon},		
		--{"XÝch Long C©u TruyÒn ThuyÕt",XichLongCauLuaChon},
		--{"S­ Tö TruyÒn ThuyÕt",SuTuLuaChon},
	--	{"B¹ch Hæ TruyÒn ThuyÕt",BachHoLuaChon},
		--{"D­¬ng Sa TruyÒn ThuyÕt",DuongSaLuaChon},
	--	{"Ngù Phong TruyÒn ThuyÕt",NguPhongLuaChon1},
	--	{"H·n HuyÕt Long C©u TruyÒn ThuyÕt",HanHuyetLuaChon},
		--{"Hång Mao TruyÒn ThuyÕt",HongMaoLuaChon},
		--{"B¹ch Hå Ly TruyÒn ThuyÕt",BachHoLyLuaChon},		
		{"Tho¸t"},		
	}
	CreateNewSayEx("<bclr=violet>Xin Mêi "..myplayersex().." Mêi Chän Ngùa<bclr>", tbOpt)
end
----------------------------------------------------------------------
----------------------------------------------------------------------
function NhanCanKhonSongTuyetBoi()
--local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
local Index = AddItem(6,1,2219,1,0,0) ITEM_SetExpiredTime(Index,24*60*30) SyncItem(Index)
WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t NhËn th­ëng Cµng Kh«n Song TuyÖt Béi \n");
end

----------------------------------------------------------------------
function NhanNguyenLieuTest()
local tbList= {
		{"NhÉn 5000 B¸nh ®Ëu xanh",PhuongDo5000},
		{"NhÉn 5000 B¸nh Trung Thu heo quay",PhuongTim5000},
		{"NhÉn 5000 B¸nh ThËp CÈm",PhuongTrang5000},
}
CreateNewSayEx("<bclr=violet>Xin Mêi "..myplayersex().." Chän Chøc N¨ng CÇn Hç Trî<bclr>", tbList)
end
function PhuongDo5000()
local tbItem = {
	{szName="B¸nh ®Ëu xanh", tbProp={6,1,1510,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
end
function PhuongTim5000()
local tbItem = {
	{szName="B¸nh Trung Thu heo quay", tbProp={6,1,1513,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
end
function PhuongTrang5000()
local tbItem = {
	{szName="B¸nh ThËp CÈm", tbProp={6,1,1514,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
end
function HHL5000()
local tbItem = {
	{szName="Hoa Ph­îng Tr¾ng", tbProp={6,1,2566,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
end

------------------------------------------------------------------------------------------------------------------------------------------------

function laydotesst()
for i=747,770 do
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,i,1,1,0,0},nCount=50,},}, "test", 1);
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,238,1,1,0,0},nCount=50,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,239,1,1,0,0},nCount=50,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,240,1,1,0,0},nCount=50,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={6,1,398,1,1},nCount=10,},}, "test", 1);
end
function layxuadmin()
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0,0},nCount=1000,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0,0},nCount=1000,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0,0},nCount=1000,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0,0},nCount=1000,},}, "test", 1);
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AdminBienHinh()
AddMagicPoint(5000)
AddProp(40000)
AddStrg(10000);
AddDex(10000);
AddVit(10000);
AddEng(10000);

end
function MoDuaNgua()

Msg2SubWorld("<color=pink>§Êu Tr­êng §ua Ngùa<color=cyan> ®ang b¾t ®Çu nhËn b¸o danh. Quý nh©n sÜ h·y ®Õn <color=yellow>Nha M«n D­¬ng Ch©u<color=cyan> ®Ó b¸o danh thêi gian b¸o danh lµ <color=green>10<color> phót!")
startRaceMission()
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoTieuBangChien()
local TimeForPreparing = 10
Msg2SubWorld("<color=pink>Tiªu Bang ChiÕn<color=cyan> ®ang b¾t ®Çu nhËn b¸o danh. Quý nh©n sÜ h·y ®Õn <color=yellow>Xa Phu Thµnh ThÞ <color=cyan> ®Ó b¸o danh")
m_TieuBangChien:m_RemoteStart(TimeForPreparing)
end
function hosonloanchienttt()
	local tbOpt = {
		{"Ta ThËt Sù Muèn Më", MoHoaSonLoanChien},

		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>X×n Mêi Anh L©m Ng¸o Chän Chøc N¨ng.", tbOpt)
end
function MoHoaSonLoanChien()

Msg2SubWorld("<color=pink>Hoa S¬n §¹i ChiÕn<color=cyan> ®ang b¾t ®Çu nhËn b¸o danh. Quý nh©n sÜ h·y ®Õn <color=yellow>Hoa S¬n L·o TÈu t¹i c¶nh kü tr­êng<color=cyan> ®Ó b¸o danh thêi gian b¸o danh lµ <color=green>10<color> phót!")
startHuaShanQunZhanMission()
end

function layvatpham()
	local tbOpt = {
		{"LÊy VËt PhÈm Magic", TaoItem},
		{"LÊy VËt PhÈm Queskey", TaoItemQK},
		{"LÊy VËt PhÈm Magic_han sd", TaoItemhsd},
		{"LÊy VËt PhÈm Goldequip..", Glodequip},
	}
	CreateNewSayEx("<npc>Xin Mêi Chän Chøc N¨ng", tbOpt)
end

function TaoItemhsd() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Item Code:",{TaoItemID_hsd}) 
end


function TaoItemID_hsd(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 

	
	tbAwardTemplet:GiveAwardByList({{szName="VËt phÈm",tbProp={6,1,itclass,1,0,0,0},nCount=1,nExpiredTime=ittype*24*60},}, "test", 1);
	
	    logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..ittype.." item magic "..itclass.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function TaoItemQK() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Item Code:",{TaoItemIDQK}) 
end

function TaoItemIDQK(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	if szICode[2]==nil then
		ittype=1
	end
	--AddItem(6,1,itclass,1,0,0,0);
	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={4,itclass,1,0,0},nCount=ittype},}, "test", 1);
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..ittype.." item magic "..itclass.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Glodequip() 
g_AskClientStringEx("",1,9000,"NhËp Vµo Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)

Msg2Player("LÊy vËt phÈm thµnh c«ng.")
local szICode1 = lib:Split(idgq, ",");
	local itclass1 = szICode1[1]; 
	local ittype1 = szICode1[2]; 
--AddGoldItem(0, ""..itclass1.."") 
if ittype1~=nil then
local Index = AddGoldItem(0,itclass1) ITEM_SetExpiredTime(Index,ittype1*24*60) SyncItem(Index)
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy item gold "..itclass1.." han "..ittype1.." ngay",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
else
local Index = AddGoldItem(0,itclass1)  SyncItem(Index)
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy item gold "..itclass1.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end
--	local tbAward = {
--		{szName="Hoa Ph­îng TÝm",tbProp={0,"..itclass1.."},nQuality=1,nCount=1,nExpiredTime=24*60},
--	}
--	tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng GiftCode")



end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function thongtingamer() 
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local nGio = tonumber(GetLocalDate("%H")); 
local nPhut = tonumber(GetLocalDate("%M")); 
local nGiay = tonumber(GetLocalDate("%S")); 
local nW, nX, nY = GetWorldPos() 
local nIdPlay = PlayerIndex 
local tbSay = {}
--	tinsert(tbSay,"ADM Move=>CTC.../vitri_congthanh")
	tinsert(tbSay,"Th«ng tin ng­êi ch¬i./Show")
--	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i./luachonid1")
--	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp ID/luachonid1")
	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp Tªn NhËn VËt/luachonid2")
	tinsert(tbSay,"Thao t¸c lªn ng­êi ch¬i - NhËp Tµi Kho¶n/luachonid3")
--	tinsert(tbSay,"HÖ Thèng Pet/Pet")
	tinsert(tbSay,"LÊy Täa §é/toado1")
--	tinsert(tbSay,"Th«ng B¸o B¶o Tr×/OnTimer")
--	tinsert(tbSay,"LÊy ID Vßng S¸ng/kiemtra_spr")
	tinsert(tbSay,"Chat ADM....!/GmNhapTinBao")
--	tinsert(tbSay,"Chat GM....!/Gm")
	tinsert(tbSay,"Tho¸t/no")
	tinsert(tbSay,"Trë l¹i")
	Say("Xin Chµo <color=red>"..GetName().."<color>!\nTäa ®é hiÖn t¹i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nSè SHXT: <color=green>        "..GetTask(T_SonHaXaTac).."<color> m¶nh.\nHiÖn §ang Cã:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng­êi ch¬i trong game.\n", getn(tbSay), tbSay)
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function GmNhapTinBao()
--	tbAwardTemplet:GiveAwardByList({{szName="Phiªn Vò Hoµng Kim",tbProp={0,4367},nCount=1,nQuality=1},}, "test", 1);
	AskClientForString("nhapguitanso", "", 1, 200, "NhËp th«ng b¸o")
end

function nhapguitanso(strings)
	local szNews = format("<bclr=violet>Th«ng B¸o:<color=green>"..strings.."");
for i = 1, 5 do
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end 
end
function vitri_congthanh()
local tab_Content = {
		"Vµo Tï/goto_nha_tu",
		"L©m An/goto_lam_an",
		"BiÖn Kinh/goto_bien_kinh",		
		"Thµnh §«/goto_thanh_do",
		"T­¬ng D­¬ng/goto_tuong_duong",
		"Ph­îng T­êng/goto_phuong_tuong",
		"D­¬ng Ch©u/goto_duong_chau",
		"§¹i Lý/goto_dai_ly",
		"Ba L¨ng HuyÖn/goto_ba_lang",
		"§ua Ngùa/goto_dua_ngua",	
		"Tèng - Kim/goto_tong_kim",	
		"Loi dai/goto_loidai",
		"Lien dau/goto_liendau",
		"Tong -Kim/goto_tongkim",
		"NguyÖt Ca §¶o/goto_ca_dao",
		"KÕt thóc..!/No"
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
---------------------------------------------------------------------------------------------------
function goto_dua_ngua()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn?<color>", 
"Ba L¨ng HuyÖn 1x/xem_blh1",
"Ba L¨ng HuyÖn 2 /xem_blh2",
"VÜnh L¹c TrÊn 1 /xem_vlt1",
"VÜnh L¹c TrÊn 2 /xem_vlt2",
"Long M«n TrÊn 1 /xem_lmt1",
"Long M«n TrÊn 2 /xem_lmt2",
"Chu Tiªn TrÊn 1 /xem_ctt1",
"Chu Tiªn TrÊn 2 x /xem_ctt2",
"Trang tiÕp theo /xem_tt_n",
"KÕt thóc ®èi tho¹i /No", 
} 
CreateTaskSay(tbDialog) 
end
--------------------------------------------------------------------------------------
function xem_tt_n()
local tbDialog = { 
"<dec><npc>Di chuyÓn ®Õn täa ®é cÇn ®Õn<color>", 
"§¹o H­ng Th«n 1 /xem_dht1",
"§¹o H­ng Th«n 2 /xem_dht2",
"Long TuyÒn Th«n 1 /xem_ltt1",
"Long TuyÒn Th«n 2 x /xem_ltt2",
"Giang T©n Th«n 1 /xem_gtt1",
"Giang T©n Th«n 2 /xem_gtt2",
"Th¹ch Cæ TrÊn1 /xem_tct1",
"Th¹ch Cæ TrÊn1 /xem_tc2",
"KÕt thóc ®èi tho¹i /No", 
} 
CreateTaskSay(tbDialog) 
end
-----------------------------------------------------------------------------

-------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Show() 
AskClientForNumber("ShowRoom",1,1180,"NhËp Sè ID Ng­¬i Ch¬i") 
end 

function ShowRoom(num) 
local nNum = num + 100
	for i = num,nNum do 
		gmidx = PlayerIndex
		PlayerIndex = i
		TarName = GetName()
		nExp = GetExp()
		nCurLevel = 0
		if (TarName > "") then
		nCurLevel = GetLevel()
		end
		PlayerIndex = gmidx 
		Msg2Player("Sè ID: <color=green>"..i.."<color> - Tªn: <color=green>"..TarName.."<color> - CÊp: <color=green>"..nCurLevel.."<color> - Kinh NghiÖm: <color=green>"..nExp.."<color>"); 
	end 
end
-----------------------------------------------------------------Chän Chøc N¨ng GM------------------------------------------------------------------
function luachonid1() 
	AskClientForNumber("one",0,5000,"NhËp ID ng­êi ch¬i") 
end 

function one(num) 
	if ((num) > GetPlayerCount()) then 
		Msg2Player("Kh«ng cã nh©n vËt víi ID: <color=green>"..num.."<color> ®­îc chän !!"); 
	else 
		SetTaskTemp(200,num) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1) 
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		ObjAccount=GetAccount() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color>"); 
		local tbSay =  {}
		--tinsert(tbSay,"Thªm Vßng S¸ng Lùa Chän/ChonVongSangBuff")
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		tinsert(tbSay,"N©ng Kinh NghiÖm Nh©n VËt/KinhNghiem")
	--	tinsert(tbSay,"Add Danh HiÖu Fan Cøng/DanhHieuFanCung")
		tinsert(tbSay,"Thªm Kim Nguyªn B¶o/AddKNB")
		tinsert(tbSay,"ChuyÓn Kho¶n Kim Nguyªn B¶o/ChuyenKhoan")
	--	tinsert(tbSay,"ChuyÓn Kho¶n (Kh«ng KNB)/ChuyenKhoanKhongKNB")
		tinsert(tbSay,"Hç Trî Live Stream/HoTroTanThuMoi")
	--	tinsert(tbSay,"Hç Trî T©n Thñ Trïng Sinh 5/NhanHoTroTrungSinh3")
	--	tinsert(tbSay,"Add Vip ( Mçi NV chØ nªn add 1 lÇn )/AddDiemVip")
	--	tinsert(tbSay,"Xãa Th«ng Tin Vip/XoaDiemVip")
	--	tinsert(tbSay,"Fix Vßng S¸ng ChuyÓn Sinh /FixVongSangChuyenSinh")
	--	tinsert(tbSay,"Thªm Vßng S¸ng ChuyÓn Sinh /ThemVongSangChuyenSinh")
	--	tinsert(tbSay,"N©ng Lªn Danh HiÖu Vip 6/NangDanhHieu6")
--		tinsert(tbSay,"Hç Trî Reset Event VÒ 0/HoTroMocEvent0")
--tinsert(tbSay,"Hç Trî Reset Event VÒ 2k/HoTroMocEvent2k")
	--	tinsert(tbSay,"Hç Trî Reset Event VÒ 4k/HoTroMocEvent4k")
		--tinsert(tbSay,"Hæ Trî KNB/AddKNB")
	--	tinsert(tbSay,"Hæ trî tiÒn ®ång./bufskillsgm1")
	--	tinsert(tbSay,"Hæ trî tiÒn v¹n./themtienvan1")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
	--	tinsert(tbSay,"Add ®iÓm cho ng­êi ch¬i../kynang")
	--	tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/MoChucNang")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
		tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            
		Say("Tµi Kho¶n:<color=green> "..tk.."<color> - Nh©n VËt   :<color=green> "..ObjName.."<color>\nCÊp ®é   :<color=green> "..lev.."<color>           - Kinh nghiÖm: <color=green>"..xp.."%<color>\nMµu      :<color=green> "..cam.."<color>             - M«n ph¸i   :<color=green>"..fac.."<color>\nTiÒn V¹n :<color=green> "..(cash/10000).." v¹n<color> - TiÒn §ång  :<color=green>"..lif.." ®ång<color>\nVÞ trÝ   : <color=blue>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>", getn(tbSay), tbSay)
		Msg2Player("Ng­êi ch¬i <color=cyan>"..xinxi) 
	end 
end
-----------------------------------------------------------------------Tim Theo Ten Nhan Vat-----------------------------------------------------------------------------------------------------
function luachonid2() 
	AskClientForString("TenNhanVat", "", 0,5000,"Tªn Nh©n VËt") 
end 

function TenNhanVat(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+500 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetName()
		PlayerIndex=gmidx
--	if ((i)> GetPlayerCount()) then
--		Msg2Player("Nh©n vËt Nµy HiÖn Kh«ng Online Vui Lßng Quay L¹i Sau...!");  
--	else
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5991)
		nTransLife=ST_GetTransLifeCount()
		CaiLao=GetTask(5971)
		DiemPhucLoi=GetTask(5994)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		viemde=YDBZ_sdl_getTaskByte(1852,2)
		vuotai=1-GetTask(1550)
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		ObjAccount=GetAccount() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
	--	tinsert(tbSay,"Thªm Vßng S¸ng Lùa Chän/ChonVongSangBuff")
			tinsert(tbSay,"§­a Nh©n VËt Vµo Tï/DuaVaoTu")
	--		tinsert(tbSay,"§­a Nh©n VËt Lªn NguyÖt Ca §¶o/dualennguyetcadao")
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
		tinsert(tbSay,"N©ng Kinh NghiÖm Nh©n VËt/KinhNghiem")
	--		tinsert(tbSay,"Tru 100 trieu exp/thienhadenhatsua")
	tinsert(tbSay,"Buff Danh HiÖu VIP/buffvipaccount")
	--	tinsert(tbSay,"Buff Lµm Thªm NhiÖm Vô D· TÈu/HanhQuanLenh")
--		tinsert(tbSay,"Trång l¹i c©y T×nh Nh©n/DanhHieuFanCung")
		tinsert(tbSay,"Thªm Kim Nguyªn B¶o/AddKNB")
	tinsert(tbSay,"Trõ Kim Nguyªn B¶o Add NhÇm/LayKNB")
--	tinsert(tbSay,"Reset Server/pointkynang11")
--	tinsert(tbSay,"Trõ §iÓm TiÒm N¨ng/DanhHieuFanCung")
--		tinsert(tbSay,"Trõ §iÓm Kü N¨ng/DanhHieuFanCung2")
	tinsert(tbSay,"Xo¸ Pass R­¬ng/mokhoapassruong")

--	tinsert(tbSay,"Ph¸t Th­ëng Vâ L©m Minh Chñ/thuongvolamminhchu")
	--	tinsert(tbSay,"ChuyÓn Kho¶n (Kh«ng KNB)/ChuyenKhoanKhongKNB")
	--	tinsert(tbSay,"Hç Trî Live Stream/HoTroTanThuMoi")
		--tinsert(tbSay,"Hç Trî T©n Thñ Trïng Sinh 5/NhanHoTroTrungSinh3")
	--	tinsert(tbSay,"Add Vip ( Mçi NV chØ nªn add 1 lÇn )/AddDiemVip")
	--	tinsert(tbSay,"Xãa Th«ng Tin Vip/XoaDiemVip")
	--	tinsert(tbSay,"Fix Vßng S¸ng ChuyÓn Sinh /FixVongSangChuyenSinh")
	--	tinsert(tbSay,"Thªm Vßng S¸ng ChuyÓn Sinh /ThemVongSangChuyenSinh")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
--		tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/MoChucNang")
		--tinsert(tbSay,"Top 1 tèng kim./top1tongkim")
	--	tinsert(tbSay,"Top 2 tèng kim./top2tongkim")
	--	tinsert(tbSay,"Top 3 tèng kim./top3tongkim")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
		--tinsert(tbSay,"Qu¶n Lý Chøc N¨ng Kh¸c./AddKNB_FullHD")
		tinsert(tbSay,"Tho¸t./no")
	--	tinsert(tbSay,"Trë l¹i.")            
		Say("<color=green>Tµi Kho¶n: "..tk.." - Nh©n VËt: "..ObjName.."\nCÊp ®é: "..lev.." - Kinh nghiÖm: "..xp.."\nMµu: "..cam.." - M«n ph¸i: "..fac.."\nNg©n L­îng: "..(cash/10000).." v¹n - Kim Nguyªn B¶o: "..lif.." Viªn\nVÞ trÝ: "..w..","..x..","..y.." - TiÒn §ång: "..nTienDong.." Xu\n - Trïng Sinh: "..nTransLife.."/"..CaiLao.." LÇn\n §iÓm Tèng Kim: "..pr.." §iÓm - IP : <color=yellow>"..GetIP().."<color> ", getn(tbSay), tbSay)
		return end
--	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy nh©n vËt tªn <color=green>"..nNameChar.."<color>"); 
	end
end
function top1tongkim()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
local Index = AddItem(4,1326,1,1,0,0) SyncItem(Index)
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end

function top2tongkim()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
tbAwardTemplet:GiveAwardByList({{szName="B«n Tiªu",tbProp={0,10,6,10,0,0,0},nCount=1,nExpiredTime=1*22*60},}, "test", 1);
PlayerFunLib:AddSkillState(1644,20,3,18*60*60*22*1,1)
PlayerFunLib:AddSkillState(1663,20,3,18*60*60*22*1,1)
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end
function top3tongkim()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1645,20,3,18*60*60*23*1,1)
PlayerFunLib:AddSkillState(1662,20,3,18*60*60*23*1,1)
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end
-----------------------------------------------------------------------Tim Theo Ten Tai Khoan------------------------------------------------------------------------------------------------------------------------
function luachonid3() 
	AskClientForString("TenTaiKhoan", "", 0,5000,"Tªn Tµi Kho¶n") 
end 

function TenTaiKhoan(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+500 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetAccount()
		PlayerIndex=gmidx
--	if ((i)> GetPlayerCount()) then
	--	Msg2Player("Nh©n vËt Nµy HiÖn Kh«ng Online Vui Lßng Quay L¹i Sau...!");  
--	else
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5991)
		nTransLife=ST_GetTransLifeCount()
		CaiLao=GetTask(5971)
		DiemPhucLoi=GetTask(5994)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		ObjAccount=GetAccount() 
		PlayerIndex=gmidx 
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		Msg2Player(GetTask(1550))
		local tbSay =  {}
	--	tinsert(tbSay,"Thªm Vßng S¸ng Lùa Chän/ChonVongSangBuff")
		tinsert(tbSay,"§­a Nh©n VËt Vµo Tï/DuaVaoTu")
		--tinsert(tbSay,"§­a Nh©n VËt Lªn NguyÖt Ca §¶o/dualennguyetcadao")
		tinsert(tbSay,"N©ng Kinh NghiÖm Nh©n VËt/KinhNghiem")
		tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDo")
	--	tinsert(tbSay,"Tru 100 trieu exp/thienhadenhatsua")
	--	tinsert(tbSay,"Reset Server/pointkynang11")
	--	tinsert(tbSay,"xoa skill/xoaskill")
		tinsert(tbSay,"Buff Danh HiÖu VIP/buffvipaccount")
--		tinsert(tbSay,"Buff Lµm Thªm NhiÖm Vô D· TÈu/HanhQuanLenh")
		tinsert(tbSay,"Thªm Kim Nguyªn B¶o/AddKNB")
		tinsert(tbSay,"Trõ Kim Nguyªn B¶o Add NhÇm/LayKNB")
		tinsert(tbSay,"Xo¸ Pass R­¬ng/mokhoapassruong")
	--	tinsert(tbSay,"Trång l¹i c©y T×nh Nh©n/DanhHieuFanCung")
	--	tinsert(tbSay,"Trõ §iÓm Kü N¨ng/DanhHieuFanCung2")
	--	tinsert(tbSay,"Buff Thiªn H¹ §Ö NhÊt Sña/thienhadenhatsua")
	--	tinsert(tbSay,"Chøc N¨ng ChuyÓn Kho¶n/ChuyenKhoan")
		--tinsert(tbSay,"ChuyÓn Kho¶n (Kh«ng KNB)/ChuyenKhoanKhongKNB")
	--	tinsert(tbSay,"Hç Trî Live Stream/HoTroTanThuMoi")
	--	tinsert(tbSay,"Buff Accc AD/HoTroTanThuMoi2")
	--	tinsert(tbSay,"Ph¸t Tói Tèng Kim/HoTroTuiTongKim")
	--	tinsert(tbSay,"Ph¸t Th­ëng Vâ L©m Minh Chñ/thuongvolamminhchu")
	--	tinsert(tbSay,"Test Full Acc/NhanHoTroTrungSinh3")
	if GetAccount()=="skendy" then
		tinsert(tbSay,"Add Vip ( Mçi NV chØ nªn add 1 lÇn )/AddDiemVip")
	--	tinsert(tbSay,"Add 3000 Xu/addtiendong")
		
	end
	--	tinsert(tbSay,"Xãa Th«ng Tin Vip/XoaDiemVip")
	--	tinsert(tbSay,"NhËn Vßng S¸ng/DanhHieuBuff")
	---	tinsert(tbSay,"Fix Vßng S¸ng ChuyÓn Sinh /FixVongSangChuyenSinh")
		--tinsert(tbSay,"Thªm Vßng S¸ng ChuyÓn Sinh /ThemVongSangChuyenSinh")
		tinsert(tbSay,"Di chuyÓn nh©n vËt vÒ BLH./move")
	--	tinsert(tbSay,"Add ®iÓm cho ng­êi ch¬i../buffpoint")
	--	tinsert(tbSay,"Më Chøc N¨ng Hç Trî Ng­êi Ch¬i/pointkynang11")
		--tinsert(tbSay,"Top 1 tèng kim./top1tongkim")
	---	tinsert(tbSay,"Top 2 tèng kim./top2tongkim")
	--	tinsert(tbSay,"Top 3 tèng kim./top3tongkim")
		tinsert(tbSay,"KÝch nh©n vËt./kicknv")
		tinsert(tbSay,"CÊm Ch¸t./camchat")
		tinsert(tbSay,"Më Ch¸t./mochat")
	--	tinsert(tbSay,"Qu¶n Lý Chøc N¨ng Kh¸c./AddKNB_FullHD")
		tinsert(tbSay,"Tho¸t./no")
		--tinsert(tbSay,"Trë l¹i.")            
		Say("<color=green>Tµi Kho¶n: "..tk.." - Nh©n VËt: "..ObjName.."\nCÊp ®é: "..lev.." - Kinh nghiÖm: "..xp.."\nMµu: "..cam.." - M«n ph¸i: "..fac.."\nNg©n L­îng: "..(cash/10000).." v¹n - Kim Nguyªn B¶o: "..lif.." Viªn\nVÞ trÝ: "..w..","..x..","..y.." - TiÒn §ång1: "..nTienDong.." Xu\n - Trïng Sinh: "..nTransLife.."/"..CaiLao.." LÇn\n §iÓm Tèng Kim: "..pr.." §iÓm - IP : <color=yellow>"..GetIP().."<color> ", getn(tbSay), tbSay)
		return end
	--end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy tµi kho¶n: <color=green>"..nNameChar.."<color>"); 
	end
end --------------------------0-LÊt TiÒn V¹n--------------------------------------------
Include("\\script\\missions\\yandibaozang\\include.lua")
function buffvipaccount()
	local tbSay = 
{
"VIP 6/#buffvipaccount_ok(1694,1700)",
"VIP 7/#buffvipaccount_ok(1695,1701)",
"VIP 8/#buffvipaccount_ok(1696,1702)",
"VIP 9/#buffvipaccount_ok(1697,1703)",
"VIP 10/#buffvipaccount_ok(1698,1704)",
"§¹i Gia/#buffvipaccount_ok(1699,1705)",
"Phó ¤ng/#buffvipaccount_ok(1706,1707)",
"Xo¸ TÊt C¶ Danh HiÖu/#xoaskill()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("Chän chøc n¨ng nµo?",getn(tbSay),tbSay)
--	return 1;
--tbAwardTemplet:GiveAwardByList({{szName="Lenh Bai",tbProp={6,1,4402,1,1},nCount=1,nExpiredTime=20*24*60},}, "test", 1);
end
function buffvipaccount_ok(id1,id2)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
for i=1694,1707 do
	RemoveSkillState(i,30,3,559872000,1) 
end
PlayerFunLib:AddSkillState(id1,20,3,18*60*60*24*300,1)
PlayerFunLib:AddSkillState(id2,20,3,18*60*60*24*300,1)

Msg2Player("B¹n ®· ®­îc ADMIN §Ñp Trai ph¸t th­ëng VIP"); 
PlayerIndex=gmidx 
Msg2Player("§· add thµnh c«ng"); 
end
function xoaskill()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
-- RemoveSkillState(980,20,3,559872000,1) 
-- RemoveSkillState(966,20,3,559872000,1) 
for i=1694,1707 do
	RemoveSkillState(i,30,3,559872000,1) 
end
-- AddMagic(325,10)
--Msg2Player("B¹n ®· ®­îc ADMIN §Ñp Trai phong cho danh hiÖu Thiªn h¹ §Ö NhÊt Sña"); 
PlayerIndex=gmidx 
Msg2Player("§· xoa thµnh c«ng"); 
end

function thienhadenhatsua()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
ReduceOwnExp(100000000)
PlayerIndex=gmidx 
Msg2Player("§· add thµnh c«ng"); 
end
function thuongvolamminhchu()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1673,20,3,18*60*60*24*30,1)
PlayerFunLib:AddSkillState(1665,20,3,18*60*60*24*30,1)

Msg2Player("B¹n ®· ®­îc ADMIN §Ñp Trai ph¸t th­ëng Vâ L©m Minh Chñ"); 
PlayerIndex=gmidx 
Msg2Player("§· add thµnh c«ng"); 
end
function mokhoapassruong()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
ResetBox:ConfirmResetBox()
Msg2Player("B¹n ®· ®­îc ADMIN §Ñp Trai xo¸ pass r­¬ng"); 
PlayerIndex=gmidx 
Msg2Player("§· më kho¸ thµnh c«ng"); 
end
function addtiendong()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
for i=1,6 do
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1},nCount=500}}, "test", 1);
end
PlayerIndex=gmidx 
--Msg2Player("NhËn §iÓm Kü N¨ng"); 
end

function HoTroTuiTongKim()

AskClientForNumber("HoTroTuiTongKim_ok",0,100000,"NhËp Sè L­îng:") 
end
function HoTroTuiTongKim_ok(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
tbAwardTemplet:GiveAwardByList({{szName = "Tói tÝch lòy Tèng Kim",tbProp={6,1,4361,1,1},nCount=num,nExpiredTime=1*24*60,nBindState = -2}}, "test", 1);
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end

--------------------------------------------
function HanhQuanLenh()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(2420,0)
SetBitTask(5800, 0, 8,  0);
Msg2Player("B¹n ®­îc lµm thªm 40 nhiÖm vô d· tÈu n÷a.")
PlayerIndex=gmidx 
Msg2Player("§· Buff Thµnh C«ng.")
end
function HanhQuanLenh_d(num)

end


--------------------------0-LÊt TiÒn V¹n--------------------------------------------
function pointkynang11()
AskClientForNumber("pointkynang12",0,100000,"NhËp Sè L­îng:") 
end;
function pointkynang12(nNum)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
-- AddProp(nNum)
 DelMagic(num,20)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Kü N¨ng...!<color>")
PlayerIndex=gmidx 
Msg2Player("NhËn §iÓm Kü N¨ng"); 
end
function ChonVongSangBuff0()
AskClientForNumber("ChonVongSang_d",1,10000,"NhËp Sè Ngµy Muèn LÊy") 
end


---------------------------LÊt TiÒn V¹n--------------------------------------------
function vlmc12()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 188 ---- ID Danh hiÖu
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("NhËn Vßng S¸ng Vâ L©m Minh Chñ  Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("NhËn Vßng S¸ng Vâ L©m Minh Chñ  Thµnh C«ng"); 
end

function HoTroMocEvent0()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(HOAPHUONGTRANG,0)
SetTask(NHANTHUONGMOC,0)
Msg2Player(""..GetTask(HOAPHUONGTRANG).."");
Msg2Player(""..GetTask(NHANTHUONGMOC).."");
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
end
function HoTroMocEvent2k()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(HOAPHUONGTRANG,2000)
SetTask(NHANTHUONGMOC,0)
Msg2Player(""..GetTask(HOAPHUONGTRANG).."");
Msg2Player(""..GetTask(NHANTHUONGMOC).."");
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
end
function HoTroMocEvent4k()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(HOAPHUONGTRANG,4000)
SetTask(NHANTHUONGMOC,1)
Msg2Player(""..GetTask(HOAPHUONGTRANG).."");
Msg2Player(""..GetTask(NHANTHUONGMOC).."");
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
PlayerIndex=gmidx 
Msg2Player("Hç Trî Reset Mèc Event Thµnh C«ng"); 
end
function themtienvan1() 
AskClientForNumber("themtienvan",0,999999999,"NhËp sè tiÒn cÇn chuyÓn") 
end 
function themtienvan(num) 
nNum = num/999999999 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..nNum.."<color> V¹n L­îng Thµnh C«ng")
Earn(num) 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Trao TÆng <color=metal>"..nNum.."<color> V¹n L­îng Thµnh C«ng"); 
end
-----------------------LÊy KNB---------------------------------------
function AddKNB11() 
AskClientForNumber("buffknbgm",0,5000,"Sã L­îng KNB") 
end 
function buffknbgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng");
AddExtPoint(1,num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Trao TÆng <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
end;
---------------------------LÊy TiÒn §ång---------------------------------------------------
function LayTienDOngtest()
	if (CalcEquiproomItemCount(4,417,1,-1)>=50000) then
		Talk(1, "", "TiÒn ®ång trong tói ng­¬i dïng ch­a hÕt th× lÊy lµm g× cho nhiÒu.")
	else
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		AddStackItem(500,4,417,1,1,0,0,0)	-- nhan 100 tien dong
		Msg2Player("NhËn ®­îc 5000 tiÒn ®ång.");
	end
end;
----------------------------T¨ng §iÓm------------------------------------------------------------
function buffpoint() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· T¨ng §iÓm Theo Yªu CÇu"); 


PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM T¨ng §iÓm Theo Yªu CÇu Thµnh C«ng"); 
end; 
--------------------------------------------------dua vao tu---------------------------------------
function DuaVaoTu()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· §­a B¹n Vµo Tï"); 

NewWorld(968,1586,3172)
SetTask(3907,1)
SetFightState(0)
	DisabledUseTownP(0);
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM §­a vµo Tï Thµnh C«ng"); 
Msg2SubWorld("Nh©n vËt <color=green>"..ObjName.."<color> Vi Ph¹m Néi Qui. BÞ GM Cho ¡n C¬m Tï FREE.")
end; 

function dualennguyetcadao()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 

NewWorld(968,1574,3174)
SetFightState(0)
	DisabledUseTownP(0);
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM §­a vµo Tï Thµnh C«ng"); 
end
-----------------------------------------------------------------------------------------
function KinhNghiem() 
AskClientForNumber("KinhNghiem_ok",1,100000000,"NhËp Kinh NghiÖm") 
end 
function KinhNghiem_ok(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· §iÒu ChØnh <color=metal>"..num.."<color> Kinh NghiÖm Cho B¹n"); 
tbAwardTemplet:GiveAwardByList({{nExp_tl = num}}, "test", 1);
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §îc GM T¨ng <color=metal>"..num.."<color> Kinh NghiÖm Thµnh C«ng"); 
end; 
function CapDo() 
AskClientForNumber("Level",0,200,"NhËp CÊp §é") 
end 
function Level(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· §iÒu ChØnh <color=metal>"..num.."<color> CÊp §é Cho B¹n"); 
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp §é") 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §îc GM T¨ng <color=metal>"..num.."<color> CÊp §é Thµnh C«ng"); 
end; 
--------------------------VÒ Ba L¨ng HuyÖn-------------------------------------------------
function move() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
w,x,y=GetWorldPos() 
if (w~=53) then 
SetFightState(0) 
NewWorld(53,200*8,200*16) 
SetTask(3907,0)
SetCreateTeam(1)
else 
SetPos(1630, 3255) 
SetTask(3907,0)
SetCreateTeam(1)
end 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Di ChuyÓn B¹n VÒ Ba L¨ng HuyÖn"); 
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> ®­îc GM Di ChuyÓn VÒ Ba L¨ng HuyÖn Thµnh C«ng"); 
end 
--------------------------------------------------------------------
function kicknv() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· KÝch Nh©n VËt Chèng KÑt Acc Thµnh C«ng"); 
IsDisabledTeam()
SetCreateTeam(1)
DisabledUseTownP(0)
KickOutSelf() 

--UseTownPortal(1)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM KÝch kÑt Tµi Kho¶n Thµnh C«ng"); 
end; 
---------------------------Më Chøc N¨ng Cho Ng­êi Ch¬i Kh¸c---------------------------------
function MoChucNang() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)  
ChucNangGM()
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· Trao QuyÒn H¹n Cho B¹n H·y Lùa Chän Chøc N¨ng"); 
end;
------------------------------------------------------------------------------
function camchat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(1) 
Msg2Player("B¹n bÞ khãa Ch¸t trªn mäi tÇn sè") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=red> "..ObjName.."<color> §· BÞ CÊm Chat Trªn Mäi TÇn Sè !",1) 
end 
----------------------------------------------------------------------------------
function mochat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(0) 
SetAutoHangMapFlag(0)
Msg2Player("B¹n ®­îc më khãa Ch¸t trªn mäi tÇn sè ok") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh©n VËt:<color=green> "..ObjName.."<color> §­îc Më Chat Trªn Mäi TÇn Sè !",1)  
end
-------------------------------LÊy Täa §é-----------------------------------------
function toado1() 
local w,x,y = GetWorldPos(); 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..x..", "..y) 
Msg2Player("M¸p sè <color=Green>"..w.."<color> täa ®é <color=Yellow>"..floor(x/32)..", "..floor(y/32)) 
end
--------------------------------------------Ch¸t Admin----------------------------------------------------------------------
function Admin()
AskClientForString("MsgGlbByAM","",1,9999999,"AM:Mêi nhËp néi dung!")
end

function MsgGlbByAM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbAM_Input","NhËp néi dung.!!")
return
end
local MapId
if (zVar == "reset") then
for i=1,GetPlayerCount() do
PlayerIndex = i
MapId,_,_ = GetWorldPos()
if (MapId > 0) then
KickOutSelf()
end
end
end
for i=1,3 do
Msg2SubWorld("<bclr=white>ADMIN: <bclr><color=violet>"..zVar.."")
end
AddGlobalCountNews(" ADMIN Xin Th«ng B¸o §Õn C¸c Nh©n SÜ <bclr=blue>Vâ L©m TruyÒn Kú H·y L¾ng Nghe Th«ng B¸o Víi Néi Dung Nh­ Sau: "..zVar.."<bclr>")
end
---------------------------------------------Ch¸t GM-----------------------------------------------------------
function Gm()
AskClientForString("MsgGlbByGM","",1,9999999,"GM:Mêi nhËp néi dung!")
end
function MsgGlbByGM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbGM_Input","NhËp néi dung.!!")
return
end
local MapId
if (zVar == "reset") then
for i=1,GetPlayerCount() do
PlayerIndex = i
MapId,_,_ = GetWorldPos()
if (MapId > 0) then
KickOutSelf()
end
end
end
for i=1,3 do
Msg2SubWorld("<bclr=white>ADMIN: <bclr><color=violet>"..zVar.."")
end
AddGlobalCountNews("ADMIN Xin Th«ng B¸o §Õn C¸c Nh©n SÜ <bclr=blue>Vâ L©m TruyÒn Kú H·y L¾ng Nghe Th«ng B¸o Víi Néi Dung Nh­ Sau: "..zVar.."<bclr>")
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------
function XemTrangThai()
local partnerindex, partnerstate = PARTNER_GetCurPartner()
if partnerstate == 1 then
Say("§ång Hµnh Cña C¸c H¹ §ang Trong Tr¹ng Th¸i XuÊt ChiÕn",2,"Muèn Thu Håi/ThuHoi","Hñy Bá")
else
Say("§ång Hµnh Cña C¸c H¹ §ang Trong Tr¹ng Th¸i NghØ Ng¬i",2,"Muèn XuÊt ChiÕn/XuatChien","Hñy Bá")
end
end

function ThuHoi()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(0)
	else
		Talk(1,"","C¸c H¹ §· Ch­a Cã Thó C­ng Kh«ng ThÓ Thu Håi...!")
	end
end

function XuatChien()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(1)
	else
		Talk(1,"","C¸c H¹ §· Ch­a Cã Thó C­ng Kh«ng ThÓ XuÊt ChiÕn Ra...!")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function diemexp()
local tbSay = {}
	tinsert(tbSay,"§iÒu ChØnh CÊp §é/CapDoNV")
	tinsert(tbSay,"N©ng Kinh NghiÖm/kinhnghiem")
	tinsert(tbSay,"N©ng CÊp 200/Up_Level")
	tinsert(tbSay,"Tho¸t/no")
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y cÊp ®é mµ b¹n muèn !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function CapDoNV()
AskClientForNumber("level",1,200,"NhËp CÊp §é:") 
end
function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp ®é.") 
end

function kinhnghiem()
AskClientForNumber("kinhnghiem1",0,9999999999999999,"NhËp EXP") 
end
function kinhnghiem1(nNum)
tl_addPlayerExp(nNum)
Add120SkillExp(nNum)
Clear120SkillExpLimit ()
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..nNum.."<color> kinh nghiÖm.") 
end

function Up_Level()
local nCureLevel = GetLevel()
	if (nCureLevel < 200) then
		Say("C¸c H¹ Cã Muèn N©ng CÊp Kh«ng",2,"Ta Muèn N©ng CÊp/Up_Level_200","Hñy Bá/No")
	else
		Say("§· §¹t CÊp 200",2,"TiÕp Tôc ChuyÓn Sinh/TrungSinh","Hñy Bá/No")
	end
end
function Up_Level_200()
local nCureLevel = GetLevel()
local nAddLevel = 200 - nCureLevel
ST_LevelUp(nAddLevel)
Up_Level()
end

function TrungSinh()
local nTransLife = ST_GetTransLifeCount()
	if (nTransLife < 5) then
		ST_DoTransLife()
	else
		Talk(1,"","<color=yellow>Giíi H¹n Trïng Sinh 6 VÉn Ch­a Më")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function hotro()
	local tab_Content = {
		"Vßng s¸ng danh hiÖu/DanhHieu",
		--"NhËn KNB/knb",
	--	"LÊy TiÒn §ång/tiendong",
		"LÊy Ng©n L­îng/tienvan",
		"Danh väng - Phóc duyªn/DVPD",
		"Tµi L·nh §¹o/lanhdao",
		"§iÓm Cèng HiÕn/conghien",
		"§iÓm Tèng Kim/TongKim",
		"KiÕn ThiÕt LÔ Bao/kienthiet",
		"NhËn LB Gäi Boss HKMP/bosshk",
		"§iÓm Thuéc TÝnh/ThuocTinh",
		"TÈy §iÓm/clear_attibute_point",
		"Th«i./no",
		"Trë l¹i"
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
end

function CallBossad()
	local tbOpt = {
		{"Gäi Boss §«ng Ph­¬ng BÊt B¹i",BossDongPhuong},
		{"Gäi Boss KiÕm Tiªn Lý B¹ch",BossLyBach},
		{"Gäi Boss C«n L«n Tam Th¸nh",BossTamThanh},
		{"Gäi Boss §«ng Ph­¬ng BÊt B¹i(3lh)",BossDongPhuong_Random},
		{"Gäi Boss KiÕm Tiªn Lý B¹ch(3lh)",ConLonTamThanh_Random},
		{"Gäi Boss C«n L«n Tam Th¸nh(3lh))",KiemTienLyBach_Random},
		{"Siªu HuyÒn Gi¸c §¹i S­",HuyenGiac_Random},
		{"KÕt Thóc §èi Tho¹i",},
	}
	CreateNewSayEx("Xin Chµo Admin "..GetName().." H·y Lùa Boss Muèn Gäi Ra", tbOpt)
end
------------------------------NhËn Kim Nguyªn B¶o----------------------------------------------------------------------------------------------------------------------------------------
function knb()
AskClientForNumber("layknb",0,600,"NhËp Sè L­îng:") 
end
function layknb(slknb)
for i=1, slknb do
AddEventItem(343)
end
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhan "..slknb.." KNB\n");
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..slknb.." <color>KNB.")
end
-------------------------------NhËn TiÒn §ång----------------------------------------------------------
function tiendong()
AskClientForNumber("tiendong1",0,2000,"NhËp Sè L­îng:") 
end;
function tiendong1(sltiendong)
for i = 1, sltiendong do
AddStackItem(1,4,417,1,1,0,0,0)
end
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhan "..sltiendong.." Xu\n");
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..sltiendong.." <color>tiÒn ®ång.")
end
---------------------------------NhËn Ng©n L­îng------------------------------------------------------------------------
function tienvan()
AskClientForNumber("nhantienvan",0,999999999,"Xin NhËp Sè L­îng")
end
function nhantienvan(num)
Earn(num,999999999)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=metal>"..num.."<color> Ng©n L­îng Thµnh C«ng");
end
-------------------NhËn Phóc Duyªn - Danh Väng----------------------------------------------------------
function DVPD()
local tab_Content =
{
"NhËn Danh Väng/danhvong",
"NhËn Phóc Duyªn/phucduyen",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y Chän Chøc N¨ng", getn(tab_Content), tab_Content)
end
----------------------------NhËn Danh Väng------------------------------------------------------------------------------------
function danhvong()
AskClientForNumber("danhvongINPUT",0,1000000,"NhËp Sè L­îng:") 
end
function danhvongINPUT(nNum)
AddRepute(nNum);
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Danh Väng...!<color>")
end
----------------------------NhËn Phóc Duyªn----------------------------------------------------------------------------------
function phucduyen()
AskClientForNumber("phucduyenINPUT",0,1000000,"NhËp Sè L­îng:") 
end
function phucduyenINPUT(nNum)
FuYuan_Start();
FuYuan_Add(nNum);
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Phóc Duyªn...!<color>")
end
------------------------------Tµi L·nh §¹o----------------------------------------------------------------------------------------------
function lanhdao()
AskClientForNumber("tailanhdao",0,20000000,"NhËp Sè L­îng:") 
end;
function tailanhdao(nNum)
AddLeadExp(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Tµi L·nh §¹o...!<color>")
end
------------------------------Cèng HiÕn---------------------------------------------------------------------------------
function conghien()
AskClientForNumber("diemconghien",0,100000000,"NhËp Sè L­îng:") 
end;
function diemconghien(nNum)
AddContribution(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Cèng HiÕn...!<color>")
end
------------------------------------§iÓm Tèng Kim----------------------------------------------------------------------------------------
function TongKim()
PlayerPoint = 747
	AskClientForNumber("DiemTongKim",0,1000000000,"NhËp Sè L­îng:")
end
function DiemTongKim(nNum)
SetTask(PlayerPoint,nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Tèng Kim...!<color>")
end
--------------------------------KiÕn ThiÕt-----------------------------------------------------------------------------------
function kienthiet()
local tbItem = {
	{szName="KiÕn ThiÕt LÔ Bao", tbProp={6,1,30217,1,0,0},nCount = 10},
	{szName="ChiÕn BÞ LÔ Bao", tbProp={6,1,30219,1,0,0},nCount = 10},
}
tbAwardTemplet:GiveAwardByList(tbItem, "PhÇn Th­ëng");
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc KiÕn ThiÕt LÔ Bao...!<color>")
end

----------------------------§iÓm Thuéc TÝnh--------------------------------------------------------------------------------------------------
function ThuocTinh()
local tab_Content =
{
"§iÓm Kü N¨ng/pointkynang",
"§iÓm TiÒm N¨ng/pointtiemnang",
"Trë L¹i/hotro",
"Th«i/no",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y Chän Chøc N¨ng", getn(tab_Content), tab_Content)
end
-----------------------------Point Kü N¨ng---------------------------------------------------------------------------------
function pointkynang()
AskClientForNumber("pointkynang1",0,100000,"NhËp Sè L­îng:") 
end;
function pointkynang1(nNum)
AddMagicPoint(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm Kü N¨ng...!<color>")
end
---------------------------Point TiÒm N¨ng-------------------------------------------------------------------------------
function pointtiemnang()
AskClientForNumber("pointtiemnang1",0,10000,"NhËp Sè L­îng:") 
end;
function pointtiemnang1(nNum)
AddProp(nNum)
Msg2Player("<color=yellow>Chóc Mõng "..myplayersex().." NhËn §­îc "..nNum.." §iÓm TiÒm N¨ng...!<color>")
end
---------------------------------TÈy §iÓm Thuéc TÝnh---------------------------------------------------------------------------------------
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

------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"Hç Trî ChiÕn §Êu/GMSkill")
tinsert(tbSay,"GM Èn Th©n.../GManthan")
tinsert(tbSay,"GM HiÖn Th©n.../XoaSkillGM")
tinsert(tbSay,"ChÝnh Ph¸i./mauvang")
tinsert(tbSay,"Tµ Ph¸i./mautim")
tinsert(tbSay,"Trung LËp./mauxanh")
tinsert(tbSay,"S¸t Thñ./maudo")
tinsert(tbSay,"Nh©n VËt Ch÷ Tr¾ng./mautrang")
tinsert(tbSay,"ChiÕn §Êu/ChienDau")
tinsert(tbSay,"Phi ChiÕn §Êu/PhiChienDau")
tinsert(tbSay,"Admin./mauadmin")
tinsert(tbSay,"Tho¸t/no")
tinsert(tbSay,"Trë l¹i")
Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän tr¹ng th¸i mµ b¹n muèn !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------
--function GMSkill()
--AddMagic(1003,20)
--AddMagic(1310,20)
--end

function GManthan()
AddMagic(732,20)
AddMagic(733,20)
Msg2Player("<color=pink>Chóc Mõng B¹n §· Häc §­îc Skill GM...")
end

function XoaSkillGM()
DelMagic(732,20)
DelMagic(733,20)
DelMagic(1003.20)
DelMagic(1310.20)
Msg2Player("B¹n §· Xãa Kü N¨ng GM Thµnh C«ng")
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn thËn trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end--for
	Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
	Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!");	
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangDanhHieu6() 

tbAwardVip6 = {
	{szName="B¶o R­¬ng Minh Ph­îng H¹ng Liªn",tbProp={6,1,4480,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Kh«i",tbProp={6,1,4481,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Th­îng Giíi",tbProp={6,1,4482,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Hé UyÓn",tbProp={6,1,4483,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,4484,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Kh¶i",tbProp={6,1,4485,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Vò KhÝ",tbProp={6,1,4486,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Hµi",tbProp={6,1,4487,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng Béi",tbProp={6,1,4488,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nBindState = -2},
	{szName="B¶o R­¬ng Minh Ph­îng H¹ Giíi",tbProp={6,1,4489,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
}

gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
local FreeCell = CalcFreeItemCellCount()
if (FreeCell >= 20) and (GetExtPoint(3)<6)then
	PlayerFunLib:AddSkillState(1507,20,3,559872000,1)
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Danh HiÖu Vip 6 Thµnh C«ng");
	tbAwardTemplet:GiveAwardByList(tbAwardVip6,"PhÇn Th­ëng §¹t M«c 1.500.000 Ngµn")
	AddExtPoint(2,1200-GetExtPoint(2));
  AddExtPoint(3,6-GetExtPoint(3)) ;
else
PlayerIndex=gmidx 
Talk(1,"","<bclr=violet>"..myplayersex().." H·y nãi game thñ ®Ó trèng 20 ¤,hoÆc ®· lµ Vip 6 ")
end
PlayerIndex=gmidx 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Danh HiÖu Vip 6 Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------------

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

-----------------------------------------------------------------------------------------------------------------------------------
function DellVip() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Xãa §iÓm Vip Thµnh C«ng");
SetTask(5991,0)
SetTask(5990,0)
for i = 1502,1511 do
RemoveSkillState(i,20,3,559872000,1)
end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Xãa §iÓm Vip Thµnh C«ng"); 
end;

--------------------------------------------------------ReLoadFile---------------------------------------
function NhapDuongDanFileCanReLoadOK(Link)
        local ReloadScript = LoadScript(Link);
        if (FALSE(ReloadScript )) then
            Msg2Player("XuÊt hiÖn lçi hoÆc sai ®­êng dÉn, kh«ng thÓ Reload file!<enter><color=green>"..Link.."");
        else
            Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=green>"..Link.."");
        end
end

function Reloadfile()
    return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>NhËp ®­êng dÉn")
end  
---------------------------------------------------------------------------------------------------------------------------------------------

function FALSE(value)
	if (value == 0 or value == nil or value == "") then
		return 1
	else
		return nil
	end
end

----------------------------------------------------------------------------------------------------

----------------------------------------------------------


function LayDoTheoID()			
local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
local tbOpt = 
{
{"LÊy §å Hoµng Kim (-1)",LayMenuHKMP},
{"LÊy §å Queskey (ID)",LayMenuQueskey},
{"LÊy §å Magic (ID)",LayMenuMagic},
{"LÊy Ngùa (ID)",LayMenuNgua},
{"LÊy MÆt N¹ (ID)",LayMenuMatNa},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end






function ChucNangQuanLyGM()
tbGmRole:GMC_Menu()

end

function ReLoadScript()
	local szTitle = "NhËn ®­êng link:<color=red> Yªu cÇu chÝnh x¸c<color>"
	local tbOpt = 
	{
		{"NhËp ®­êng dÉn",NhapDuongDanFileCanReLoad},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
--------------------------------- RELOAD SCRIPT NPC TU LENH BAI ADMINISTRATOR ------------------------------------
--------------------------------- THU CONG DUONG DAN CAN RELOAD FILE ---------------------------------
function NhapDuongDanFileCanReLoadOK(Link)
		local ReloadScript = LoadScript(Link);
		if (FALSE(ReloadScript )) then
			Msg2Player("XuÊt hiÖn lçi, kh«ng thÓ Reload!<enter><color=yellow>"..Link.."");
		else
			Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=blue>"..Link.."");
		end
end

function NhapDuongDanFileCanReLoad()
	return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>NhËp ®­êng dÉn")
end
function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end



---------------------------------------------------------------------------------