Include("\\script\\tagnewplayer\\tbitemHK.lua");

function dotim()	local tab_Content = {
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
function khoangth()
local tab_Content = {
		"HuyÒn tinh/huytin",
		"kho¸ng th¹ch/kdb",
		"S¸t thñ gi¶n/stg",
		"Thñy tinh/thuyti",
		"Phóc duyªn/phucd",
		"KÕt thóc."
	}
	Say(" Muèn lÊy g× th× click ! ", getn(tab_Content), tab_Content);
end;

function huytin()
AddItem(6,1,147,1,0,0,0) 
AddItem(6,1,147,2,0,0,0) 
AddItem(6,1,147,3,0,0,0) 
AddItem(6,1,147,4,0,0,0) 
AddItem(6,1,147,5,0,0,0) 
AddItem(6,1,147,6,0,0,0) 
AddItem(6,1,147,7,0,0,0) 
AddItem(6,1,147,8,0,0,0) 
AddItem(6,1,147,9,0,0,0) 
AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 	
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
end


function stg()
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 	
AddItem(6,1,400,90,3,0,0) 	
AddItem(6,1,400,90,4,0,0) 		
end

function thuyti()
AddEventItem(239) 
AddEventItem(240) 
AddEventItem(241) 		
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
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
function manat()	local tab_Content = {
		"MÆt n¹ /hacthan",
		"MÆt n¹ 1/matna1",
		"MÆt n¹ 2/matna2",
		"MÆt n¹ 3/matna3",
		"MÆt n¹ 4/matna4",
		"MÆt n¹ 5/matna5",
		"KÕt thóc."
	}
	Say("Chän lo¹i mÆt n¹", getn(tab_Content), tab_Content);
end;

function hacthan()
for i=3890,3894 do
AddGoldItem(0, i)
end
end
function matna1()
for i=4493,4523 do
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
function dohoangkim()
local szTitle = "Ng­¬i cÇn lÊy bé nµo ?"
local tbOpt =
{
{"Trang BÞ Thanh C©u", thanhcau},
{"Trang BÞ V©n Léc", vanloc},
{"Trang BÞ Th­¬ng Lang", thuonglang},
{"Trang BÞ HuyÒn Viªn", huyenvien},
{"Trang BÞ Tö M·ng", tumang},
{"Trang BÞ Kim ¤", kimo},
{"Trang BÞ B¹ch Hæ", bachho},
{"Trang BÞ XÝch L©n", xichlan},
{"Trang BÞ Minh Ph­îng", minhphuong},
{"Trang BÞ §»ng Long", danglong},
{"Trang BÞ Tinh S­¬ng", tinhsuong},
{"Trang BÞ NguyÖt KhuyÕt", nguyetkhuyet},
{"Trang BÞ DiÖu D­¬ng", dieuduong},
{"Trang BÞ Anh Hµo", anhhao},
{"Th«i ta kh«ng cÇn"},
}
CreateNewSayEx(szTitle, tbOpt)
end

function setdoHS(n)
local s = n+9;
for i = n,  s do
AddGoldItem(0,i)
end
end

function anhhao()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#setanhhao(1)",
"ThiÕu L©m Bæng/#setanhhao(2)",
"ThiÕu L©m §ao/#setanhhao(3)",
"Thiªn V­¬ng Chïy/#setanhhao(4)",
"Thiªn V­¬ng Th­¬ng/#setanhhao(5)",
"Thiªn V­¬ng §ao/#setanhhao(6)",
"Nga My KiÕm/#setanhhao(7)",
"Nga My Ch­ëng/#setanhhao(8)",
"Thóy Yªn §ao/#setanhhao(9)",
"Thóy Yªn Song §ao/#setanhhao(10)",
"Ngò §éc Ch­ëng/#setanhhao(11)",
"Ngò §éc §ao/#setanhhao(12)",
"§­êng M«n Phi §ao/#setanhhao(13)",
"§­êng M«n Næ/#setanhhao(14)",
"Trang sau/anhhao2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function anhhao2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#setanhhao(15)",
"C¸i Bang Rång/#setanhhao(16)",
"C¸i Bang Bæng/#setanhhao(17)",
"Thiªn NhÉn KÝch/#setanhhao(18)",
"Thiªn NhÉn §ao/#setanhhao(19)",
"Vâ §ang Néi C«ng/#setanhhao(20)",
"Vâ §ang KiÕm/#setanhhao(21)",
"C«n L«n §ao/#setanhhao(22)",
"C«n L«n KiÕm/#setanhhao(23)",
"Hoa S¬n Néi C«ng/#setdoHS(6523)",
"Hoa S¬n KiÕm/#setdoHS(6513)",
"Vò Hån ThuÉn/#setdoHS(7318)",
"Vò Hån §ao/#setdoHS(7327)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function setanhhao(nId)
for i = 6283, 6292 do
AddGoldItem(0,10*nId+i-10)
end
end

function dieuduong()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#setdieuduong(1)",
"ThiÕu L©m Bæng/#setdieuduong(2)",
"ThiÕu L©m §ao/#setdieuduong(3)",
"Thiªn V­¬ng Chïy/#setdieuduong(4)",
"Thiªn V­¬ng Th­¬ng/#setdieuduong(5)",
"Thiªn V­¬ng §ao/#setdieuduong(6)",
"Nga My KiÕm/#setdieuduong(7)",
"Nga My Ch­ëng/#setdieuduong(8)",
"Thóy Yªn §ao/#setdieuduong(9)",
"Thóy Yªn Song §ao/#setdieuduong(10)",
"Ngò §éc Ch­ëng/#setdieuduong(11)",
"Ngò §éc §ao/#setdieuduong(12)",
"§­êng M«n Phi §ao/#setdieuduong(13)",
"§­êng M«n Næ/#setdieuduong(14)",
"Trang sau/dieuduong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function dieuduong2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#setdieuduong(15)",
"C¸i Bang Rång/#setdieuduong(16)",
"C¸i Bang Bæng/#setdieuduong(17)",
"Thiªn NhÉn KÝch/#setdieuduong(18)",
"Thiªn NhÉn §ao/#setdieuduong(19)",
"Vâ §ang Néi C«ng/#setdieuduong(20)",
"Vâ §ang KiÕm/#setdieuduong(21)",
"C«n L«n §ao/#setdieuduong(22)",
"C«n L«n KiÕm/#setdieuduong(23)",
"Hoa S¬n Néi C«ng/#setdoHS(6202)",
"Hoa S¬n KiÕm/#setdoHS(6192)",
"Vò Hån ThuÉn/#setdoHS(7298)",
"Vò Hån §ao/#setdoHS(7307)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function setdieuduong(nId)
for i = 5962, 5971 do
AddGoldItem(0,10*nId+i-10)
end
end

function nguyetkhuyet()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#setnguyetkhuyet(1)",
"ThiÕu L©m Bæng/#setnguyetkhuyet(2)",
"ThiÕu L©m §ao/#setnguyetkhuyet(3)",
"Thiªn V­¬ng Chïy/#setnguyetkhuyet(4)",
"Thiªn V­¬ng Th­¬ng/#setnguyetkhuyet(5)",
"Thiªn V­¬ng §ao/#setnguyetkhuyet(6)",
"Nga My KiÕm/#setnguyetkhuyet(7)",
"Nga My Ch­ëng/#setnguyetkhuyet(8)",
"Thóy Yªn §ao/#setnguyetkhuyet(9)",
"Thóy Yªn Song §ao/#setnguyetkhuyet(10)",
"Ngò §éc Ch­ëng/#setnguyetkhuyet(11)",
"Ngò §éc §ao/#setnguyetkhuyet(12)",
"§­êng M«n Phi §ao/#setnguyetkhuyet(13)",
"§­êng M«n Næ/#setnguyetkhuyet(14)",
"Trang sau/nguyetkhuyet2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function nguyetkhuyet2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#setnguyetkhuyet(15)",
"C¸i Bang Rång/#setnguyetkhuyet(16)",
"C¸i Bang Bæng/#setnguyetkhuyet(17)",
"Thiªn NhÉn KÝch/#setnguyetkhuyet(18)",
"Thiªn NhÉn §ao/#setnguyetkhuyet(19)",
"Vâ §ang Néi C«ng/#setnguyetkhuyet(20)",
"Vâ §ang KiÕm/#setnguyetkhuyet(21)",
"C«n L«n §ao/#setnguyetkhuyet(22)",
"C«n L«n KiÕm/#setnguyetkhuyet(23)",
"Hoa S¬n Néi C«ng/#setdoHS(5910)",
"Hoa S¬n KiÕm/#setdoHS(5900)",
"Vò Hån ThuÉn/#setdoHS(7278)",
"Vò Hån §ao/#setdoHS(7287)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function setnguyetkhuyet(nId)
for i = 5670, 5679 do
AddGoldItem(0,10*nId+i-10)
end
end



function tinhsuong()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#settinhsuong(1)",
"ThiÕu L©m Bæng/#settinhsuong(2)",
"ThiÕu L©m §ao/#settinhsuong(3)",
"Thiªn V­¬ng Chïy/#settinhsuong(4)",
"Thiªn V­¬ng Th­¬ng/#settinhsuong(5)",
"Thiªn V­¬ng §ao/#settinhsuong(6)",
"Nga My KiÕm/#settinhsuong(7)",
"Nga My Ch­ëng/#settinhsuong(8)",
"Thóy Yªn §ao/#settinhsuong(9)",
"Thóy Yªn Song §ao/#settinhsuong(10)",
"Ngò §éc Ch­ëng/#settinhsuong(11)",
"Ngò §éc §ao/#settinhsuong(12)",
"§­êng M«n Phi §ao/#settinhsuong(13)",
"§­êng M«n Næ/#settinhsuong(14)",
"Trang sau/tinhsuong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function tinhsuong2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#settinhsuong(15)",
"C¸i Bang Rång/#settinhsuong(16)",
"C¸i Bang Bæng/#settinhsuong(17)",
"Thiªn NhÉn KÝch/#settinhsuong(18)",
"Thiªn NhÉn §ao/#settinhsuong(19)",
"Vâ §ang Néi C«ng/#settinhsuong(20)",
"Vâ §ang KiÕm/#settinhsuong(21)",
"C«n L«n §ao/#settinhsuong(22)",
"C«n L«n KiÕm/#settinhsuong(23)",
"Hoa S¬n Néi C«ng/#setdoHS(5619)",
"Hoa S¬n KiÕm/#setdoHS(5609)",
"Vò Hån ThuÉn/#setdoHS(7258)",
"Vò Hån §ao/#setdoHS(7267)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function settinhsuong(nId)
for i = 5379, 5388 do
AddGoldItem(0,10*nId+i-10)
end
end

function thanhcau()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#sethanhcau(1)",
"ThiÕu L©m Bæng/#sethanhcau(2)",
"ThiÕu L©m §ao/#sethanhcau(3)",
"Thiªn V­¬ng Chïy/#sethanhcau(4)",
"Thiªn V­¬ng Th­¬ng/#sethanhcau(5)",
"Thiªn V­¬ng §ao/#sethanhcau(6)",
"Nga My KiÕm/#sethanhcau(7)",
"Nga My Ch­ëng/#sethanhcau(8)",
"Thóy Yªn §ao/#sethanhcau(9)",
"Thóy Yªn Song §ao/#sethanhcau(10)",
"Ngò §éc Ch­ëng/#sethanhcau(11)",
"Ngò §éc §ao/#sethanhcau(12)",
"§­êng M«n Phi §ao/#sethanhcau(13)",
"§­êng M«n Næ/#sethanhcau(14)",
"Trang sau/thanhcau2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function thanhcau2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#sethanhcau(15)",
"C¸i Bang Rång/#sethanhcau(16)",
"C¸i Bang Bæng/#sethanhcau(17)",
"Thiªn NhÉn KÝch/#sethanhcau(18)",
"Thiªn NhÉn §ao/#sethanhcau(19)",
"Vâ §ang Néi C«ng/#sethanhcau(20)",
"Vâ §ang KiÕm/#sethanhcau(21)",
"C«n L«n §ao/#sethanhcau(22)",
"C«n L«n KiÕm/#sethanhcau(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4633)",
"Hoa S¬n KiÕm/#setdoHS(4643)",
"Vò Hån ThuÉn/#setdoHS(7238)",
"Vò Hån §ao/#setdoHS(7247)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function sethanhcau(nId)
for i = 905, 914 do
AddGoldItem(0,10*nId+i-10)
end
end

function vanloc()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#sevanloc(1)",
"ThiÕu L©m Bæng/#sevanloc(2)",
"ThiÕu L©m §ao/#sevanloc(3)",
"Thiªn V­¬ng Chïy/#sevanloc(4)",
"Thiªn V­¬ng Th­¬ng/#sevanloc(5)",
"Thiªn V­¬ng §ao/#sevanloc(6)",
"Nga My KiÕm/#sevanloc(7)",
"Nga My Ch­ëng/#sevanloc(8)",
"Thóy Yªn §ao/#sevanloc(9)",
"Thóy Yªn Song §ao/#sevanloc(10)",
"Ngò §éc Ch­ëng/#sevanloc(11)",
"Ngò §éc §ao/#sevanloc(12)",
"§­êng M«n Phi §ao/#sevanloc(13)",
"§­êng M«n Næ/#sevanloc(14)",
"Trang sau/vanloc2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function vanloc2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#sevanloc(15)",
"C¸i Bang Rång/#sevanloc(16)",
"C¸i Bang Bæng/#sevanloc(17)",
"Thiªn NhÉn KÝch/#sevanloc(18)",
"Thiªn NhÉn §ao/#sevanloc(19)",
"Vâ §ang Néi C«ng/#sevanloc(20)",
"Vâ §ang KiÕm/#sevanloc(21)",
"C«n L«n §ao/#sevanloc(22)",
"C«n L«n KiÕm/#sevanloc(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4653)",
"Hoa S¬n KiÕm/#setdoHS(4663)",
"Vò Hån ThuÉn/#setdoHS(7218)",
"Vò Hån §ao/#setdoHS(7227)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function sevanloc(nId)
for i = 1135, 1144 do
AddGoldItem(0,10*nId+i-10)
end
end

function thuonglang()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#sethuonglang(1)",
"ThiÕu L©m Bæng/#sethuonglang(2)",
"ThiÕu L©m §ao/#sethuonglang(3)",
"Thiªn V­¬ng Chïy/#sethuonglang(4)",
"Thiªn V­¬ng Th­¬ng/#sethuonglang(5)",
"Thiªn V­¬ng §ao/#sethuonglang(6)",
"Nga My KiÕm/#sethuonglang(7)",
"Nga My Ch­ëng/#sethuonglang(8)",
"Thóy Yªn §ao/#sethuonglang(9)",
"Thóy Yªn Song §ao/#sethuonglang(10)",
"Ngò §éc Ch­ëng/#sethuonglang(11)",
"Ngò §éc §ao/#sethuonglang(12)",
"§­êng M«n Phi §ao/#sethuonglang(13)",
"§­êng M«n Næ/#sethuonglang(14)",
"Trang sau/thuonglang2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function thuonglang2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#sethuonglang(15)",
"C¸i Bang Rång/#sethuonglang(16)",
"C¸i Bang Bæng/#sethuonglang(17)",
"Thiªn NhÉn KÝch/#sethuonglang(18)",
"Thiªn NhÉn §ao/#sethuonglang(19)",
"Vâ §ang Néi C«ng/#sethuonglang(20)",
"Vâ §ang KiÕm/#sethuonglang(21)",
"C«n L«n §ao/#sethuonglang(22)",
"C«n L«n KiÕm/#sethuonglang(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4673)",
"Hoa S¬n KiÕm/#setdoHS(4683)",
"Vò Hån ThuÉn/#setdoHS(7198)",
"Vò Hån §ao/#setdoHS(7207)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function sethuonglang(nId)
for i = 1365, 1374 do
AddGoldItem(0,10*nId+i-10)
end
end

function huyenvien()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#sehuyenvien(1)",
"ThiÕu L©m Bæng/#sehuyenvien(2)",
"ThiÕu L©m §ao/#sehuyenvien(3)",
"Thiªn V­¬ng Chïy/#sehuyenvien(4)",
"Thiªn V­¬ng Th­¬ng/#sehuyenvien(5)",
"Thiªn V­¬ng §ao/#sehuyenvien(6)",
"Nga My KiÕm/#sehuyenvien(7)",
"Nga My Ch­ëng/#sehuyenvien(8)",
"Thóy Yªn §ao/#sehuyenvien(9)",
"Thóy Yªn Song §ao/#sehuyenvien(10)",
"Ngò §éc Ch­ëng/#sehuyenvien(11)",
"Ngò §éc §ao/#sehuyenvien(12)",
"§­êng M«n Phi §ao/#sehuyenvien(13)",
"§­êng M«n Næ/#sehuyenvien(14)",
"Trang sau/huyenvien2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function huyenvien2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#sehuyenvien(15)",
"C¸i Bang Rång/#sehuyenvien(16)",
"C¸i Bang Bæng/#sehuyenvien(17)",
"Thiªn NhÉn KÝch/#sehuyenvien(18)",
"Thiªn NhÉn §ao/#sehuyenvien(19)",
"Vâ §ang Néi C«ng/#sehuyenvien(20)",
"Vâ §ang KiÕm/#sehuyenvien(21)",
"C«n L«n §ao/#sehuyenvien(22)",
"C«n L«n KiÕm/#sehuyenvien(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4693)",
"Hoa S¬n KiÕm/#setdoHS(4703)",
"Vò Hån ThuÉn/#setdoHS(7178)",
"Vò Hån §ao/#setdoHS(7187)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function sehuyenvien(nId)
for i = 1595, 1604 do
AddGoldItem(0,10*nId+i-10)
end
end

function xichlan()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#sexichlan(1)",
"ThiÕu L©m Bæng/#sexichlan(2)",
"ThiÕu L©m §ao/#sexichlan(3)",
"Thiªn V­¬ng Chïy/#sexichlan(4)",
"Thiªn V­¬ng Th­¬ng/#sexichlan(5)",
"Thiªn V­¬ng §ao/#sexichlan(6)",
"Nga My KiÕm/#sexichlan(7)",
"Nga My Ch­ëng/#sexichlan(8)",
"Thóy Yªn §ao/#sexichlan(9)",
"Thóy Yªn Song §ao/#sexichlan(10)",
"Ngò §éc Ch­ëng/#sexichlan(11)",
"Ngò §éc §ao/#sexichlan(12)",
"§­êng M«n Phi §ao/#sexichlan(13)",
"§­êng M«n Næ/#sexichlan(14)",
"Trang sau/xichlan2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function xichlan2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#sexichlan(15)",
"C¸i Bang Rång/#sexichlan(16)",
"C¸i Bang Bæng/#sexichlan(17)",
"Thiªn NhÉn KÝch/#sexichlan(18)",
"Thiªn NhÉn §ao/#sexichlan(19)",
"Vâ §ang Néi C«ng/#sexichlan(20)",
"Vâ §ang KiÕm/#sexichlan(21)",
"C«n L«n §ao/#sexichlan(22)",
"C«n L«n KiÕm/#sexichlan(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4783)",
"Hoa S¬n KiÕm/#setdoHS(4773)",
"Vò Hån ThuÉn/#setdoHS(7158)",
"Vò Hån §ao/#setdoHS(7167)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function sexichlan(nId)
for i = 2515, 2524 do
AddGoldItem(0,10*nId+i-10)
end
end

function minhphuong()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#seminhphuong(1)",
"ThiÕu L©m Bæng/#seminhphuong(2)",
"ThiÕu L©m §ao/#seminhphuong(3)",
"Thiªn V­¬ng Chïy/#seminhphuong(4)",
"Thiªn V­¬ng Th­¬ng/#seminhphuong(5)",
"Thiªn V­¬ng §ao/#seminhphuong(6)",
"Nga My KiÕm/#seminhphuong(7)",
"Nga My Ch­ëng/#seminhphuong(8)",
"Thóy Yªn §ao/#seminhphuong(9)",
"Thóy Yªn Song §ao/#seminhphuong(10)",
"Ngò §éc Ch­ëng/#seminhphuong(11)",
"Ngò §éc §ao/#seminhphuong(12)",
"§­êng M«n Phi §ao/#seminhphuong(13)",
"§­êng M«n Næ/#seminhphuong(14)",
"Trang sau/minhphuong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function minhphuong2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#seminhphuong(15)",
"C¸i Bang Rång/#seminhphuong(16)",
"C¸i Bang Bæng/#seminhphuong(17)",
"Thiªn NhÉn KÝch/#seminhphuong(18)",
"Thiªn NhÉn §ao/#seminhphuong(19)",
"Vâ §ang Néi C«ng/#seminhphuong(20)",
"Vâ §ang KiÕm/#seminhphuong(21)",
"C«n L«n §ao/#seminhphuong(22)",
"C«n L«n KiÕm/#seminhphuong(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4803)",
"Hoa S¬n KiÕm/#setdoHS(4793)",
"Vò Hån ThuÉn/#setdoHS(7138)",
"Vò Hån §ao/#setdoHS(7147)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function seminhphuong(nId)
for i = 2745, 2754 do
AddGoldItem(0,10*nId+i-10)
end
end

function danglong()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#sedanglong(1)",
"ThiÕu L©m Bæng/#sedanglong(2)",
"ThiÕu L©m §ao/#sedanglong(3)",
"Thiªn V­¬ng Chïy/#sedanglong(4)",
"Thiªn V­¬ng Th­¬ng/#sedanglong(5)",
"Thiªn V­¬ng §ao/#sedanglong(6)",
"Nga My KiÕm/#sedanglong(7)",
"Nga My Ch­ëng/#sedanglong(8)",
"Thóy Yªn §ao/#sedanglong(9)",
"Thóy Yªn Song §ao/#sedanglong(10)",
"Ngò §éc Ch­ëng/#sedanglong(11)",
"Ngò §éc §ao/#sedanglong(12)",
"§­êng M«n Phi §ao/#sedanglong(13)",
"§­êng M«n Næ/#sedanglong(14)",
"Trang sau/danglong2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function danglong2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#sedanglong(15)",
"C¸i Bang Rång/#sedanglong(16)",
"C¸i Bang Bæng/#sedanglong(17)",
"Thiªn NhÉn KÝch/#sedanglong(18)",
"Thiªn NhÉn §ao/#sedanglong(19)",
"Vâ §ang Néi C«ng/#sedanglong(20)",
"Vâ §ang KiÕm/#sedanglong(21)",
"C«n L«n §ao/#sedanglong(22)",
"C«n L«n KiÕm/#sedanglong(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4823)",
"Hoa S¬n KiÕm/#setdoHS(4813)",
"Vò Hån ThuÉn/#setdoHS(7118)",
"Vò Hån §ao/#setdoHS(7127)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function sedanglong(nId)
for i = 2975, 2984 do
AddGoldItem(0,10*nId+i-10)
end
end

function bachho()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#sebachho(1)",
"ThiÕu L©m Bæng/#sebachho(2)",
"ThiÕu L©m §ao/#sebachho(3)",
"Thiªn V­¬ng Chïy/#sebachho(4)",
"Thiªn V­¬ng Th­¬ng/#sebachho(5)",
"Thiªn V­¬ng §ao/#sebachho(6)",
"Nga My KiÕm/#sebachho(7)",
"Nga My Ch­ëng/#sebachho(8)",
"Thóy Yªn §ao/#sebachho(9)",
"Thóy Yªn Song §ao/#sebachho(10)",
"Ngò §éc Ch­ëng/#sebachho(11)",
"Ngò §éc §ao/#sebachho(12)",
"§­êng M«n Phi §ao/#sebachho(13)",
"§­êng M«n Næ/#sebachho(14)",
"Trang sau/bachho2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function bachho2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#sebachho(15)",
"C¸i Bang Rång/#sebachho(16)",
"C¸i Bang Bæng/#sebachho(17)",
"Thiªn NhÉn KÝch/#sebachho(18)",
"Thiªn NhÉn §ao/#sebachho(19)",
"Vâ §ang Néi C«ng/#sebachho(20)",
"Vâ §ang KiÕm/#sebachho(21)",
"C«n L«n §ao/#sebachho(22)",
"C«n L«n KiÕm/#sebachho(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4763)",
"Hoa S¬n KiÕm/#setdoHS(4753)",
"Vò Hån ThuÉn/#setdoHS(7098)",
"Vò Hån §ao/#setdoHS(7107)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function sebachho(nId)
for i = 2285, 2294 do
AddGoldItem(0,10*nId+i-10)
end
end
function kimo()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#sekimo(1)",
"ThiÕu L©m Bæng/#sekimo(2)",
"ThiÕu L©m §ao/#sekimo(3)",
"Thiªn V­¬ng Chïy/#sekimo(4)",
"Thiªn V­¬ng Th­¬ng/#sekimo(5)",
"Thiªn V­¬ng §ao/#sekimo(6)",
"Nga My KiÕm/#sekimo(7)",
"Nga My Ch­ëng/#sekimo(8)",
"Thóy Yªn §ao/#sekimo(9)",
"Thóy Yªn Song §ao/#sekimo(10)",
"Ngò §éc Ch­ëng/#sekimo(11)",
"Ngò §éc §ao/#sekimo(12)",
"§­êng M«n Phi §ao/#sekimo(13)",
"§­êng M«n Næ/#sekimo(14)",
"Trang sau/kimo2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function kimo2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#sekimo(15)",
"C¸i Bang Rång/#sekimo(16)",
"C¸i Bang Bæng/#sekimo(17)",
"Thiªn NhÉn KÝch/#sekimo(18)",
"Thiªn NhÉn §ao/#sekimo(19)",
"Vâ §ang Néi C«ng/#sekimo(20)",
"Vâ §ang KiÕm/#sekimo(21)",
"C«n L«n §ao/#sekimo(22)",
"C«n L«n KiÕm/#sekimo(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4743)",
"Hoa S¬n KiÕm/#setdoHS(4733)",
"Vò Hån ThuÉn/#setdoHS(7078)",
"Vò Hån §ao/#setdoHS(7087)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end

function sekimo(nId)
for i = 2055, 2064 do
AddGoldItem(0,10*nId+i-10)
end
end

function tumang()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#setumang(1)",
"ThiÕu L©m Bæng/#setumang(2)",
"ThiÕu L©m §ao/#setumang(3)",
"Thiªn V­¬ng Chïy/#setumang(4)",
"Thiªn V­¬ng Th­¬ng/#setumang(5)",
"Thiªn V­¬ng §ao/#setumang(6)",
"Nga My KiÕm/#setumang(7)",
"Nga My Ch­ëng/#setumang(8)",
"Thóy Yªn §ao/#setumang(9)",
"Thóy Yªn Song §ao/#setumang(10)",
"Ngò §éc Ch­ëng/#setumang(11)",
"Ngò §éc §ao/#setumang(12)",
"§­êng M«n Phi §ao/#setumang(13)",
"§­êng M«n Næ/#setumang(14)",
"Trang sau/tumang2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function tumang2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#setumang(15)",
"C¸i Bang Rång/#setumang(16)",
"C¸i Bang Bæng/#setumang(17)",
"Thiªn NhÉn KÝch/#setumang(18)",
"Thiªn NhÉn §ao/#setumang(19)",
"Vâ §ang Néi C«ng/#setumang(20)",
"Vâ §ang KiÕm/#setumang(21)",
"C«n L«n §ao/#setumang(22)",
"C«n L«n KiÕm/#setumang(23)",
"Hoa S¬n Néi C«ng/#setdoHS(4723)",
"Hoa S¬n KiÕm/#setdoHS(4713)",
"Vò Hån ThuÉn/#setdoHS(7058)",
"Vò Hån §ao/#setdoHS(7067)",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>,  h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function setumang(nId)
for i = 1825, 1834 do
AddGoldItem(0,10*nId+i-10)
end
end

function cucpham()
	local tab_Content = {
		--"Set Hoµng Kim M«n Ph¸i /sethkmp",
		--"Set Xich L©n /setxl",
		--"Set Cùc PhÈm §éng S¸t /cpds",
		"MÆt N¹ GM /matnagm",
		--"Set Minh Ph­îng /setmp",
		--"Set Song Long /setsonglo",
		"Phi Phong /phip",
		"Trang Søc /trangs",
		"Kim Ên /kiman",
		"Tæng Hîp /tongh",
		"LÊy 100 ti?n ®ång /tiendong",
		"LÊy 1000v l­îng /tienvan",
		"M¹c b¾c th¶o nguyªn lÖnh /macblb",
		"Th«i kh«ng lÊy g× n÷a h?t."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;

function macblb()
AddItem(6,1,1448,1,0,0)
end
function kiman()
		AddGoldItem(0,3214)
		AddGoldItem(0,3224)
		AddGoldItem(0,3234)
end
function tongh()
		AddGoldItem(0,3506)
		AddGoldItem(0,3530)
		AddGoldItem(0,3541)
		AddGoldItem(0,3880)
		AddGoldItem(0,3881)
		AddGoldItem(0,3882)
		AddGoldItem(0,3883)
		AddGoldItem(0,3884)
		AddGoldItem(0,3885)
		AddGoldItem(0,3886)
		AddGoldItem(0,3887)
		AddGoldItem(0,3888)
end

function phip()
		AddGoldItem(0,3466)
		AddGoldItem(0,3467)
		AddGoldItem(0,3468)
		AddGoldItem(0,3469)
		AddGoldItem(0,3470)
		AddGoldItem(0,3471)
		AddGoldItem(0,3472)
		AddGoldItem(0,3473)
		AddGoldItem(0,3474)
		AddGoldItem(0,3475)
		AddGoldItem(0,3476)
		AddGoldItem(0,3477)
		AddGoldItem(0,3478)
		AddGoldItem(0,3479)
		AddGoldItem(0,3480)
		AddGoldItem(0,3481)
		AddGoldItem(0,3482)
		AddGoldItem(0,3483)
		AddGoldItem(0,3484)
		AddGoldItem(0,3485)
		AddGoldItem(0,3486)
		AddGoldItem(0,3487)
		AddGoldItem(0,3488)
		AddGoldItem(0,3489)
		AddGoldItem(0,3490)
end

function trangs()
		AddGoldItem(0,3507)
		AddGoldItem(0,3508)
		AddGoldItem(0,3509)
		AddGoldItem(0,3510)
		AddGoldItem(0,3511)
		AddGoldItem(0,3512)
		AddGoldItem(0,3513)
		AddGoldItem(0,3514)
		AddGoldItem(0,3515)
		AddGoldItem(0,3516)
		AddGoldItem(0,3517)
		AddGoldItem(0,3518)
		AddGoldItem(0,3519)
		AddGoldItem(0,3520)
end

function matnagm()
--AddItem(0,11,2,1,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddItem(0,11,0,367,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddItem(0,11,0,368,0,10,10,10,10,10,10,10,gio,day,month,nam)
end



function cpds()
AddGoldItem(0,494)
AddGoldItem(0,495)
AddGoldItem(0,496)
AddGoldItem(0,497)
end



function setsonglo()
	local tab_Content = {
		"Rêi khái/no",
		"ThiÕu L©m quy?n/#setsonglo1(1)",
		"ThiÕu L©m c«n/#setsonglo1(2)",
		"ThiÕu L©m ®ao/#setsonglo1(3)",
		"Thiªn V­¬ng chïy/#setsonglo1(4)",
		"Thiªn V­¬ng th­¬ng/#setsonglo1(5)",
		"Thiªn V­¬ng ®ao/#setsonglo1(6)",
		"Nga My kiÕm/#setsonglo1(7)",
		"Nga My ch­ëng/#setsonglo1(8)",
		"Nga My buff/#setsonglo1(9)",
		"Thóy Yªn ®ao/#setsonglo1(10)",
		"Thóy Yªn song ®ao/#setsonglo1(11)",
		"Ngò §éc ch­ëng/#setsonglo1(12)",
		"Ngò §éc ®ao/#setsonglo1(13)",
		"Ngò  §éc bïa/#setsonglo1(14)",
		"Trang sau/setsonglo2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setsonglo2()
	local tab_Content = {
		"Rêi khái/no",
		"§­êng M«n phi ®ao/#setsonglo1(15)",
		"§­êng M«n tô tiÔn/#setsonglo1(16)",
		"§­êng M«n phi tiªu/#setsonglo1(17)",
		"§­êng M«n bÉy/#setsonglo1(18)",
		"C¸i Bang rång/#setsonglo1(19)",
		"C¸i Bang bæng/#setsonglo1(20)",
		"Thiªn NhÉn kÝch/#setsonglo1(21)",
		"Thiªn NhÉn ®ao/#setsonglo1(22)",
		"Thiªn NhÉn bïa/#setsonglo1(23)",
		"Vâ §ang khÝ /#setsonglo1(24)",
		"Vâ §ang kiÕm/#setsonglo1(25)",
		"C«n L«n ®ao/#setsonglo1(26)",
		"C«n L«n kiÕm/#setsonglo1(27)",
		"C«n L«n bïa/#setsonglo1(28)",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setsonglo1(nId)
for i=2975,2985 do AddGoldItem(0,10*nId+i-10) end
end


function sethkmp()
	local tab_Content = {
		"Rêi khái/no",
		"Th«i ta kh«ng cÇn/no",
		"ThiÕu L©m QuyÒn/#sethkmp1(1)",
		"ThiÕu L©m Bæng/#sethkmp1(2)",
		"ThiÕu L©m §ao/#sethkmp1(3)",
		"Thiªn V­¬ng Chïy/#sethkmp1(4)",
		"Thiªn V­¬ng Th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng §ao/#sethkmp1(6)",
		"Nga My KiÕm/#sethkmp1(7)",
		"Nga My Ch­ëng/#sethkmp1(8)",
		"Thóy Yªn §ao/#sethkmp1(9)",
		"Thóy Yªn Song §ao/#sethkmp1(10)",
		"Ngò §éc Ch­ëng/#sethkmp1(11)",
		"Ngò §éc §ao/#sethkmp1(12)",
		"§­êng M«n Phi §ao/#sethkmp1(13)",
		"§­êng M«n Næ/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"Rêi khái/no",
		"§­êng M«n phi ®ao/#sethkmp1(15)",
		"§­êng M«n tô tiÔn/#sethkmp1(16)",
		"§­êng M«n phi tiªu/#sethkmp1(17)",
		"§­êng M«n bÉy/#sethkmp1(18)",
		"C¸i Bang rång/#sethkmp1(19)",
		"C¸i Bang bæng/#sethkmp1(20)",
		"Thiªn NhÉn kÝch/#sethkmp1(21)",
		"Thiªn NhÉn ®ao/#sethkmp1(22)",
		"Thiªn NhÉn bïa/#sethkmp1(23)",
		"Vâ §ang khÝ /#sethkmp1(24)",
		"Vâ §ang kiÕm/#sethkmp1(25)",
		"C«n L«n ®ao/#sethkmp1(26)",
		"C«n L«n kiÕm/#sethkmp1(27)",
		"C«n L«n bïa/#sethkmp1(28)",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function setxl()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#setxl1(1)",
"ThiÕu L©m Bæng/#setxl1(2)",
"ThiÕu L©m §ao/#setxl1(3)",
"Thiªn V­¬ng Chïy/#setxl1(4)",
"Thiªn V­¬ng Th­¬ng/#setxl1(5)",
"Thiªn V­¬ng §ao/#setxl1(6)",
"Nga My KiÕm/#setxl1(7)",
"Nga My Ch­ëng/#setxl1(8)",
"Thóy Yªn §ao/#setxl1(9)",
"Thóy Yªn Song §ao/#setxl1(10)",
"Ngò §éc Ch­ëng/#setxl1(11)",
"Ngò §éc §ao/#setxl1(12)",
"§­êng M«n Phi §ao/#setxl1(13)",
"§­êng M«n Næ/#setxl1(14)",
"Trang sau/setxl2",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setxl2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#setxl1(15)",
"C¸i Bang Rång/#setxl1(16)",
"C¸i Bang Bæng/#setxl1(17)",
"Thiªn NhÉn KÝch/#setxl1(18)",
"Thiªn NhÉn §ao/#setxl1(19)",
"Vâ §ang Néi C«ng/#setxl1(20)",
"Vâ §ang KiÕm/#setxl1(21)",
"C«n L«n §ao/#setxl1(22)",
"C«n L«n KiÕm/#setxl1(23)",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setxl1(nId)
for i=2515,2525 do AddGoldItem(0,10*nId+i-10) end
end

function setmp()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"ThiÕu L©m QuyÒn/#setmp1(1)",
"ThiÕu L©m Bæng/#setmp1(2)",
"ThiÕu L©m §ao/#setmp1(3)",
"Thiªn V­¬ng Chïy/#setmp1(4)",
"Thiªn V­¬ng Th­¬ng/#setmp1(5)",
"Thiªn V­¬ng §ao/#setmp1(6)",
"Nga My KiÕm/#setmp1(7)",
"Nga My Ch­ëng/#setmp1(8)",
"Thóy Yªn §ao/#setmp1(9)",
"Thóy Yªn Song §ao/#setmp1(10)",
"Ngò §éc Ch­ëng/#setmp1(11)",
"Ngò §éc §ao/#setmp1(12)",
"§­êng M«n Phi §ao/#setmp1(13)",
"§­êng M«n Næ/#setmp1(14)",
"Trang sau/setmp2",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setmp2()
local tab_Content = {
"Th«i ta kh«ng cÇn/no",
"§­êng M«n Phi Tiªu/#setmp1(15)",
"C¸i Bang Rång/#setmp1(16)",
"C¸i Bang Bæng/#setmp1(17)",
"Thiªn NhÉn KÝch/#setmp1(18)",
"Thiªn NhÉn §ao/#setmp1(19)",
"Vâ §ang Néi C«ng/#setmp1(20)",
"Vâ §ang KiÕm/#setmp1(21)",
"C«n L«n §ao/#setmp1(22)",
"C«n L«n KiÕm/#setmp1(23)",

}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function setmp1(nId)
for i=2745,2755 do AddGoldItem(0,10*nId+i-10) end
end

function tienvan()
	Earn(1000000000)	
end;

function tiendong()
	
	AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong




end;
function hoangkimmpfull()
	local tbOpt =
	{
		{"Set Trang bÞ M«n ph¸i", Sethoangkimmpfull},
		{"Trang BÞ H¹n chÕ th­êi gian", gifthanchet7},
		{"Tho¸t"},
	}
	CreateNewSayEx(" Ng­¬i muèn lÊy mãn g×?", tbOpt)
end
function gifthanchet7()
	local tab_Content = {
		"Ngù Long TÊn Phong Ph¸t C¬/#gifthanche3t7(793)",
		"V« YÓm Thu Thñy L­u Quang §¸i/#gifthanche3t7(801)",
		"Thiªn Quang §Þa Hµnh Thiªn Lý/#gifthanche3t7(843)",
		"L¨ng Nh¹c V« Ng· Thóc §¸i/#gifthanche3t7(881)",
		"Ma ThÞ LÖ Ma PhÖ T©m §¸i/#gifthanche3t7(876)",
		"§ång Cõu Ngù Long Ngäc Béi/#gifthanche3t7(855)",
		"Ma S¸t Cöu Háa L­u Thiªn Hoµng/#gifthanche3t7(868)",
		"CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn/#gifthanche3t7(888)",
		"V« Giang Thanh Phong NguyÔn KÞch/#gifthanche3t7(796)",
		"Trang sau/gifthanchet71",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function gifthanchet71()
	local tab_Content = {
		"Tø Kh«ng §¹t Ma T¨ng Hµi/#gifthanche3t7(776)",
		"Minh Hoang Song Hoµn Xµ KhÊu/#gifthanche3t7(829)",
		"Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu/#gifthanche3t7(811)",
		"BÝch H¶i Hoµng Ch©u Tuyªn Thanh C©n/#gifthanche3t7(816)",
		"L«i Khung linh Ngäc Èn L«i/#gifthanche3t7(898)",
		"Chó Träc Trïng Cèt Ngäc Béi/#gifthanche3t7(834)",
		"§Þa Ph¸ch Phong Hoµng Thóc Yªn/#gifthanche3t7(854)",
		"Ma Hoµng Dung Kim §o¹n NhËt Giíi/#gifthanche3t7(874)",
		"S­¬ng Tinh L­u TØnh C¶n NguyÖt KhÊu/#gifthanche3t7(891)",
		"Phôc Ma V« L­îng Kim Cang UyÓn/#gifthanche3t7(771)",
		"Méng Long Tö Kim B¸t Nh·/#gifthanche3t7(769)",
		"Trang tr­íc/gifthanchet7",
		"Tho¸t/no",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end

function gifthanche3t7(nId)
	tbGoldEquip = {
		{szName ="Hoµng Kim M«n Ph¸i H¹n chÕ thêi gian", tbProp = {0,nId},nQuality = 1}, --,nExpiredTime=10800
		};
		tbAwardTemplet:Give(tbGoldEquip[1], 1,{"",""});
end
function Sethoangkimmpfull()
	local strFaction = GetFaction()
	if (tbItemHK[strFaction] == nil) then
		Talk(1, "", "C¸c h¹ vÉn ch­a gia nhËp m«n ph¸i!");
		return
	end
	local tbOpp = {}
	local str = "<#> Ta cho phÐp ®¹i hiÖp chän 1 trong nh÷ng trang bÞ Hoµng Kim M«n Ph¸i ";
	if strFaction=="shaolin" then
	tinsert(tbOpp,"Méng Long/#AddHoangKim(2,6)")
	tinsert(tbOpp,"Tø Kh«ng/#AddHoangKim(7,11)")
	tinsert(tbOpp,"Phôc Ma /#AddHoangKim(12,16)")
	elseif strFaction=="tianwang" then
	tinsert(tbOpp,"H¸m Thiªn/#AddHoangKim(17,21)")
	tinsert(tbOpp,"KÕ NghiÖp/#AddHoangKim(22,26)")
	tinsert(tbOpp,"Ngù Long/#AddHoangKim(27,31)")
	elseif strFaction=="tangmen" then
	tinsert(tbOpp,"B¨ng Hµn  /#AddHoangKim(72,76)")
	tinsert(tbOpp,"Thiªn Quang/#AddHoangKim(77,81)")
	tinsert(tbOpp,"S©m Hoang/#AddHoangKim(82,86)")
	tinsert(tbOpp,"§Þa Ph¸ch/#AddHoangKim(87,91)")
	elseif strFaction=="wudu" then
	tinsert(tbOpp,"Minh ¶o/#AddHoangKim(62,66)")
	tinsert(tbOpp,"U Lung/#AddHoangKim(57,61)")
	tinsert(tbOpp,"Chó Ph­îc/#AddHoangKim(67,71)")
	elseif strFaction=="emei" then
	tinsert(tbOpp,"V« Gian/#AddHoangKim(32,36)")
	tinsert(tbOpp,"V« Ma /#AddHoangKim(37,41)")
	tinsert(tbOpp,"V« TrÇn/#AddHoangKim(42,46)")
	elseif strFaction=="cuiyan" then
	tinsert(tbOpp,"Tª Hoµng/#AddHoangKim(47,51)")
	tinsert(tbOpp,"BÝch H¶i  /#AddHoangKim(52,56)")
	elseif strFaction=="gaibang" then
	tinsert(tbOpp,"§ång Cõu/#AddHoangKim(92,96)")
	tinsert(tbOpp,"§Þch Kh¸i  /#AddHoangKim(97,101)")
	elseif strFaction=="tianren" then
	tinsert(tbOpp,"Ma S¸t/#AddHoangKim(102,106)")
	tinsert(tbOpp,"Ma Hoµng /#AddHoangKim(107,111)")
	tinsert(tbOpp,"Ma ThÞ /#AddHoangKim(112,116)")
	elseif strFaction=="wudang" then
	tinsert(tbOpp,"L¨ng Nh¹c/#AddHoangKim(117,121)")
	tinsert(tbOpp,"CËp Phong  /#AddHoangKim(122,126)")
	elseif strFaction=="kunlun" then
	tinsert(tbOpp,"S­¬ng Tinh/#AddHoangKim(127,131)")
	tinsert(tbOpp,"L«i Khung /#AddHoangKim(132,136)")
	tinsert(tbOpp,"Vô ¶o  /#AddHoangKim(137,141)")
	end
	Say( str, getn( tbOpp ), tbOpp )
end

function AddHoangKim(x,y)
	if CalcFreeItemCellCount() < 30 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y më.",0);
		return 1;
	end
	for i=(x-1),(y-1) do
			AddGoldItem(0, i);
	end
end

