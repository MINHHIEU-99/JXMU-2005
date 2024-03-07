
--------------------------------------------------------------------------------------------------------
-- File Name		:	thorenhoangkim.lua
--	Author			:	Alone_ (Nguyen Khai)
--	Create Time	:	27/10/2017 - 20:20
--	Description		:	
--------------------------------------------------------------------------------------------------------
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
--»»È¡ÐÐÏÀÁî³ö´í - modified by DinhHQ - 20110921
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
--Include("\\script\\gm_tool\\Filechucnang.lua")
Include("script/gm_tool/thorenthanbi.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
--Include("\\script\\global\\g7vn\\trungluyentrangbi\\trangbihkmp\\refine_equip_hanche.lua")
IncludeLib("ITEM")

function main()
	dofile("script/global/gm_tool/thangtaolao.lua")
		local nNpcIndex = GetLastDiagNpc();
		local szNpcName = GetNpcName(nNpcIndex);
		if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
		local tbDailog = DailogClass:new(szNpcName);
		G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
		
		EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
		
		
		tbDailog.szTitleMsg = "<#><npc> Shop Cña Ta toµn ®å tµo Lao , ®¹i HiÖp cÇn g× nµo !?"
		tbDailog:AddOptEntry("§æi m¶nh sang KNB ", XoayManhHKMP)
		tbDailog:AddOptEntry("Mua HKMP b»ng KNB", doimanhrahkmp)
		tbDailog:AddOptEntry("Mua §å TrÊn Ph¸i b»ng §¹i KNB ", menuhanche_KNB)
		tbDailog:AddOptEntry("ChuyÓn Sinh ", chuyensinh001)
		tbDailog:AddOptEntry("§æi §å qua Kim Nguyªn B¶o  ", doiKNB)

		--tbDailog:AddOptEntry("§æi ThÇn m· Siªu Quang ", doisieuquang)

		
		
		
		tbDailog:Show()
	end
function XoayManhHKMP()
	nItemIndex = format("ChØ CÇn Bá M¶nh HKMP Vµo Trong Lµ §­îc\n=> Hªn Xui Nµo!!.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", nItemIndex, "Run_XoayManhHKMP", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
	
end
-----------------------------------------------®æi HKMP ra KNB -----------------------------	
function Run_XoayManhHKMP(nCount)
if nCount == 0 or nCount >1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.")
		return 1;
	end
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS ,kk = GetItemProp(nItemIndex)
		local xu = CalcEquiproomItemCount(4,417,1,-1)
		
		if nG==4 or nD >= 567 and nD <= 946 and xu >=1 then
			ConsumeEquiproomItem(1,4, nD,1,-1)
			ConsumeEquiproomItem(1, 4,417, 1,-1)
			tbAwardTemplet:GiveAwardByList({{szName = "Kim Nguyªn B¶o",tbProp={4,343,1,1},nCount=1},}, "test", 1);
		--	Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> §æi Thµnh C«ng <color=green> Mét c« G¸i tuyÖt ®Ñp :U!")
			else Say("Kh«ng cã m¶nh HKMP hoÆc kh«ng ®ñ 1 Xu")
		end
	end
end
----------------------------Mua ®å HKMP b»ng KNB------------------------------
function doimanhrahkmp()
	local tbSay = {
	"ThiÕu L©m./#doimanhhkmpthieulam()",
"Thiªn V­¬ng./#doimanhhkmpthienvuong()",
"Nga My./#doimanhhkmpngamy()",
"Thuý Yªn./#doimanhhkmpthuyyen()",
"§­êng M«n./#doimanhhkmpduongmon()",
"Trang sau./#doimanhrahkmp2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhrahkmp2()
	local tbSay = {
	"Ngò §éc./#doimanhhkmpngudoc()",
"C¸i Bang./#doimanhhkmpcaibang()",
"Thiªn NhÉn./#doimanhhkmpthiennhan()",
"C«n L«n./#doimanhhkmpconlon()",
"Vâ §ang./#doimanhhkmpvodang()",
"Trang tr­íc./#doimanhrahkmp()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam()
	local tbSay = {
	"Méng Long ChÝnh Hång T¨ng M·o./#doimanhhkmpthieulam_ok(1)",
	"Méng Long Kim Ti ChÝnh Hång Cµ Sa./#doimanhhkmpthieulam_ok(2)",
"Méng Long PhËt Ph¸p HuyÒn Béi./#doimanhhkmpthieulam_ok(4)",
"Méng Long HuyÒn Ti Ph¸t ®¸i./#doimanhhkmpthieulam_ok(3)",
"Méng Long §¹t Ma T¨ng hµi./#doimanhhkmpthieulam_ok(5)",
"Phôc Ma Tö Kim C«n./#doimanhhkmpthieulam_ok(6)",
"Phôc Ma HuyÒn Hoµng Cµ Sa./#doimanhhkmpthieulam_ok(7)",
"Phôc Ma ¤ Kim NhuyÔn §iÒu./#doimanhhkmpthieulam_ok(8)",
"Phôc Ma PhËt T©m NhuyÔn KhÊu./#doimanhhkmpthieulam_ok(9)",
"Phôc Ma Phæ §é T¨ng hµi./#doimanhhkmpthieulam_ok(10)",
"Trang Sau./#doimanhhkmpthieulam2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam2()
	local tbSay = {
"Tø Kh«ng Gi¸ng Ma Giíi ®ao./#doimanhhkmpthieulam_ok(11)",
"Tø Kh«ng Tö Kim Cµ Sa./#doimanhhkmpthieulam_ok(12)",
"Tø Kh«ng Hé ph¸p Yªu ®¸i./#doimanhhkmpthieulam_ok(13)",
"Tø Kh«ng NhuyÔn B× Hé UyÓn./#doimanhhkmpthieulam_ok(14)",
"Tø Kh«ng Giíi LuËt Ph¸p giíi./#doimanhhkmpthieulam_ok(15)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end


function doimanhhkmpthienvuong()
	local tbSay = {
	"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy./#doimanhhkmpthieulam_ok(16)",
	"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p./#doimanhhkmpthieulam_ok(17)",
"H¸m Thiªn Uy Vò Thóc yªu ®¸i./#doimanhhkmpthieulam_ok(18)",
"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn./#doimanhhkmpthieulam_ok(19)",
"H¸m Thiªn Thõa Long ChiÕn Ngoa./#doimanhhkmpthieulam_ok(20)",
"KÕ NghiÖp B«n L«i Toµn Long th­¬ng./#doimanhhkmpthieulam_ok(21)",
"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i./#doimanhhkmpthieulam_ok(22)",
"KÕ NghiÖp B¹ch Hæ V« Song khÊu./#doimanhhkmpthieulam_ok(23)",
"KÕ NghiÖp HáaV©n Kú L©n Thñ ./#doimanhhkmpthieulam_ok(24)",
"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa./#doimanhhkmpthieulam_ok(25)",
"Trang Sau./#doimanhhkmpthienvuong2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthienvuong2()
	local tbSay = {
"Ngù Long L­îng Ng©n B¶o ®ao./#doimanhhkmpthieulam_ok(26)",
"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p./#doimanhhkmpthieulam_ok(27)",
"Ngù Long Thiªn M«n Thóc Yªu hoµn./#doimanhhkmpthieulam_ok(28)",
"Ngù Long TÊn Phong Hé yÓn./#doimanhhkmpthieulam_ok(29)",
"Ngù Long TuyÖt MÖnh ChØ hoµn./#doimanhhkmpthieulam_ok(30)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpngamy()
	local tbSay = {
	"V« Gian û Thiªn KiÕm./#doimanhhkmpthieulam_ok(31)",
	"V« Gian Thanh Phong Truy Y./#doimanhhkmpthieulam_ok(32)",
"V« Gian PhÊt V©n Ti ®¸i./#doimanhhkmpthieulam_ok(33)",
"V« Gian CÇm VËn Hé UyÓn./#doimanhhkmpthieulam_ok(34)",
"V« Gian B¹ch Ngäc Bµn ChØ ./#doimanhhkmpthieulam_ok(35)",
"V« Ma Ma Ni qu¸n./#doimanhhkmpthieulam_ok(36)",
"V« Ma Tö Kh©m Cµ Sa./#doimanhhkmpthieulam_ok(37)",
"V« Ma B¨ng Tinh ChØ Hoµn./#doimanhhkmpthieulam_ok(38)",
"V« Ma TÈy T­îng Ngäc KhÊu./#doimanhhkmpthieulam_ok(39)",
"V« Ma Hång Truy NhuyÔn Th¸p hµi./#doimanhhkmpthieulam_ok(40)",
"Trang Sau./#doimanhhkmpngamy2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpngamy2()
	local tbSay = {
"V« TrÇn Ngäc N÷ Tè T©m qu¸n./#doimanhhkmpthieulam_ok(41)",
"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u./#doimanhhkmpthieulam_ok(42)",
"V« TrÇn Tõ Bi Ngäc Ban ChØ./#doimanhhkmpthieulam_ok(43)",
"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi./#doimanhhkmpthieulam_ok(44)",
"V« TrÇn PhËt Quang ChØ Hoµn./#doimanhhkmpthieulam_ok(45)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthuyyen()
	local tbSay = {
	"Tª Hoµng Phông Nghi ®ao./#doimanhhkmpthieulam_ok(46)",
	"Tª Hoµng TuÖ T©m Khinh Sa Y./#doimanhhkmpthieulam_ok(47)",
"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i./#doimanhhkmpthieulam_ok(48)",
"Tª Hoµng B¨ng Tung CÈm uyÓn./#doimanhhkmpthieulam_ok(49)",
"Tª Hoµng Thóy Ngäc ChØ Hoµn./#doimanhhkmpthieulam_ok(50)",
"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao./#doimanhhkmpthieulam_ok(51)",
"BÝch H¶i Hoµn Ch©u Vò Liªn./#doimanhhkmpthieulam_ok(52)",
"BÝch H¶i Hång Linh Kim Ti ®¸i./#doimanhhkmpthieulam_ok(53)",
"BÝch H¶i Hång L¨ng Ba./#doimanhhkmpthieulam_ok(54)",
"BÝch H¶i Khiªn TÕ ChØ hoµn./#doimanhhkmpthieulam_ok(55)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpngudoc()
	local tbSay = {
	"U Lung Kim Xµ Ph¸t ®¸i./#doimanhhkmpthieulam_ok(56)",
	"U Lung XÝch YÕt MËt trang./#doimanhhkmpthieulam_ok(57)",
"U Lung Thanh Ng« TriÒn yªu./#doimanhhkmpthieulam_ok(58)",
"U Lung Ng©n ThÒm Hé UyÓn./#doimanhhkmpthieulam_ok(59)",
"U Lung MÆc Thï NhuyÔn Lý./#doimanhhkmpthieulam_ok(60)",
"Minh ¶o Tµ S¸t §éc NhËn./#doimanhhkmpthieulam_ok(61)",
"Minh ¶o U §éc ¸m Y./#doimanhhkmpthieulam_ok(62)",
"Minh ¶o §éc YÕt ChØ Hoµn./#doimanhhkmpthieulam_ok(63)",
"Minh ¶o Hñ Cèt Hé uyÓn./#doimanhhkmpthieulam_ok(64)",
"Minh ¶o Song Hoµn Xµ Hµi./#doimanhhkmpthieulam_ok(65)",
"Trang Sau./#doimanhhkmpngudoc2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpngudoc2()
	local tbSay = {
"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn./#doimanhhkmpthieulam_ok(66)",
"Chó Ph­îc DiÖt L«i C¶nh Phï ./#doimanhhkmpthieulam_ok(67)",
"Chó Ph­îc U ¶o ChØ Hoµn./#doimanhhkmpthieulam_ok(68)",
"Chó Ph­îc Xuyªn T©m §éc UyÓn./#doimanhhkmpthieulam_ok(69)",
"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa./#doimanhhkmpthieulam_ok(70)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpduongmon()
	local tbSay = {
	"B¨ng Hµn §¬n ChØ Phi §ao./#doimanhhkmpthieulam_ok(71)",
	"B¨ng Hµn HuyÒn Y Thóc Gi¸p./#doimanhhkmpthieulam_ok(72)",
"B¨ng Hµn T©m TiÔn Yªu KhÊu./#doimanhhkmpthieulam_ok(73)",
"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi./#doimanhhkmpthieulam_ok(74)",
"B¨ng Hµn NguyÖt ¶nh Ngoa./#doimanhhkmpthieulam_ok(75)",
"Thiªn Quang Hoa Vò M¹n Thiªn./#doimanhhkmpthieulam_ok(76)",
"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ./#doimanhhkmpthieulam_ok(77)",
"Thiªn Quang S©m La Thóc §¸i./#doimanhhkmpthieulam_ok(78)",
"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c./#doimanhhkmpthieulam_ok(79)",
"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn./#doimanhhkmpthieulam_ok(80)",
"Trang Sau./#doimanhhkmpduongmon2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpduongmon2()
	local tbSay = {
"S©m Hoang Phi Tinh §o¹t Hån./#doimanhhkmpthieulam_ok(81)",
"S©m Hoang KimTiÒn Liªn Hoµn Gi¸p./#doimanhhkmpthieulam_ok(82)",
"S©m Hoang Hån Gi¶o Yªu Thóc./#doimanhhkmpthieulam_ok(83)",
"S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi./#doimanhhkmpthieulam_ok(84)",
"S©m Hoang Tinh VÉn Phi Lý./#doimanhhkmpthieulam_ok(85)",
"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n./#doimanhhkmpthieulam_ok(86)",
"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn./#doimanhhkmpthieulam_ok(87)",
"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi./#doimanhhkmpthieulam_ok(88)",
"§Þa Ph¸ch KhÊu T©m tr¹c./#doimanhhkmpthieulam_ok(89)",
"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa./#doimanhhkmpthieulam_ok(90)",
"Trang Tr­íc./#doimanhhkmpduongmon()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpcaibang()
	local tbSay = {
	"§ång Cõu Phi Long §Çu hoµn./#doimanhhkmpthieulam_ok(91)",
"§ång Cõu Gi¸ng Long C¸i Y./#doimanhhkmpthieulam_ok(92)",
"§ång Cõu TiÒm Long Yªu §¸i./#doimanhhkmpthieulam_ok(93)",
"§ång Cõu Kh¸ng Long Hé UyÓn./#doimanhhkmpthieulam_ok(94)",
"§ång Cõu KiÕn Long Ban ChØ ./#doimanhhkmpthieulam_ok(95)",
"§Þch Kh¸i Lôc Ngäc Tr­îng./#doimanhhkmpthieulam_ok(96)",
"§Þch Kh¸i Cöu §¹i C¸i Y./#doimanhhkmpthieulam_ok(97)",
"§Þch Kh¸i TriÒn M·ng yªu ®¸i./#doimanhhkmpthieulam_ok(98)",
"§Þch Kh¸i CÈu TÝch B× Hé uyÓn./#doimanhhkmpthieulam_ok(99)",
"§Þch Kh¸i Th¶o Gian Th¹ch giíi./#doimanhhkmpthieulam_ok(100)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthiennhan()
	local tbSay = {
	"Ma S¸t Quû Cèc U Minh Th­¬ng./#doimanhhkmpthieulam_ok(101)",
	"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p./#doimanhhkmpthieulam_ok(102)",
"Ma S¸t XÝch Ký Táa Yªu KhÊu./#doimanhhkmpthieulam_ok(103)",
"Ma S¸t Cö Háa Liªu Thiªn uyÓn./#doimanhhkmpthieulam_ok(104)",
"Ma S¸t V©n Long Thæ Ch©u giíi./#doimanhhkmpthieulam_ok(105)",
"Ma Hoµng Kim Gi¸p Kh«i./#doimanhhkmpthieulam_ok(106)",
"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn./#doimanhhkmpthieulam_ok(107)",
"Ma Hoµng Khª Cèc Thóc yªu ®¸i./#doimanhhkmpthieulam_ok(108)",
"Ma Hoµng HuyÕt Y Thó Tr¹c./#doimanhhkmpthieulam_ok(109)",
"Ma Hoµng §¨ng §¹p Ngoa./#doimanhhkmpthieulam_ok(110)",
"Trang Sau./#doimanhhkmpthiennhan2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthiennhan2()
	local tbSay = {
"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn./#doimanhhkmpthieulam_ok(111)",
"Ma ThÞ LÖ Ma PhÖ T©m Liªn./#doimanhhkmpthieulam_ok(112)",
"Ma ThÞ NghiÖp Háa U Minh Giíi./#doimanhhkmpthieulam_ok(113)",
"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi./#doimanhhkmpthieulam_ok(114)",
"Ma ThÞ s¬n  H¶i Phi Hång Lý./#doimanhhkmpthieulam_ok(115)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpvodang()
	local tbSay = {
	"L¨ng Nh¹c Th¸i Cùc KiÕm./#doimanhhkmpthieulam_ok(116)",
	"L¨ng Nh¹c V« Ng· ®¹o bµo./#doimanhhkmpthieulam_ok(117)",
"L¨ng Nh¹c Né L«i Giíi./#doimanhhkmpthieulam_ok(118)",
"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi./#doimanhhkmpthieulam_ok(119)",
"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi./#doimanhhkmpthieulam_ok(120)",
"CËp Phong Ch©n Vò KiÕm./#doimanhhkmpthieulam_ok(121)",
"CËp Phong Tam Thanh Phï./#doimanhhkmpthieulam_ok(122)",
"CËp Phong HuyÒn Ti Tam §o¹n cÈm./#doimanhhkmpthieulam_ok(123)",
"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi./#doimanhhkmpthieulam_ok(124)",
"CËp Phong Thanh Tïng Ph¸p giíi./#doimanhhkmpthieulam_ok(125)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpconlon()
	local tbSay = {
	"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt./#doimanhhkmpthieulam_ok(126)",
	"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo./#doimanhhkmpthieulam_ok(127)",
"S­¬ng Tinh Thanh Phong Lò ®¸i./#doimanhhkmpthieulam_ok(128)",
"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ./#doimanhhkmpthieulam_ok(129)",
"S­¬ng Tinh Phong B¹o chØ hoµn./#doimanhhkmpthieulam_ok(130)",
"L«i Khung Hµn Tung B¨ng B¹ch quan ./#doimanhhkmpthieulam_ok(131)",
"L«i Khung Thiªn §Þa Hé phï ./#doimanhhkmpthieulam_ok(132)",
"L«i Khung Phong L«i Thanh CÈm ®¸i./#doimanhhkmpthieulam_ok(133)",
"L«i Khung Linh Ngäc UÈn L«i./#doimanhhkmpthieulam_ok(134)",
"L«i Khung Cöu Thiªn DÉn L«i giíi./#doimanhhkmpthieulam_ok(135)",
"Trang Sau./#doimanhhkmpconlon2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpconlon2()
	local tbSay = {
"Vô ¶o B¾c Minh §¹o qu¸n./#doimanhhkmpthieulam_ok(136)",
"Vô ¶o Ki B¸n phï chó./#doimanhhkmpthieulam_ok(137)",
"Vô ¶o Thóc T©m chØ hoµn./#doimanhhkmpthieulam_ok(138)",
"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi./#doimanhhkmpthieulam_ok(139)",
"Vô ¶o Tung Phong TuyÕt ¶nh ngoa./#doimanhhkmpthieulam_ok(140)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end

function doimanhhkmpthieulam_ok(iddo)
	local idvatpham={6,11,16,21,26,31,39,1,46,51,56,61,71,76,81,94,96,101,111,116,121,126,131}
		local checkckeck=0
local knb = CalcEquiproomItemCount(4,343,1,-1)
		for i=1,getn(idvatpham) do
			if idvatpham[i]==iddo then
				checkckeck=1
			end
		end
		if checkckeck==1 then
			if CalcEquiproomItemCount(4,343,1,-1)>=100 then
				ConsumeEquiproomItem(100,4,343,1,-1)
				local tyle=random(1,100)
				if tyle<=81 then
				tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ HKMP",tbProp={0,iddo},nCount=1,nQuality=1},}, "test", 1);
			--	else
				--tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ HKMP",tbProp={0,iddo+539},nCount=1,nQuality=1},}, "test", 1);
				end
			else
				Say("Hµnh trang kh«ng ®ñ 100 Kim Nguyªn B¶o.")
				return
			end
		else
			if CalcEquiproomItemCount(4,343,1,-1)>=100 then
				ConsumeEquiproomItem(100,4,343,1,-1)
				local tyle=random(1,100)
				if tyle<=200 then
				tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ HKMP",tbProp={0,iddo},nCount=1,nQuality=1},}, "test", 1);
				--else
				--tbAwardTemplet:GiveAwardByList({{szName = "Trang BÞ HKMP",tbProp={0,iddo+539},nCount=1,nQuality=1},}, "test", 1);
				end
			else
				Say("Hµnh trang kh«ng ®ñ 100 kim nguyªn B¶o.")
				return
			end
		end
end


-----------------------------------------------------ChuyÓn Sinh -------------

function chuyensinh001()

	local nTransLife = ST_GetTransLifeCount()	
	if (nTransLife >= 6) then
		return
		Say("B©y giê ta mÖt råi cã chuyÖn g× ®Ó ngµy mai nãi!")
	end
	if CalcEquiproomItemCount(4,343,1,-1)>=200 then
		ConsumeEquiproomItem(200,4,343,1,-1)
		Talk(1, "", "cÇn cã 500 KNB míi cã thÓ chuyÓn sinh .")
		return
	end
	if GetLevel() < 199 then
		Talk(1, "", "CÊp 190 trë lªn míi ca thÓ chuyÓn sinh.")
		return
	end
	if (GetCash() <= 10000000) then
		Talk(1, "", "Ph¶i ca ®ñ 1k v¹n míi ca thÓ chuyÓn sinh.")
		return
	end
	Pay(10000000)
	ST_DoTransLife()

end
-----------------------------------®æi ®å KNB---------------

function doiKNB()
    if CalcFreeItemCellCount() < 10 then
            Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",0);
            return 0;
        end
    GiveItemUI("§æi VËt PhÈm.", "ChØ bá 1 trang bÞ vµo.","doiKNB_ok")
    end
    function doiKNB_ok(nCount)
        if (nCount ~= 1) then 
                Say("C¸c h¹ chØ cÇn bá vµo 1 trang bÞ.",0);
            return
        end
    local nItemIndex = GetGiveItemUnit(1)
            local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
            local szItemName = GetItemName(nItemIndex)
            local nItemTime = ITEM_GetExpiredTime(nItemIndex)
            local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
            local nCurItemQuality = GetItemQuality(nItemIndex);
            local bindState = GetItemBindState(nItemIndex)
        if (bindState ~=0) then
            Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ ®æi ®­îc")
            return
        end
        if (nCurItemQuality ~=1) then
            Talk(1,"", "Trang bi kh«ng ph¶i lµ trang bÞ hoµng kim, kh«ng thÓ ®æi ®­îc")
            return
        end
       
        if nGoldEquipIdxFF>=1 and nGoldEquipIdxFF<=140 then
            local idvatpham={6,11,16,21,26,31,39,1,46,51,56,61,71,76,81,94,96,101,111,116,121,126,131}
            local checkckeck=0
            for i=1,getn(idvatpham) do
                if idvatpham[i]==nGoldEquipIdxFF then
                    checkckeck=1
                end
            end
            if checkckeck==1 then
                RemoveItemByIndex(nItemIndex)
                tbAwardTemplet:GiveAwardByList({{szName = "Kim Nguyªn B¶o",tbProp={4,343,1,1},nCount=50},}, "test", 1);
            else
                RemoveItemByIndex(nItemIndex)
                tbAwardTemplet:GiveAwardByList({{szName = "Kim Nguyªn B¶o ",tbProp={4,343,1,1},nCount=50},}, "test", 1);
            end
        elseif nGoldEquipIdxFF>=686 and nGoldEquipIdxFF<=901 then
            local idvatpham={6,11,16,21,26,31,39,1,46,51,56,61,71,76,81,94,96,101,111,116,121,126,131}
            local checkckeck=0
            for i=1,getn(idvatpham) do
                if idvatpham[i]+686==nGoldEquipIdxFF then
                    checkckeck=1
                end
            end
            if checkckeck==1 then
                RemoveItemByIndex(nItemIndex)
                tbAwardTemplet:GiveAwardByList({{szName = "§¹i Kim Nguyªn b¶o",tbProp={4,342,1,1},nCount=50},}, "test", 1);
            else
                RemoveItemByIndex(nItemIndex)
                tbAwardTemplet:GiveAwardByList({{szName = "§¹i Kim Nguyªn b¶o",tbProp={4,342,1,1},nCount=50},}, "test", 1);
            end
    --	elseif nGoldEquipIdxFF>=540 and nGoldEquipIdxFF<=679 then
        --	local idvatpham={6,11,16,21,26,31,39,1,46,51,56,61,71,76,81,94,96,101,111,116,121,126,131}
        --	local checkckeck=0
        --	for i=1,getn(idvatpham) do
        --		if idvatpham[i]+539==nGoldEquipIdxFF then
            --		checkckeck=1
            --	end
        --	end
        --	if checkckeck==1 then
        --		RemoveItemByIndex(nItemIndex)
        --		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,343,1,1},nCount=4000},}, "test", 1);
        --		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,343,1,1},nCount=4000},}, "test", 1);
        --		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,343,1,1},nCount=4000},}, "test", 1);
            --	tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,343,1,1},nCount=4000},}, "test", 1);
        --	else
        --		RemoveItemByIndex(nItemIndex)
        --		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,343,1,1},nCount=8000},}, "test", 1);
        --	end	
        else
                Say("Trang bÞ nµy kh«ng ®æi ra tiÒn ®ång ®­îc.")
                return
        end
        
        
    end
    

------------------------------ mua HKMP H¹n chÕ ------------------
function trangbihancherandom()
	local tbSay = {
	"[H¹n chÕ thêi gian] Méng Long Tö Kim B¸t Nh· Giíi./#trangbihancherandom_ok(769,1)",
	"[H¹n chÕ thêi gian] Phôc Ma V« L­îng Kim Cang UyÓn./#trangbihancherandom_ok(771,2)",
"[H¹n chÕ thêi gian] Tø Kh«ng §¹t Ma T¨ng Hµi./#trangbihancherandom_ok(776,3)",
"[H¹n chÕ thêi gian] Ngù Long TÊn Phong Ph¸t C¬./#trangbihancherandom_ok(793,4)",
"[H¹n chÕ thêi gian] V« Gian Thanh Phong NhuyÔn KÞch./#trangbihancherandom_ok(796,5)",
"[H¹n chÕ thêi gian] V« YÓm Thu Thñy L­u Quang §¸i./#trangbihancherandom_ok(801,6)",
"[H¹n chÕ thêi gian] V« TrÇn TÞnh ¶nh L­u T«./#trangbihancherandom_ok(808,7)",
"[H¹n chÕ thêi gian] Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu./#trangbihancherandom_ok(811,8)",
"[H¹n chÕ thêi gian] BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n ./#trangbihancherandom_ok(816,9)",
"[H¹n chÕ thêi gian] Minh Hoan Song Hoµn Xµ KhÊu./#trangbihancherandom_ok(829,10)",
"[H¹n chÕ thêi gian] Chó Phäc Trïng Cèt Ngäc Béi./#trangbihancherandom_ok(834,11)",
"Trang Sau./#trangbihancherandom2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function trangbihancherandom2()
	local tbSay = {
"[H¹n chÕ thêi gian] Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa./#trangbihancherandom_ok(843,12)",
"[H¹n chÕ thêi gian] §Þa Ph¸ch Phong Hµn Thóc Yªu./#trangbihancherandom_ok(854,13)",
"[H¹n chÕ thêi gian] §ång Cõu Ngù Long Ngäc Béi./#trangbihancherandom_ok(855,14)",
"[H¹n chÕ thêi gian] Ma S¸t Cö Háa Liªu Thiªn Hoµn./#trangbihancherandom_ok(868,15)",
"[H¹n chÕ thêi gian] Ma Hoµng Dung Kim §o¹n NhËt Giíi./#trangbihancherandom_ok(874,16)",
"[H¹n chÕ thêi gian] Ma ThÞ LÖ Ma PhÖ T©m §¸i./#trangbihancherandom_ok(876,17)",
"[H¹n chÕ thêi gian] L¨ng Nh¹c V« Ng· Thóc §¸i./#trangbihancherandom_ok(881,18)",
"[H¹n chÕ thêi gian] CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn./#trangbihancherandom_ok(888,19)",
"[H¹n chÕ thêi gian] S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu./#trangbihancherandom_ok(891,20)",
"[H¹n chÕ thêi gian] L«i Khung Linh Ngäc Èn L«i UyÓn./#trangbihancherandom_ok(898,21)",
"[H¹n chÕ thêi gian] Vô Hoan Th¸i Uyªn Ch©n Vò Liªn./#trangbihancherandom_ok(901,22)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function trangbihancherandom_ok(idtrangbi,thutu)
	if CalcEquiproomItemCount(4,342,1,1)>=100 then
		ConsumeEquiproomItem(100,4,342,1,1)
		local ranntyle=random(1,100)
		if ranntyle<=81 then
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idtrangbi},nCount=1,nQuality=1},}, "test", 1);
		else
		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,685+thutu},nCount=1,nQuality=1},}, "test", 1);
		end
	else	
		Say("Hµnh trang kh«ng ®ñ 100 ®¹i Kim Nguyªn B¶o.")
		return
	end
end
function trangbihanchemax()
	local tbSay = {
	"[H¹n chÕ thêi gian] Méng Long Tö Kim B¸t Nh· Giíi./#trangbihanchemax_ok(686)",
	"[H¹n chÕ thêi gian] Phôc Ma V« L­îng Kim Cang UyÓn./#trangbihanchemax_ok(687)",
"[H¹n chÕ thêi gian] Tø Kh«ng §¹t Ma T¨ng Hµi./#trangbihanchemax_ok(688)",
"[H¹n chÕ thêi gian] Ngù Long TÊn Phong Ph¸t C¬./#trangbihanchemax_ok(689)",
"[H¹n chÕ thêi gian] V« Gian Thanh Phong NhuyÔn KÞch./#trangbihanchemax_ok(690)",
"[H¹n chÕ thêi gian] V« YÓm Thu Thñy L­u Quang §¸i./#trangbihanchemax_ok(691)",
"[H¹n chÕ thêi gian] V« TrÇn TÞnh ¶nh L­u T«./#trangbihanchemax_ok(692)",
"[H¹n chÕ thêi gian] Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu./#trangbihanchemax_ok(693)",
"[H¹n chÕ thêi gian] BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n ./#trangbihanchemax_ok(694)",
"[H¹n chÕ thêi gian] Minh Hoan Song Hoµn Xµ KhÊu./#trangbihanchemax_ok(695)",
"[H¹n chÕ thêi gian] Chó Phäc Trïng Cèt Ngäc Béi./#trangbihanchemax_ok(696)",
"Trang Sau./#trangbihanchemax2()",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function trangbihanchemax2()
	local tbSay = {
"[H¹n chÕ thêi gian] Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa./#trangbihanchemax_ok(697)",
"[H¹n chÕ thêi gian] §Þa Ph¸ch Phong Hµn Thóc Yªu./#trangbihanchemax_ok(698)",
"[H¹n chÕ thêi gian] §ång Cõu Ngù Long Ngäc Béi./#trangbihanchemax_ok(699)",
"[H¹n chÕ thêi gian] Ma S¸t Cö Háa Liªu Thiªn Hoµn./#trangbihanchemax_ok(700)",
"[H¹n chÕ thêi gian] Ma Hoµng Dung Kim §o¹n NhËt Giíi./#trangbihanchemax_ok(701)",
"[H¹n chÕ thêi gian] Ma ThÞ LÖ Ma PhÖ T©m §¸i./#trangbihanchemax_ok(702)",
"[H¹n chÕ thêi gian] L¨ng Nh¹c V« Ng· Thóc §¸i./#trangbihanchemax_ok(703)",
"[H¹n chÕ thêi gian] CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn./#trangbihanchemax_ok(704)",
"[H¹n chÕ thêi gian] S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu./#trangbihanchemax_ok(705)",
"[H¹n chÕ thêi gian] L«i Khung Linh Ngäc Èn L«i UyÓn./#trangbihanchemax_ok(706)",
"[H¹n chÕ thêi gian] Vô Hoan Th¸i Uyªn Ch©n Vò Liªn./#trangbihanchemax_ok(707)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function trangbihanchemax_ok(idtrangbi)
	if CalcEquiproomItemCount(4,342,1,1)>=250 then
		ConsumeEquiproomItem(250,4,342,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,idtrangbi},nCount=1,nQuality=1},}, "test", 1);
	else	
		Say("Hµnh trang kh«ng ®ñ 100 ®¹i KNB.")
		return
	end
end
function menuhanche_KNB()
	local szTitle = "<#><npc> N¬i nµy ®Òu lµ kú tr©n dÞ b¶o! §¹i hiÖp cÇn g×!?"
	local Opt = 
	{
		{"Mua Trang BÞ H¹n ChÕ Random Option (100 KNB)", trangbihancherandom},
		{"Mua Trang BÞ H¹n ChÕ Max Option (250 §¹i KNB)", trangbihanchemax},
		{"KÕt thóc ®èi tho¹i. ", End},
	}
	CreateNewSayEx(szTitle,Opt)
end
