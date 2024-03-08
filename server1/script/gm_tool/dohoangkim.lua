function TrangBiCaoCap()
	local tab_Content = {
		"Trang B� Ng�u Nhi�n Thu�c T�nh/DoHoangKim",
		"Trang B� Thu�c T�nh T�i �a/DoHoangKimMax",
		"Quay L�i/QuanLyChucNang",
		"K�t Th�c/No",
	}
	Say("H�y Ch�n Lo�i Trang B�", getn(tab_Content), tab_Content)
end

function DoHoangKim()
	local tab_Content = {
		"Trang B� Thanh C�u/ThanhCau",
		"Trang B� V�n L�c/VanLoc",
		"Trang B� Th��ng Lang/ThuongLang",
		"Trang B� Huy�n Vi�n/HuyenVien",
		"Trang B� T� M�ng/TuMang",
		"Trang B� Kim �/KimO",
		"Trang B� B�ch H�/BachHo",
		"Trang B� X�ch L�n/XichLan",
		"Trang B� Minh Ph��ng/MinhPhuong",
		"Trang B� ��ng Long/DangLong",
		"Trang B� Tinh S��ng/TinhSuong",
		"Trang B� Nguy�t Khuy�t/NguyetKhuyet",
		"Trang B� Di�u D��ng/DieuDuong",
		"Trang B� Anh H�o/AnhHao",
		"Trang B� Thi�n M�nh/ThienMenh",
		"K�t Th�c/No"
	}
	Say("H�y Ch�n Lo�i Trang B�", getn(tab_Content), tab_Content)
end
-----------------------------------------------------------------------------
function ThanhCau()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetThanhCau(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetThanhCau(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetThanhCau(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetThanhCau(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetThanhCau(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetThanhCau(6)",
	"Ch�n: <Nga My Ki�m>/#SetThanhCau(7)",
	"Ch�n: <Nga My Ch��ng>/#SetThanhCau(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetThanhCau(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetThanhCau(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetThanhCau(11)",
	"Ch�n: <Ng� ��c �ao>/#SetThanhCau(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetThanhCau(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetThanhCau(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetThanhCau(15)",
	"Trang K�/ThanhCaus")
end

function ThanhCaus()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetThanhCau(16)",
	"Ch�n: <C�i Bang B�ng>/#SetThanhCau(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetThanhCau(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetThanhCau(19)",
	"Ch�n: <V� �ang Quy�n>/#SetThanhCau(20)",
	"Ch�n: <V� �ang Ki�m>/#SetThanhCau(21)",
	"Ch�n: <C�n L�n �ao>/#SetThanhCau(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetThanhCau(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetThanhCau(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetThanhCau(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetThanhCau(26)",
	--"Ch�n: <V� H�n �ao>/#SetThanhCau(27)",
	"Quay L�i/ThanhCau",
	"K�t Th�c/No")
end

function SetThanhCau(nId)
	for i = 680,689 do
		AddGoldItem(0,10*nId+i-10)
	end
end
----------------------------------------------------------------------
function VanLoc()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetVanLoc(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetVanLoc(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetVanLoc(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetVanLoc(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetVanLoc(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetVanLoc(6)",
	"Ch�n: <Nga My Ki�m>/#SetVanLoc(7)",
	"Ch�n: <Nga My Ch��ng>/#SetVanLoc(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetVanLoc(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetVanLoc(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetVanLoc(11)",
	"Ch�n: <Ng� ��c �ao>/#SetVanLoc(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetVanLoc(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetVanLoc(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetVanLoc(15)",
	"Trang K�/VanLocs")
end

function VanLocs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetVanLoc(16)",
	"Ch�n: <C�i Bang B�ng>/#SetVanLoc(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetVanLoc(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetVanLoc(19)",
	"Ch�n: <V� �ang Quy�n>/#SetVanLoc(20)",
	"Ch�n: <V� �ang Ki�m>/#SetVanLoc(21)",
	"Ch�n: <C�n L�n �ao>/#SetVanLoc(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetVanLoc(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetVanLoc(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetVanLoc(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetVanLoc(26)",
	--"Ch�n: <V� H�n �ao>/#SetVanLoc(27)",
	"Quay L�i/VanLoc",
	"K�t Th�c/No")
end

function SetVanLoc(nId)
	for i = 950,959 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function ThuongLang()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetThuongLang(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetThuongLang(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetThuongLang(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetThuongLang(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetThuongLang(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetThuongLang(6)",
	"Ch�n: <Nga My Ki�m>/#SetThuongLang(7)",
	"Ch�n: <Nga My Ch��ng>/#SetThuongLang(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetThuongLang(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetThuongLang(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetThuongLang(11)",
	"Ch�n: <Ng� ��c �ao>/#SetThuongLang(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetThuongLang(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetThuongLang(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetThuongLang(15)",
	"Trang K�/ThuongLangs")
end

function ThuongLangs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetThuongLang(16)",
	"Ch�n: <C�i Bang B�ng>/#SetThuongLang(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetThuongLang(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetThuongLang(19)",
	"Ch�n: <V� �ang Quy�n>/#SetThuongLang(20)",
	"Ch�n: <V� �ang Ki�m>/#SetThuongLang(21)",
	"Ch�n: <C�n L�n �ao>/#SetThuongLang(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetThuongLang(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetThuongLang(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetThuongLang(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetThuongLang(26)",
	--"Ch�n: <V� H�n �ao>/#SetThuongLang(27)",
	"Quay L�i/ThuongLang",
	"K�t Th�c/No")
end

function SetThuongLang(nId)
	for i = 1220,1229 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function HuyenVien()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetHuyenVien(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetHuyenVien(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetHuyenVien(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetHuyenVien(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetHuyenVien(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetHuyenVien(6)",
	"Ch�n: <Nga My Ki�m>/#SetHuyenVien(7)",
	"Ch�n: <Nga My Ch��ng>/#SetHuyenVien(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetHuyenVien(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetHuyenVien(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetHuyenVien(11)",
	"Ch�n: <Ng� ��c �ao>/#SetHuyenVien(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetHuyenVien(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetHuyenVien(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetHuyenVien(15)",
	"Trang K�/HuyenViens")
end

function HuyenViens()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetHuyenVien(16)",
	"Ch�n: <C�i Bang B�ng>/#SetHuyenVien(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetHuyenVien(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetHuyenVien(19)",
	"Ch�n: <V� �ang Quy�n>/#SetHuyenVien(20)",
	"Ch�n: <V� �ang Ki�m>/#SetHuyenVien(21)",
	"Ch�n: <C�n L�n �ao>/#SetHuyenVien(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetHuyenVien(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetHuyenVien(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetHuyenVien(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetHuyenVien(26)",
	--"Ch�n: <V� H�n �ao>/#SetHuyenVien(27)",
	"Quay L�i/HuyenVien",
	"K�t Th�c/No")
end

function SetHuyenVien(nId)
	for i = 1490,1499 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function TuMang()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetTuMang(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetTuMang(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetTuMang(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetTuMang(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetTuMang(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetTuMang(6)",
	"Ch�n: <Nga My Ki�m>/#SetTuMang(7)",
	"Ch�n: <Nga My Ch��ng>/#SetTuMang(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetTuMang(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetTuMang(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetTuMang(11)",
	"Ch�n: <Ng� ��c �ao>/#SetTuMang(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetTuMang(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetTuMang(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetTuMang(15)",
	"Trang K�/TuMangs")
end

function TuMangs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetTuMang(16)",
	"Ch�n: <C�i Bang B�ng>/#SetTuMang(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetTuMang(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetTuMang(19)",
	"Ch�n: <V� �ang Quy�n>/#SetTuMang(20)",
	"Ch�n: <V� �ang Ki�m>/#SetTuMang(21)",
	"Ch�n: <C�n L�n �ao>/#SetTuMang(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetTuMang(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetTuMang(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetTuMang(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetTuMang(26)",
	--"Ch�n: <V� H�n �ao>/#SetTuMang(27)",
	"Quay L�i/TuMang",
	"K�t Th�c/No")
end

function SetTuMang(nId)
	for i = 1760,1769 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function KimO()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetKimO(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetKimO(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetKimO(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetKimO(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetKimO(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetKimO(6)",
	"Ch�n: <Nga My Ki�m>/#SetKimO(7)",
	"Ch�n: <Nga My Ch��ng>/#SetKimO(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetKimO(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetKimO(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetKimO(11)",
	"Ch�n: <Ng� ��c �ao>/#SetKimO(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetKimO(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetKimO(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetKimO(15)",
	"Trang K�/KimOs")
end

function KimOs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetKimO(16)",
	"Ch�n: <C�i Bang B�ng>/#SetKimO(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetKimO(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetKimO(19)",
	"Ch�n: <V� �ang Quy�n>/#SetKimO(20)",
	"Ch�n: <V� �ang Ki�m>/#SetKimO(21)",
	"Ch�n: <C�n L�n �ao>/#SetKimO(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetKimO(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetKimO(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetKimO(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetKimO(26)",
	--"Ch�n: <V� H�n �ao>/#SetKimO(27)",
	"Quay L�i/KimO",
	"K�t Th�c/No")
end

function SetKimO(nId)
	for i = 2030,2039 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function BachHo()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetBachHo(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetBachHo(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetBachHo(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetBachHo(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetBachHo(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetBachHo(6)",
	"Ch�n: <Nga My Ki�m>/#SetBachHo(7)",
	"Ch�n: <Nga My Ch��ng>/#SetBachHo(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetBachHo(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetBachHo(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetBachHo(11)",
	"Ch�n: <Ng� ��c �ao>/#SetBachHo(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetBachHo(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetBachHo(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetBachHo(15)",
	"Trang K�/BachHos")
end

function BachHos()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetBachHo(16)",
	"Ch�n: <C�i Bang B�ng>/#SetBachHo(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetBachHo(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetBachHo(19)",
	"Ch�n: <V� �ang Quy�n>/#SetBachHo(20)",
	"Ch�n: <V� �ang Ki�m>/#SetBachHo(21)",
	"Ch�n: <C�n L�n �ao>/#SetBachHo(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetBachHo(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetBachHo(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetBachHo(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetBachHo(26)",
	--"Ch�n: <V� H�n �ao>/#SetBachHo(27)",
	"Quay L�i/BachHo",
	"K�t Th�c/No")
end

function SetBachHo(nId)
	for i = 2300,2309 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function XichLan()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetXichLan(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetXichLan(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetXichLan(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetXichLan(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetXichLan(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetXichLan(6)",
	"Ch�n: <Nga My Ki�m>/#SetXichLan(7)",
	"Ch�n: <Nga My Ch��ng>/#SetXichLan(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetXichLan(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetXichLan(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetXichLan(11)",
	"Ch�n: <Ng� ��c �ao>/#SetXichLan(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetXichLan(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetXichLan(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetXichLan(15)",
	"Trang K�/XichLans")
end

function XichLans()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetXichLan(16)",
	"Ch�n: <C�i Bang B�ng>/#SetXichLan(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetXichLan(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetXichLan(19)",
	"Ch�n: <V� �ang Quy�n>/#SetXichLan(20)",
	"Ch�n: <V� �ang Ki�m>/#SetXichLan(21)",
	"Ch�n: <C�n L�n �ao>/#SetXichLan(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetXichLan(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetXichLan(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetXichLan(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetXichLan(26)",
	--"Ch�n: <V� H�n �ao>/#SetXichLan(27)",
	"Quay L�i/XichLan",
	"K�t Th�c/No")
end

function SetXichLan(nId)
	for i = 2570,2579 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function MinhPhuong()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetMinhPhuong(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetMinhPhuong(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetMinhPhuong(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetMinhPhuong(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetMinhPhuong(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetMinhPhuong(6)",
	"Ch�n: <Nga My Ki�m>/#SetMinhPhuong(7)",
	"Ch�n: <Nga My Ch��ng>/#SetMinhPhuong(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetMinhPhuong(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetMinhPhuong(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetMinhPhuong(11)",
	"Ch�n: <Ng� ��c �ao>/#SetMinhPhuong(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetMinhPhuong(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetMinhPhuong(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetMinhPhuong(15)",
	"Trang K�/MinhPhuongs")
end

function MinhPhuongs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetMinhPhuong(16)",
	"Ch�n: <C�i Bang B�ng>/#SetMinhPhuong(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetMinhPhuong(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetMinhPhuong(19)",
	"Ch�n: <V� �ang Quy�n>/#SetMinhPhuong(20)",
	"Ch�n: <V� �ang Ki�m>/#SetMinhPhuong(21)",
	"Ch�n: <C�n L�n �ao>/#SetMinhPhuong(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetMinhPhuong(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetMinhPhuong(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetMinhPhuong(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetMinhPhuong(26)",
	--"Ch�n: <V� H�n �ao>/#SetMinhPhuong(27)",
	"Quay L�i/MinhPhuong",
	"K�t Th�c/No")
end

function SetMinhPhuong(nId)
	for i = 2840,2849 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function DangLong()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetDangLong(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetDangLong(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetDangLong(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetDangLong(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetDangLong(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetDangLong(6)",
	"Ch�n: <Nga My Ki�m>/#SetDangLong(7)",
	"Ch�n: <Nga My Ch��ng>/#SetDangLong(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetDangLong(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetDangLong(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetDangLong(11)",
	"Ch�n: <Ng� ��c �ao>/#SetDangLong(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetDangLong(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetDangLong(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetDangLong(15)",
	"Trang K�/DangLongs")
end

function DangLongs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetDangLong(16)",
	"Ch�n: <C�i Bang B�ng>/#SetDangLong(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetDangLong(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetDangLong(19)",
	"Ch�n: <V� �ang Quy�n>/#SetDangLong(20)",
	"Ch�n: <V� �ang Ki�m>/#SetDangLong(21)",
	"Ch�n: <C�n L�n �ao>/#SetDangLong(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetDangLong(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetDangLong(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetDangLong(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetDangLong(26)",
	--"Ch�n: <V� H�n �ao>/#SetDangLong(27)",
	"Quay L�i/DangLong",
	"K�t Th�c/No")
end

function SetDangLong(nId)
	for i = 3110,3119 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function TinhSuong()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetTinhSuong(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetTinhSuong(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetTinhSuong(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetTinhSuong(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetTinhSuong(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetTinhSuong(6)",
	"Ch�n: <Nga My Ki�m>/#SetTinhSuong(7)",
	"Ch�n: <Nga My Ch��ng>/#SetTinhSuong(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetTinhSuong(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetTinhSuong(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetTinhSuong(11)",
	"Ch�n: <Ng� ��c �ao>/#SetTinhSuong(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetTinhSuong(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetTinhSuong(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetTinhSuong(15)",
	"Trang K�/TinhSuongs")
end

function TinhSuongs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetTinhSuong(16)",
	"Ch�n: <C�i Bang B�ng>/#SetTinhSuong(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetTinhSuong(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetTinhSuong(19)",
	"Ch�n: <V� �ang Quy�n>/#SetTinhSuong(20)",
	"Ch�n: <V� �ang Ki�m>/#SetTinhSuong(21)",
	"Ch�n: <C�n L�n �ao>/#SetTinhSuong(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetTinhSuong(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetTinhSuong(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetTinhSuong(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetTinhSuong(26)",
	--"Ch�n: <V� H�n �ao>/#SetTinhSuong(27)",
	"Quay L�i/TinhSuong",
	"K�t Th�c/No")
end

function SetTinhSuong(nId)
	for i = 3380,3389 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function NguyetKhuyet()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetNguyetKhuyet(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetNguyetKhuyet(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetNguyetKhuyet(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetNguyetKhuyet(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetNguyetKhuyet(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetNguyetKhuyet(6)",
	"Ch�n: <Nga My Ki�m>/#SetNguyetKhuyet(7)",
	"Ch�n: <Nga My Ch��ng>/#SetNguyetKhuyet(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetNguyetKhuyet(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetNguyetKhuyet(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetNguyetKhuyet(11)",
	"Ch�n: <Ng� ��c �ao>/#SetNguyetKhuyet(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetNguyetKhuyet(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetNguyetKhuyet(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetNguyetKhuyet(15)",
	"Trang K�/NguyetKhuyets")
end

function NguyetKhuyets()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetNguyetKhuyet(16)",
	"Ch�n: <C�i Bang B�ng>/#SetNguyetKhuyet(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetNguyetKhuyet(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetNguyetKhuyet(19)",
	"Ch�n: <V� �ang Quy�n>/#SetNguyetKhuyet(20)",
	"Ch�n: <V� �ang Ki�m>/#SetNguyetKhuyet(21)",
	"Ch�n: <C�n L�n �ao>/#SetNguyetKhuyet(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetNguyetKhuyet(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetNguyetKhuyet(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetNguyetKhuyet(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetNguyetKhuyet(26)",
	--"Ch�n: <V� H�n �ao>/#SetNguyetKhuyet(27)",
	"Quay L�i/NguyetKhuyet",
	"K�t Th�c/No")
end

function SetNguyetKhuyet(nId)
	for i = 3650,3659 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function DieuDuong()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetDieuDuong(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetDieuDuong(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetDieuDuong(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetDieuDuong(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetDieuDuong(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetDieuDuong(6)",
	"Ch�n: <Nga My Ki�m>/#SetDieuDuong(7)",
	"Ch�n: <Nga My Ch��ng>/#SetDieuDuong(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetDieuDuong(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetDieuDuong(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetDieuDuong(11)",
	"Ch�n: <Ng� ��c �ao>/#SetDieuDuong(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetDieuDuong(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetDieuDuong(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetDieuDuong(15)",
	"Trang K�/DieuDuongs")
end

function DieuDuongs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetDieuDuong(16)",
	"Ch�n: <C�i Bang B�ng>/#SetDieuDuong(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetDieuDuong(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetDieuDuong(19)",
	"Ch�n: <V� �ang Quy�n>/#SetDieuDuong(20)",
	"Ch�n: <V� �ang Ki�m>/#SetDieuDuong(21)",
	"Ch�n: <C�n L�n �ao>/#SetDieuDuong(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetDieuDuong(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetDieuDuong(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetDieuDuong(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetDieuDuong(26)",
	--"Ch�n: <V� H�n �ao>/#SetDieuDuong(27)",
	"Quay L�i/DieuDuong",
	"K�t Th�c/No")
end

function SetDieuDuong(nId)
	for i = 3920,3929 do
		AddGoldItem(0,10*nId+i-10)
	end
end
--------------------------------------------------------------
function AnhHao()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetAnhHao(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetAnhHao(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetAnhHao(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetAnhHao(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetAnhHao(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetAnhHao(6)",
	"Ch�n: <Nga My Ki�m>/#SetAnhHao(7)",
	"Ch�n: <Nga My Ch��ng>/#SetAnhHao(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetAnhHao(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetAnhHao(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetAnhHao(11)",
	"Ch�n: <Ng� ��c �ao>/#SetAnhHao(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetAnhHao(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetAnhHao(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetAnhHao(15)",
	"Trang K�/AnhHaos")
end

function AnhHaos()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetAnhHao(16)",
	"Ch�n: <C�i Bang B�ng>/#SetAnhHao(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetAnhHao(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetAnhHao(19)",
	"Ch�n: <V� �ang Quy�n>/#SetAnhHao(20)",
	"Ch�n: <V� �ang Ki�m>/#SetAnhHao(21)",
	"Ch�n: <C�n L�n �ao>/#SetAnhHao(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetAnhHao(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetAnhHao(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetAnhHao(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetAnhHao(26)",
	--"Ch�n: <V� H�n �ao>/#SetAnhHao(27)",
	"Quay L�i/AnhHao",
	"K�t Th�c/No")
end

function SetAnhHao(nId)
	for i = 4190,4199 do
		AddGoldItem(0,10*nId+i-10)
	end
end
--------------------------------------------------------------------------
function ThienMenh()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetThienMenh(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetThienMenh(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetThienMenh(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetThienMenh(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetThienMenh(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetThienMenh(6)",
	"Ch�n: <Nga My Ki�m>/#SetThienMenh(7)",
	"Ch�n: <Nga My Ch��ng>/#SetThienMenh(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetThienMenh(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetThienMenh(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetThienMenh(11)",
	"Ch�n: <Ng� ��c �ao>/#SetThienMenh(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetThienMenh(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetThienMenh(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetThienMenh(15)",
	"Trang K�/ThienMenhs")
end

function ThienMenhs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetThienMenh(16)",
	"Ch�n: <C�i Bang B�ng>/#SetThienMenh(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetThienMenh(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetThienMenh(19)",
	"Ch�n: <V� �ang Quy�n>/#SetThienMenh(20)",
	"Ch�n: <V� �ang Ki�m>/#SetThienMenh(21)",
	"Ch�n: <C�n L�n �ao>/#SetThienMenh(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetThienMenh(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetThienMenh(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetThienMenh(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetThienMenh(26)",
	--"Ch�n: <V� H�n �ao>/#SetThienMenh(27)",
	"Quay L�i/ThienMenh",
	"K�t Th�c/No")
end

function SetThienMenh(nId)
	for i = 4460,4469 do
		AddGoldItem(0,10*nId+i-10)
	end
end
-------------------------------------------------------------------------Trang B� Maxofftion--------------------------------------------------------------------------------------------------------------------------------
function DoHoangKimMax()
	local tab_Content = {
		"Trang B� Thanh C�u/ThanhCauMax",
		"Trang B� V�n L�c/VanLocMax",
		"Trang B� Th��ng Lang/ThuongLangMax",
		"Trang B� Huy�n Vi�n/HuyenVienMax",
		"Trang B� T� M�ng/TuMangMax",
		"Trang B� Kim �/KimOMax",
		"Trang B� B�ch H�/BachHoMax",
		"Trang B� X�ch L�n/XichLanMax",
		"Trang B� Minh Ph��ng/MinhPhuongMax",
		"Trang B� ��ng Long/DangLongMax",
		"Trang B� Tinh S��ng/TinhSuongMax",
		"Trang B� Nguy�t Khuy�t/NguyetKhuyetMax",
		"Trang B� Di�u D��ng/DieuDuongMax",
		"Trang B� Anh H�o/AnhHaoMax",
		"Trang B� Thi�n M�nh/ThienMenhMax",
		"K�t Th�c/No"
	}
	Say("H�y Ch�n Lo�i Trang B�", getn(tab_Content), tab_Content)
end
---------------------------------------------------------------------
function ThanhCauMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetThanhCauMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetThanhCauMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetThanhCauMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetThanhCauMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetThanhCauMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetThanhCauMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetThanhCauMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetThanhCauMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetThanhCauMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetThanhCauMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetThanhCauMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetThanhCauMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetThanhCauMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetThanhCauMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetThanhCauMax(15)",
	"Trang K�/ThanhCauMaxs")
end

function ThanhCauMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetThanhCauMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetThanhCauMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetThanhCauMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetThanhCauMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetThanhCauMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetThanhCauMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetThanhCauMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetThanhCauMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetThanhCauMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetThanhCauMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetThanhCauMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetThanhCauMax(27)",
	"Quay L�i/ThanhCauMax",
	"K�t Th�c/No")
end

function SetThanhCauMax(nId)
	for i = 4730,4739 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function VanLocMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetVanLocMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetVanLocMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetVanLocMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetVanLocMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetVanLocMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetVanLocMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetVanLocMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetVanLocMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetVanLocMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetVanLocMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetVanLocMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetVanLocMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetVanLocMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetVanLocMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetVanLocMax(15)",
	"Trang K�/VanLocMaxs")
end

function VanLocMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetVanLocMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetVanLocMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetVanLocMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetVanLocMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetVanLocMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetVanLocMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetVanLocMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetVanLocMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetVanLocMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetVanLocMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetVanLocMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetVanLocMax(27)",
	"Quay L�i/VanLocMax",
	"K�t Th�c/No")
end

function SetVanLocMax(nId)
	for i = 5000,5009 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function ThuongLangMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetThuongLangMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetThuongLangMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetThuongLangMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetThuongLangMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetThuongLangMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetThuongLangMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetThuongLangMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetThuongLangMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetThuongLangMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetThuongLangMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetThuongLangMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetThuongLangMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetThuongLangMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetThuongLangMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetThuongLangMax(15)",
	"Trang K�/ThuongLangMaxs")
end

function ThuongLangMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetThuongLangMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetThuongLangMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetThuongLangMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetThuongLangMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetThuongLangMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetThuongLangMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetThuongLangMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetThuongLangMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetThuongLangMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetThuongLangMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetThuongLangMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetThuongLangMax(27)",
	"Quay L�i/ThuongLangMax",
	"K�t Th�c/No")
end

function SetThuongLangMax(nId)
	for i = 5270,5279 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function HuyenVienMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetHuyenVienMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetHuyenVienMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetHuyenVienMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetHuyenVienMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetHuyenVienMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetHuyenVienMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetHuyenVienMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetHuyenVienMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetHuyenVienMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetHuyenVienMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetHuyenVienMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetHuyenVienMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetHuyenVienMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetHuyenVienMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetHuyenVienMax(15)",
	"Trang K�/HuyenVienMaxs")
end

function HuyenVienMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetHuyenVienMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetHuyenVienMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetHuyenVienMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetHuyenVienMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetHuyenVienMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetHuyenVienMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetHuyenVienMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetHuyenVienMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetHuyenVienMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetHuyenVienMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetHuyenVienMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetHuyenVienMax(27)",
	"Quay L�i/HuyenVienMax",
	"K�t Th�c/No")
end

function SetHuyenVienMax(nId)
	for i = 5540,5549 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function TuMangMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetTuMangMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetTuMangMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetTuMangMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetTuMangMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetTuMangMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetTuMangMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetTuMangMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetTuMangMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetTuMangMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetTuMangMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetTuMangMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetTuMangMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetTuMangMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetTuMangMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetTuMangMax(15)",
	"Trang K�/TuMangMaxs")
end

function TuMangMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetTuMangMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetTuMangMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetTuMangMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetTuMangMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetTuMangMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetTuMangMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetTuMangMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetTuMangMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetTuMangMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetTuMangMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetTuMangMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetTuMangMax(27)",
	"Quay L�i/TuMangMax",
	"K�t Th�c/No")
end

function SetTuMangMax(nId)
	for i = 5810,5819 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function KimOMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetKimOMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetKimOMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetKimOMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetKimOMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetKimOMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetKimOMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetKimOMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetKimOMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetKimOMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetKimOMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetKimOMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetKimOMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetKimOMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetKimOMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetKimOMax(15)",
	"Trang K�/KimOMaxs")
end

function KimOMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetKimOMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetKimOMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetKimOMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetKimOMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetKimOMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetKimOMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetKimOMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetKimOMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetKimOMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetKimOMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetKimOMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetKimOMax(27)",
	"Quay L�i/KimOMax",
	"K�t Th�c/No")
end

function SetKimOMax(nId)
	for i = 6080,6089 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function BachHoMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetBachHoMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetBachHoMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetBachHoMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetBachHoMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetBachHoMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetBachHoMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetBachHoMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetBachHoMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetBachHoMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetBachHoMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetBachHoMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetBachHoMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetBachHoMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetBachHoMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetBachHoMax(15)",
	"Trang K�/BachHoMaxs")
end

function BachHoMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetBachHoMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetBachHoMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetBachHoMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetBachHoMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetBachHoMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetBachHoMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetBachHoMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetBachHoMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetBachHoMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetBachHoMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetBachHoMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetBachHoMax(27)",
	"Quay L�i/BachHoMax",
	"K�t Th�c/No")
end

function SetBachHoMax(nId)
	for i = 6350,6359 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function XichLanMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetXichLanMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetXichLanMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetXichLanMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetXichLanMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetXichLanMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetXichLanMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetXichLanMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetXichLanMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetXichLanMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetXichLanMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetXichLanMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetXichLanMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetXichLanMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetXichLanMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetXichLanMax(15)",
	"Trang K�/XichLanMaxs")
end

function XichLanMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetXichLanMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetXichLanMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetXichLanMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetXichLanMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetXichLanMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetXichLanMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetXichLanMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetXichLanMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetXichLanMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetXichLanMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetXichLanMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetXichLanMax(27)",
	"Quay L�i/XichLanMax",
	"K�t Th�c/No")
end

function SetXichLanMax(nId)
	for i = 6620,6629 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function MinhPhuongMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetMinhPhuongMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetMinhPhuongMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetMinhPhuongMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetMinhPhuongMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetMinhPhuongMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetMinhPhuongMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetMinhPhuongMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetMinhPhuongMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetMinhPhuongMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetMinhPhuongMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetMinhPhuongMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetMinhPhuongMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetMinhPhuongMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetMinhPhuongMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetMinhPhuongMax(15)",
	"Trang K�/MinhPhuongMaxs")
end

function MinhPhuongMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetMinhPhuongMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetMinhPhuongMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetMinhPhuongMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetMinhPhuongMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetMinhPhuongMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetMinhPhuongMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetMinhPhuongMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetMinhPhuongMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetMinhPhuongMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetMinhPhuongMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetMinhPhuongMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetMinhPhuongMax(27)",
	"Quay L�i/MinhPhuongMax",
	"K�t Th�c/No")
end

function SetMinhPhuongMax(nId)
	for i = 6890,6899 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function DangLongMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetDangLongMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetDangLongMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetDangLongMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetDangLongMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetDangLongMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetDangLongMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetDangLongMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetDangLongMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetDangLongMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetDangLongMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetDangLongMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetDangLongMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetDangLongMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetDangLongMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetDangLongMax(15)",
	"Trang K�/DangLongMaxs")
end

function DangLongMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetDangLongMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetDangLongMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetDangLongMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetDangLongMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetDangLongMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetDangLongMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetDangLongMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetDangLongMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetDangLongMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetDangLongMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetDangLongMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetDangLongMax(27)",
	"Quay L�i/DangLongMax",
	"K�t Th�c/No")
end

function SetDangLongMax(nId)
	for i = 7160,7169 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function TinhSuongMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetTinhSuongMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetTinhSuongMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetTinhSuongMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetTinhSuongMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetTinhSuongMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetTinhSuongMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetTinhSuongMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetTinhSuongMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetTinhSuongMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetTinhSuongMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetTinhSuongMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetTinhSuongMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetTinhSuongMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetTinhSuongMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetTinhSuongMax(15)",
	"Trang K�/TinhSuongMaxs")
end

function TinhSuongMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetTinhSuongMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetTinhSuongMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetTinhSuongMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetTinhSuongMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetTinhSuongMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetTinhSuongMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetTinhSuongMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetTinhSuongMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetTinhSuongMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetTinhSuongMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetTinhSuongMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetTinhSuongMax(27)",
	"Quay L�i/TinhSuongMax",
	"K�t Th�c/No")
end

function SetTinhSuongMax(nId)
	for i = 7430,7439 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function NguyetKhuyetMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetNguyetKhuyetMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetNguyetKhuyetMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetNguyetKhuyetMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetNguyetKhuyetMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetNguyetKhuyetMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetNguyetKhuyetMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetNguyetKhuyetMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetNguyetKhuyetMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetNguyetKhuyetMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetNguyetKhuyetMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetNguyetKhuyetMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetNguyetKhuyetMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetNguyetKhuyetMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetNguyetKhuyetMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetNguyetKhuyetMax(15)",
	"Trang K�/NguyetKhuyetMaxs")
end

function NguyetKhuyetMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetNguyetKhuyetMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetNguyetKhuyetMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetNguyetKhuyetMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetNguyetKhuyetMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetNguyetKhuyetMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetNguyetKhuyetMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetNguyetKhuyetMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetNguyetKhuyetMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetNguyetKhuyetMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetNguyetKhuyetMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetNguyetKhuyetMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetNguyetKhuyet(27)",
	"Quay L�i/NguyetKhuyetMax",
	"K�t Th�c/No")
end

function SetNguyetKhuyetMax(nId)
	for i = 7700,7709 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function DieuDuongMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetDieuDuongMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetDieuDuongMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetDieuDuongMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetDieuDuongMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetDieuDuongMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetDieuDuongMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetDieuDuongMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetDieuDuongMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetDieuDuongMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetDieuDuongMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetDieuDuongMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetDieuDuongMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetDieuDuongMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetDieuDuongMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetDieuDuongMax(15)",
	"Trang K�/DieuDuongMaxs")
end

function DieuDuongMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetDieuDuongMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetDieuDuongMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetDieuDuongMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetDieuDuongMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetDieuDuongMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetDieuDuongMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetDieuDuongMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetDieuDuongMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetDieuDuongMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetDieuDuongMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetDieuDuongMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetDieuDuongMax(27)",
	"Quay L�i/DieuDuongMax",
	"K�t Th�c/No")
end

function SetDieuDuongMax(nId)
	for i = 7970,7979 do
		AddGoldItem(0,10*nId+i-10)
	end
end
-------------------------------------------------------------------
function AnhHaoMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetAnhHaoMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetAnhHaoMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetAnhHaoMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetAnhHaoMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetAnhHaoMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetAnhHaoMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetAnhHaoMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetAnhHaoMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetAnhHaoMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetAnhHaoMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetAnhHaoMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetAnhHaoMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetAnhHaoMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetAnhHaoMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetAnhHaoMax(15)",
	"Trang K�/AnhHaoMaxs")
end

function AnhHaoMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetAnhHaoMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetAnhHaoMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetAnhHaoMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetAnhHaoMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetAnhHaoMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetAnhHaoMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetAnhHaoMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetAnhHaoMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetAnhHaoMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetAnhHaoMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetAnhHaoMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetAnhHaoMax(27)",
	"Quay L�i/AnhHaoMax",
	"K�t Th�c/No")
end

function SetAnhHaoMax(nId)
	for i = 8240,8249 do
		AddGoldItem(0,10*nId+i-10)
	end
end

-------------------------------------------------------------------
function ThienMenhMax()
Say("H�y Ch�n M�n Ph�i",16,
	"Ch�n: <Thi�u L�m Quy�n>/#SetThienMenhMax(1)",
	"Ch�n: <Thi�u L�m B�ng>/#SetThienMenhMax(2)",
	"Ch�n: <Thi�u L�m �ao>/#SetThienMenhMax(3)",
	"Ch�n: <Thi�n V��ng Ch�y>/#SetThienMenhMax(4)",
	"Ch�n: <Thi�n V��ng Th��ng>/#SetThienMenhMax(5)",
	"Ch�n: <Thi�n V��ng �ao>/#SetThienMenhMax(6)",
	"Ch�n: <Nga My Ki�m>/#SetThienMenhMax(7)",
	"Ch�n: <Nga My Ch��ng>/#SetThienMenhMax(8)",
	"Ch�n: <Th�y Y�n �ao>/#SetThienMenhMax(9)",
	"Ch�n: <Th�y Y�n N�i>/#SetThienMenhMax(10)",
	"Ch�n: <Ng� ��c Ch��ng>/#SetThienMenhMax(11)",
	"Ch�n: <Ng� ��c �ao>/#SetThienMenhMax(12)",
	"Ch�n: <���ng M�n Phi �ao>/#SetThienMenhMax(13)",
	"Ch�n: <���ng M�n N� Ti�n>/#SetThienMenhMax(14)",
	"Ch�n: <���ng M�n Phi Ti�u>/#SetThienMenhMax(15)",
	"Trang K�/ThienMenhMaxs")
end

function ThienMenhMaxs()
Say("H�y Ch�n M�n Ph�i",12,
	"Ch�n: <C�i Bang Ch��ng>/#SetThienMenhMax(16)",
	"Ch�n: <C�i Bang B�ng>/#SetThienMenhMax(17)",
	"Ch�n: <Thi�n Nh�n K�ch>/#SetThienMenhMax(18)",
	"Ch�n: <Thi�n Nh�n �ao>/#SetThienMenhMax(19)",
	"Ch�n: <V� �ang Quy�n>/#SetThienMenhMax(20)",
	"Ch�n: <V� �ang Ki�m>/#SetThienMenhMax(21)",
	"Ch�n: <C�n L�n �ao>/#SetThienMenhMax(22)",
	"Ch�n: <C�n L�n Ki�m>/#SetThienMenhMax(23)",
	--"Ch�n: <Hoa S�n Kh�>/#SetThienMenhMax(24)",
	--"Ch�n: <Hoa S�n Ki�m>/#SetThienMenhMax(25)",
	--"Ch�n: <V� H�n Thu�n>/#SetThienMenhMax(26)",
	--"Ch�n: <V� H�n �ao>/#SetThienMenhMax(27)",
	"Quay L�i/ThienMenhMax",
	"K�t Th�c/No")
end

function SetThienMenhMax(nId)
	for i = 8510,8519 do
		AddGoldItem(0,10*nId+i-10)
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------