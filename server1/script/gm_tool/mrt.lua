------------------------***Create*By*Heart*Doldly***----------------------------------
Include("\\script\\chucnang_adm\\include.lua")
Include("\\script\\gmscript.lua")
function myplayersex()
    if GetSex() == 1 then
        return "N� Hi�p"
    else
        return "��i Hi�p"
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
        return Msg2Player("<color=yellow>B�n kh�ng ph�i GM h� th�ng t� ��ng h�y b� v�t ph�m!")
    end
    return 1
end
function teamhotro()
    local szTitle = "Xin ch�o <color=red>" .. GetName() .. "<color>,Nh�ng ch�c n�ng b�n d��i c� th� h� tr� b�n."
    local tbOpt = {
        -- { "Nh�n V�t Ph�m", NhanVatPham },
        -- { "Nh�n C�p ��", capdo },

        -- { "Nguy�n Li�u Ch� T�o �� T�m", epdotim },
    -- { "Nh�n �� Xanh", laydoxanh },
        -- { "Thi�n S�n Tuy�t Li�n Mu", ThienSonTuyetLienMu },
        -- { "C�ng �i�m nhanh", add_prop },
        -- { "Nh�n thu�c.", getthuoclac },
        -- { "Nh�n Th�y Tinh.", ThuyTinh },
        { "H�y v�t ph�m", DisposeItem },
        { "Tho�t" },
                                                                                                        -- { "Nh�n Trang B�", TrangBi },                        
                                                                                                         -- { "Nh�n Reset 150.", nhancailao },                       
                                                                                                         -- { "Nh�n Event.", getEvent },                     
                                                                                                         -- { "Nh�n Point", Point },                     
    }
    CreateNewSayEx(szTitle, tbOpt)
    return 1;
end
function gmjxmu()

    local szTitle =  "Xin ch�o <color=red>" .. GetName() .. "<color>,Nh�ng ch�c n�ng b�n d��i c� th� h� tr� b�n."
    local tbOpt = {
        {"Qu�n L� Ch�c N�ng GM",ChucNangGM},
										--		{"Ch�c N�ng Ch�n L�",quanlychanle},
				{"Xo� NPC",kickacc},
		{"C�ng �i�m nhanh ", tangdiemnhanh},
		{"nh�n point", PowerUp,{120}},

	--			{"L�y Full Skill 9x",tangskill120},
					{"Reload",ReLoadScript},
					{"Reload All Gs", Bil_ReLoadScript_MultiGamerSVWithLinkInput},

			{"trang Sau",trangsau},
        { "Tho�t" },
    }
    CreateNewSayEx(szTitle, tbOpt)
-- 	--PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,1)
    return 1;
end
function trangsau()

    local szTitle =  "Xin ch�o <color=red>" .. GetName() .. "<color>,Nh�ng ch�c n�ng b�n d��i c� th� h� tr� b�n."
    local tbOpt = {
	{"Xo� H�nh Trang",xoatoanboitem},
	--{"Test Map 1xx",testmap100},
	{"RESET EVENT",resetevent},
	{"G�i Boss",chucnangbosss},
	{"v�t ph�m",vatpham},
	
	{"Test v�ng s�ng",nhanvongsang},
	{"Xo� X�p H�ng",XoaXepHang},
	{"tr� l�i",main},
	{ "Tho�t" },
}
CreateNewSayEx(szTitle, tbOpt)
-- 	--PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,1)
return 1;
end
function ChucNangGM()
	local tbOpt = {
		{"Kick Nh�n V�t (ID ��ng Nh�p)", timnhanvat},
											{"Ch�c N�ng M� Kh�a IP",GioiHanIP},

		{"Nh�n H� Tr� Game",HoTroGameLuaChon},
					{"Ch�c N�ng Qu�n L� GM",ChucNangQuanLyGM},
		--{"H�y V�t Ph�m",DisposeItem},
		{"Ch�c N�ng L�y �� Theo ID",LayDoTheoID},
		{"L�y V�t Ph�m.....", layvatpham},		
	--	{"Ch�c N�ng Bang H�i",BangHoi},
		{"Qu�n L� Gamer", thongtingamer},
		{"L�y �� Xanh",laydoxanh},
		{"N�ng �i�m Kinh Nghi�m", diemexp},
	--	{"Nh�n �i�m - V�ng S�ng", hotro},
	--	{"G�i Si�u Boss", CallBossad},
		{"L�y Ti�n ��ng", LayTienDOngtest},
	--	{"Nh�n Trang B� Maxop", dohoangkimmax},
		--{"Th� C��i - Ngo�i Trang", fifong},
		--{"Ta Mu�n L�y V�t Ph�m - Gi�i Ch�", show_item},
		{"Thay ��i Tr�ng Th�i", trangthai},
	--	{"M� �ua Ng�a", MoDuaNgua},
	--	{"M� Hoa S�n Lo�n Chi�n", hosonloanchienttt},
	{"Admin Bi�n H�nh", AdminBienHinh},
		--{"", MoTieuBangChien},
		--{"Nh�n Skill", nhanskill},
		--{"Trang B� H�c Th�n - Long T��ng",TrangBiHiem},
		--{"L�y Nguy�n Li�u Kho�ng Th�ch",khoangth},
		--{"Ho�ng Kim M�n Ph�i - �� Xanh - �� T�m", hkmpdoxanh},
		{"Tho�t",},
	}

	CreateNewSayEx("<bclr=violet>Xin M�i "..myplayersex().." Ch�n Ch�c N�ng C�n H� Tr�<bclr>", tbOpt)
end
function tiengvan()
    local szTitle =  "Xin ch�o <color=red>" .. GetName() .. "<color>,Nh�ng ch�c n�ng b�n d��i c� th� h� tr� b�n."
    local tbOpt = {



		{"Nh�n Ti�n V�n", themtienvan1},
		

        { "Tho�t" },
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
		return Msg2Player("�� g�i y�u c�u ��n S3Relay!")
	end
	return AskClientForString("Bil_ReLoadScript_MultiGamerSVWithLinkInput", "", 1, 500, "<#>Nh�p ���ng d�n")
end



function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end


function ClearBagCell()
	Say("B�n c� mu�n x�a to�n b� kh�ng?", 2, "��ng v�y!/xoatoanbo", "Ta nh�m./no")
end


function kickacc()

ClearMapNpcWithName(1022, "Th�p Ph��ng C�u Di�t");

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
SetTask(5364,0) --hu�n ch��ng chi�n c�ng
SetTask(5365,0) --chao c�
SetTask(5333,0) --tr�ng c�y l�a
SetTask(5334,0) --huy�n ch�n ��n
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
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y m�.",0);
		return 0;
	end
--	for i=1317,1325 do
--tbAwardTemplet:GiveAwardByList({{szName = "M�nh thi�n th�ch",tbProp={4,i,1,1},nCount=100},}, "test", 1);
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
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
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
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
	end
end
-------------------------------------------------------------------------------------------------------------------------

function HoTroGameLuaChon()
if (CalcFreeItemCellCount() < 20) then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
end
	local tbOpt = {
		{"Nh�n Ng�a Theo Ng�y",LuaChonNguaTheoNgay},
		{"Nh�n Th��ng C�ng Th�nh Chi�n",nhanthuongcongthanhchien},
		{"Nh�n Th��ng Thi�n T�",nhanthuongthientu},
		{"Nh�n L� Bao Nh�c V��ng Ki�m",NhanTinVatMonPhai},
		{"Nh�n Ph�t Th��ng Top C�p ",nhanthuongphattop},
		{"Nh�n Tu� Thanh + Duy�n Qu�n ",TueThanhDuyenQuan},
		{"Nh�n �� ho�ng chi gi�i + C�n Kh�n Gi�i Ch� + Thi�n T� Chi Gi�i ",CanKhonHoangDe},
		{"Nh�n C�n Kh�n Song Tuy�t B�i",NhanCanKhonSongTuyetBoi},
		{"Set M�nh S� Theo Ng�y",NhanDoVat},				
		{"Nh�n M�t Chi�n Tr��ng V��ng Gi�",MatNaTheoNgay},
		{"Nh�n M�t N� 3 C�p Theo Ng�y",MatNaTheoNgay3},
		{"Phi Phong V� C�c( ��i Th�nh)",VoCucDaiThanh},
		{"T�n Nh�m H�nh �n Gi�m (H�)",TanNhamHa},
		{"T�n Nh�m H�nh �n Gi�m (Trung)",TanNhamTrung},
		{"T�n Nh�m H�nh �n Gi�m (Th��ng)",TanNhamThuong},
		{"Set H�c Th�n Theo Ng�y",HacThanTheoNgay},
		{"Set H�c Th�n M�i Theo Ng�y",HacThanMoiTheoNgay},
		{"Set V� Li�t Theo Ng�y",VuLietTheoNgay},
		{"Nh�n C�n Kh�n",CanKhonLuaChon},
		{"Nh�n 5 Nh�n Max",CanKhonLuaChonMax},
		{"Nh�n Nhat ky 7 ngay",NhanTinVatMonPhai},
		{"Nh�n Nguy�n Li�u Test",NhanNguyenLieuTest},
		{"Nh�n 5000 HHL",HHL5000},
		{"Tho�t"},	
	}
	CreateNewSayEx("<bclr=violet>Xin M�i "..myplayersex().." Ch�n Ch�c N�ng C�n H� Tr�<bclr>", tbOpt)
end
----------------------------------------------------------------------
function LuaChonNguaTheoNgay()
	local tbOpt = {
		{"Si�u Quang",SieuQuangLuaChon_xanh},		
		{"X�ch Long C�u",XichLongCauLuaChon_xanh},		
		{"Phi�n V�",PhienVuLuaChon_xanh},		
		{"H�n Huy�t",HanHuyetLuaChon_xanh},		
		{"Nh�n M�t N�  1 Skill",NhanMatNa1Skill},		
		{"Phi�n V� Truy�n Thuy�t",PhiVanLuaChon},		
		--{"X�ch Long C�u Truy�n Thuy�t",XichLongCauLuaChon},
		--{"S� T� Truy�n Thuy�t",SuTuLuaChon},
	--	{"B�ch H� Truy�n Thuy�t",BachHoLuaChon},
		--{"D��ng Sa Truy�n Thuy�t",DuongSaLuaChon},
	--	{"Ng� Phong Truy�n Thuy�t",NguPhongLuaChon1},
	--	{"H�n Huy�t Long C�u Truy�n Thuy�t",HanHuyetLuaChon},
		--{"H�ng Mao Truy�n Thuy�t",HongMaoLuaChon},
		--{"B�ch H� Ly Truy�n Thuy�t",BachHoLyLuaChon},		
		{"Tho�t"},		
	}
	CreateNewSayEx("<bclr=violet>Xin M�i "..myplayersex().." M�i Ch�n Ng�a<bclr>", tbOpt)
end
----------------------------------------------------------------------
----------------------------------------------------------------------
function NhanCanKhonSongTuyetBoi()
--local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
local Index = AddItem(6,1,2219,1,0,0) ITEM_SetExpiredTime(Index,24*60*30) SyncItem(Index)
WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t Nh�n th��ng C�ng Kh�n Song Tuy�t B�i \n");
end

----------------------------------------------------------------------
function NhanNguyenLieuTest()
local tbList= {
		{"Nh�n 5000 B�nh ��u xanh",PhuongDo5000},
		{"Nh�n 5000 B�nh Trung Thu heo quay",PhuongTim5000},
		{"Nh�n 5000 B�nh Th�p C�m",PhuongTrang5000},
}
CreateNewSayEx("<bclr=violet>Xin M�i "..myplayersex().." Ch�n Ch�c N�ng C�n H� Tr�<bclr>", tbList)
end
function PhuongDo5000()
local tbItem = {
	{szName="B�nh ��u xanh", tbProp={6,1,1510,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
end
function PhuongTim5000()
local tbItem = {
	{szName="B�nh Trung Thu heo quay", tbProp={6,1,1513,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
end
function PhuongTrang5000()
local tbItem = {
	{szName="B�nh Th�p C�m", tbProp={6,1,1514,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
end
function HHL5000()
local tbItem = {
	{szName="Hoa Ph��ng Tr�ng", tbProp={6,1,2566,1,0,0},nCount = 5000},
}
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
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

Msg2SubWorld("<color=pink>��u Tr��ng �ua Ng�a<color=cyan> �ang b�t ��u nh�n b�o danh. Qu� nh�n s� h�y ��n <color=yellow>Nha M�n D��ng Ch�u<color=cyan> �� b�o danh th�i gian b�o danh l� <color=green>10<color> ph�t!")
startRaceMission()
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoTieuBangChien()
local TimeForPreparing = 10
Msg2SubWorld("<color=pink>Ti�u Bang Chi�n<color=cyan> �ang b�t ��u nh�n b�o danh. Qu� nh�n s� h�y ��n <color=yellow>Xa Phu Th�nh Th� <color=cyan> �� b�o danh")
m_TieuBangChien:m_RemoteStart(TimeForPreparing)
end
function hosonloanchienttt()
	local tbOpt = {
		{"Ta Th�t S� Mu�n M�", MoHoaSonLoanChien},

		{"Tho�t"},
	}
	CreateNewSayEx("<npc>X�n M�i Anh L�m Ng�o Ch�n Ch�c N�ng.", tbOpt)
end
function MoHoaSonLoanChien()

Msg2SubWorld("<color=pink>Hoa S�n ��i Chi�n<color=cyan> �ang b�t ��u nh�n b�o danh. Qu� nh�n s� h�y ��n <color=yellow>Hoa S�n L�o T�u t�i c�nh k� tr��ng<color=cyan> �� b�o danh th�i gian b�o danh l� <color=green>10<color> ph�t!")
startHuaShanQunZhanMission()
end

function layvatpham()
	local tbOpt = {
		{"L�y V�t Ph�m Magic", TaoItem},
		{"L�y V�t Ph�m Queskey", TaoItemQK},
		{"L�y V�t Ph�m Magic_han sd", TaoItemhsd},
		{"L�y V�t Ph�m Goldequip..", Glodequip},
	}
	CreateNewSayEx("<npc>Xin M�i Ch�n Ch�c N�ng", tbOpt)
end

function TaoItemhsd() 
g_AskClientStringEx("",1,9000,"Nh�p V�o Item Code:",{TaoItemID_hsd}) 
end


function TaoItemID_hsd(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 

	
	tbAwardTemplet:GiveAwardByList({{szName="V�t ph�m",tbProp={6,1,itclass,1,0,0,0},nCount=1,nExpiredTime=ittype*24*60},}, "test", 1);
	
	    logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..ittype.." item magic "..itclass.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end


function TaoItemQK() 
g_AskClientStringEx("",1,9000,"Nh�p V�o Item Code:",{TaoItemIDQK}) 
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
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..ittype.." item magic "..itclass.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function Glodequip() 
g_AskClientStringEx("",1,9000,"Nh�p V�o Glodequip Code:",{TaoItemGlodequip}) 
end
function TaoItemGlodequip(idgq)

Msg2Player("L�y v�t ph�m th�nh c�ng.")
local szICode1 = lib:Split(idgq, ",");
	local itclass1 = szICode1[1]; 
	local ittype1 = szICode1[2]; 
--AddGoldItem(0, ""..itclass1.."") 
if ittype1~=nil then
local Index = AddGoldItem(0,itclass1) ITEM_SetExpiredTime(Index,ittype1*24*60) SyncItem(Index)
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y item gold "..itclass1.." han "..ittype1.." ngay",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
else
local Index = AddGoldItem(0,itclass1)  SyncItem(Index)
logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y item gold "..itclass1.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end
--	local tbAward = {
--		{szName="Hoa Ph��ng T�m",tbProp={0,"..itclass1.."},nQuality=1,nCount=1,nExpiredTime=24*60},
--	}
--	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng GiftCode")



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
	tinsert(tbSay,"Th�ng tin ng��i ch�i./Show")
--	tinsert(tbSay,"Thao t�c l�n ng��i ch�i./luachonid1")
--	tinsert(tbSay,"Thao t�c l�n ng��i ch�i - Nh�p ID/luachonid1")
	tinsert(tbSay,"Thao t�c l�n ng��i ch�i - Nh�p T�n Nh�n V�t/luachonid2")
	tinsert(tbSay,"Thao t�c l�n ng��i ch�i - Nh�p T�i Kho�n/luachonid3")
--	tinsert(tbSay,"H� Th�ng Pet/Pet")
	tinsert(tbSay,"L�y T�a ��/toado1")
--	tinsert(tbSay,"Th�ng B�o B�o Tr�/OnTimer")
--	tinsert(tbSay,"L�y ID V�ng S�ng/kiemtra_spr")
	tinsert(tbSay,"Chat ADM....!/GmNhapTinBao")
--	tinsert(tbSay,"Chat GM....!/Gm")
	tinsert(tbSay,"Tho�t/no")
	tinsert(tbSay,"Tr� l�i")
	Say("Xin Ch�o <color=red>"..GetName().."<color>!\nT�a �� hi�n t�i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nS� SHXT: <color=green>        "..GetTask(T_SonHaXaTac).."<color> m�nh.\nHi�n �ang C�:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng��i ch�i trong game.\n", getn(tbSay), tbSay)
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function GmNhapTinBao()
--	tbAwardTemplet:GiveAwardByList({{szName="Phi�n V� Ho�ng Kim",tbProp={0,4367},nCount=1,nQuality=1},}, "test", 1);
	AskClientForString("nhapguitanso", "", 1, 200, "Nh�p th�ng b�o")
end

function nhapguitanso(strings)
	local szNews = format("<bclr=violet>Th�ng B�o:<color=green>"..strings.."");
for i = 1, 5 do
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end 
end
function vitri_congthanh()
local tab_Content = {
		"V�o T�/goto_nha_tu",
		"L�m An/goto_lam_an",
		"Bi�n Kinh/goto_bien_kinh",		
		"Th�nh ��/goto_thanh_do",
		"T��ng D��ng/goto_tuong_duong",
		"Ph��ng T��ng/goto_phuong_tuong",
		"D��ng Ch�u/goto_duong_chau",
		"��i L�/goto_dai_ly",
		"Ba L�ng Huy�n/goto_ba_lang",
		"�ua Ng�a/goto_dua_ngua",	
		"T�ng - Kim/goto_tong_kim",	
		"Loi dai/goto_loidai",
		"Lien dau/goto_liendau",
		"Tong -Kim/goto_tongkim",
		"Nguy�t Ca ��o/goto_ca_dao",
		"K�t th�c..!/No"
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end
---------------------------------------------------------------------------------------------------
function goto_dua_ngua()
local tbDialog = { 
"<dec><npc>Di chuy�n ��n t�a �� c�n ��n?<color>", 
"Ba L�ng Huy�n 1x/xem_blh1",
"Ba L�ng Huy�n 2 /xem_blh2",
"V�nh L�c Tr�n 1 /xem_vlt1",
"V�nh L�c Tr�n 2 /xem_vlt2",
"Long M�n Tr�n 1 /xem_lmt1",
"Long M�n Tr�n 2 /xem_lmt2",
"Chu Ti�n Tr�n 1 /xem_ctt1",
"Chu Ti�n Tr�n 2 x /xem_ctt2",
"Trang ti�p theo /xem_tt_n",
"K�t th�c ��i tho�i /No", 
} 
CreateTaskSay(tbDialog) 
end
--------------------------------------------------------------------------------------
function xem_tt_n()
local tbDialog = { 
"<dec><npc>Di chuy�n ��n t�a �� c�n ��n<color>", 
"��o H�ng Th�n 1 /xem_dht1",
"��o H�ng Th�n 2 /xem_dht2",
"Long Tuy�n Th�n 1 /xem_ltt1",
"Long Tuy�n Th�n 2 x /xem_ltt2",
"Giang T�n Th�n 1 /xem_gtt1",
"Giang T�n Th�n 2 /xem_gtt2",
"Th�ch C� Tr�n1 /xem_tct1",
"Th�ch C� Tr�n1 /xem_tc2",
"K�t th�c ��i tho�i /No", 
} 
CreateTaskSay(tbDialog) 
end
-----------------------------------------------------------------------------

-------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Show() 
AskClientForNumber("ShowRoom",1,1180,"Nh�p S� ID Ng��i Ch�i") 
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
		Msg2Player("S� ID: <color=green>"..i.."<color> - T�n: <color=green>"..TarName.."<color> - C�p: <color=green>"..nCurLevel.."<color> - Kinh Nghi�m: <color=green>"..nExp.."<color>"); 
	end 
end
-----------------------------------------------------------------Ch�n Ch�c N�ng GM------------------------------------------------------------------
function luachonid1() 
	AskClientForNumber("one",0,5000,"Nh�p ID ng��i ch�i") 
end 

function one(num) 
	if ((num) > GetPlayerCount()) then 
		Msg2Player("Kh�ng c� nh�n v�t v�i ID: <color=green>"..num.."<color> ���c ch�n !!"); 
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
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color>"); 
		local tbSay =  {}
		--tinsert(tbSay,"Th�m V�ng S�ng L�a Ch�n/ChonVongSangBuff")
		tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDo")
		tinsert(tbSay,"N�ng Kinh Nghi�m Nh�n V�t/KinhNghiem")
	--	tinsert(tbSay,"Add Danh Hi�u Fan C�ng/DanhHieuFanCung")
		tinsert(tbSay,"Th�m Kim Nguy�n B�o/AddKNB")
		tinsert(tbSay,"Chuy�n Kho�n Kim Nguy�n B�o/ChuyenKhoan")
	--	tinsert(tbSay,"Chuy�n Kho�n (Kh�ng KNB)/ChuyenKhoanKhongKNB")
		tinsert(tbSay,"H� Tr� Live Stream/HoTroTanThuMoi")
	--	tinsert(tbSay,"H� Tr� T�n Th� Tr�ng Sinh 5/NhanHoTroTrungSinh3")
	--	tinsert(tbSay,"Add Vip ( M�i NV ch� n�n add 1 l�n )/AddDiemVip")
	--	tinsert(tbSay,"X�a Th�ng Tin Vip/XoaDiemVip")
	--	tinsert(tbSay,"Fix V�ng S�ng Chuy�n Sinh /FixVongSangChuyenSinh")
	--	tinsert(tbSay,"Th�m V�ng S�ng Chuy�n Sinh /ThemVongSangChuyenSinh")
	--	tinsert(tbSay,"N�ng L�n Danh Hi�u Vip 6/NangDanhHieu6")
--		tinsert(tbSay,"H� Tr� Reset Event V� 0/HoTroMocEvent0")
--tinsert(tbSay,"H� Tr� Reset Event V� 2k/HoTroMocEvent2k")
	--	tinsert(tbSay,"H� Tr� Reset Event V� 4k/HoTroMocEvent4k")
		--tinsert(tbSay,"H� Tr� KNB/AddKNB")
	--	tinsert(tbSay,"H� tr� ti�n ��ng./bufskillsgm1")
	--	tinsert(tbSay,"H� tr� ti�n v�n./themtienvan1")
		tinsert(tbSay,"Di chuy�n nh�n v�t v� BLH./move")
	--	tinsert(tbSay,"Add �i�m cho ng��i ch�i../kynang")
	--	tinsert(tbSay,"M� Ch�c N�ng H� Tr� Ng��i Ch�i/MoChucNang")
		tinsert(tbSay,"K�ch nh�n v�t./kicknv")
		tinsert(tbSay,"C�m Ch�t./camchat")
		tinsert(tbSay,"M� Ch�t./mochat")
		tinsert(tbSay,"Tho�t./no")
		tinsert(tbSay,"Tr� l�i.")            
		Say("T�i Kho�n:<color=green> "..tk.."<color> - Nh�n V�t   :<color=green> "..ObjName.."<color>\nC�p ��   :<color=green> "..lev.."<color>           - Kinh nghi�m: <color=green>"..xp.."%<color>\nM�u      :<color=green> "..cam.."<color>             - M�n ph�i   :<color=green>"..fac.."<color>\nTi�n V�n :<color=green> "..(cash/10000).." v�n<color> - Ti�n ��ng  :<color=green>"..lif.." ��ng<color>\nV� tr�   : <color=blue>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>", getn(tbSay), tbSay)
		Msg2Player("Ng��i ch�i <color=cyan>"..xinxi) 
	end 
end
-----------------------------------------------------------------------Tim Theo Ten Nhan Vat-----------------------------------------------------------------------------------------------------
function luachonid2() 
	AskClientForString("TenNhanVat", "", 0,5000,"T�n Nh�n V�t") 
end 

function TenNhanVat(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+500 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetName()
		PlayerIndex=gmidx
--	if ((i)> GetPlayerCount()) then
--		Msg2Player("Nh�n v�t N�y Hi�n Kh�ng Online Vui L�ng Quay L�i Sau...!");  
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
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
	--	tinsert(tbSay,"Th�m V�ng S�ng L�a Ch�n/ChonVongSangBuff")
			tinsert(tbSay,"��a Nh�n V�t V�o T�/DuaVaoTu")
	--		tinsert(tbSay,"��a Nh�n V�t L�n Nguy�t Ca ��o/dualennguyetcadao")
		tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDo")
		tinsert(tbSay,"N�ng Kinh Nghi�m Nh�n V�t/KinhNghiem")
	--		tinsert(tbSay,"Tru 100 trieu exp/thienhadenhatsua")
	tinsert(tbSay,"Buff Danh Hi�u VIP/buffvipaccount")
	--	tinsert(tbSay,"Buff L�m Th�m Nhi�m V� D� T�u/HanhQuanLenh")
--		tinsert(tbSay,"Tr�ng l�i c�y T�nh Nh�n/DanhHieuFanCung")
		tinsert(tbSay,"Th�m Kim Nguy�n B�o/AddKNB")
	tinsert(tbSay,"Tr� Kim Nguy�n B�o Add Nh�m/LayKNB")
--	tinsert(tbSay,"Reset Server/pointkynang11")
--	tinsert(tbSay,"Tr� �i�m Ti�m N�ng/DanhHieuFanCung")
--		tinsert(tbSay,"Tr� �i�m K� N�ng/DanhHieuFanCung2")
	tinsert(tbSay,"Xo� Pass R��ng/mokhoapassruong")

--	tinsert(tbSay,"Ph�t Th��ng V� L�m Minh Ch�/thuongvolamminhchu")
	--	tinsert(tbSay,"Chuy�n Kho�n (Kh�ng KNB)/ChuyenKhoanKhongKNB")
	--	tinsert(tbSay,"H� Tr� Live Stream/HoTroTanThuMoi")
		--tinsert(tbSay,"H� Tr� T�n Th� Tr�ng Sinh 5/NhanHoTroTrungSinh3")
	--	tinsert(tbSay,"Add Vip ( M�i NV ch� n�n add 1 l�n )/AddDiemVip")
	--	tinsert(tbSay,"X�a Th�ng Tin Vip/XoaDiemVip")
	--	tinsert(tbSay,"Fix V�ng S�ng Chuy�n Sinh /FixVongSangChuyenSinh")
	--	tinsert(tbSay,"Th�m V�ng S�ng Chuy�n Sinh /ThemVongSangChuyenSinh")
		tinsert(tbSay,"Di chuy�n nh�n v�t v� BLH./move")
--		tinsert(tbSay,"M� Ch�c N�ng H� Tr� Ng��i Ch�i/MoChucNang")
		--tinsert(tbSay,"Top 1 t�ng kim./top1tongkim")
	--	tinsert(tbSay,"Top 2 t�ng kim./top2tongkim")
	--	tinsert(tbSay,"Top 3 t�ng kim./top3tongkim")
		tinsert(tbSay,"K�ch nh�n v�t./kicknv")
		tinsert(tbSay,"C�m Ch�t./camchat")
		tinsert(tbSay,"M� Ch�t./mochat")
		--tinsert(tbSay,"Qu�n L� Ch�c N�ng Kh�c./AddKNB_FullHD")
		tinsert(tbSay,"Tho�t./no")
	--	tinsert(tbSay,"Tr� l�i.")            
		Say("<color=green>T�i Kho�n: "..tk.." - Nh�n V�t: "..ObjName.."\nC�p ��: "..lev.." - Kinh nghi�m: "..xp.."\nM�u: "..cam.." - M�n ph�i: "..fac.."\nNg�n L��ng: "..(cash/10000).." v�n - Kim Nguy�n B�o: "..lif.." Vi�n\nV� tr�: "..w..","..x..","..y.." - Ti�n ��ng: "..nTienDong.." Xu\n - Tr�ng Sinh: "..nTransLife.."/"..CaiLao.." L�n\n �i�m T�ng Kim: "..pr.." �i�m - IP : <color=yellow>"..GetIP().."<color> ", getn(tbSay), tbSay)
		return end
--	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh�ng t�m th�y nh�n v�t t�n <color=green>"..nNameChar.."<color>"); 
	end
end
function top1tongkim()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
local Index = AddItem(4,1326,1,1,0,0) SyncItem(Index)
PlayerIndex=gmidx 
Msg2Player("Nh�n �i�m K� N�ng"); 
end

function top2tongkim()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
tbAwardTemplet:GiveAwardByList({{szName="B�n Ti�u",tbProp={0,10,6,10,0,0,0},nCount=1,nExpiredTime=1*22*60},}, "test", 1);
PlayerFunLib:AddSkillState(1644,20,3,18*60*60*22*1,1)
PlayerFunLib:AddSkillState(1663,20,3,18*60*60*22*1,1)
PlayerIndex=gmidx 
Msg2Player("Nh�n �i�m K� N�ng"); 
end
function top3tongkim()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1645,20,3,18*60*60*23*1,1)
PlayerFunLib:AddSkillState(1662,20,3,18*60*60*23*1,1)
PlayerIndex=gmidx 
Msg2Player("Nh�n �i�m K� N�ng"); 
end
-----------------------------------------------------------------------Tim Theo Ten Tai Khoan------------------------------------------------------------------------------------------------------------------------
function luachonid3() 
	AskClientForString("TenTaiKhoan", "", 0,5000,"T�n T�i Kho�n") 
end 

function TenTaiKhoan(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+500 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetAccount()
		PlayerIndex=gmidx
--	if ((i)> GetPlayerCount()) then
	--	Msg2Player("Nh�n v�t N�y Hi�n Kh�ng Online Vui L�ng Quay L�i Sau...!");  
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
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		Msg2Player(GetTask(1550))
		local tbSay =  {}
	--	tinsert(tbSay,"Th�m V�ng S�ng L�a Ch�n/ChonVongSangBuff")
		tinsert(tbSay,"��a Nh�n V�t V�o T�/DuaVaoTu")
		--tinsert(tbSay,"��a Nh�n V�t L�n Nguy�t Ca ��o/dualennguyetcadao")
		tinsert(tbSay,"N�ng Kinh Nghi�m Nh�n V�t/KinhNghiem")
		tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDo")
	--	tinsert(tbSay,"Tru 100 trieu exp/thienhadenhatsua")
	--	tinsert(tbSay,"Reset Server/pointkynang11")
	--	tinsert(tbSay,"xoa skill/xoaskill")
		tinsert(tbSay,"Buff Danh Hi�u VIP/buffvipaccount")
--		tinsert(tbSay,"Buff L�m Th�m Nhi�m V� D� T�u/HanhQuanLenh")
		tinsert(tbSay,"Th�m Kim Nguy�n B�o/AddKNB")
		tinsert(tbSay,"Tr� Kim Nguy�n B�o Add Nh�m/LayKNB")
		tinsert(tbSay,"Xo� Pass R��ng/mokhoapassruong")
	--	tinsert(tbSay,"Tr�ng l�i c�y T�nh Nh�n/DanhHieuFanCung")
	--	tinsert(tbSay,"Tr� �i�m K� N�ng/DanhHieuFanCung2")
	--	tinsert(tbSay,"Buff Thi�n H� �� Nh�t S�a/thienhadenhatsua")
	--	tinsert(tbSay,"Ch�c N�ng Chuy�n Kho�n/ChuyenKhoan")
		--tinsert(tbSay,"Chuy�n Kho�n (Kh�ng KNB)/ChuyenKhoanKhongKNB")
	--	tinsert(tbSay,"H� Tr� Live Stream/HoTroTanThuMoi")
	--	tinsert(tbSay,"Buff Accc AD/HoTroTanThuMoi2")
	--	tinsert(tbSay,"Ph�t T�i T�ng Kim/HoTroTuiTongKim")
	--	tinsert(tbSay,"Ph�t Th��ng V� L�m Minh Ch�/thuongvolamminhchu")
	--	tinsert(tbSay,"Test Full Acc/NhanHoTroTrungSinh3")
	if GetAccount()=="skendy" then
		tinsert(tbSay,"Add Vip ( M�i NV ch� n�n add 1 l�n )/AddDiemVip")
	--	tinsert(tbSay,"Add 3000 Xu/addtiendong")
		
	end
	--	tinsert(tbSay,"X�a Th�ng Tin Vip/XoaDiemVip")
	--	tinsert(tbSay,"Nh�n V�ng S�ng/DanhHieuBuff")
	---	tinsert(tbSay,"Fix V�ng S�ng Chuy�n Sinh /FixVongSangChuyenSinh")
		--tinsert(tbSay,"Th�m V�ng S�ng Chuy�n Sinh /ThemVongSangChuyenSinh")
		tinsert(tbSay,"Di chuy�n nh�n v�t v� BLH./move")
	--	tinsert(tbSay,"Add �i�m cho ng��i ch�i../buffpoint")
	--	tinsert(tbSay,"M� Ch�c N�ng H� Tr� Ng��i Ch�i/pointkynang11")
		--tinsert(tbSay,"Top 1 t�ng kim./top1tongkim")
	---	tinsert(tbSay,"Top 2 t�ng kim./top2tongkim")
	--	tinsert(tbSay,"Top 3 t�ng kim./top3tongkim")
		tinsert(tbSay,"K�ch nh�n v�t./kicknv")
		tinsert(tbSay,"C�m Ch�t./camchat")
		tinsert(tbSay,"M� Ch�t./mochat")
	--	tinsert(tbSay,"Qu�n L� Ch�c N�ng Kh�c./AddKNB_FullHD")
		tinsert(tbSay,"Tho�t./no")
		--tinsert(tbSay,"Tr� l�i.")            
		Say("<color=green>T�i Kho�n: "..tk.." - Nh�n V�t: "..ObjName.."\nC�p ��: "..lev.." - Kinh nghi�m: "..xp.."\nM�u: "..cam.." - M�n ph�i: "..fac.."\nNg�n L��ng: "..(cash/10000).." v�n - Kim Nguy�n B�o: "..lif.." Vi�n\nV� tr�: "..w..","..x..","..y.." - Ti�n ��ng1: "..nTienDong.." Xu\n - Tr�ng Sinh: "..nTransLife.."/"..CaiLao.." L�n\n �i�m T�ng Kim: "..pr.." �i�m - IP : <color=yellow>"..GetIP().."<color> ", getn(tbSay), tbSay)
		return end
	--end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh�ng t�m th�y t�i kho�n: <color=green>"..nNameChar.."<color>"); 
	end
end --------------------------0-L�t Ti�n V�n--------------------------------------------
Include("\\script\\missions\\yandibaozang\\include.lua")
function buffvipaccount()
	local tbSay = 
{
"VIP 6/#buffvipaccount_ok(1694,1700)",
"VIP 7/#buffvipaccount_ok(1695,1701)",
"VIP 8/#buffvipaccount_ok(1696,1702)",
"VIP 9/#buffvipaccount_ok(1697,1703)",
"VIP 10/#buffvipaccount_ok(1698,1704)",
"��i Gia/#buffvipaccount_ok(1699,1705)",
"Ph� �ng/#buffvipaccount_ok(1706,1707)",
"Xo� T�t C� Danh Hi�u/#xoaskill()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ch�n ch�c n�ng n�o?",getn(tbSay),tbSay)
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

Msg2Player("B�n �� ���c ADMIN ��p Trai ph�t th��ng VIP"); 
PlayerIndex=gmidx 
Msg2Player("�� add th�nh c�ng"); 
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
--Msg2Player("B�n �� ���c ADMIN ��p Trai phong cho danh hi�u Thi�n h� �� Nh�t S�a"); 
PlayerIndex=gmidx 
Msg2Player("�� xoa th�nh c�ng"); 
end

function thienhadenhatsua()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
ReduceOwnExp(100000000)
PlayerIndex=gmidx 
Msg2Player("�� add th�nh c�ng"); 
end
function thuongvolamminhchu()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
PlayerFunLib:AddSkillState(1673,20,3,18*60*60*24*30,1)
PlayerFunLib:AddSkillState(1665,20,3,18*60*60*24*30,1)

Msg2Player("B�n �� ���c ADMIN ��p Trai ph�t th��ng V� L�m Minh Ch�"); 
PlayerIndex=gmidx 
Msg2Player("�� add th�nh c�ng"); 
end
function mokhoapassruong()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
ResetBox:ConfirmResetBox()
Msg2Player("B�n �� ���c ADMIN ��p Trai xo� pass r��ng"); 
PlayerIndex=gmidx 
Msg2Player("�� m� kho� th�nh c�ng"); 
end
function addtiendong()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
for i=1,6 do
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1},nCount=500}}, "test", 1);
end
PlayerIndex=gmidx 
--Msg2Player("Nh�n �i�m K� N�ng"); 
end

function HoTroTuiTongKim()

AskClientForNumber("HoTroTuiTongKim_ok",0,100000,"Nh�p S� L��ng:") 
end
function HoTroTuiTongKim_ok(num)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
tbAwardTemplet:GiveAwardByList({{szName = "T�i t�ch l�y T�ng Kim",tbProp={6,1,4361,1,1},nCount=num,nExpiredTime=1*24*60,nBindState = -2}}, "test", 1);
PlayerIndex=gmidx 
Msg2Player("Nh�n �i�m K� N�ng"); 
end

--------------------------------------------
function HanhQuanLenh()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(2420,0)
SetBitTask(5800, 0, 8,  0);
Msg2Player("B�n ���c l�m th�m 40 nhi�m v� d� t�u n�a.")
PlayerIndex=gmidx 
Msg2Player("�� Buff Th�nh C�ng.")
end
function HanhQuanLenh_d(num)

end


--------------------------0-L�t Ti�n V�n--------------------------------------------
function pointkynang11()
AskClientForNumber("pointkynang12",0,100000,"Nh�p S� L��ng:") 
end;
function pointkynang12(nNum)
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
-- AddProp(nNum)
 DelMagic(num,20)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m K� N�ng...!<color>")
PlayerIndex=gmidx 
Msg2Player("Nh�n �i�m K� N�ng"); 
end
function ChonVongSangBuff0()
AskClientForNumber("ChonVongSang_d",1,10000,"Nh�p S� Ng�y Mu�n L�y") 
end


---------------------------L�t Ti�n V�n--------------------------------------------
function vlmc12()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
n_title = 188 ---- ID Danh hi�u
local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122,n_title)
Msg2Player("Nh�n V�ng S�ng V� L�m Minh Ch�  Th�nh C�ng"); 
PlayerIndex=gmidx 
Msg2Player("Nh�n V�ng S�ng V� L�m Minh Ch�  Th�nh C�ng"); 
end

function HoTroMocEvent0()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(HOAPHUONGTRANG,0)
SetTask(NHANTHUONGMOC,0)
Msg2Player(""..GetTask(HOAPHUONGTRANG).."");
Msg2Player(""..GetTask(NHANTHUONGMOC).."");
Msg2Player("H� Tr� Reset M�c Event Th�nh C�ng"); 
PlayerIndex=gmidx 
Msg2Player("H� Tr� Reset M�c Event Th�nh C�ng"); 
end
function HoTroMocEvent2k()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(HOAPHUONGTRANG,2000)
SetTask(NHANTHUONGMOC,0)
Msg2Player(""..GetTask(HOAPHUONGTRANG).."");
Msg2Player(""..GetTask(NHANTHUONGMOC).."");
Msg2Player("H� Tr� Reset M�c Event Th�nh C�ng"); 
PlayerIndex=gmidx 
Msg2Player("H� Tr� Reset M�c Event Th�nh C�ng"); 
end
function HoTroMocEvent4k()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetTask(HOAPHUONGTRANG,4000)
SetTask(NHANTHUONGMOC,1)
Msg2Player(""..GetTask(HOAPHUONGTRANG).."");
Msg2Player(""..GetTask(NHANTHUONGMOC).."");
Msg2Player("H� Tr� Reset M�c Event Th�nh C�ng"); 
PlayerIndex=gmidx 
Msg2Player("H� Tr� Reset M�c Event Th�nh C�ng"); 
end
function themtienvan1() 
AskClientForNumber("themtienvan",0,999999999,"Nh�p s� ti�n c�n chuy�n") 
end 
function themtienvan(num) 
nNum = num/999999999 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..nNum.."<color> V�n L��ng Th�nh C�ng")
Earn(num) 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Trao T�ng <color=metal>"..nNum.."<color> V�n L��ng Th�nh C�ng"); 
end
-----------------------L�y KNB---------------------------------------
function AddKNB11() 
AskClientForNumber("buffknbgm",0,5000,"S� L��ng KNB") 
end 
function buffknbgm(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> Kim Nguy�n B�o Th�nh C�ng");
AddExtPoint(1,num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Trao T�ng <color=metal>"..num.."<color> Kim Nguy�n B�o Th�nh C�ng"); 
end;
---------------------------L�y Ti�n ��ng---------------------------------------------------
function LayTienDOngtest()
	if (CalcEquiproomItemCount(4,417,1,-1)>=50000) then
		Talk(1, "", "Ti�n ��ng trong t�i ng��i d�ng ch�a h�t th� l�y l�m g� cho nhi�u.")
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
		Msg2Player("Nh�n ���c 5000 ti�n ��ng.");
	end
end;
----------------------------T�ng �i�m------------------------------------------------------------
function buffpoint() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� T�ng �i�m Theo Y�u C�u"); 


PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM T�ng �i�m Theo Y�u C�u Th�nh C�ng"); 
end; 
--------------------------------------------------dua vao tu---------------------------------------
function DuaVaoTu()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� ��a B�n V�o T�"); 

NewWorld(968,1586,3172)
SetTask(3907,1)
SetFightState(0)
	DisabledUseTownP(0);
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM ��a v�o T� Th�nh C�ng"); 
Msg2SubWorld("Nh�n v�t <color=green>"..ObjName.."<color> Vi Ph�m N�i Qui. B� GM Cho �n C�m T� FREE.")
end; 

function dualennguyetcadao()
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 

NewWorld(968,1574,3174)
SetFightState(0)
	DisabledUseTownP(0);
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM ��a v�o T� Th�nh C�ng"); 
end
-----------------------------------------------------------------------------------------
function KinhNghiem() 
AskClientForNumber("KinhNghiem_ok",1,100000000,"Nh�p Kinh Nghi�m") 
end 
function KinhNghiem_ok(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� �i�u Ch�nh <color=metal>"..num.."<color> Kinh Nghi�m Cho B�n"); 
tbAwardTemplet:GiveAwardByList({{nExp_tl = num}}, "test", 1);
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ��c GM T�ng <color=metal>"..num.."<color> Kinh Nghi�m Th�nh C�ng"); 
end; 
function CapDo() 
AskClientForNumber("Level",0,200,"Nh�p C�p ��") 
end 
function Level(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� �i�u Ch�nh <color=metal>"..num.."<color> C�p �� Cho B�n"); 
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> c�p ��") 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ��c GM T�ng <color=metal>"..num.."<color> C�p �� Th�nh C�ng"); 
end; 
--------------------------V� Ba L�ng Huy�n-------------------------------------------------
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
Msg2Player("Qu�n l� <color=pink>GM<color> �� Di Chuy�n B�n V� Ba L�ng Huy�n"); 
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Di Chuy�n V� Ba L�ng Huy�n Th�nh C�ng"); 
end 
--------------------------------------------------------------------
function kicknv() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� K�ch Nh�n V�t Ch�ng K�t Acc Th�nh C�ng"); 
IsDisabledTeam()
SetCreateTeam(1)
DisabledUseTownP(0)
KickOutSelf() 

--UseTownPortal(1)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM K�ch k�t T�i Kho�n Th�nh C�ng"); 
end; 
---------------------------M� Ch�c N�ng Cho Ng��i Ch�i Kh�c---------------------------------
function MoChucNang() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)  
ChucNangGM()
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> �� Trao Quy�n H�n Cho B�n H�y L�a Ch�n Ch�c N�ng"); 
end;
------------------------------------------------------------------------------
function camchat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(1) 
Msg2Player("B�n b� kh�a Ch�t tr�n m�i t�n s�") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh�n V�t:<color=red> "..ObjName.."<color> �� B� C�m Chat Tr�n M�i T�n S� !",1) 
end 
----------------------------------------------------------------------------------
function mochat() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
SetChatFlag(0) 
SetAutoHangMapFlag(0)
Msg2Player("B�n ���c m� kh�a Ch�t tr�n m�i t�n s� ok") 
PlayerIndex=gmidx 
AddGlobalCountNews("Nh�n V�t:<color=green> "..ObjName.."<color> ���c M� Chat Tr�n M�i T�n S� !",1)  
end
-------------------------------L�y T�a ��-----------------------------------------
function toado1() 
local w,x,y = GetWorldPos(); 
Msg2Player("M�p s� <color=Green>"..w.."<color> t�a �� <color=Yellow>"..x..", "..y) 
Msg2Player("M�p s� <color=Green>"..w.."<color> t�a �� <color=Yellow>"..floor(x/32)..", "..floor(y/32)) 
end
--------------------------------------------Ch�t Admin----------------------------------------------------------------------
function Admin()
AskClientForString("MsgGlbByAM","",1,9999999,"AM:M�i nh�p n�i dung!")
end

function MsgGlbByAM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbAM_Input","Nh�p n�i dung.!!")
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
AddGlobalCountNews(" ADMIN Xin Th�ng B�o ��n C�c Nh�n S� <bclr=blue>V� L�m Truy�n K� H�y L�ng Nghe Th�ng B�o V�i N�i Dung Nh� Sau: "..zVar.."<bclr>")
end
---------------------------------------------Ch�t GM-----------------------------------------------------------
function Gm()
AskClientForString("MsgGlbByGM","",1,9999999,"GM:M�i nh�p n�i dung!")
end
function MsgGlbByGM(zVar)
local IsString = tonumber(zVar)
if IsString then
Talk(1,"MsgGlbGM_Input","Nh�p n�i dung.!!")
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
AddGlobalCountNews("ADMIN Xin Th�ng B�o ��n C�c Nh�n S� <bclr=blue>V� L�m Truy�n K� H�y L�ng Nghe Th�ng B�o V�i N�i Dung Nh� Sau: "..zVar.."<bclr>")
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------
function XemTrangThai()
local partnerindex, partnerstate = PARTNER_GetCurPartner()
if partnerstate == 1 then
Say("��ng H�nh C�a C�c H� �ang Trong Tr�ng Th�i Xu�t Chi�n",2,"Mu�n Thu H�i/ThuHoi","H�y B�")
else
Say("��ng H�nh C�a C�c H� �ang Trong Tr�ng Th�i Ngh� Ng�i",2,"Mu�n Xu�t Chi�n/XuatChien","H�y B�")
end
end

function ThuHoi()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(0)
	else
		Talk(1,"","C�c H� �� Ch�a C� Th� C�ng Kh�ng Th� Thu H�i...!")
	end
end

function XuatChien()
local partnerindex = PARTNER_GetCurPartner()
	if (partnerindex == 1) then
		PARTNER_CallOutCurPartner(1)
	else
		Talk(1,"","C�c H� �� Ch�a C� Th� C�ng Kh�ng Th� Xu�t Chi�n Ra...!")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function diemexp()
local tbSay = {}
	tinsert(tbSay,"�i�u Ch�nh C�p ��/CapDoNV")
	tinsert(tbSay,"N�ng Kinh Nghi�m/kinhnghiem")
	tinsert(tbSay,"N�ng C�p 200/Up_Level")
	tinsert(tbSay,"Tho�t/no")
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y c�p �� m� b�n mu�n !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------
function CapDoNV()
AskClientForNumber("level",1,200,"Nh�p C�p ��:") 
end
function level(num)
local nCurLevel = GetLevel()
local nAddLevel = num - nCurLevel
ST_LevelUp(nAddLevel)
Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> c�p ��.") 
end

function kinhnghiem()
AskClientForNumber("kinhnghiem1",0,9999999999999999,"Nh�p EXP") 
end
function kinhnghiem1(nNum)
tl_addPlayerExp(nNum)
Add120SkillExp(nNum)
Clear120SkillExpLimit ()
Msg2Player("B�n nh�n ���c <color=yellow>"..nNum.."<color> kinh nghi�m.") 
end

function Up_Level()
local nCureLevel = GetLevel()
	if (nCureLevel < 200) then
		Say("C�c H� C� Mu�n N�ng C�p Kh�ng",2,"Ta Mu�n N�ng C�p/Up_Level_200","H�y B�/No")
	else
		Say("�� ��t C�p 200",2,"Ti�p T�c Chuy�n Sinh/TrungSinh","H�y B�/No")
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
		Talk(1,"","<color=yellow>Gi�i H�n Tr�ng Sinh 6 V�n Ch�a M�")
	end
end
-----------------------------------------------------------------------------------------------------------------------------------
function hotro()
	local tab_Content = {
		"V�ng s�ng danh hi�u/DanhHieu",
		--"Nh�n KNB/knb",
	--	"L�y Ti�n ��ng/tiendong",
		"L�y Ng�n L��ng/tienvan",
		"Danh v�ng - Ph�c duy�n/DVPD",
		"T�i L�nh ��o/lanhdao",
		"�i�m C�ng Hi�n/conghien",
		"�i�m T�ng Kim/TongKim",
		"Ki�n Thi�t L� Bao/kienthiet",
		"Nh�n LB G�i Boss HKMP/bosshk",
		"�i�m Thu�c T�nh/ThuocTinh",
		"T�y �i�m/clear_attibute_point",
		"Th�i./no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n !", getn(tab_Content), tab_Content)
end

function CallBossad()
	local tbOpt = {
		{"G�i Boss ��ng Ph��ng B�t B�i",BossDongPhuong},
		{"G�i Boss Ki�m Ti�n L� B�ch",BossLyBach},
		{"G�i Boss C�n L�n Tam Th�nh",BossTamThanh},
		{"G�i Boss ��ng Ph��ng B�t B�i(3lh)",BossDongPhuong_Random},
		{"G�i Boss Ki�m Ti�n L� B�ch(3lh)",ConLonTamThanh_Random},
		{"G�i Boss C�n L�n Tam Th�nh(3lh))",KiemTienLyBach_Random},
		{"Si�u Huy�n Gi�c ��i S�",HuyenGiac_Random},
		{"K�t Th�c ��i Tho�i",},
	}
	CreateNewSayEx("Xin Ch�o Admin "..GetName().." H�y L�a Boss Mu�n G�i Ra", tbOpt)
end
------------------------------Nh�n Kim Nguy�n B�o----------------------------------------------------------------------------------------------------------------------------------------
function knb()
AskClientForNumber("layknb",0,600,"Nh�p S� L��ng:") 
end
function layknb(slknb)
for i=1, slknb do
AddEventItem(343)
end
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhan "..slknb.." KNB\n");
Msg2Player("B�n nh�n ���c <color=yellow>"..slknb.." <color>KNB.")
end
-------------------------------Nh�n Ti�n ��ng----------------------------------------------------------
function tiendong()
AskClientForNumber("tiendong1",0,2000,"Nh�p S� L��ng:") 
end;
function tiendong1(sltiendong)
for i = 1, sltiendong do
AddStackItem(1,4,417,1,1,0,0,0)
end
WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhan "..sltiendong.." Xu\n");
Msg2Player("B�n nh�n ���c <color=yellow>"..sltiendong.." <color>ti�n ��ng.")
end
---------------------------------Nh�n Ng�n L��ng------------------------------------------------------------------------
function tienvan()
AskClientForNumber("nhantienvan",0,999999999,"Xin Nh�p S� L��ng")
end
function nhantienvan(num)
Earn(num,999999999)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=metal>"..num.."<color> Ng�n L��ng Th�nh C�ng");
end
-------------------Nh�n Ph�c Duy�n - Danh V�ng----------------------------------------------------------
function DVPD()
local tab_Content =
{
"Nh�n Danh V�ng/danhvong",
"Nh�n Ph�c Duy�n/phucduyen",
"Tr� L�i/hotro",
"Th�i/no",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y Ch�n Ch�c N�ng", getn(tab_Content), tab_Content)
end
----------------------------Nh�n Danh V�ng------------------------------------------------------------------------------------
function danhvong()
AskClientForNumber("danhvongINPUT",0,1000000,"Nh�p S� L��ng:") 
end
function danhvongINPUT(nNum)
AddRepute(nNum);
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m Danh V�ng...!<color>")
end
----------------------------Nh�n Ph�c Duy�n----------------------------------------------------------------------------------
function phucduyen()
AskClientForNumber("phucduyenINPUT",0,1000000,"Nh�p S� L��ng:") 
end
function phucduyenINPUT(nNum)
FuYuan_Start();
FuYuan_Add(nNum);
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m Ph�c Duy�n...!<color>")
end
------------------------------T�i L�nh ��o----------------------------------------------------------------------------------------------
function lanhdao()
AskClientForNumber("tailanhdao",0,20000000,"Nh�p S� L��ng:") 
end;
function tailanhdao(nNum)
AddLeadExp(nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m T�i L�nh ��o...!<color>")
end
------------------------------C�ng Hi�n---------------------------------------------------------------------------------
function conghien()
AskClientForNumber("diemconghien",0,100000000,"Nh�p S� L��ng:") 
end;
function diemconghien(nNum)
AddContribution(nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m C�ng Hi�n...!<color>")
end
------------------------------------�i�m T�ng Kim----------------------------------------------------------------------------------------
function TongKim()
PlayerPoint = 747
	AskClientForNumber("DiemTongKim",0,1000000000,"Nh�p S� L��ng:")
end
function DiemTongKim(nNum)
SetTask(PlayerPoint,nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m T�ng Kim...!<color>")
end
--------------------------------Ki�n Thi�t-----------------------------------------------------------------------------------
function kienthiet()
local tbItem = {
	{szName="Ki�n Thi�t L� Bao", tbProp={6,1,30217,1,0,0},nCount = 10},
	{szName="Chi�n B� L� Bao", tbProp={6,1,30219,1,0,0},nCount = 10},
}
tbAwardTemplet:GiveAwardByList(tbItem, "Ph�n Th��ng");
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c Ki�n Thi�t L� Bao...!<color>")
end

----------------------------�i�m Thu�c T�nh--------------------------------------------------------------------------------------------------
function ThuocTinh()
local tab_Content =
{
"�i�m K� N�ng/pointkynang",
"�i�m Ti�m N�ng/pointtiemnang",
"Tr� L�i/hotro",
"Th�i/no",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y Ch�n Ch�c N�ng", getn(tab_Content), tab_Content)
end
-----------------------------Point K� N�ng---------------------------------------------------------------------------------
function pointkynang()
AskClientForNumber("pointkynang1",0,100000,"Nh�p S� L��ng:") 
end;
function pointkynang1(nNum)
AddMagicPoint(nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m K� N�ng...!<color>")
end
---------------------------Point Ti�m N�ng-------------------------------------------------------------------------------
function pointtiemnang()
AskClientForNumber("pointtiemnang1",0,10000,"Nh�p S� L��ng:") 
end;
function pointtiemnang1(nNum)
AddProp(nNum)
Msg2Player("<color=yellow>Ch�c M�ng "..myplayersex().." Nh�n ���c "..nNum.." �i�m Ti�m N�ng...!<color>")
end
---------------------------------T�y �i�m Thu�c T�nh---------------------------------------------------------------------------------------
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

------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------
function trangthai()
local tbSay = {}
tinsert(tbSay,"H� Tr� Chi�n ��u/GMSkill")
tinsert(tbSay,"GM �n Th�n.../GManthan")
tinsert(tbSay,"GM Hi�n Th�n.../XoaSkillGM")
tinsert(tbSay,"Ch�nh Ph�i./mauvang")
tinsert(tbSay,"T� Ph�i./mautim")
tinsert(tbSay,"Trung L�p./mauxanh")
tinsert(tbSay,"S�t Th�./maudo")
tinsert(tbSay,"Nh�n V�t Ch� Tr�ng./mautrang")
tinsert(tbSay,"Chi�n ��u/ChienDau")
tinsert(tbSay,"Phi Chi�n ��u/PhiChienDau")
tinsert(tbSay,"Admin./mauadmin")
tinsert(tbSay,"Tho�t/no")
tinsert(tbSay,"Tr� l�i")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n tr�ng th�i m� b�n mu�n !", getn(tbSay), tbSay)
end
-----------------------------------------------------------------------------------------------------------------------
--function GMSkill()
--AddMagic(1003,20)
--AddMagic(1310,20)
--end

function GManthan()
AddMagic(732,20)
AddMagic(733,20)
Msg2Player("<color=pink>Ch�c M�ng B�n �� H�c ���c Skill GM...")
end

function XoaSkillGM()
DelMagic(732,20)
DelMagic(733,20)
DelMagic(1003.20)
DelMagic(1310.20)
Msg2Player("B�n �� X�a K� N�ng GM Th�nh C�ng")
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n th�n trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end--for
	Msg2Player("Thao t�c h�y v�t ph�m th�nh c�ng")
	Talk(1, "", "Thao t�c th�nh c�ng, ki�m tra l�i!");	
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NangDanhHieu6() 

tbAwardVip6 = {
	{szName="B�o R��ng Minh Ph��ng H�ng Li�n",tbProp={6,1,4480,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nBindState = -2},
	{szName="B�o R��ng Minh Ph��ng Kh�i",tbProp={6,1,4481,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nBindState = -2},
	{szName="B�o R��ng Minh Ph��ng Th��ng Gi�i",tbProp={6,1,4482,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nBindState = -2},
	{szName="B�o R��ng Minh Ph��ng H� Uy�n",tbProp={6,1,4483,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nBindState = -2},
	{szName="B�o R��ng Minh Ph��ng Y�u ��i",tbProp={6,1,4484,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nBindState = -2},
	{szName="B�o R��ng Minh Ph��ng Kh�i",tbProp={6,1,4485,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nBindState = -2},
	{szName="B�o R��ng Minh Ph��ng V� Kh�",tbProp={6,1,4486,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nBindState = -2},
	{szName="B�o R��ng Minh Ph��ng H�i",tbProp={6,1,4487,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nBindState = -2},
	{szName="B�o R��ng Minh Ph��ng B�i",tbProp={6,1,4488,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nBindState = -2},
	{szName="B�o R��ng Minh Ph��ng H� Gi�i",tbProp={6,1,4489,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
}

gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
local FreeCell = CalcFreeItemCellCount()
if (FreeCell >= 20) and (GetExtPoint(3)<6)then
	PlayerFunLib:AddSkillState(1507,20,3,559872000,1)
Msg2Player("Qu�n l� <color=pink>GM<color> �� Danh Hi�u Vip 6 Th�nh C�ng");
	tbAwardTemplet:GiveAwardByList(tbAwardVip6,"Ph�n Th��ng ��t M�c 1.500.000 Ng�n")
	AddExtPoint(2,1200-GetExtPoint(2));
  AddExtPoint(3,6-GetExtPoint(3)) ;
else
PlayerIndex=gmidx 
Talk(1,"","<bclr=violet>"..myplayersex().." H�y n�i game th� �� tr�ng 20 �,ho�c �� l� Vip 6 ")
end
PlayerIndex=gmidx 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Danh Hi�u Vip 6 Th�nh C�ng");
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
Msg2Player("Qu�n l� <color=pink>GM<color> �� X�a �i�m Vip Th�nh C�ng");
SetTask(5991,0)
SetTask(5990,0)
for i = 1502,1511 do
RemoveSkillState(i,20,3,559872000,1)
end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM X�a �i�m Vip Th�nh C�ng"); 
end;

--------------------------------------------------------ReLoadFile---------------------------------------
function NhapDuongDanFileCanReLoadOK(Link)
        local ReloadScript = LoadScript(Link);
        if (FALSE(ReloadScript )) then
            Msg2Player("Xu�t hi�n l�i ho�c sai ���ng d�n, kh�ng th� Reload file!<enter><color=green>"..Link.."");
        else
            Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=green>"..Link.."");
        end
end

function Reloadfile()
    return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>Nh�p ���ng d�n")
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
local szTitle = "V� L�m h�n hoan ch�o ��n c�c v� anh h�ng b�n h�u ��n v�i server.";
local tbOpt = 
{
{"L�y �� Ho�ng Kim (-1)",LayMenuHKMP},
{"L�y �� Queskey (ID)",LayMenuQueskey},
{"L�y �� Magic (ID)",LayMenuMagic},
{"L�y Ng�a (ID)",LayMenuNgua},
{"L�y M�t N� (ID)",LayMenuMatNa},
{"Tho�t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end






function ChucNangQuanLyGM()
tbGmRole:GMC_Menu()

end

function ReLoadScript()
	local szTitle = "Nh�n ���ng link:<color=red> Y�u c�u ch�nh x�c<color>"
	local tbOpt = 
	{
		{"Nh�p ���ng d�n",NhapDuongDanFileCanReLoad},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
--------------------------------- RELOAD SCRIPT NPC TU LENH BAI ADMINISTRATOR ------------------------------------
--------------------------------- THU CONG DUONG DAN CAN RELOAD FILE ---------------------------------
function NhapDuongDanFileCanReLoadOK(Link)
		local ReloadScript = LoadScript(Link);
		if (FALSE(ReloadScript )) then
			Msg2Player("Xu�t hi�n l�i, kh�ng th� Reload!<enter><color=yellow>"..Link.."");
		else
			Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=blue>"..Link.."");
		end
end

function NhapDuongDanFileCanReLoad()
	return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>Nh�p ���ng d�n")
end
function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end



---------------------------------------------------------------------------------