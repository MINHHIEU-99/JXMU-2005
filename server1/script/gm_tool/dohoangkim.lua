function TrangBiCaoCap()
	local tab_Content = {
		"Trang BÞ NgÉu Nhiªn Thuéc TÝnh/DoHoangKim",
		"Trang BÞ Thuéc TÝnh Tèi §a/DoHoangKimMax",
		"Quay L¹i/QuanLyChucNang",
		"KÕt Thóc/No",
	}
	Say("H·y Chän Lo¹i Trang BÞ", getn(tab_Content), tab_Content)
end

function DoHoangKim()
	local tab_Content = {
		"Trang BÞ Thanh C©u/ThanhCau",
		"Trang BÞ V©n Léc/VanLoc",
		"Trang BÞ Th­¬ng Lang/ThuongLang",
		"Trang BÞ HuyÒn Viªn/HuyenVien",
		"Trang BÞ Tö M·ng/TuMang",
		"Trang BÞ Kim ¤/KimO",
		"Trang BÞ B¹ch Hæ/BachHo",
		"Trang BÞ XÝch L©n/XichLan",
		"Trang BÞ Minh Ph­îng/MinhPhuong",
		"Trang BÞ §»ng Long/DangLong",
		"Trang BÞ Tinh S­¬ng/TinhSuong",
		"Trang BÞ NguyÖt KhuyÕt/NguyetKhuyet",
		"Trang BÞ DiÖu D­¬ng/DieuDuong",
		"Trang BÞ Anh Hµo/AnhHao",
		"Trang BÞ Thiªn MÖnh/ThienMenh",
		"KÕt Thóc/No"
	}
	Say("H·y Chän Lo¹i Trang BÞ", getn(tab_Content), tab_Content)
end
-----------------------------------------------------------------------------
function ThanhCau()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetThanhCau(1)",
	"Chän: <Thiªu L©m Bæng>/#SetThanhCau(2)",
	"Chän: <Thiªu L©m §ao>/#SetThanhCau(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetThanhCau(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetThanhCau(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetThanhCau(6)",
	"Chän: <Nga My KiÕm>/#SetThanhCau(7)",
	"Chän: <Nga My Ch­ëng>/#SetThanhCau(8)",
	"Chän: <Thóy Yªn §ao>/#SetThanhCau(9)",
	"Chän: <Thóy Yªn Néi>/#SetThanhCau(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetThanhCau(11)",
	"Chän: <Ngò §éc §ao>/#SetThanhCau(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetThanhCau(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetThanhCau(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetThanhCau(15)",
	"Trang KÕ/ThanhCaus")
end

function ThanhCaus()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetThanhCau(16)",
	"Chän: <C¸i Bang Bæng>/#SetThanhCau(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetThanhCau(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetThanhCau(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetThanhCau(20)",
	"Chän: <Vâ §ang KiÕm>/#SetThanhCau(21)",
	"Chän: <C«n L«n §ao>/#SetThanhCau(22)",
	"Chän: <C«n L«n KiÕm>/#SetThanhCau(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetThanhCau(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetThanhCau(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetThanhCau(26)",
	--"Chän: <Vò Hån §ao>/#SetThanhCau(27)",
	"Quay L¹i/ThanhCau",
	"KÕt Thóc/No")
end

function SetThanhCau(nId)
	for i = 680,689 do
		AddGoldItem(0,10*nId+i-10)
	end
end
----------------------------------------------------------------------
function VanLoc()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetVanLoc(1)",
	"Chän: <Thiªu L©m Bæng>/#SetVanLoc(2)",
	"Chän: <Thiªu L©m §ao>/#SetVanLoc(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetVanLoc(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetVanLoc(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetVanLoc(6)",
	"Chän: <Nga My KiÕm>/#SetVanLoc(7)",
	"Chän: <Nga My Ch­ëng>/#SetVanLoc(8)",
	"Chän: <Thóy Yªn §ao>/#SetVanLoc(9)",
	"Chän: <Thóy Yªn Néi>/#SetVanLoc(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetVanLoc(11)",
	"Chän: <Ngò §éc §ao>/#SetVanLoc(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetVanLoc(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetVanLoc(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetVanLoc(15)",
	"Trang KÕ/VanLocs")
end

function VanLocs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetVanLoc(16)",
	"Chän: <C¸i Bang Bæng>/#SetVanLoc(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetVanLoc(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetVanLoc(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetVanLoc(20)",
	"Chän: <Vâ §ang KiÕm>/#SetVanLoc(21)",
	"Chän: <C«n L«n §ao>/#SetVanLoc(22)",
	"Chän: <C«n L«n KiÕm>/#SetVanLoc(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetVanLoc(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetVanLoc(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetVanLoc(26)",
	--"Chän: <Vò Hån §ao>/#SetVanLoc(27)",
	"Quay L¹i/VanLoc",
	"KÕt Thóc/No")
end

function SetVanLoc(nId)
	for i = 950,959 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function ThuongLang()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetThuongLang(1)",
	"Chän: <Thiªu L©m Bæng>/#SetThuongLang(2)",
	"Chän: <Thiªu L©m §ao>/#SetThuongLang(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetThuongLang(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetThuongLang(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetThuongLang(6)",
	"Chän: <Nga My KiÕm>/#SetThuongLang(7)",
	"Chän: <Nga My Ch­ëng>/#SetThuongLang(8)",
	"Chän: <Thóy Yªn §ao>/#SetThuongLang(9)",
	"Chän: <Thóy Yªn Néi>/#SetThuongLang(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetThuongLang(11)",
	"Chän: <Ngò §éc §ao>/#SetThuongLang(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetThuongLang(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetThuongLang(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetThuongLang(15)",
	"Trang KÕ/ThuongLangs")
end

function ThuongLangs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetThuongLang(16)",
	"Chän: <C¸i Bang Bæng>/#SetThuongLang(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetThuongLang(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetThuongLang(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetThuongLang(20)",
	"Chän: <Vâ §ang KiÕm>/#SetThuongLang(21)",
	"Chän: <C«n L«n §ao>/#SetThuongLang(22)",
	"Chän: <C«n L«n KiÕm>/#SetThuongLang(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetThuongLang(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetThuongLang(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetThuongLang(26)",
	--"Chän: <Vò Hån §ao>/#SetThuongLang(27)",
	"Quay L¹i/ThuongLang",
	"KÕt Thóc/No")
end

function SetThuongLang(nId)
	for i = 1220,1229 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function HuyenVien()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetHuyenVien(1)",
	"Chän: <Thiªu L©m Bæng>/#SetHuyenVien(2)",
	"Chän: <Thiªu L©m §ao>/#SetHuyenVien(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetHuyenVien(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetHuyenVien(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetHuyenVien(6)",
	"Chän: <Nga My KiÕm>/#SetHuyenVien(7)",
	"Chän: <Nga My Ch­ëng>/#SetHuyenVien(8)",
	"Chän: <Thóy Yªn §ao>/#SetHuyenVien(9)",
	"Chän: <Thóy Yªn Néi>/#SetHuyenVien(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetHuyenVien(11)",
	"Chän: <Ngò §éc §ao>/#SetHuyenVien(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetHuyenVien(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetHuyenVien(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetHuyenVien(15)",
	"Trang KÕ/HuyenViens")
end

function HuyenViens()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetHuyenVien(16)",
	"Chän: <C¸i Bang Bæng>/#SetHuyenVien(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetHuyenVien(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetHuyenVien(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetHuyenVien(20)",
	"Chän: <Vâ §ang KiÕm>/#SetHuyenVien(21)",
	"Chän: <C«n L«n §ao>/#SetHuyenVien(22)",
	"Chän: <C«n L«n KiÕm>/#SetHuyenVien(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetHuyenVien(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetHuyenVien(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetHuyenVien(26)",
	--"Chän: <Vò Hån §ao>/#SetHuyenVien(27)",
	"Quay L¹i/HuyenVien",
	"KÕt Thóc/No")
end

function SetHuyenVien(nId)
	for i = 1490,1499 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function TuMang()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetTuMang(1)",
	"Chän: <Thiªu L©m Bæng>/#SetTuMang(2)",
	"Chän: <Thiªu L©m §ao>/#SetTuMang(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetTuMang(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetTuMang(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetTuMang(6)",
	"Chän: <Nga My KiÕm>/#SetTuMang(7)",
	"Chän: <Nga My Ch­ëng>/#SetTuMang(8)",
	"Chän: <Thóy Yªn §ao>/#SetTuMang(9)",
	"Chän: <Thóy Yªn Néi>/#SetTuMang(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetTuMang(11)",
	"Chän: <Ngò §éc §ao>/#SetTuMang(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetTuMang(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetTuMang(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetTuMang(15)",
	"Trang KÕ/TuMangs")
end

function TuMangs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetTuMang(16)",
	"Chän: <C¸i Bang Bæng>/#SetTuMang(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetTuMang(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetTuMang(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetTuMang(20)",
	"Chän: <Vâ §ang KiÕm>/#SetTuMang(21)",
	"Chän: <C«n L«n §ao>/#SetTuMang(22)",
	"Chän: <C«n L«n KiÕm>/#SetTuMang(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetTuMang(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetTuMang(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetTuMang(26)",
	--"Chän: <Vò Hån §ao>/#SetTuMang(27)",
	"Quay L¹i/TuMang",
	"KÕt Thóc/No")
end

function SetTuMang(nId)
	for i = 1760,1769 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function KimO()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetKimO(1)",
	"Chän: <Thiªu L©m Bæng>/#SetKimO(2)",
	"Chän: <Thiªu L©m §ao>/#SetKimO(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetKimO(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetKimO(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetKimO(6)",
	"Chän: <Nga My KiÕm>/#SetKimO(7)",
	"Chän: <Nga My Ch­ëng>/#SetKimO(8)",
	"Chän: <Thóy Yªn §ao>/#SetKimO(9)",
	"Chän: <Thóy Yªn Néi>/#SetKimO(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetKimO(11)",
	"Chän: <Ngò §éc §ao>/#SetKimO(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetKimO(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetKimO(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetKimO(15)",
	"Trang KÕ/KimOs")
end

function KimOs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetKimO(16)",
	"Chän: <C¸i Bang Bæng>/#SetKimO(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetKimO(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetKimO(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetKimO(20)",
	"Chän: <Vâ §ang KiÕm>/#SetKimO(21)",
	"Chän: <C«n L«n §ao>/#SetKimO(22)",
	"Chän: <C«n L«n KiÕm>/#SetKimO(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetKimO(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetKimO(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetKimO(26)",
	--"Chän: <Vò Hån §ao>/#SetKimO(27)",
	"Quay L¹i/KimO",
	"KÕt Thóc/No")
end

function SetKimO(nId)
	for i = 2030,2039 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function BachHo()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetBachHo(1)",
	"Chän: <Thiªu L©m Bæng>/#SetBachHo(2)",
	"Chän: <Thiªu L©m §ao>/#SetBachHo(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetBachHo(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetBachHo(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetBachHo(6)",
	"Chän: <Nga My KiÕm>/#SetBachHo(7)",
	"Chän: <Nga My Ch­ëng>/#SetBachHo(8)",
	"Chän: <Thóy Yªn §ao>/#SetBachHo(9)",
	"Chän: <Thóy Yªn Néi>/#SetBachHo(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetBachHo(11)",
	"Chän: <Ngò §éc §ao>/#SetBachHo(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetBachHo(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetBachHo(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetBachHo(15)",
	"Trang KÕ/BachHos")
end

function BachHos()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetBachHo(16)",
	"Chän: <C¸i Bang Bæng>/#SetBachHo(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetBachHo(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetBachHo(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetBachHo(20)",
	"Chän: <Vâ §ang KiÕm>/#SetBachHo(21)",
	"Chän: <C«n L«n §ao>/#SetBachHo(22)",
	"Chän: <C«n L«n KiÕm>/#SetBachHo(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetBachHo(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetBachHo(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetBachHo(26)",
	--"Chän: <Vò Hån §ao>/#SetBachHo(27)",
	"Quay L¹i/BachHo",
	"KÕt Thóc/No")
end

function SetBachHo(nId)
	for i = 2300,2309 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function XichLan()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetXichLan(1)",
	"Chän: <Thiªu L©m Bæng>/#SetXichLan(2)",
	"Chän: <Thiªu L©m §ao>/#SetXichLan(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetXichLan(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetXichLan(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetXichLan(6)",
	"Chän: <Nga My KiÕm>/#SetXichLan(7)",
	"Chän: <Nga My Ch­ëng>/#SetXichLan(8)",
	"Chän: <Thóy Yªn §ao>/#SetXichLan(9)",
	"Chän: <Thóy Yªn Néi>/#SetXichLan(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetXichLan(11)",
	"Chän: <Ngò §éc §ao>/#SetXichLan(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetXichLan(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetXichLan(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetXichLan(15)",
	"Trang KÕ/XichLans")
end

function XichLans()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetXichLan(16)",
	"Chän: <C¸i Bang Bæng>/#SetXichLan(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetXichLan(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetXichLan(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetXichLan(20)",
	"Chän: <Vâ §ang KiÕm>/#SetXichLan(21)",
	"Chän: <C«n L«n §ao>/#SetXichLan(22)",
	"Chän: <C«n L«n KiÕm>/#SetXichLan(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetXichLan(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetXichLan(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetXichLan(26)",
	--"Chän: <Vò Hån §ao>/#SetXichLan(27)",
	"Quay L¹i/XichLan",
	"KÕt Thóc/No")
end

function SetXichLan(nId)
	for i = 2570,2579 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function MinhPhuong()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetMinhPhuong(1)",
	"Chän: <Thiªu L©m Bæng>/#SetMinhPhuong(2)",
	"Chän: <Thiªu L©m §ao>/#SetMinhPhuong(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetMinhPhuong(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetMinhPhuong(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetMinhPhuong(6)",
	"Chän: <Nga My KiÕm>/#SetMinhPhuong(7)",
	"Chän: <Nga My Ch­ëng>/#SetMinhPhuong(8)",
	"Chän: <Thóy Yªn §ao>/#SetMinhPhuong(9)",
	"Chän: <Thóy Yªn Néi>/#SetMinhPhuong(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetMinhPhuong(11)",
	"Chän: <Ngò §éc §ao>/#SetMinhPhuong(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetMinhPhuong(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetMinhPhuong(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetMinhPhuong(15)",
	"Trang KÕ/MinhPhuongs")
end

function MinhPhuongs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetMinhPhuong(16)",
	"Chän: <C¸i Bang Bæng>/#SetMinhPhuong(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetMinhPhuong(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetMinhPhuong(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetMinhPhuong(20)",
	"Chän: <Vâ §ang KiÕm>/#SetMinhPhuong(21)",
	"Chän: <C«n L«n §ao>/#SetMinhPhuong(22)",
	"Chän: <C«n L«n KiÕm>/#SetMinhPhuong(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetMinhPhuong(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetMinhPhuong(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetMinhPhuong(26)",
	--"Chän: <Vò Hån §ao>/#SetMinhPhuong(27)",
	"Quay L¹i/MinhPhuong",
	"KÕt Thóc/No")
end

function SetMinhPhuong(nId)
	for i = 2840,2849 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function DangLong()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetDangLong(1)",
	"Chän: <Thiªu L©m Bæng>/#SetDangLong(2)",
	"Chän: <Thiªu L©m §ao>/#SetDangLong(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetDangLong(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetDangLong(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetDangLong(6)",
	"Chän: <Nga My KiÕm>/#SetDangLong(7)",
	"Chän: <Nga My Ch­ëng>/#SetDangLong(8)",
	"Chän: <Thóy Yªn §ao>/#SetDangLong(9)",
	"Chän: <Thóy Yªn Néi>/#SetDangLong(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetDangLong(11)",
	"Chän: <Ngò §éc §ao>/#SetDangLong(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetDangLong(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetDangLong(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetDangLong(15)",
	"Trang KÕ/DangLongs")
end

function DangLongs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetDangLong(16)",
	"Chän: <C¸i Bang Bæng>/#SetDangLong(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetDangLong(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetDangLong(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetDangLong(20)",
	"Chän: <Vâ §ang KiÕm>/#SetDangLong(21)",
	"Chän: <C«n L«n §ao>/#SetDangLong(22)",
	"Chän: <C«n L«n KiÕm>/#SetDangLong(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetDangLong(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetDangLong(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetDangLong(26)",
	--"Chän: <Vò Hån §ao>/#SetDangLong(27)",
	"Quay L¹i/DangLong",
	"KÕt Thóc/No")
end

function SetDangLong(nId)
	for i = 3110,3119 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function TinhSuong()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetTinhSuong(1)",
	"Chän: <Thiªu L©m Bæng>/#SetTinhSuong(2)",
	"Chän: <Thiªu L©m §ao>/#SetTinhSuong(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetTinhSuong(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetTinhSuong(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetTinhSuong(6)",
	"Chän: <Nga My KiÕm>/#SetTinhSuong(7)",
	"Chän: <Nga My Ch­ëng>/#SetTinhSuong(8)",
	"Chän: <Thóy Yªn §ao>/#SetTinhSuong(9)",
	"Chän: <Thóy Yªn Néi>/#SetTinhSuong(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetTinhSuong(11)",
	"Chän: <Ngò §éc §ao>/#SetTinhSuong(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetTinhSuong(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetTinhSuong(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetTinhSuong(15)",
	"Trang KÕ/TinhSuongs")
end

function TinhSuongs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetTinhSuong(16)",
	"Chän: <C¸i Bang Bæng>/#SetTinhSuong(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetTinhSuong(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetTinhSuong(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetTinhSuong(20)",
	"Chän: <Vâ §ang KiÕm>/#SetTinhSuong(21)",
	"Chän: <C«n L«n §ao>/#SetTinhSuong(22)",
	"Chän: <C«n L«n KiÕm>/#SetTinhSuong(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetTinhSuong(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetTinhSuong(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetTinhSuong(26)",
	--"Chän: <Vò Hån §ao>/#SetTinhSuong(27)",
	"Quay L¹i/TinhSuong",
	"KÕt Thóc/No")
end

function SetTinhSuong(nId)
	for i = 3380,3389 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function NguyetKhuyet()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetNguyetKhuyet(1)",
	"Chän: <Thiªu L©m Bæng>/#SetNguyetKhuyet(2)",
	"Chän: <Thiªu L©m §ao>/#SetNguyetKhuyet(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetNguyetKhuyet(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetNguyetKhuyet(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetNguyetKhuyet(6)",
	"Chän: <Nga My KiÕm>/#SetNguyetKhuyet(7)",
	"Chän: <Nga My Ch­ëng>/#SetNguyetKhuyet(8)",
	"Chän: <Thóy Yªn §ao>/#SetNguyetKhuyet(9)",
	"Chän: <Thóy Yªn Néi>/#SetNguyetKhuyet(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetNguyetKhuyet(11)",
	"Chän: <Ngò §éc §ao>/#SetNguyetKhuyet(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetNguyetKhuyet(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetNguyetKhuyet(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetNguyetKhuyet(15)",
	"Trang KÕ/NguyetKhuyets")
end

function NguyetKhuyets()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetNguyetKhuyet(16)",
	"Chän: <C¸i Bang Bæng>/#SetNguyetKhuyet(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetNguyetKhuyet(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetNguyetKhuyet(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetNguyetKhuyet(20)",
	"Chän: <Vâ §ang KiÕm>/#SetNguyetKhuyet(21)",
	"Chän: <C«n L«n §ao>/#SetNguyetKhuyet(22)",
	"Chän: <C«n L«n KiÕm>/#SetNguyetKhuyet(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetNguyetKhuyet(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetNguyetKhuyet(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetNguyetKhuyet(26)",
	--"Chän: <Vò Hån §ao>/#SetNguyetKhuyet(27)",
	"Quay L¹i/NguyetKhuyet",
	"KÕt Thóc/No")
end

function SetNguyetKhuyet(nId)
	for i = 3650,3659 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function DieuDuong()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetDieuDuong(1)",
	"Chän: <Thiªu L©m Bæng>/#SetDieuDuong(2)",
	"Chän: <Thiªu L©m §ao>/#SetDieuDuong(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetDieuDuong(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetDieuDuong(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetDieuDuong(6)",
	"Chän: <Nga My KiÕm>/#SetDieuDuong(7)",
	"Chän: <Nga My Ch­ëng>/#SetDieuDuong(8)",
	"Chän: <Thóy Yªn §ao>/#SetDieuDuong(9)",
	"Chän: <Thóy Yªn Néi>/#SetDieuDuong(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetDieuDuong(11)",
	"Chän: <Ngò §éc §ao>/#SetDieuDuong(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetDieuDuong(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetDieuDuong(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetDieuDuong(15)",
	"Trang KÕ/DieuDuongs")
end

function DieuDuongs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetDieuDuong(16)",
	"Chän: <C¸i Bang Bæng>/#SetDieuDuong(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetDieuDuong(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetDieuDuong(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetDieuDuong(20)",
	"Chän: <Vâ §ang KiÕm>/#SetDieuDuong(21)",
	"Chän: <C«n L«n §ao>/#SetDieuDuong(22)",
	"Chän: <C«n L«n KiÕm>/#SetDieuDuong(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetDieuDuong(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetDieuDuong(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetDieuDuong(26)",
	--"Chän: <Vò Hån §ao>/#SetDieuDuong(27)",
	"Quay L¹i/DieuDuong",
	"KÕt Thóc/No")
end

function SetDieuDuong(nId)
	for i = 3920,3929 do
		AddGoldItem(0,10*nId+i-10)
	end
end
--------------------------------------------------------------
function AnhHao()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetAnhHao(1)",
	"Chän: <Thiªu L©m Bæng>/#SetAnhHao(2)",
	"Chän: <Thiªu L©m §ao>/#SetAnhHao(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetAnhHao(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetAnhHao(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetAnhHao(6)",
	"Chän: <Nga My KiÕm>/#SetAnhHao(7)",
	"Chän: <Nga My Ch­ëng>/#SetAnhHao(8)",
	"Chän: <Thóy Yªn §ao>/#SetAnhHao(9)",
	"Chän: <Thóy Yªn Néi>/#SetAnhHao(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetAnhHao(11)",
	"Chän: <Ngò §éc §ao>/#SetAnhHao(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetAnhHao(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetAnhHao(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetAnhHao(15)",
	"Trang KÕ/AnhHaos")
end

function AnhHaos()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetAnhHao(16)",
	"Chän: <C¸i Bang Bæng>/#SetAnhHao(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetAnhHao(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetAnhHao(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetAnhHao(20)",
	"Chän: <Vâ §ang KiÕm>/#SetAnhHao(21)",
	"Chän: <C«n L«n §ao>/#SetAnhHao(22)",
	"Chän: <C«n L«n KiÕm>/#SetAnhHao(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetAnhHao(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetAnhHao(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetAnhHao(26)",
	--"Chän: <Vò Hån §ao>/#SetAnhHao(27)",
	"Quay L¹i/AnhHao",
	"KÕt Thóc/No")
end

function SetAnhHao(nId)
	for i = 4190,4199 do
		AddGoldItem(0,10*nId+i-10)
	end
end
--------------------------------------------------------------------------
function ThienMenh()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetThienMenh(1)",
	"Chän: <Thiªu L©m Bæng>/#SetThienMenh(2)",
	"Chän: <Thiªu L©m §ao>/#SetThienMenh(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetThienMenh(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetThienMenh(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetThienMenh(6)",
	"Chän: <Nga My KiÕm>/#SetThienMenh(7)",
	"Chän: <Nga My Ch­ëng>/#SetThienMenh(8)",
	"Chän: <Thóy Yªn §ao>/#SetThienMenh(9)",
	"Chän: <Thóy Yªn Néi>/#SetThienMenh(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetThienMenh(11)",
	"Chän: <Ngò §éc §ao>/#SetThienMenh(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetThienMenh(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetThienMenh(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetThienMenh(15)",
	"Trang KÕ/ThienMenhs")
end

function ThienMenhs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetThienMenh(16)",
	"Chän: <C¸i Bang Bæng>/#SetThienMenh(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetThienMenh(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetThienMenh(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetThienMenh(20)",
	"Chän: <Vâ §ang KiÕm>/#SetThienMenh(21)",
	"Chän: <C«n L«n §ao>/#SetThienMenh(22)",
	"Chän: <C«n L«n KiÕm>/#SetThienMenh(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetThienMenh(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetThienMenh(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetThienMenh(26)",
	--"Chän: <Vò Hån §ao>/#SetThienMenh(27)",
	"Quay L¹i/ThienMenh",
	"KÕt Thóc/No")
end

function SetThienMenh(nId)
	for i = 4460,4469 do
		AddGoldItem(0,10*nId+i-10)
	end
end
-------------------------------------------------------------------------Trang BÞ Maxofftion--------------------------------------------------------------------------------------------------------------------------------
function DoHoangKimMax()
	local tab_Content = {
		"Trang BÞ Thanh C©u/ThanhCauMax",
		"Trang BÞ V©n Léc/VanLocMax",
		"Trang BÞ Th­¬ng Lang/ThuongLangMax",
		"Trang BÞ HuyÒn Viªn/HuyenVienMax",
		"Trang BÞ Tö M·ng/TuMangMax",
		"Trang BÞ Kim ¤/KimOMax",
		"Trang BÞ B¹ch Hæ/BachHoMax",
		"Trang BÞ XÝch L©n/XichLanMax",
		"Trang BÞ Minh Ph­îng/MinhPhuongMax",
		"Trang BÞ §»ng Long/DangLongMax",
		"Trang BÞ Tinh S­¬ng/TinhSuongMax",
		"Trang BÞ NguyÖt KhuyÕt/NguyetKhuyetMax",
		"Trang BÞ DiÖu D­¬ng/DieuDuongMax",
		"Trang BÞ Anh Hµo/AnhHaoMax",
		"Trang BÞ Thiªn MÖnh/ThienMenhMax",
		"KÕt Thóc/No"
	}
	Say("H·y Chän Lo¹i Trang BÞ", getn(tab_Content), tab_Content)
end
---------------------------------------------------------------------
function ThanhCauMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetThanhCauMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetThanhCauMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetThanhCauMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetThanhCauMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetThanhCauMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetThanhCauMax(6)",
	"Chän: <Nga My KiÕm>/#SetThanhCauMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetThanhCauMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetThanhCauMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetThanhCauMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetThanhCauMax(11)",
	"Chän: <Ngò §éc §ao>/#SetThanhCauMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetThanhCauMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetThanhCauMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetThanhCauMax(15)",
	"Trang KÕ/ThanhCauMaxs")
end

function ThanhCauMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetThanhCauMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetThanhCauMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetThanhCauMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetThanhCauMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetThanhCauMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetThanhCauMax(21)",
	"Chän: <C«n L«n §ao>/#SetThanhCauMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetThanhCauMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetThanhCauMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetThanhCauMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetThanhCauMax(26)",
	--"Chän: <Vò Hån §ao>/#SetThanhCauMax(27)",
	"Quay L¹i/ThanhCauMax",
	"KÕt Thóc/No")
end

function SetThanhCauMax(nId)
	for i = 4730,4739 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function VanLocMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetVanLocMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetVanLocMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetVanLocMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetVanLocMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetVanLocMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetVanLocMax(6)",
	"Chän: <Nga My KiÕm>/#SetVanLocMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetVanLocMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetVanLocMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetVanLocMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetVanLocMax(11)",
	"Chän: <Ngò §éc §ao>/#SetVanLocMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetVanLocMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetVanLocMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetVanLocMax(15)",
	"Trang KÕ/VanLocMaxs")
end

function VanLocMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetVanLocMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetVanLocMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetVanLocMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetVanLocMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetVanLocMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetVanLocMax(21)",
	"Chän: <C«n L«n §ao>/#SetVanLocMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetVanLocMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetVanLocMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetVanLocMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetVanLocMax(26)",
	--"Chän: <Vò Hån §ao>/#SetVanLocMax(27)",
	"Quay L¹i/VanLocMax",
	"KÕt Thóc/No")
end

function SetVanLocMax(nId)
	for i = 5000,5009 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function ThuongLangMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetThuongLangMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetThuongLangMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetThuongLangMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetThuongLangMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetThuongLangMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetThuongLangMax(6)",
	"Chän: <Nga My KiÕm>/#SetThuongLangMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetThuongLangMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetThuongLangMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetThuongLangMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetThuongLangMax(11)",
	"Chän: <Ngò §éc §ao>/#SetThuongLangMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetThuongLangMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetThuongLangMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetThuongLangMax(15)",
	"Trang KÕ/ThuongLangMaxs")
end

function ThuongLangMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetThuongLangMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetThuongLangMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetThuongLangMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetThuongLangMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetThuongLangMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetThuongLangMax(21)",
	"Chän: <C«n L«n §ao>/#SetThuongLangMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetThuongLangMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetThuongLangMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetThuongLangMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetThuongLangMax(26)",
	--"Chän: <Vò Hån §ao>/#SetThuongLangMax(27)",
	"Quay L¹i/ThuongLangMax",
	"KÕt Thóc/No")
end

function SetThuongLangMax(nId)
	for i = 5270,5279 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function HuyenVienMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetHuyenVienMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetHuyenVienMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetHuyenVienMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetHuyenVienMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetHuyenVienMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetHuyenVienMax(6)",
	"Chän: <Nga My KiÕm>/#SetHuyenVienMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetHuyenVienMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetHuyenVienMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetHuyenVienMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetHuyenVienMax(11)",
	"Chän: <Ngò §éc §ao>/#SetHuyenVienMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetHuyenVienMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetHuyenVienMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetHuyenVienMax(15)",
	"Trang KÕ/HuyenVienMaxs")
end

function HuyenVienMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetHuyenVienMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetHuyenVienMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetHuyenVienMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetHuyenVienMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetHuyenVienMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetHuyenVienMax(21)",
	"Chän: <C«n L«n §ao>/#SetHuyenVienMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetHuyenVienMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetHuyenVienMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetHuyenVienMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetHuyenVienMax(26)",
	--"Chän: <Vò Hån §ao>/#SetHuyenVienMax(27)",
	"Quay L¹i/HuyenVienMax",
	"KÕt Thóc/No")
end

function SetHuyenVienMax(nId)
	for i = 5540,5549 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function TuMangMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetTuMangMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetTuMangMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetTuMangMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetTuMangMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetTuMangMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetTuMangMax(6)",
	"Chän: <Nga My KiÕm>/#SetTuMangMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetTuMangMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetTuMangMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetTuMangMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetTuMangMax(11)",
	"Chän: <Ngò §éc §ao>/#SetTuMangMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetTuMangMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetTuMangMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetTuMangMax(15)",
	"Trang KÕ/TuMangMaxs")
end

function TuMangMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetTuMangMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetTuMangMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetTuMangMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetTuMangMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetTuMangMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetTuMangMax(21)",
	"Chän: <C«n L«n §ao>/#SetTuMangMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetTuMangMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetTuMangMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetTuMangMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetTuMangMax(26)",
	--"Chän: <Vò Hån §ao>/#SetTuMangMax(27)",
	"Quay L¹i/TuMangMax",
	"KÕt Thóc/No")
end

function SetTuMangMax(nId)
	for i = 5810,5819 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function KimOMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetKimOMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetKimOMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetKimOMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetKimOMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetKimOMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetKimOMax(6)",
	"Chän: <Nga My KiÕm>/#SetKimOMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetKimOMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetKimOMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetKimOMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetKimOMax(11)",
	"Chän: <Ngò §éc §ao>/#SetKimOMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetKimOMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetKimOMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetKimOMax(15)",
	"Trang KÕ/KimOMaxs")
end

function KimOMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetKimOMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetKimOMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetKimOMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetKimOMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetKimOMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetKimOMax(21)",
	"Chän: <C«n L«n §ao>/#SetKimOMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetKimOMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetKimOMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetKimOMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetKimOMax(26)",
	--"Chän: <Vò Hån §ao>/#SetKimOMax(27)",
	"Quay L¹i/KimOMax",
	"KÕt Thóc/No")
end

function SetKimOMax(nId)
	for i = 6080,6089 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function BachHoMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetBachHoMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetBachHoMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetBachHoMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetBachHoMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetBachHoMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetBachHoMax(6)",
	"Chän: <Nga My KiÕm>/#SetBachHoMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetBachHoMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetBachHoMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetBachHoMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetBachHoMax(11)",
	"Chän: <Ngò §éc §ao>/#SetBachHoMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetBachHoMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetBachHoMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetBachHoMax(15)",
	"Trang KÕ/BachHoMaxs")
end

function BachHoMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetBachHoMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetBachHoMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetBachHoMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetBachHoMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetBachHoMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetBachHoMax(21)",
	"Chän: <C«n L«n §ao>/#SetBachHoMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetBachHoMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetBachHoMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetBachHoMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetBachHoMax(26)",
	--"Chän: <Vò Hån §ao>/#SetBachHoMax(27)",
	"Quay L¹i/BachHoMax",
	"KÕt Thóc/No")
end

function SetBachHoMax(nId)
	for i = 6350,6359 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function XichLanMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetXichLanMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetXichLanMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetXichLanMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetXichLanMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetXichLanMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetXichLanMax(6)",
	"Chän: <Nga My KiÕm>/#SetXichLanMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetXichLanMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetXichLanMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetXichLanMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetXichLanMax(11)",
	"Chän: <Ngò §éc §ao>/#SetXichLanMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetXichLanMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetXichLanMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetXichLanMax(15)",
	"Trang KÕ/XichLanMaxs")
end

function XichLanMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetXichLanMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetXichLanMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetXichLanMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetXichLanMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetXichLanMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetXichLanMax(21)",
	"Chän: <C«n L«n §ao>/#SetXichLanMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetXichLanMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetXichLanMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetXichLanMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetXichLanMax(26)",
	--"Chän: <Vò Hån §ao>/#SetXichLanMax(27)",
	"Quay L¹i/XichLanMax",
	"KÕt Thóc/No")
end

function SetXichLanMax(nId)
	for i = 6620,6629 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function MinhPhuongMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetMinhPhuongMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetMinhPhuongMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetMinhPhuongMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetMinhPhuongMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetMinhPhuongMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetMinhPhuongMax(6)",
	"Chän: <Nga My KiÕm>/#SetMinhPhuongMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetMinhPhuongMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetMinhPhuongMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetMinhPhuongMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetMinhPhuongMax(11)",
	"Chän: <Ngò §éc §ao>/#SetMinhPhuongMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetMinhPhuongMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetMinhPhuongMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetMinhPhuongMax(15)",
	"Trang KÕ/MinhPhuongMaxs")
end

function MinhPhuongMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetMinhPhuongMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetMinhPhuongMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetMinhPhuongMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetMinhPhuongMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetMinhPhuongMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetMinhPhuongMax(21)",
	"Chän: <C«n L«n §ao>/#SetMinhPhuongMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetMinhPhuongMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetMinhPhuongMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetMinhPhuongMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetMinhPhuongMax(26)",
	--"Chän: <Vò Hån §ao>/#SetMinhPhuongMax(27)",
	"Quay L¹i/MinhPhuongMax",
	"KÕt Thóc/No")
end

function SetMinhPhuongMax(nId)
	for i = 6890,6899 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function DangLongMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetDangLongMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetDangLongMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetDangLongMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetDangLongMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetDangLongMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetDangLongMax(6)",
	"Chän: <Nga My KiÕm>/#SetDangLongMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetDangLongMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetDangLongMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetDangLongMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetDangLongMax(11)",
	"Chän: <Ngò §éc §ao>/#SetDangLongMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetDangLongMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetDangLongMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetDangLongMax(15)",
	"Trang KÕ/DangLongMaxs")
end

function DangLongMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetDangLongMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetDangLongMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetDangLongMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetDangLongMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetDangLongMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetDangLongMax(21)",
	"Chän: <C«n L«n §ao>/#SetDangLongMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetDangLongMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetDangLongMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetDangLongMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetDangLongMax(26)",
	--"Chän: <Vò Hån §ao>/#SetDangLongMax(27)",
	"Quay L¹i/DangLongMax",
	"KÕt Thóc/No")
end

function SetDangLongMax(nId)
	for i = 7160,7169 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function TinhSuongMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetTinhSuongMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetTinhSuongMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetTinhSuongMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetTinhSuongMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetTinhSuongMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetTinhSuongMax(6)",
	"Chän: <Nga My KiÕm>/#SetTinhSuongMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetTinhSuongMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetTinhSuongMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetTinhSuongMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetTinhSuongMax(11)",
	"Chän: <Ngò §éc §ao>/#SetTinhSuongMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetTinhSuongMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetTinhSuongMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetTinhSuongMax(15)",
	"Trang KÕ/TinhSuongMaxs")
end

function TinhSuongMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetTinhSuongMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetTinhSuongMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetTinhSuongMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetTinhSuongMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetTinhSuongMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetTinhSuongMax(21)",
	"Chän: <C«n L«n §ao>/#SetTinhSuongMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetTinhSuongMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetTinhSuongMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetTinhSuongMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetTinhSuongMax(26)",
	--"Chän: <Vò Hån §ao>/#SetTinhSuongMax(27)",
	"Quay L¹i/TinhSuongMax",
	"KÕt Thóc/No")
end

function SetTinhSuongMax(nId)
	for i = 7430,7439 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function NguyetKhuyetMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetNguyetKhuyetMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetNguyetKhuyetMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetNguyetKhuyetMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetNguyetKhuyetMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetNguyetKhuyetMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetNguyetKhuyetMax(6)",
	"Chän: <Nga My KiÕm>/#SetNguyetKhuyetMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetNguyetKhuyetMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetNguyetKhuyetMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetNguyetKhuyetMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetNguyetKhuyetMax(11)",
	"Chän: <Ngò §éc §ao>/#SetNguyetKhuyetMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetNguyetKhuyetMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetNguyetKhuyetMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetNguyetKhuyetMax(15)",
	"Trang KÕ/NguyetKhuyetMaxs")
end

function NguyetKhuyetMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetNguyetKhuyetMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetNguyetKhuyetMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetNguyetKhuyetMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetNguyetKhuyetMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetNguyetKhuyetMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetNguyetKhuyetMax(21)",
	"Chän: <C«n L«n §ao>/#SetNguyetKhuyetMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetNguyetKhuyetMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetNguyetKhuyetMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetNguyetKhuyetMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetNguyetKhuyetMax(26)",
	--"Chän: <Vò Hån §ao>/#SetNguyetKhuyet(27)",
	"Quay L¹i/NguyetKhuyetMax",
	"KÕt Thóc/No")
end

function SetNguyetKhuyetMax(nId)
	for i = 7700,7709 do
		AddGoldItem(0,10*nId+i-10)
	end
end
---------------------------------------------------------------------
function DieuDuongMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetDieuDuongMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetDieuDuongMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetDieuDuongMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetDieuDuongMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetDieuDuongMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetDieuDuongMax(6)",
	"Chän: <Nga My KiÕm>/#SetDieuDuongMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetDieuDuongMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetDieuDuongMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetDieuDuongMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetDieuDuongMax(11)",
	"Chän: <Ngò §éc §ao>/#SetDieuDuongMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetDieuDuongMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetDieuDuongMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetDieuDuongMax(15)",
	"Trang KÕ/DieuDuongMaxs")
end

function DieuDuongMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetDieuDuongMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetDieuDuongMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetDieuDuongMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetDieuDuongMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetDieuDuongMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetDieuDuongMax(21)",
	"Chän: <C«n L«n §ao>/#SetDieuDuongMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetDieuDuongMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetDieuDuongMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetDieuDuongMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetDieuDuongMax(26)",
	--"Chän: <Vò Hån §ao>/#SetDieuDuongMax(27)",
	"Quay L¹i/DieuDuongMax",
	"KÕt Thóc/No")
end

function SetDieuDuongMax(nId)
	for i = 7970,7979 do
		AddGoldItem(0,10*nId+i-10)
	end
end
-------------------------------------------------------------------
function AnhHaoMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetAnhHaoMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetAnhHaoMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetAnhHaoMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetAnhHaoMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetAnhHaoMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetAnhHaoMax(6)",
	"Chän: <Nga My KiÕm>/#SetAnhHaoMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetAnhHaoMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetAnhHaoMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetAnhHaoMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetAnhHaoMax(11)",
	"Chän: <Ngò §éc §ao>/#SetAnhHaoMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetAnhHaoMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetAnhHaoMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetAnhHaoMax(15)",
	"Trang KÕ/AnhHaoMaxs")
end

function AnhHaoMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetAnhHaoMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetAnhHaoMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetAnhHaoMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetAnhHaoMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetAnhHaoMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetAnhHaoMax(21)",
	"Chän: <C«n L«n §ao>/#SetAnhHaoMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetAnhHaoMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetAnhHaoMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetAnhHaoMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetAnhHaoMax(26)",
	--"Chän: <Vò Hån §ao>/#SetAnhHaoMax(27)",
	"Quay L¹i/AnhHaoMax",
	"KÕt Thóc/No")
end

function SetAnhHaoMax(nId)
	for i = 8240,8249 do
		AddGoldItem(0,10*nId+i-10)
	end
end

-------------------------------------------------------------------
function ThienMenhMax()
Say("H·y Chän M«n Ph¸i",16,
	"Chän: <Thiªu L©m QuyÒn>/#SetThienMenhMax(1)",
	"Chän: <Thiªu L©m Bæng>/#SetThienMenhMax(2)",
	"Chän: <Thiªu L©m §ao>/#SetThienMenhMax(3)",
	"Chän: <Thiªn V­¬ng Chïy>/#SetThienMenhMax(4)",
	"Chän: <Thiªn V­¬ng Th­¬ng>/#SetThienMenhMax(5)",
	"Chän: <Thiªn V­¬ng §ao>/#SetThienMenhMax(6)",
	"Chän: <Nga My KiÕm>/#SetThienMenhMax(7)",
	"Chän: <Nga My Ch­ëng>/#SetThienMenhMax(8)",
	"Chän: <Thóy Yªn §ao>/#SetThienMenhMax(9)",
	"Chän: <Thóy Yªn Néi>/#SetThienMenhMax(10)",
	"Chän: <Ngò §éc Ch­ëng>/#SetThienMenhMax(11)",
	"Chän: <Ngò §éc §ao>/#SetThienMenhMax(12)",
	"Chän: <§­êng M«n Phi §ao>/#SetThienMenhMax(13)",
	"Chän: <§­êng M«n Ná TiÔn>/#SetThienMenhMax(14)",
	"Chän: <§­êng M«n Phi Tiªu>/#SetThienMenhMax(15)",
	"Trang KÕ/ThienMenhMaxs")
end

function ThienMenhMaxs()
Say("H·y Chän M«n Ph¸i",12,
	"Chän: <C¸i Bang Ch­ëng>/#SetThienMenhMax(16)",
	"Chän: <C¸i Bang Bæng>/#SetThienMenhMax(17)",
	"Chän: <Thiªn NhÉn KÝch>/#SetThienMenhMax(18)",
	"Chän: <Thiªn NhÉn §ao>/#SetThienMenhMax(19)",
	"Chän: <Vâ §ang QuyÒn>/#SetThienMenhMax(20)",
	"Chän: <Vâ §ang KiÕm>/#SetThienMenhMax(21)",
	"Chän: <C«n L«n §ao>/#SetThienMenhMax(22)",
	"Chän: <C«n L«n KiÕm>/#SetThienMenhMax(23)",
	--"Chän: <Hoa S¬n KhÝ>/#SetThienMenhMax(24)",
	--"Chän: <Hoa S¬n KiÕm>/#SetThienMenhMax(25)",
	--"Chän: <Vò Hån ThuÉn>/#SetThienMenhMax(26)",
	--"Chän: <Vò Hån §ao>/#SetThienMenhMax(27)",
	"Quay L¹i/ThienMenhMax",
	"KÕt Thóc/No")
end

function SetThienMenhMax(nId)
	for i = 8510,8519 do
		AddGoldItem(0,10*nId+i-10)
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------