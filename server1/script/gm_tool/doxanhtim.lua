function dotim()
local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph�c/shirt",
		"��nh M�o/hat",
		"H� Uy�n/glove",
		"Y�u ��i/belt",
		"H�i T�/shoe",
		"V�t ph�m h� tr�/khoangth",
		"M�t n�/manat",
		"Trang b� b�ch kim/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;

function weapon()
	local tab_Content = {
		"Ki�m/kiem",
		"�ao/dao",
		"B�ng/bong",
		"Th��ng/kick",
		"Ch�y/chuy",
		"Song �ao/songdao",
		"Phi Ti�u/phitieu",
		"Phi �ao/phidao",
		"T� Ti�n/tutien",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
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
		"Th�t B�o C� Sa/aothieulam",
		"Ch�n V� Th�nh Y/aovodang",
		"Thi�n Nh�n M�t Trang/aothiennhan",
		"Gi�ng Sa B�o/sabao",
		"���ng Ngh� Gi�p/dng",
		"V�n L�u Quy T�ng Y/aocaibang",
		"Tuy�n Long B�o/longbao",
		"Long Ti�u ��o Y/daoy",
		"C�u V� B�ch H� Trang/hotrang",
		"Tr�m H��ng Sam/huongsam",
		"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
		"V�n Ch�ng T� T�m Y/tamy",
		"L�u Ti�n Qu�n/tienquan",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
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
		"T� L� M�o/lomao",
		"Ng� L�o Qu�n/laoquan",
		"Tu La Ph�t K�t/phatket",
		"Th�ng Thi�n Ph�t Qu�n/phatquan",
		"Y�m Nh�t Kh�i/nhatkhoi",
		"Tr�ch Tinh Ho�n/tinhhoan",
		"� T�m M�o/tammao",
		"Quan �m Ph�t Qu�n/quanam",
		"�m D��ng V� C�c Qu�n/amduong",
		"Huy�n T� Di�n Tr�o/dientrao",
		"Long Huy�t ��u Ho�n/longhuyet",
		"Long L�n Kh�i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph�ng Tri�n S�/triensi",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
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
		"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
		"Thi�n T�m H� Uy�n/houyen",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
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
		"Thi�n T�m Y�u ��i/thientamyeu",
		"B�ch Kim Y�u ��i/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
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
		"C�u Ti�t X��ng V� Ngoa/cuutien",
		"Thi�n T�m Ngoa/thientam",
		"Kim L� H�i/kimlu",
		"Phi Ph�ng Ngoa/phiphung",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
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
		{"Thi�u l�m", bktl},
		{"Thi�n v��ng", bktv},
		{"���ng m�n", bkdm},
		{"Ng� ��c", bk5d},
		{"Nga mi", bknm},
		{"Thu� y�n", bkty},
		{"C�i bang", bkcb},
		{"Thi�n nh�n", bktn},
		{"V� �ang", bkvd},
		{"C�n l�n", bkcl},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�n ph�i?", tbOpt)
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
		"R�i kh�i/no",
		"Thi�u L�m Quy�n/#sethkmp1(1)",
		"Thi�u L�m C�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng Ch�y/#sethkmp1(4)",
		"Thi�n V��ng Th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga Mi Ki�m/#sethkmp1(7)",
		"Nga Mi Ch��ng/#sethkmp1(8)",
		"Nga Mi Buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n Song �ao/#sethkmp1(11)",
		"Ng� ��c Ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c B�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function sethkmp2()
	local tab_Content = {
		"���ng M�n Phi �ao/#sethkmp1(15)",
		"���ng M�n T� Ti�n/#sethkmp1(16)",
		"���ng M�n Phi Ti�u/#sethkmp1(17)",
		"���ng M�n B�y/#sethkmp1(18)",
		"C�i Bang R�ng/#sethkmp1(19)",
		"C�i Bang B�ng/#sethkmp1(20)",
		"Thi�n Nh�n K�ch/#sethkmp1(21)",
		"Thi�n Nh�n �ao/#sethkmp1(22)",
		"Thi�n Nh�n B�a/#sethkmp1(23)",
		"V� �ang Kh� /#sethkmp1(24)",
		"V� �ang Ki�m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n Ki�m/#sethkmp1(27)",
		"C�n L�n B�a/#sethkmp1(28)",
		"Th�i/no",
		"Tr� l�i"
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end

function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function TestGame_TrangBi_Gold(Gold_Id)
	local tbOpt = {
		{tbOpt = "��nh Qu�c thanh xa tr��ng sam", ID_GoldItem = {159}, tbCount = 4},
		{tbOpt = "��nh Qu�c � xa ph�t qu�n", ID_GoldItem = {160}, tbCount = 6},
		{tbOpt = "��nh Qu�c x�ch quy�n nhuy�n ngoa", ID_GoldItem = {161}, tbCount = 4},
		{tbOpt = "��nh Qu�c t� ��ng h� uy�n", ID_GoldItem = {162}, tbCount = 4},
		{tbOpt = "��nh Qu�c ng�n t�m y�u ��i", ID_GoldItem = {163}, tbCount = 4},
		{tbOpt = "An Bang b�ng tinh th�ch h�ng li�n", ID_GoldItem = {164}, tbCount = 6},
		{tbOpt = "An Bang c�c hoa th�ch ch� ho�n", ID_GoldItem = {165}, tbCount = 6},
		{tbOpt = "An Bang �i�n ho�ng th�ch ng�c b�i", ID_GoldItem = {166}, tbCount = 6},
		{tbOpt = "An Bang k� huy�t th�ch gi�i ch�", ID_GoldItem = {167}, tbCount = 6},
	}
	if Gold_Id then
		if Gold_Id == 1 then
			for i = 6, 9 do
				AddGoldItem(0, tbOpt[i].ID_GoldItem[1])
				Msg2Player("Ng��i Nh�n ���c Trang B� An Bang Th�nh C�ng")
			end
		elseif Gold_Id == 2 then
			for i = 1, 5 do
				AddGoldItem(0, tbOpt[i].ID_GoldItem[1])
				Msg2Player("Ng��i Nh�n ���c Trang B� ��nh Qu�c Th�nh C�ng")
			end
		end
	end
end

function TestGame_TrangBi_DoXanh(Item_ID, nDetailType, nParticularType, nFree_W, nFree_H, Series)
	local tbOpt = {
		[1] = {szName= "Ki�m", tbItem= {0, 0, 1, 3}},
		[2] = {szName= "�ao", tbItem= {0, 1, 1, 4}},
		[3] = {szName= "B�ng", tbItem= {0, 2, 1, 4}},
		[4] = {szName= "Th��ng", tbItem= {0, 3, 1, 4}},
		[5] = {szName= "Ch�y", tbItem= {0, 4, 2, 2}},
		[6] = {szName= "Song �ao", tbItem= {0, 5, 2, 3}},
		[7] = {szName= "Phi Ti�u", tbItem= {1, 0, 1, 1}},
		[8] = {szName= "Phi �ao", tbItem= {1, 1, 1, 1}},
		[9] = {szName= "T� Ti�n", tbItem= {1, 2, 2, 2}},
		[10] = {szName= "�o - Nam", tbItem= {2, random(0, 6), 2, 3}},
		[11] = {szName= "�o - N�", tbItem= {2, random(7, 13), 2, 3}},
		[12] = {szName= "Nh�n", tbItem= {3,0, 1, 1}},
		[13] = {szName= "D�y chuy�n - Nam", tbItem= {4, 1, 2, 1}},
		[14] = {szName= "D�y chuy�n - N�", tbItem= {4, 0, 2, 1}},
		[15] = {szName= "Gi�y - Nam", tbItem= {5, random(0, 1), 2, 2}},
		[16] = {szName= "Gi�y - N�", tbItem= {5, random(2, 3), 2, 2}},
		[17] = {szName= "Th�t l�ng - Nam", tbItem= {6, 1, 2, 1}},
		[18] = {szName= "Th�t l�ng - N�", tbItem= {6, 0, 2, 1}},
		[19] = {szName= "M� - Nam", tbItem= {7, random(0, 6), 2, 2}},
		[20] = {szName= "M� - N�", tbItem= {7, random(7, 13), 2, 2}},
		[21] = {szName= "Bao tay - Nam", tbItem= {8, 1, 1, 2}},
		[22] = {szName= "Bao tay - N�", tbItem= {8, 0, 1, 2}},
		[23] = {szName= "Ng�c b�i - Nam", tbItem= {9, 1, 1, 2}},
		[24] = {szName= "Ng�c b�i - N�", tbItem= {9, 0, 1, 2}},
	}
	local tbOpt2, tbCount = {}, 0
	if nDetailType then
		if Series then
			if CountFreeRoomByWH(nFree_W, nFree_H) > 0 then
				for i = 1, CountFreeRoomByWH(nFree_W, nFree_H) do
					AddItemEx(0,random(),0,0,nDetailType,nParticularType,10,Series,255,10,10,10,10,10,10,0)
					tbCount = tbCount + 1
				end
				return Msg2Player("�� nh�n ���c "..tbCount.." m�n trang b�!")
			else
				return Talk(1,"","<color=yellow>H�nh trang c�a c�c h� c� v� b�a b�n qu�, h�y s�p x�p l�i v� �� tr�ng h�nh trang<color> <color=red>"..nFree_W.."x"..nFree_H.."<color>")
			end
		else
			Say("Ch�n h� c�a m�n trang b�!", 6,
				"Trang b� h� Kim/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 0)",
				"Trang b� h� M�c/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 1)",
				"Trang b� h� Th�y/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 2)",
				"Trang b� h� H�a/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 3)",
				"Trang b� h� Th�/#TestGame_TrangBi_DoXanh(0, "..nDetailType..", "..nParticularType..", "..nFree_W..", "..nFree_H..", 4)",
				"K�t th�c ��i tho�i!/bil.OnCancel")
			return
		end
	end
	if Item_ID then
		if Item_ID == 1 then
			for i = 1, 9 do
				tinsert(tbOpt2, "Ta mu�n l�y "..tbOpt[i].szName.."/#TestGame_TrangBi_DoXanh (0,"..tbOpt[i].tbItem[1]..", "..tbOpt[i].tbItem[2]..", "..tbOpt[i].tbItem[3]..", "..tbOpt[i].tbItem[4]..")")
			end
		elseif Item_ID == 2 then
			for i = 10, 24 do
				tinsert(tbOpt2, "Ta mu�n l�y "..tbOpt[i].szName.."/#TestGame_TrangBi_DoXanh (0,"..tbOpt[i].tbItem[1]..", "..tbOpt[i].tbItem[2]..", "..tbOpt[i].tbItem[3]..", "..tbOpt[i].tbItem[4]..")")
			end
		end
		tinsert(tbOpt2, "K�t th�c ��i tho�i!/bil.OnCancel")
		Say("Ch�n m�n trang b� mu�n l�y!", getn(tbOpt2), tbOpt2)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
tbBuyMagic = {
	[1] = {
		{"S�t th��ng v�t lu ngo�i c�ng (%)",1,99,126,10},
		{"T� l� c�ng k�ch ch�nh x�c",1,99,166,20},
		{"T�c �� ��nh ngo�i c�ng",1,99,115,30},
		{"B� qua n� tr�nh",1,99,58,40},
		{"H�t sinh l�c",1,99,136,130},
		{"H�t n�i l�c",1,99,137,140},
		{"Sinh l�c",1,99,85,150},
		{"N�i l�c",1,99,89,160},
		{"STVL ngo�i c�ng �i�m (Kim)",0,0,121,220},
		{"��c s�t ngo�i c�ng (M�c)",0,1,125,230},
		{"B�ng s�t ngo�i c�ng(Th�y)",0,2,123,240},
		--{"H�a s�t ngo�i c�ng(H�a)",0,3,122},
		--{"L�i s�t ngo�i c�ng(Th�)",0,4,124},
		{"Kh�ng ��c (Kim)",0,0,101,290},
		{"Kh�ng b�ng (Th�)",0,4,105,300},
		{"Kh�ng h�a (Th�y)",0,2,102,310},
		{"Kh�ng l�i (M�c)",0,1,103,320},
		{"Th�i gian cho�ng (Th�y)",0,2,110,340},
		{"Th�i gian l�m ch�m (H�a)",0,3,106,360},
		{"Th�i gian tr�ng ��c (Th�)",0,4,108,380},
		{"STVL n�i c�ng (Kim)",0,0,168,440},
		{"B�ng s�t n�i c�ng (Th�y)",0,2,169,450},
		{"H�a s�t n�i c�ng (H�a)",0,3,170,460},
		{"L�i s�t n�i c�ng (Th�)",0,4,171,470},
		{"��c s�t n�i c�ng (M�c)",0,1,172,480},
	},
	[2] = {
		{"T�c �� di chuy�n (Gi�y)",1,99,111,70,{5}},
		{"Ph�n ��n v�t lu (�o)",1,99,117,80,{2}},
		{"Th�i gian ph�c h�i (�o)",1,99,113,90,{2}},
		{"Sinh l�c",1,99,85,150,{2,5,6,7,8}},
		{"N�i l�c",1,99,89,160,{2,5,6,7,8}},
		{"Ph�c h�i sinh l�c",1,99,88,180,{2,5,6,7,8}},
		{"Chuy�n haa s�t th��ng th�nh n�i l�c (Kim)",0,0,134,270,{2,5,6,7,8}},
		{"Ph�ng th� v�t lu (H�a)",0,3,104,280,{2,5,6,7,8}},
		{"Kh�ng ��c (Kim)",0,0,101,290,{2,5,6,7,8}},
		{"Kh�ng b�ng (Th�)",0,4,105,300,{2,5,6,7,8}},
		{"Kh�ng h�a (Th�y)",0,2,102,310,{2,5,6,7,8}},
		{"Kh�ng l�i (M�c)",0,1,103,320,{2,5,6,7,8}},
		{"Th�i gian cho�ng (Th�y)",0,2,110,340,{2,5,6,7,8}},
		{"Th�i gian l�m ch�m (H�a)",0,3,106,360,{2,5,6,7,8}},
		{"Th�n ph�p (H�a)",0,3,98,370,{2,5,6,7,8}},
		{"Th�i gian tr�ng ��c (Th�)",0,4,108,380,{2,5,6,7,8}},
	},
}

function BuyMagicType()
	local tb = {
		"<dec><npc>H�y Ch�n Lo�i Trang B�",
		"Ta Mu�n L�y V� Kh�/#BuyMagicType1(1)",
		"Ta Mu�n L�y Trang Ph�c/#BuyMagicType1(2)",
		"Quay l�i.",
		"Tho�t./Quit",
	}
	CreateTaskSay(tb)
end

function BuyMagicType1(ID)
	local tb = {
		"<dec><npc>H�y Ch�n Thu�c T�nh Y�u C�u",
		"Mua ph�i d�ng 1./#BuyMagicType2("..ID..",1)",
		"Mua ph�i d�ng 2./#BuyMagicType2("..ID..",2)",
		"Mua ph�i d�ng 3./#BuyMagicType2("..ID..",3)",
		"Mua ph�i d�ng 4./#BuyMagicType2("..ID..",4)",
		"Mua ph�i d�ng 5./#BuyMagicType2("..ID..",5)",
		"Mua ph�i d�ng 6./#BuyMagicType2("..ID..",6)",
		"Quay l�i./TrangBiXanhTuChon",
		"Tho�t./Quit",
	}
	CreateTaskSay(tb)
end

function BuyMagicType2(ID1,ID2)
	if ID2 == 1 or ID2 == 3 or ID2 == 5 then
		local tb = {
			"<dec><npc>H�y L�a Ch�n Thu�c T�nh",
		}
		for i=1,getn(tbBuyMagic[ID1]) do
			if tbBuyMagic[ID1][i][2] == 1 then
				tinsert(tb,tbBuyMagic[ID1][i][1].."/#BuyMagicType3("..ID2..","..tbBuyMagic[ID1][i][4]..","..ID1..","..tbBuyMagic[ID1][i][3]..")")
			end
		end
		tinsert(tb,"Tho�t./Quit")
		CreateTaskSay(tb)
	else
		local tb = {
			"<dec><npc>H�y L�a Ch�n Thu�c T�nh"
		}
		for i=1,getn(tbBuyMagic[ID1]) do
			if tbBuyMagic[ID1][i][2] == 0 then
				tinsert(tb,tbBuyMagic[ID1][i][1].."/#BuyMagicType3("..ID2..","..tbBuyMagic[ID1][i][4]..","..ID1..","..tbBuyMagic[ID1][i][3]..")")
			end
		end
		tinsert(tb,"Tho�t./Quit")
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