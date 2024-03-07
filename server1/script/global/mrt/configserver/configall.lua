GMAccountList = {
    "mrchubo3",
    "mrchubo0",
    "toan1",
    "damme", 
}
AdminAccountList = {
    "2",
    "3",
}

SupportAccountList = {
    "1",
    "1",
}

GSAcLangCoc={
    isEnable = 0,
 nStartDate= 202401010000,
 nEndDate = 202402010000,
}
EventNhaGiaoVN2011 = {
    isEnable = 0,
    StartDate = 202211130000,
    EndDate = 202212010000,
    SpecialDate = 202212010000,-- ngay nhan qua dac biet
    ItemExpiredTime=20221201, -- ngay het han vat pham Event
}

VanTieu = {
    isEnable = 0,

    nStartDate = 201204020000,
    nEndDate = 203005010000 -- 205005010000
}
JXMU = {
    isEnable = 1,
    Name = "T�nh n�ng JXMU",
    StartDate = 202209150000,
    EndDate = 203001010000,
}
phuquycamhap = {
    isEnable = 1,
    Name = "Ph� Qu� C�m H�p",
    StartDate = 202209150000,
    EndDate = 200001010000,
}
EventNoel2011 = {
    isEnable = 0,
    StartDate = 202212170000,
    EndDate = 202301010000,
    ItemExpiredTime=20230101, -- ngay het han vat pham Event
}
EventGhepHoaHong = {
    isEnable = 0,
    StartDate = 202210200000,
    EndDate = 202211130000,
}
TinSu = {
    isEnable = 0,
}
EventSocola2014 = {
    isEnable = 0,
    StartDate = 202302100000,
    EndDate = 202302280000,
    ItemExpiredTime = 202302280000, -- ngay het han vat pham Event
    SCL1_MAX = 10000,
    SCL2_MAX = 20000,
    SCL3_MAX = 20000,
    SCL4_MAX = 20000,
    Event_Name = "Event-14-2-2023"
}

NewYearGhepPhao = {
    isEnable = 0,
    Name = "Ho�t ��ng T�t 2024",
    StartDate = 202312010000,
    EndDate = 202402150000,
    ItemExpiredTime=202402150000, -- ngay het han vat pham Event
}
TrungThu2010 = {
    isEnable = 0,
    Name = "Ho�t ��ng trung thu 2010",
    StartDate = 202306250000,
    EndDate = 202307300000,
    CheckStartDay = 20230620,
    CheckEndDay = 20230730,
    ExpiredTime = 20230730,
}
NewYearEventMamNguQua = {
    isEnable = 0,
    Name = "Ho�t ��ng Event T�t 2024",
    StartDate = 202312010000,
    EndDate = 202401150000,
    ItemExpiredTime=202401150000
 }
 eventTinhNhan = {
 isEnable = 0,
 Name = "Event t�nh nh�n 2024",
 StartDate = 202306250000,
 EndDate = 202307300000,
 CheckStartDay = 20230620,
 CheckEndDay = 20230730,
 ExpiredTime = 20230730,
}
eventMiNi={
    isEnable = 0,
    Name = "Event Mini 30-04",
    StartDate = 202306250000,
    EndDate = 202307300000,
    CheckStartDay = 20230620,
    CheckEndDay = 20230730,
    ExpiredTime = 20230730,
   }
eventThang6 ={
    isEnable = 0,
    Name = "Event Th�ng 6",
    StartDate = 202306250000,
    EndDate = 202307300000,
    CheckStartDay = 20230620,
    CheckEndDay = 20230730,
    ExpiredTime = 20230730,
   }

eventThang10 ={
    isEnable = 0,
    Name = "Event Thang 10 - Ph� N� Vi�t Nam",
    StartDate = 202306250000,
    EndDate = 202307300000,
    CheckStartDay = 20230620,
    CheckEndDay = 20230730,
    ExpiredTime = 20230730,
   }

PhongVanLenhBai ={
    isEnable = 0,
    Name = "Phong V�n L�nh B�i",
    StartDate = 202306250000,
    EndDate = 202307300000,
    CheckStartDay = 20230620,
    CheckEndDay = 20230730,
    ExpiredTime = 20230730,
   }
VuLanBaoHieu ={
    isEnable = 0,
    Name = "M�ng phi�n b�n m�i",
    StartDate = 202306250000,
    EndDate = 202307300000,
    CheckStartDay = 20230620,
    CheckEndDay = 20230730,
    ExpiredTime = 20230730,
   }

EventNgoiSaoTuyet = {
    isEnable = 0,
    Name = "Event ng�i sao tuy�t",
    StartDate = 202306250000,
    EndDate = 202307300000,
    CheckStartDay = 20230620,
    CheckEndDay = 20230730,
    ExpiredTime = 20230730,
}
----------------------------------------------------Config Server--------------------------------------------------------------																										
--0: T�t , 1: M�																										

FanePage = "https://www.facebook.com/volamMUvn"

--===============================================X�p H�ng T�p Theo Time ================================
ThoiGianBatDauBXH = 20240211
ThoiGianKetThucDuaTop = 20240219
CapKhiLoginVaoServer = 9 -- = c�p mong mu�n - �i 1
CapDo = 1 --��ng nh�p l�n ��u khi t�o nh�n v�t t� ��ng l�n c�p theo ch� ��nh																										
--============================================================================================================--																										
--													Ho�t ��ng												  --	
--============================================================================================================--																										
NPCCongThanhQuan3Tru = 0
PhongLangDo = 1
NPCVoLamLienDau = 1
LoanChienCuuChauCoc = 0 --T�a NPC Ch��ng ��ng Cung N�																										
HoatDongDauNguu = 0 --T�a NPC Ch��ng ��ng Cung N�																										
CauCa = 0 --T�i Thuy�n Phu C�c th�nh																										
-------NPC Nhi�p Nh� Tr�n-------------																										
NPCNhipThiTran = 1
SoNguoiThapNhatThamGiaVuotAi = 1
SoLanVuotAiTrongNgay = 2
SoLuongBossSatThuTrongNgay = 999
-------B�u Cua----------------																										
BauCua = 0 -- Trung T�m T��ng D��ng																										
ThoiGianBatDauBauCua = 0600
ThoiGianKetThucBauCua = 1200
ThoiGianBatDauBauCuaText = "T�nh n�ng ch� ���c khai m� khung gi� 6h-12h h�ng ng�y. Vui l�ng quay l�i sau"
ThoiGianKetThucBauCuaText = 12
------T�ng Kim----------------																										
ThamGiaTongKim = 1
KiemTraIpChongBoostDiemTongKim = 0
KhongCoNguoiDanhLenDiemTongKim = 1
VongSangTopTongKim9h = 1
ThuongTopTongKimTuDong9h = 1
------Th�t Th�nh ��i Chi�n ---------																										
ThatThanhDaiChien = 0
SoTienBaoDanhCanNop = 10000000
SoKhieuChienLenhCanNop = 500
-----T�n S�------																										
HoatDongTinSu = 0
TinSuPhongKy = 0
TinSuThienBaoKho = 0
TinSuSonThanMieu = 0
Mo3LoaiTinSuNhuVNG = 1 --(Phong K�: Bi�n Kinh - D��ng Ch�u, Th��ng B�o Kh�: Th�nh �� - T��ng D��ng, S�n Th�n Mi�u: L�m An - Ph��ng T��ng, ��i L� random 3 map)																										
---Boss Ho�ng Kim------																										
SoLuongBossHoangKimGoiRa = 10  --s� l��ng boss ho�ng kim g�i ra m�i ng�y, max l� 20																										
KinhNghiemGietBoss = 20000000
KinhNghiemNguoiChoiDungXungQuanh = 1000000
TyLeRotDoPho = 1 ---100 t��ng �ng v�i 100%																										
TyLeRotTrangBiHoangKim = 1 ---100 t��ng �ng v�i 100%																										
---Boss Ti�u Ho�ng Kim------																										
KinhNghiemGietBossTieu = 3000000;
-----D� T�u ------------																										
NPCDaTau = 1
SoLanNVDaTauTrongNgay = 100 -- ghi S� l�n ���c Ph�p Ho�n Th�nh 
capdoduocnhannhiemvu = 90 -- ch�nh c�p bn th� c�p �� ���c nh�n nv
PhanThuongTienVan = 0.09 --Ch�nh c�ng cao c�ng ���c nhi�u
PhanThuongKinhNghiem = 0.09 --Ch�nh c�ng cao c�ng ���c nhi�u
-----------------------
--============================================================================================================--
--												NPC													  --
--============================================================================================================--
------NPC Ti�n Trang--------------
NPCTienTrang = 1
PhuongThucDoi = 1 -------- 1: KNB, 2: Ti�n ��ng
TyLeNapThe = 100 --VD 50.000VND ����c 500xu ho�c 50.000 ���c 500 KNB
TyLeDoiKnbSangTienDong = 50 -- 1 KNB = 50 Ti�n ��ng (M� n�u b�c ph��ng th�c KNB)
-----------------------
NPCLongNgu = 0
--------Hi�u Thu�c---------																										
TatNPCHieuThuocAllThanh = 0
ScriptMuaThuoc = 0
--------T�p H�a------------																										
TatNPCTapHoaAllThanh = 0
ScriptMuaTBTapHoa = 0
--------Th� R�n-----------																										
TatNPCThoRenAllThanh = 0
ScriptMuaTBThoRen = 0
--------B�n Ng�a---------																										
TatNPCBanNguaAllThanh = 0
ScriptBanNgua = 0
--------Si�u nh�n h�ng rong ---------																										
LBSieuNhanHangRong = 0
--============================================================================================================--																										
--												T�nh N�ng													  --	
--============================================================================================================--	
--========================================= t?t m? mrtG_ACTIVITY ============================================--
mrtG_ACTIVITY = {
    isEnable = 1,
    nStartDate = 202402020000,
    nEndDate   = 203004020000,
}
ThoiGianBaoTriServer = 30 --T�nh b�ng gi�y																										
UongChaoLapBat = 0
AllowUyThacBachCauHoan = 1
ThayDoiNgoaiTrang = 0 -- Thay ��i Ngo�i Trang trung t�m T��ng D��ng																										
DoiTenNhanVat = 1 -- V� L�m Minh Ch� L�m An																										
GiftCode = 0 --Trung T�m Ba L�ng Huy�n																										
KhoaChucNangGiaoDich = 0
KhoaChucNangBayBan = 0
--============================================================================================================--																										
--										H� tr� Test Game - Open Server										  --						
--============================================================================================================--																										
----------------Th�i Gian Open Server ----------------------------																										
ThoiGianOpenServer = 202006111700 --N�m/Th�ng/Ng�y/Gi�/Ph�t																										
ThoiGianOpenServerText = "Th�i gian open server l� 17h, xin h�y quay lai sau" --s�a l�i c�u tho�i cho ph� h�p																										
ThoiGianNhanThuongDuaTop = 202007050000 --Nh�n trong NPC l� quan																										
ThoiGianKetThucNhanThuongDuaTop = 202007110000
----------------B�t T�nh N�ng Test Game ------------------------------																										
HoTroTestGame = 0 -- lenhbaihotro.lua
-------------------C�c T�nh N�ng H� Tr� T�n Th� ------------------------------																										
NhanHoTroKyNang1xDen6x = 1
VongSangHoTroTanThu = 1 --/home/jxser/server1/script/global/mrt/hotrotanthu/vongsangtanthu.lua																										
GioiHanCapNhanHoTroVongSang = 200
TocDoHoiPhucManaVongSangHoTro = 50
TocDoHoiPhucMauVongSangHoTro = 100
----------------Ch�nh Server Theo D�ng Nh�n �� Free PK -------------------------																										
ChinhServerPkNhanFullDoVaCap = 0
--Th�ng tin: 
-- + Nh�n 1 b� trang b� ho�ng kim m�n ph�i t�y ch�n kh�a, ch� ch�n ���c 1 l�n
-- + Nh�n c�c lo�i �i�m (tr� ti�n ��ng v� KNB), th� c��i, ��i m�u, th�nh l�p Bang, trang b� xanh, t�m.
-- + NPC ch�c n�ng t�p trung � Trung T�m T��ng D��ng
-- + ��i V� Kh� Xanh Trung T�m T��ng D��ng
--NPC
ChuyenDoiTrangBiHoangKim = 0 -- Chuy�n ��i 1 Set Trang B� Ho�ng Kim M�n ph�i n�y s�ng trang b� Ho�ng Kim M�n Ph�i kh�c ho�c c�ng 1 ph�i
TienDongChuyenTrangBi = 300
DoiVatPham = 0 -- ��i nguy�n li�u c�c ho�t ��ng																										
BanItemHoTro = 0 -- NPC b�n c�c v�t ph�m h� tr� nh� Thu�c lag T�ng Kim,..																										
DoiVuKhiXanh = 0 -- ��i V� Kh� Xanh, c�n l�i, test l�i sau																										
--============================================================================================================--																										
--													Shop													  --
--============================================================================================================--																										
---------K� Tr�n C�c----------------																										
OpenShopKTC = 1
DiemNapTheSuDungKTC = 1 --B�ng v�i t� l� n�p xu VD 50.000VND ���c 500 �i�m, n�u kh�ng �� s� �i�m s� kh�ng s� d�ng ���c K� Tr�n C�c (N�u kh�ng s� d�ng t�nh n�ng n�y th� cho b�ng 0)																										
--------Shop T�ng Kim---------																										
ShopTongKim = 1
ScriptShopTongKim = 0
--------Shop Li�n ��u---------																										
ShopLienDau = 1
ScriptShopLienDau = 0
-----------------------																										
OpenShopThanBiThuongNhan = 1
--============================================================================================================--																										
--												  Di Chuy�n													  --	
--============================================================================================================--																										
KiemTraCapDoTrainMapVuotCap = 1
DiDenNgonNuiTruongBachThanBiThuongNhan = 0
ChienLongDong = 1
DiViSonDao = 1
--============================================================================================================--																										
--												  V�t Ph�m													  --	
--============================================================================================================--																										
SuDoThiep = 0
GioiHanTTK = 100
GioiHanVLMT = 50
--============================================================================================================--																										
--											   	�p Trang B�													  --	
--============================================================================================================--																										
AllowCheTaoDoTim = 1
DucVatPham = 1
RotDoTimViSonDaoVaMacBac = 1
TyLeRotTrangBiTim = 1 --Ch�nh c�ng cao c�ng r�t nhi�u																										
EpTrangBiBachKim = 1
NangCapNgua = 1
--============================================================================================================--																										
--												Gi�i h�n IP													  --	
--============================================================================================================--																										
GioiHanLoginIP = 1
SoLuongAccGioiHan = 2
--============================================================================================================--																										
--												  K� N�ng													  --	
--============================================================================================================--																										
HocKyNang120 = 0
VoDanhTangHocSkill150 = 0
-------------------------------------------
----Skill V�n ��c Th�c T�m T�ng D�n Dame----
--M�c ��nh -105, -300
nVanDocThucTam1Skill = -105
nVanDocThucTam20Skill = -200
------------------------------------
----T�c �� luy�n skill c�c ph�i----
--M�c ��nh l� 2
--Thi�u L�m--
nTocDoLuyenSkillThieuLam = 80
--Thi�n V��ng--																										
nTocDoLuyenSkillThienVuong = 80
--���ng M�n--																										
nTocDoLuyenSkillDuongMon = 80
--Ng� ��c--																										
nTocDoLuyenSkillNguDoc = 80
--Th�y Y�n--																										
nTocDoLuyenSkillThuyYen = 80
--Nga My--																										
nTocDoLuyenSkillNgaMy = 80
--C�i Bang--																										
nTocDoLuyenSkillCaiBang = 80
--Thi�n Nh�n--																										
nTocDoLuyenSkillThienNhan = 80
--V� �ang--																										
nTocDoLuyenSkillVoDang = 80
--C�n L�n--																										
nTocDoLuyenSkillConLon = 80
--============================================================================================================--																										
--													Event 12 th�ng											  --		
--============================================================================================================--																										
EventTuDong = 0
------------------------------------------------------------------------																										
--		Gi�i h�n s� d�ng Event th��ng v� ��c bi�t			--																					
------------------------------------------------------------------------																										
nGioiHanEventThuong = 1000
nGioiHanEventDacBiet = 2000
------------------------------------------------------------------------																										
--			Gi�i h�n event m�c 1 2 3				--																			
------------------------------------------------------------------------																										
nGioiHanMoc1 = 1000
nGioiHanMoc2 = 1500
nGioiHanMoc3 = 2000
------------------------------------------------------------------------																										
--	T� l� gh�p event 1 s� th�ng (100 l� max t��ng ���ng 100%)		--																							
------------------------------------------------------------------------																										
--------event th�ng 2 gh�p Ph�o-----------------------																										
TyLePhaoTrungPhaoDai = {50,50}
TyLeGhepPhongPhaoDai = {20}
TyLeGhepPhongPhaoTrung = {50}
TyLeGhepPhongPhaoTieu = {70}
--------event th�ng 4 gh�p L� C� Chi�n Th�ng----------																										
TyLeGhepLaCoChienThang = {100}
--------event th�ng 6 gh�p B�nh Kem-------------------																										
TyLeBanhKemCatTuong = {100}
TyLeBanhKemNhuY = {100}
--------event th�ng 9 gh�p Qu� Qu�c Kh�nh-------------																										
TyLeGhepQuaQuocKhanh = {100}
--------event th�ng 11 gh�p B� Ki�p Gia Truy�n--------																										
TyLeGhepBiKiepGiaTruyen = {100}
KyNangVaoPhai = 80
TienTrang = 1
LoanHoanKichEnable = 1
PhongVanBaoDien = {
    isEnable = 1
}
----------------------------------------------------k� n�ng v�o ph�i -----------------
mrtKyNangVaoPhai = 120 -- k� n�ng v�o ph�i l� c�p �� , kh�ng ph�i l� 1 ho�c 0
-----------------------------------------------------------------------------
function isGMAccount(account)
    for i=1, getn(%GMAccountList) do
		if account == %GMAccountList[i] then
			return 1;
		end
    end
    return 0;
end

function isAdminAccount(account)
    for i=1, getn(%AdminAccountList) do
		if account == %AdminAccountList[i] then
			return 1;
		end
    end
    return 0;
end


