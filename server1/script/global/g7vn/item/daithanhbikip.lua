IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
GioiHanKyNang = 5979; nSkill20 = 20; nSkill21 = 21; nSkill22 = 22; nSkill23 = 23; nSkill24 = 24; nSkill25 = 25; nSkill26 = 26; nSkill27 = 27; nSkill28 = 28; nSkill29 = 29; nSkill30 = 30
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
DaiLucKimCangChuong = 1055; ViDaHienXu = 1056; TamGioiQuyThien	= 1057
HaoHungTram = 1058; TungHoanhBatPhuong = 1059; BaVuongTamKim = 1060
KiemHoaVanTinh = 1061; BangVuLacTinh = 1062
BangTuocHoatKy = 1063; ThuyAnhManTu = 1065
HinhTieuCotLap = 1066; UHonPheAnh = 1067
VoAnhXuyen = 1069; ThietLienTuSat = 1070; CanKhonNhatTrich = 1071
ThoiThangLucLong = 1073; BongHuynhLuocDia = 1074
GiangHaiNoLan = 1075; TatHoaLieuNguyen = 1076
TaoHoaThaiThanh = 1078; KiemThuyTinhHa = 1079
CuuThienCuongPhong = 1080; ThienLoiChanNhac = 1081
DocCoCuuKiem = 1369; ThanQuangToanNhieu = 1384
---------------------------------------------------------
function main()
local MonPhai = GetLastFactionNumber()
	if (MonPhai == 0) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"§¹i Lùc Kim Cang Ch­ëng/ThieuLamQuyen","Vi §µ HiÕn Xö/ThieuLamCon","Tam Giíi Quy ThiÒn/ThieuLamDao","Hñy Bá/No") return 1
	elseif (MonPhai == 1) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"Hµo Hïng Tr¶m/ThienVuongDao","Tung Hoµnh B¸t Ph­¬ng/ThienVuongChuy","B¸ V­¬ng T¹m Kim/ThienVuongThuong","Hñy Bá/No") return 1
	elseif (MonPhai == 2) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",4,"V« ¶nh Xuyªn/DMPhiDao","ThiÕt Liªn Tø S¸t/DMTuTien","Cµn Kh«n NhÊt TrÞch/DMTieu","Hñy Bá/No") return 1
	elseif (MonPhai == 3) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"H×nh Tiªu Cèt LËp/NguDocChuong","U Hån PhÖ ¶nh/NguDocDao","Hñy Bá/No") return 1
	elseif (MonPhai == 4) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"KiÕm Hoa V·n Tinh/NgaMyKiem","B¨ng Vò L¹c Tinh/NgaMyChuong","Hñy Bá/No") return 1
	elseif (MonPhai == 5) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"B¨ng T­íc Ho¹t Kú/ThuyYenDao","Thñy Anh Man Tó/ThuyYenNoi","Hñy Bá/No") return 1
	elseif (MonPhai == 6) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Thêi ThÆng Lôc Long/CaiBangQuyen","Bæng Huýnh L­îc §Þa/CaiBangCon","Hñy Bá.No") return 1
	elseif (MonPhai == 7) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Giang H¶i Né Lan/ThienNhanKich","TËt Háa LiÖu Nguyªn/ThienNhanDao","Hñy Bá/No") return 1
	elseif (MonPhai == 8) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"T¹o Hãa Th¸i Thanh/VoDangQuyen","KiÕm Thïy Tinh Hµ/VoDangKiem","Hñy Bá/No") return 1
	elseif (MonPhai == 9) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"Cöu Thiªn C­¬ng Phong/ConLonDao","Thiªn L«i ChÊn Nh¹c/ConLonKiem","Hñy Bá/No") return 1
	elseif (MonPhai == 10) then
		Say("<bclr=violet>H·y Lùa Chän Kü N¨ng Muèn Kh«i Phôc",3,"§éc C« Cöu KiÕm/HoaSonKiem","ThÇn Quang Toµn NhiÔu/HoaSonKhi","Hñy Bá/No") return 1
	end
end
----------------------------------------------------------------Thieu Lam--------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen()
if (HaveMagic(DaiLucKimCangChuong) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill21) then AddMagic(DaiLucKimCangChuong,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill22) then AddMagic(DaiLucKimCangChuong,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill23) then AddMagic(DaiLucKimCangChuong,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill24) then AddMagic(DaiLucKimCangChuong,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill25) then AddMagic(DaiLucKimCangChuong,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill26) then AddMagic(DaiLucKimCangChuong,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill27) then AddMagic(DaiLucKimCangChuong,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill28) then AddMagic(DaiLucKimCangChuong,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill29) then AddMagic(DaiLucKimCangChuong,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(DaiLucKimCangChuong) < nSkill30) then AddMagic(DaiLucKimCangChuong,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông")
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function ThieuLamCon()
if (HaveMagic(ViDaHienXu) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(ViDaHienXu) < nSkill21) then AddMagic(ViDaHienXu,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(ViDaHienXu) < nSkill22) then AddMagic(ViDaHienXu,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(ViDaHienXu) < nSkill23) then AddMagic(ViDaHienXu,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(ViDaHienXu) < nSkill24) then AddMagic(ViDaHienXu,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(ViDaHienXu) < nSkill25) then AddMagic(ViDaHienXu,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(ViDaHienXu) < nSkill26) then AddMagic(ViDaHienXu,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(ViDaHienXu) < nSkill27) then AddMagic(ViDaHienXu,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(ViDaHienXu) < nSkill28) then AddMagic(ViDaHienXu,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(ViDaHienXu) < nSkill29) then AddMagic(ViDaHienXu,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(ViDaHienXu) < nSkill30) then AddMagic(ViDaHienXu,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function ThieuLamDao()
if (HaveMagic(TamGioiQuyThien) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(TamGioiQuyThien) < nSkill21) then AddMagic(TamGioiQuyThien,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(TamGioiQuyThien) < nSkill22) then AddMagic(TamGioiQuyThien,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(TamGioiQuyThien) < nSkill23) then AddMagic(TamGioiQuyThien,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(TamGioiQuyThien) < nSkill24) then AddMagic(TamGioiQuyThien,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(TamGioiQuyThien) < nSkill25) then AddMagic(TamGioiQuyThien,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(TamGioiQuyThien) < nSkill26) then AddMagic(TamGioiQuyThien,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(TamGioiQuyThien) < nSkill27) then AddMagic(TamGioiQuyThien,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(TamGioiQuyThien) < nSkill28) then AddMagic(TamGioiQuyThien,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(TamGioiQuyThien) < nSkill29) then AddMagic(TamGioiQuyThien,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(TamGioiQuyThien) < nSkill30) then AddMagic(TamGioiQuyThien,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
----------------------------------------------------------Thien Vuong--------------------------------------------------------------------------------------------------------------------
function ThienVuongDao()
if (HaveMagic(HaoHungTram) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(HaoHungTram) < nSkill21) then AddMagic(HaoHungTram,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(HaoHungTram) < nSkill22) then AddMagic(HaoHungTram,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(HaoHungTram) < nSkill23) then AddMagic(HaoHungTram,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(HaoHungTram) < nSkill24) then AddMagic(HaoHungTram,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(HaoHungTram) < nSkill25) then AddMagic(HaoHungTram,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(HaoHungTram) < nSkill26) then AddMagic(HaoHungTram,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(HaoHungTram) < nSkill27) then AddMagic(HaoHungTram,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(HaoHungTram) < nSkill28) then AddMagic(HaoHungTram,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(HaoHungTram) < nSkill29) then AddMagic(HaoHungTram,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(HaoHungTram) < nSkill30) then AddMagic(HaoHungTram,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function ThienVuongChuy()
if (HaveMagic(TungHoanhBatPhuong) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill21) then AddMagic(TungHoanhBatPhuong,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill22) then AddMagic(TungHoanhBatPhuong,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill23) then AddMagic(TungHoanhBatPhuong,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill24) then AddMagic(TungHoanhBatPhuong,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill25) then AddMagic(TungHoanhBatPhuong,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill26) then AddMagic(TungHoanhBatPhuong,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill27) then AddMagic(TungHoanhBatPhuong,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill28) then AddMagic(TungHoanhBatPhuong,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill29) then AddMagic(TungHoanhBatPhuong,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(TungHoanhBatPhuong) < nSkill30) then AddMagic(TungHoanhBatPhuong,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function ThienVuongThuong()
if (HaveMagic(BaVuongTamKim) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(BaVuongTamKim) < nSkill21) then AddMagic(BaVuongTamKim,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(BaVuongTamKim) < nSkill22) then AddMagic(BaVuongTamKim,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(BaVuongTamKim) < nSkill23) then AddMagic(BaVuongTamKim,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(BaVuongTamKim) < nSkill24) then AddMagic(BaVuongTamKim,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(BaVuongTamKim) < nSkill25) then AddMagic(BaVuongTamKim,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(BaVuongTamKim) < nSkill26) then AddMagic(BaVuongTamKim,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(BaVuongTamKim) < nSkill27) then AddMagic(BaVuongTamKim,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(BaVuongTamKim) < nSkill28) then AddMagic(BaVuongTamKim,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(BaVuongTamKim) < nSkill29) then AddMagic(BaVuongTamKim,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(BaVuongTamKim) < nSkill30) then AddMagic(BaVuongTamKim,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
-----------------------------------------------------------Duong Mon---------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao()
if (HaveMagic(VoAnhXuyen) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(VoAnhXuyen) < nSkill21) then AddMagic(VoAnhXuyen,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(VoAnhXuyen) < nSkill22) then AddMagic(VoAnhXuyen,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(VoAnhXuyen) < nSkill23) then AddMagic(VoAnhXuyen,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(VoAnhXuyen) < nSkill24) then AddMagic(VoAnhXuyen,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(VoAnhXuyen) < nSkill25) then AddMagic(VoAnhXuyen,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(VoAnhXuyen) < nSkill26) then AddMagic(VoAnhXuyen,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(VoAnhXuyen) < nSkill27) then AddMagic(VoAnhXuyen,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(VoAnhXuyen) < nSkill28) then AddMagic(VoAnhXuyen,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(VoAnhXuyen) < nSkill29) then AddMagic(VoAnhXuyen,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(VoAnhXuyen) < nSkill30) then AddMagic(VoAnhXuyen,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function DMTuTien()
if (HaveMagic(ThietLienTuSat) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(ThietLienTuSat) < nSkill21) then AddMagic(ThietLienTuSat,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(ThietLienTuSat) < nSkill22) then AddMagic(ThietLienTuSat,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(ThietLienTuSat) < nSkill23) then AddMagic(ThietLienTuSat,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(ThietLienTuSat) < nSkill24) then AddMagic(ThietLienTuSat,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(ThietLienTuSat) < nSkill25) then AddMagic(ThietLienTuSat,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(ThietLienTuSat) < nSkill26) then AddMagic(ThietLienTuSat,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(ThietLienTuSat) < nSkill27) then AddMagic(ThietLienTuSat,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(ThietLienTuSat) < nSkill28) then AddMagic(ThietLienTuSat,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(ThietLienTuSat) < nSkill29) then AddMagic(ThietLienTuSat,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(ThietLienTuSat) < nSkill30) then AddMagic(ThietLienTuSat,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function DMTieu()
if (HaveMagic(CanKhonNhatTrich) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill21) then AddMagic(CanKhonNhatTrich,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill22) then AddMagic(CanKhonNhatTrich,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill23) then AddMagic(CanKhonNhatTrich,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill24) then AddMagic(CanKhonNhatTrich,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill25) then AddMagic(CanKhonNhatTrich,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill26) then AddMagic(CanKhonNhatTrich,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill27) then AddMagic(CanKhonNhatTrich,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill28) then AddMagic(CanKhonNhatTrich,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill29) then AddMagic(CanKhonNhatTrich,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(CanKhonNhatTrich) < nSkill30) then AddMagic(CanKhonNhatTrich,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
-------------------------------------------------------------------------------Ngu Doc----------------------------------------------------------------------------------------------------------
function NguDocChuong()
if (HaveMagic(HinhTieuCotLap) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(HinhTieuCotLap) < nSkill21) then AddMagic(HinhTieuCotLap,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(HinhTieuCotLap) < nSkill22) then AddMagic(HinhTieuCotLap,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(HinhTieuCotLap) < nSkill23) then AddMagic(HinhTieuCotLap,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(HinhTieuCotLap) < nSkill24) then AddMagic(HinhTieuCotLap,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(HinhTieuCotLap) < nSkill25) then AddMagic(HinhTieuCotLap,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(HinhTieuCotLap) < nSkill26) then AddMagic(HinhTieuCotLap,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(HinhTieuCotLap) < nSkill27) then AddMagic(HinhTieuCotLap,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(HinhTieuCotLap) < nSkill28) then AddMagic(HinhTieuCotLap,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(HinhTieuCotLap) < nSkill29) then AddMagic(HinhTieuCotLap,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(HinhTieuCotLap) < nSkill30) then AddMagic(HinhTieuCotLap,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function NguDocDao()
if (HaveMagic(UHonPheAnh) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(UHonPheAnh) < nSkill21) then AddMagic(UHonPheAnh,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(UHonPheAnh) < nSkill22) then AddMagic(UHonPheAnh,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(UHonPheAnh) < nSkill23) then AddMagic(UHonPheAnh,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(UHonPheAnh) < nSkill24) then AddMagic(UHonPheAnh,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(UHonPheAnh) < nSkill25) then AddMagic(UHonPheAnh,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(UHonPheAnh) < nSkill26) then AddMagic(UHonPheAnh,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(UHonPheAnh) < nSkill27) then AddMagic(UHonPheAnh,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(UHonPheAnh) < nSkill28) then AddMagic(UHonPheAnh,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(UHonPheAnh) < nSkill29) then AddMagic(UHonPheAnh,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(UHonPheAnh) < nSkill30) then AddMagic(UHonPheAnh,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
----------------------------------------------------------------------Nga My---------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem()
if (HaveMagic(KiemHoaVanTinh) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill21) then AddMagic(KiemHoaVanTinh,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill22) then AddMagic(KiemHoaVanTinh,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill23) then AddMagic(KiemHoaVanTinh,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill24) then AddMagic(KiemHoaVanTinh,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill25) then AddMagic(KiemHoaVanTinh,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill26) then AddMagic(KiemHoaVanTinh,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill27) then AddMagic(KiemHoaVanTinh,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill28) then AddMagic(KiemHoaVanTinh,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill29) then AddMagic(KiemHoaVanTinh,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(KiemHoaVanTinh) < nSkill30) then AddMagic(KiemHoaVanTinh,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function NgaMyChuong()
if (HaveMagic(BangVuLacTinh) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(BangVuLacTinh) < nSkill21) then AddMagic(BangVuLacTinh,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(BangVuLacTinh) < nSkill22) then AddMagic(BangVuLacTinh,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(BangVuLacTinh) < nSkill23) then AddMagic(BangVuLacTinh,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(BangVuLacTinh) < nSkill24) then AddMagic(BangVuLacTinh,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(BangVuLacTinh) < nSkill25) then AddMagic(BangVuLacTinh,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(BangVuLacTinh) < nSkill26) then AddMagic(BangVuLacTinh,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(BangVuLacTinh) < nSkill27) then AddMagic(BangVuLacTinh,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(BangVuLacTinh) < nSkill28) then AddMagic(BangVuLacTinh,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(BangVuLacTinh) < nSkill29) then AddMagic(BangVuLacTinh,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(BangVuLacTinh) < nSkill30) then AddMagic(BangVuLacTinh,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
----------------------------------------------------------------------------Thuy Yen----------------------------------------------------------------------------------------------------------------
function ThuyYenDao()
if (HaveMagic(BangTuocHoatKy) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(BangTuocHoatKy) < nSkill21) then AddMagic(BangTuocHoatKy,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(BangTuocHoatKy) < nSkill22) then AddMagic(BangTuocHoatKy,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(BangTuocHoatKy) < nSkill23) then AddMagic(BangTuocHoatKy,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(BangTuocHoatKy) < nSkill24) then AddMagic(BangTuocHoatKy,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(BangTuocHoatKy) < nSkill25) then AddMagic(BangTuocHoatKy,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(BangTuocHoatKy) < nSkill26) then AddMagic(BangTuocHoatKy,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(BangTuocHoatKy) < nSkill27) then AddMagic(BangTuocHoatKy,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(BangTuocHoatKy) < nSkill28) then AddMagic(BangTuocHoatKy,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(BangTuocHoatKy) < nSkill29) then AddMagic(BangTuocHoatKy,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(BangTuocHoatKy) < nSkill30) then AddMagic(BangTuocHoatKy,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function ThuyYenNoi()
if (HaveMagic(ThuyAnhManTu) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(ThuyAnhManTu) < nSkill21) then AddMagic(ThuyAnhManTu,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(ThuyAnhManTu) < nSkill22) then AddMagic(ThuyAnhManTu,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(ThuyAnhManTu) < nSkill23) then AddMagic(ThuyAnhManTu,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(ThuyAnhManTu) < nSkill24) then AddMagic(ThuyAnhManTu,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(ThuyAnhManTu) < nSkill25) then AddMagic(ThuyAnhManTu,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(ThuyAnhManTu) < nSkill26) then AddMagic(ThuyAnhManTu,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(ThuyAnhManTu) < nSkill27) then AddMagic(ThuyAnhManTu,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(ThuyAnhManTu) < nSkill28) then AddMagic(ThuyAnhManTu,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(ThuyAnhManTu) < nSkill29) then AddMagic(ThuyAnhManTu,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(ThuyAnhManTu) < nSkill30) then AddMagic(ThuyAnhManTu,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
------------------------------------------------------------------Cai Bang--------------------------------------------------------------------------------------------------------------------------------
function CaiBangQuyen()
if (HaveMagic(ThoiThangLucLong) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(ThoiThangLucLong) < nSkill21) then AddMagic(ThoiThangLucLong,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(ThoiThangLucLong) < nSkill22) then AddMagic(ThoiThangLucLong,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(ThoiThangLucLong) < nSkill23) then AddMagic(ThoiThangLucLong,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(ThoiThangLucLong) < nSkill24) then AddMagic(ThoiThangLucLong,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(ThoiThangLucLong) < nSkill25) then AddMagic(ThoiThangLucLong,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(ThoiThangLucLong) < nSkill26) then AddMagic(ThoiThangLucLong,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(ThoiThangLucLong) < nSkill27) then AddMagic(ThoiThangLucLong,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(ThoiThangLucLong) < nSkill28) then AddMagic(ThoiThangLucLong,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(ThoiThangLucLong) < nSkill29) then AddMagic(ThoiThangLucLong,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(ThoiThangLucLong) < nSkill30) then AddMagic(ThoiThangLucLong,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function CaiBangCon()
if (HaveMagic(BongHuynhLuocDia) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill21) then AddMagic(BongHuynhLuocDia,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill22) then AddMagic(BongHuynhLuocDia,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill23) then AddMagic(BongHuynhLuocDia,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill24) then AddMagic(BongHuynhLuocDia,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill25) then AddMagic(BongHuynhLuocDia,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill26) then AddMagic(BongHuynhLuocDia,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill27) then AddMagic(BongHuynhLuocDia,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill28) then AddMagic(BongHuynhLuocDia,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill29) then AddMagic(BongHuynhLuocDia,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(BongHuynhLuocDia) < nSkill30) then AddMagic(BongHuynhLuocDia,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
---------------------------------------------------------------------Thien Nhan---------------------------------------------------------------------------------------------------------------------
function ThienNhanKich()
if (HaveMagic(GiangHaiNoLan) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(GiangHaiNoLan) < nSkill21) then AddMagic(GiangHaiNoLan,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(GiangHaiNoLan) < nSkill22) then AddMagic(GiangHaiNoLan,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(GiangHaiNoLan) < nSkill23) then AddMagic(GiangHaiNoLan,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(GiangHaiNoLan) < nSkill24) then AddMagic(GiangHaiNoLan,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(GiangHaiNoLan) < nSkill25) then AddMagic(GiangHaiNoLan,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(GiangHaiNoLan) < nSkill26) then AddMagic(GiangHaiNoLan,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(GiangHaiNoLan) < nSkill27) then AddMagic(GiangHaiNoLan,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(GiangHaiNoLan) < nSkill28) then AddMagic(GiangHaiNoLan,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(GiangHaiNoLan) < nSkill29) then AddMagic(GiangHaiNoLan,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(GiangHaiNoLan) < nSkill30) then AddMagic(GiangHaiNoLan,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function ThienNhanDao()
if (HaveMagic(TatHoaLieuNguyen) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill21) then AddMagic(TatHoaLieuNguyen,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill22) then AddMagic(TatHoaLieuNguyen,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill23) then AddMagic(TatHoaLieuNguyen,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill24) then AddMagic(TatHoaLieuNguyen,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill25) then AddMagic(TatHoaLieuNguyen,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill26) then AddMagic(TatHoaLieuNguyen,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill27) then AddMagic(TatHoaLieuNguyen,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill28) then AddMagic(TatHoaLieuNguyen,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill29) then AddMagic(TatHoaLieuNguyen,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(TatHoaLieuNguyen) < nSkill30) then AddMagic(TatHoaLieuNguyen,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
---------------------------------------------------------------------------Vo Dang-------------------------------------------------------------------------------------------------------------------
function VoDangQuyen()
if (HaveMagic(TaoHoaThaiThanh) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill21) then AddMagic(TaoHoaThaiThanh,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill22) then AddMagic(TaoHoaThaiThanh,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill23) then AddMagic(TaoHoaThaiThanh,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill24) then AddMagic(TaoHoaThaiThanh,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill25) then AddMagic(TaoHoaThaiThanh,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill26) then AddMagic(TaoHoaThaiThanh,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill27) then AddMagic(TaoHoaThaiThanh,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill28) then AddMagic(TaoHoaThaiThanh,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill29) then AddMagic(TaoHoaThaiThanh,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(TaoHoaThaiThanh) < nSkill30) then AddMagic(TaoHoaThaiThanh,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function VoDangKiem()
if (HaveMagic(KiemThuyTinhHa) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill21) then AddMagic(KiemThuyTinhHa,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill22) then AddMagic(KiemThuyTinhHa,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill23) then AddMagic(KiemThuyTinhHa,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill24) then AddMagic(KiemThuyTinhHa,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill25) then AddMagic(KiemThuyTinhHa,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill26) then AddMagic(KiemThuyTinhHa,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill27) then AddMagic(KiemThuyTinhHa,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill28) then AddMagic(KiemThuyTinhHa,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill29) then AddMagic(KiemThuyTinhHa,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(KiemThuyTinhHa) < nSkill30) then AddMagic(KiemThuyTinhHa,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
----------------------------------------------------------------------------------------Con Lon--------------------------------------------------------------------------------------------
function ConLonDao()
if (HaveMagic(CuuThienCuongPhong) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill21) then AddMagic(CuuThienCuongPhong,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill22) then AddMagic(CuuThienCuongPhong,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill23) then AddMagic(CuuThienCuongPhong,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill24) then AddMagic(CuuThienCuongPhong,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill25) then AddMagic(CuuThienCuongPhong,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill26) then AddMagic(CuuThienCuongPhong,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill27) then AddMagic(CuuThienCuongPhong,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill28) then AddMagic(CuuThienCuongPhong,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill29) then AddMagic(CuuThienCuongPhong,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(CuuThienCuongPhong) < nSkill30) then AddMagic(CuuThienCuongPhong,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function ConLonKiem()
if (HaveMagic(ThienLoiChanNhac) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill21) then AddMagic(ThienLoiChanNhac,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill22) then AddMagic(ThienLoiChanNhac,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill23) then AddMagic(ThienLoiChanNhac,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill24) then AddMagic(ThienLoiChanNhac,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill25) then AddMagic(ThienLoiChanNhac,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill26) then AddMagic(ThienLoiChanNhac,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill27) then AddMagic(ThienLoiChanNhac,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill28) then AddMagic(ThienLoiChanNhac,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill29) then AddMagic(ThienLoiChanNhac,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(ThienLoiChanNhac) < nSkill30) then AddMagic(ThienLoiChanNhac,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
------------------------------------------------------------------------Hoa Son---------------------------------------------------------------------------------------------------------------------
function HoaSonKiem()
if (HaveMagic(DocCoCuuKiem) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(DocCoCuuKiem) < nSkill21) then AddMagic(DocCoCuuKiem,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(DocCoCuuKiem) < nSkill22) then AddMagic(DocCoCuuKiem,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(DocCoCuuKiem) < nSkill23) then AddMagic(DocCoCuuKiem,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(DocCoCuuKiem) < nSkill24) then AddMagic(DocCoCuuKiem,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(DocCoCuuKiem) < nSkill25) then AddMagic(DocCoCuuKiem,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(DocCoCuuKiem) < nSkill26) then AddMagic(DocCoCuuKiem,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(DocCoCuuKiem) < nSkill27) then AddMagic(DocCoCuuKiem,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(DocCoCuuKiem) < nSkill28) then AddMagic(DocCoCuuKiem,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(DocCoCuuKiem) < nSkill29) then AddMagic(DocCoCuuKiem,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(DocCoCuuKiem) < nSkill30) then AddMagic(DocCoCuuKiem,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end

function HoaSonKhi()
if (HaveMagic(ThanQuangToanNhieu) < nSkill20) then
	Talk(1,"","<color=red>Kü N¨ng 150 VÉn Ch­a §¹t §Õn 20 Kh«ng ThÓ LÜnh Ngé")
return end
	if (GetTask(GioiHanKyNang) == 1) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill21) then AddMagic(ThanQuangToanNhieu,nSkill21) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 21 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 2) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill22) then AddMagic(ThanQuangToanNhieu,nSkill22) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 22 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 3) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill23) then AddMagic(ThanQuangToanNhieu,nSkill23) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 23 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 4) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill24) then AddMagic(ThanQuangToanNhieu,nSkill24) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 24 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 5) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill25) then AddMagic(ThanQuangToanNhieu,nSkill25) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 25 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 6) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill26) then AddMagic(ThanQuangToanNhieu,nSkill26) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 26 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 7) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill27) then AddMagic(ThanQuangToanNhieu,nSkill27) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 27 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 8) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill28) then AddMagic(ThanQuangToanNhieu,nSkill28) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 28 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 9) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill29) then AddMagic(ThanQuangToanNhieu,nSkill29) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 29 Råi") return 1 end
	elseif (GetTask(GioiHanKyNang) == 10) then
		if (HaveMagic(ThanQuangToanNhieu) < nSkill30) then AddMagic(ThanQuangToanNhieu,nSkill30) else Talk(1,"","<color=red>Kü N¨ng §· §¹t CÊp 30 Råi") return 1 end
	else
		Talk(1,"","<color=red>Kü N¨ng CÊp 150 VÉn Ch­a §­îc Më Kh«ng ThÓ Sö Dông") return 1
	end
	ConsumeEquiproomItem(1,6,1,4815,-1)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------