function dotim()
local tab_Content = {
		"Vò KhÝ/weapon",
		"Y Phôc/shirt",
		"§Ønh M¹o/hat",
		"Hæ UyÓn/glove",
		"Yªu §¸i/belt",
		"Hµi Tö/shoe",
		"VËt phÈm hæ trî/khoangth",
		"MÆt n¹/manat",
		"Trang bÞ b¹ch kim/bachkim",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function weapon()
	local tab_Content = {
		"KiÕm/kiem",
		"§ao/dao",
		"Bæng/bong",
		"Th­¬ng/kick",
		"Chïy/chuy",
		"Song §ao/songdao",
		"Phi Tiªu/phitieu",
		"Phi §ao/phidao",
		"Tô TiÔn/tutien",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end

function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end

function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end

function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end

function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end

function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end

function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end

function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end

function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end

function shirt()
	local tab_Content = {
		"ThÊt B¶o Cµ Sa/aothieulam",
		"Ch©n Vò Th¸nh Y/aovodang",
		"Thiªn NhÉn MËt Trang/aothiennhan",
		"Gi¸ng Sa Bµo/sabao",
		"§­êng Nghª Gi¸p/dng",
		"V¹n L­u Quy T«ng Y/aocaibang",
		"TuyÒn Long Bµo/longbao",
		"Long Tiªu §¹o Y/daoy",
		"Cöu VÜ B¹ch Hå Trang/hotrang",
		"TrÇm H­¬ng Sam/huongsam",
		"TÝch LÞch Kim Phông Gi¸p/kimphung",
		"V¹n Chóng TÒ T©m Y/tamy",
		"L­u Tiªn QuÇn/tienquan",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function aothieulam()
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end

function hat()
	local tab_Content = {
		"Tú L« M·o/lomao",
		"Ngò L·o Qu¸n/laoquan",
		"Tu La Ph¸t KÕt/phatket",
		"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
		"YÓm NhËt Kh«i/nhatkhoi",
		"TrÝch Tinh Hoµn/tinhhoan",
		"¤ Tµm M·o/tammao",
		"Quan ¢m Ph¸t Qu¸n/quanam",
		"¢m D­¬ng V« Cùc Qu¸n/amduong",
		"HuyÒn Tª DiÖn Tr¸o/dientrao",
		"Long HuyÕt §Çu Hoµn/longhuyet",
		"Long L©n Kh«i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Phông TriÓn SÝ/triensi",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function lomao()
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)

		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end

function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end

function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end

function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end

function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end

function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end

function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end

function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end

function glove()
	local tab_Content = {
		"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
		"Thiªn Tµm Hé UyÓn/houyen",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function belt()
	local tab_Content = {
		"Thiªn Tµm Yªu §¸i/thientamyeu",
		"B¹ch Kim Yªu §¸i/bachkim",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function shoe()
	local tab_Content = {
		"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
		"Thiªn Tµm Ngoa/thientam",
		"Kim Lò Hµi/kimlu",
		"Phi Phông Ngoa/phiphung",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end

function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end

function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end

function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function bachkim()
	local tbOpt =
	{
		{"ThiÕu l©m", bktl},
		{"Thiªn v­¬ng", bktv},
		{"®­êng m«n", bkdm},
		{"Ngò ®éc", bk5d},
		{"Nga mi", bknm},
		{"Thuý yªn", bkty},
		{"C¸i bang", bkcb},
		{"Thiªn nhÉn", bktn},
		{"Vâ ®ang", bkvd},
		{"C«n l«n", bkcl},
		{"Tho¸t"},
	}
	CreateNewSayEx("<npc>Chän m«n ph¸i?", tbOpt)
end
function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end

function macblb()
AddItem(6,1,1448,1,0,0)
end

function cpds()
AddGoldItem(0,494)
AddGoldItem(0,495)
AddGoldItem(0,496)
AddGoldItem(0,497)
end

function sethkmp()
	local tab_Content = {
		"Rêi khái/no",
		"ThiÕu L©m QuyÒn/#sethkmp1(1)",
		"ThiÕu L©m C«n/#sethkmp1(2)",
		"ThiÕu L©m §ao/#sethkmp1(3)",
		"Thiªn V­¬ng Chïy/#sethkmp1(4)",
		"Thiªn V­¬ng Th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng §ao/#sethkmp1(6)",
		"Nga Mi KiÕm/#sethkmp1(7)",
		"Nga Mi Ch­ëng/#sethkmp1(8)",
		"Nga Mi Buff/#sethkmp1(9)",
		"Thóy Yªn §ao/#sethkmp1(10)",
		"Thóy Yªn Song §ao/#sethkmp1(11)",
		"Ngñ §éc Ch­ëng/#sethkmp1(12)",
		"Ngñ §éc §ao/#sethkmp1(13)",
		"Ngñ §éc Bïa/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function sethkmp2()
	local tab_Content = {
		"§­êng M«n Phi §ao/#sethkmp1(15)",
		"§­êng M«n Tô TiÔn/#sethkmp1(16)",
		"§­êng M«n Phi Tiªu/#sethkmp1(17)",
		"§­êng M«n BÉy/#sethkmp1(18)",
		"C¸i Bang Rång/#sethkmp1(19)",
		"C¸i Bang Bâng/#sethkmp1(20)",
		"Thiªn NhÉn KÝch/#sethkmp1(21)",
		"Thiªn NhÉn §ao/#sethkmp1(22)",
		"Thiªn NhÉn Bïa/#sethkmp1(23)",
		"Vâ §ang KhÝ /#sethkmp1(24)",
		"Vâ §ang KiÕm/#sethkmp1(25)",
		"C«n L«n §ao/#sethkmp1(26)",
		"C«n L«n KiÕm/#sethkmp1(27)",
		"C«n L«n Bïa/#sethkmp1(28)",
		"Th«i/no",
		"Trë l¹i"
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function TestGame_TrangBi_Gold(Gold_Id)
	local tbOpt = {
		{tbOpt = "§Þnh Quèc thanh xa tr­êng sam", ID_GoldItem = {159}, tbCount = 4},
		{tbOpt = "§Þnh Quèc « xa ph¸t qu¸n", ID_GoldItem = {160}, tbCount = 6},
		{tbOpt = "§Þnh Quèc xÝch quyªn nhuyÔn ngoa", ID_GoldItem = {161}, tbCount = 4},
		{tbOpt = "§Þnh Quèc tö ®»ng hé uyÓn", ID_GoldItem = {162}, tbCount = 4},
		{tbOpt = "§Þnh Quèc ng©n tµm yªu ®¸i", ID_GoldItem = {163}, tbCount = 4},
		{tbOpt = "An Bang b¨ng tinh th¹ch h¹ng liªn", ID_GoldItem = {164}, tbCount = 6},
		{tbOpt = "An Bang cóc hoa th¹ch chØ hoµn", ID_GoldItem = {165}, tbCount = 6},
		{tbOpt = "An Bang ®iÒn hoµng th¹ch ngäc béi", ID_GoldItem = {166}, tbCount = 6},
		{tbOpt = "An Bang kª huyÕt th¹ch giíi chØ", ID_GoldItem = {167}, tbCount = 6},
	}
	if Gold_Id then
		if Gold_Id == 1 then
			for i = 6, 9 do
				AddGoldItem(0, tbOpt[i].ID_GoldItem[1])
				Msg2Player("Ng­¬i NhËn §­îc Trang BÞ An Bang Thµnh C«ng")
			end
		elseif Gold_Id == 2 then
			for i = 1, 5 do
				AddGoldItem(0, tbOpt[i].ID_GoldItem[1])
				Msg2Player("Ng­¬i NhËn §­îc Trang BÞ §Þnh Quèc Thµnh C«ng")
			end
		end
	end
end

function TestGame_TrangBi_DoXanh(Item_ID, nDetailType, nParticularType, nFree_W, nFree_H, Series)
	local tbOpt = {
		[1] = {szName= "KiÕm", tbItem= {0, 0, 1, 3}},
		[2] = {szName= "§ao", tbItem= {0, 1, 1, 4}},
		[3] = {szName= "Bæng", tbItem= {0, 2, 1, 4}},
		[4] = {szName= "Th­¬ng", tbItem= {0, 3, 1, 4}},
		[5] = {szName= "Chïy", tbItem= {0, 4, 2, 2}},
		[6] = {szName= "Song §ao", tbItem= {0, 5, 2, 3}},
		[7] = {szName= "Phi Tiªu", tbItem= {1, 0, 1, 1}},
		[8] = {szName= "Phi §ao", tbItem= {1, 1, 1, 1}},
		[9] = {szName= "Tô TiÔn", tbItem= {1, 2, 2, 2}},
		[10] = {szName= "¸o - Nam", tbItem= {2, random(0, 6), 2, 3}},
		[11] = {szName= "¸o - N÷", tbItem= {2, random(7, 13), 2, 3}},
		[12] = {szName= "NhÉn", tbItem= {3,0, 1, 1}},
		[13] = {szName= "D©y chuyÒn - Nam", tbItem= {4, 1, 2, 1}},
		[14] = {szName= "D©y chuyÒn - N÷", tbItem= {4, 0, 2, 1}},
		[15] = {szName= "Giµy - Nam", tbItem= {5, random(0, 1), 2, 2}},
		[16] = {szName= "Giµy - N÷", tbItem= {5, random(2, 3), 2, 2}},
		[17] = {szName= "Th¾t l­ng - Nam", tbItem= {6, 1, 2, 1}},
		[18] = {szName= "Th¾t l­ng - N÷", tbItem= {6, 0, 2, 1}},
		[19] = {szName= "Mò - Nam", tbItem= {7, random(0, 6), 2, 2}},
		[20] = {szName= "Mò - N÷", tbItem= {7, random(7, 13), 2, 2}},
		[21] = {szName= "Bao tay - Nam", tbItem= {8, 1, 1, 2}},
		[22] = {szName= "Bao tay - N÷", tbItem= {8, 0, 1, 2}},
		[23] = {szName= "Ngäc béi - Nam", tbItem= {9, 1, 1, 2}},
		[24] = {szName= "Ngäc béi - N÷", tbItem= {9, 0, 1, 2}},
	}
	local tbOpt2, tbCount = {}, 0
	if nDetailType then
		if Series then
			if CountFreeRoomByWH(nFree_W, nFree_H) > 0 then
				for i = 1, CountFreeRoomByWH(nFree_W, nFree_H) do
					AddItemEx(0,random(),0,0,nDetailType,nParticularType,10,Series,255,10,10,10,10,10,10,0)
					tbCount = tbCount + 1
				end
				return Msg2Player("§· nhËn ®­îc "..tbCount.." mãn trang bÞ!")
			else
				return Talk(1,"","<color=yellow>Hµnh trang cña c¸c h¹ cã vÎ bõa bén qu¸, h·y s¾p xÕp l¹i vµ ®Ó trèng hµnh trang<color> <color=red>"..nFree_W.."x"..nFree_H.."<color>")
			end
		else
			Say("Chän hÖ cña mãn trang bÞ!", 6,
				"Trang bÞ hÖ Kim/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 0)",
				"Trang bÞ hÖ Méc/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 1)",
				"Trang bÞ hÖ Thñy/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 2)",
				"Trang bÞ hÖ Háa/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 3)",
				"Trang bÞ hÖ Thæ/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 4)",
				"KÕt thóc ®èi tho¹i!/bil.OnCancel")
			return
		end
	end
	if Item_ID then
		if Item_ID == 1 then
			for i = 1, 9 do
				tinsert(tbOpt2, "Ta muèn lÊy "..tbOpt[i].szName.."/#TestGame_TrangBi_DoXanh (0,"..tbOpt[i].tbItem[1]..", "..tbOpt[i].tbItem[2]..", "..tbOpt[i].tbItem[3]..", "..tbOpt[i].tbItem[4]..")")
			end
		elseif Item_ID == 2 then
			for i = 10, 24 do
				tinsert(tbOpt2, "Ta muèn lÊy "..tbOpt[i].szName.."/#TestGame_TrangBi_DoXanh (0,"..tbOpt[i].tbItem[1]..", "..tbOpt[i].tbItem[2]..", "..tbOpt[i].tbItem[3]..", "..tbOpt[i].tbItem[4]..")")
			end
		end
		tinsert(tbOpt2, "KÕt thóc ®èi tho¹i!/bil.OnCancel")
		Say("Chän mãn trang bÞ muèn lÊy!", getn(tbOpt2), tbOpt2)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
tbBuyMagic = {
	[1] = {
		{"S¸t th­¬ng vËt lu ngo¹i c«ng (%)",1,99,126,10},
		{"Tû lÖ c«ng kÝch chÝnh x¸c",1,99,166,20},
		{"Tèc ®é ®¸nh ngo¹i c«ng",1,99,115,30},
		{"Bá qua nÐ tr¸nh",1,99,58,40},
		{"Hót sinh lùc",1,99,136,130},
		{"Hót néi lùc",1,99,137,140},
		{"Sinh lùc",1,99,85,150},
		{"Néi lùc",1,99,89,160},
		{"STVL ngo¹i c«ng ®iÓm (Kim)",0,0,121,220},
		{"§éc s¸t ngo¹i c«ng (Méc)",0,1,125,230},
		{"B¨ng s¸t ngo¹i c«ng(Thñy)",0,2,123,240},
		--{"Háa s¸t ngo¹i c«ng(Háa)",0,3,122},
		--{"L«i s¸t ngo¹i c«ng(Thæ)",0,4,124},
		{"Kh¸ng ®éc (Kim)",0,0,101,290},
		{"Kh¸ng b¨ng (Thæ)",0,4,105,300},
		{"Kh¸ng háa (Thñy)",0,2,102,310},
		{"Kh¸ng l«i (Méc)",0,1,103,320},
		{"Thêi gian cho¸ng (Thñy)",0,2,110,340},
		{"Thêi gian lµm chËm (Háa)",0,3,106,360},
		{"Thêi gian tróng ®éc (Thæ)",0,4,108,380},
		{"STVL néi c«ng (Kim)",0,0,168,440},
		{"B¨ng s¸t néi c«ng (Thñy)",0,2,169,450},
		{"Háa s¸t néi c«ng (Háa)",0,3,170,460},
		{"L«i s¸t néi c«ng (Thæ)",0,4,171,470},
		{"§éc s¸t néi c«ng (Méc)",0,1,172,480},
	},
	[2] = {
		{"Tèc ®é di chuyÓn (GiÇy)",1,99,111,70,{5}},
		{"Ph¶n ®ßn vËt lu (¸o)",1,99,117,80,{2}},
		{"Thêi gian phôc håi (¸o)",1,99,113,90,{2}},
		{"Sinh lùc",1,99,85,150,{2,5,6,7,8}},
		{"Néi lùc",1,99,89,160,{2,5,6,7,8}},
		{"Phôc håi sinh lùc",1,99,88,180,{2,5,6,7,8}},
		{"ChuyÓn haa s¸t th­¬ng thµnh néi lùc (Kim)",0,0,134,270,{2,5,6,7,8}},
		{"Phßng thñ vËt lu (Háa)",0,3,104,280,{2,5,6,7,8}},
		{"Kh¸ng ®éc (Kim)",0,0,101,290,{2,5,6,7,8}},
		{"Kh¸ng b¨ng (Thæ)",0,4,105,300,{2,5,6,7,8}},
		{"Kh¸ng háa (Thñy)",0,2,102,310,{2,5,6,7,8}},
		{"Kh¸ng l«i (Méc)",0,1,103,320,{2,5,6,7,8}},
		{"Thêi gian cho¸ng (Thñy)",0,2,110,340,{2,5,6,7,8}},
		{"Thêi gian lµm chËm (Háa)",0,3,106,360,{2,5,6,7,8}},
		{"Th©n ph¸p (Háa)",0,3,98,370,{2,5,6,7,8}},
		{"Thêi gian tróng ®éc (Thæ)",0,4,108,380,{2,5,6,7,8}},
	},
}

function BuyMagicType()
	local tb = {
		"<dec><npc>H·y Chän Lo¹i Trang BÞ",
		"Ta Muèn LÊy Vò KhÝ/#BuyMagicType1(1)",
		"Ta Muèn LÊy Trang Phôc/#BuyMagicType1(2)",
		"Quay l¹i.",
		"Tho¸t./Quit",
	}
	CreateTaskSay(tb)
end

function BuyMagicType1(ID)
	local tb = {
		"<dec><npc>H·y Chän Thuéc TÝnh Yªu CÇu",
		"Mua ph«i dßng 1./#BuyMagicType2("..ID..",1)",
		"Mua ph«i dßng 2./#BuyMagicType2("..ID..",2)",
		"Mua ph«i dßng 3./#BuyMagicType2("..ID..",3)",
		"Mua ph«i dßng 4./#BuyMagicType2("..ID..",4)",
		"Mua ph«i dßng 5./#BuyMagicType2("..ID..",5)",
		"Mua ph«i dßng 6./#BuyMagicType2("..ID..",6)",
		"Quay l¹i./TrangBiXanhTuChon",
		"Tho¸t./Quit",
	}
	CreateTaskSay(tb)
end

function BuyMagicType2(ID1,ID2)
	if ID2 == 1 or ID2 == 3 or ID2 == 5 then
		local tb = {
			"<dec><npc>H·y Lùa Chän Thuéc TÝnh",
		}
		for i=1,getn(tbBuyMagic[ID1]) do
			if tbBuyMagic[ID1][i][2] == 1 then
				tinsert(tb,tbBuyMagic[ID1][i][1].."/#BuyMagicType3("..ID2..","..tbBuyMagic[ID1][i][4]..","..ID1..","..tbBuyMagic[ID1][i][3]..")")
			end
		end
		tinsert(tb,"Tho¸t./Quit")
		CreateTaskSay(tb)
	else
		local tb = {
			"<dec><npc>H·y Lùa Chän Thuéc TÝnh"
		}
		for i=1,getn(tbBuyMagic[ID1]) do
			if tbBuyMagic[ID1][i][2] == 0 then
				tinsert(tb,tbBuyMagic[ID1][i][1].."/#BuyMagicType3("..ID2..","..tbBuyMagic[ID1][i][4]..","..ID1..","..tbBuyMagic[ID1][i][3]..")")
			end
		end
		tinsert(tb,"Tho¸t./Quit")
		CreateTaskSay(tb)
	end
end

function BuyMagicType3(Op1,Op2,Op3,Op4)
	if Op3 == 1 then
		if Op4 == 99 then
			local magictype1, p1
			while magictype1 ~= Op2 do
				local Item = AddItem(0,1,0,10,0,100,10)
				magictype1, p1 = GetItemMagicAttrib(Item,Op1)
				if magictype1 ~= Op2 then
					RemoveItemByIndex(Item)
				end
			end
		else
			local magictype2, p2
			while magictype2 ~= Op2 do
				local Item = AddItem(0,1,0,10,Op4,100,10)
				magictype2, p2 = GetItemMagicAttrib(Item,Op1)
				if magictype2 ~= Op2 then
					RemoveItemByIndex(Item)
				end
			end
		end
	else
		if Op2 == 111 then
			a,b,c = 0,5,0
		elseif Op2 == 117 or Op2 == 113 then
			a,b,c = 0,2,1
		else
			a,b,c = 0,6,0
		end
		if Op4 == 99 then
			local magictype, p
			while magictype ~= Op2 do
				local Item = AddItem(a,b,c,10,0,100,10)
				magictype, p = GetItemMagicAttrib(Item,Op1)
				if magictype ~= Op2 then
					RemoveItemByIndex(Item)
				end
			end
		else
			local magictype, p
			while magictype ~= Op2 do
				local Item = AddItem(a,b,c,10,Op4,100,10)
				magictype, p = GetItemMagicAttrib(Item,Op1)
				if magictype ~= Op2 then
					RemoveItemByIndex(Item)
				end
			end
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------