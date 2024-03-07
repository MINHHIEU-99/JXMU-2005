
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
--��ȡ��������� - modified by DinhHQ - 20110921
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
		
		
		tbDailog.szTitleMsg = "<#><npc> Shop C�a Ta to�n �� t�o Lao , ��i Hi�p c�n g� n�o !?"
		tbDailog:AddOptEntry("��i m�nh sang KNB ", XoayManhHKMP)
		tbDailog:AddOptEntry("Mua HKMP b�ng KNB", doimanhrahkmp)
		tbDailog:AddOptEntry("Mua �� Tr�n Ph�i b�ng ��i KNB ", menuhanche_KNB)
		tbDailog:AddOptEntry("Chuy�n Sinh ", chuyensinh001)
		tbDailog:AddOptEntry("��i �� qua Kim Nguy�n B�o  ", doiKNB)

		--tbDailog:AddOptEntry("��i Th�n m� Si�u Quang ", doisieuquang)

		
		
		
		tbDailog:Show()
	end
function XoayManhHKMP()
	nItemIndex = format("Ch� C�n B� M�nh HKMP V�o Trong L� ���c\n=> H�n Xui N�o!!.")
	GiveItemUI("Nguy�n Li�u C�n C�", nItemIndex, "Run_XoayManhHKMP", "no", 1)
		--GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
	
end
-----------------------------------------------��i HKMP ra KNB -----------------------------	
function Run_XoayManhHKMP(nCount)
if nCount == 0 or nCount >1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.")
		return 1;
	end
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS ,kk = GetItemProp(nItemIndex)
		local xu = CalcEquiproomItemCount(4,417,1,-1)
		
		if nG==4 or nD >= 567 and nD <= 946 and xu >=1 then
			ConsumeEquiproomItem(1,4, nD,1,-1)
			ConsumeEquiproomItem(1, 4,417, 1,-1)
			tbAwardTemplet:GiveAwardByList({{szName = "Kim Nguy�n B�o",tbProp={4,343,1,1},nCount=1},}, "test", 1);
		--	Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> ��i Th�nh C�ng <color=green> M�t c� G�i tuy�t ��p :U!")
			else Say("Kh�ng c� m�nh HKMP ho�c kh�ng �� 1 Xu")
		end
	end
end
----------------------------Mua �� HKMP b�ng KNB------------------------------
function doimanhrahkmp()
	local tbSay = {
	"Thi�u L�m./#doimanhhkmpthieulam()",
"Thi�n V��ng./#doimanhhkmpthienvuong()",
"Nga My./#doimanhhkmpngamy()",
"Thu� Y�n./#doimanhhkmpthuyyen()",
"���ng M�n./#doimanhhkmpduongmon()",
"Trang sau./#doimanhrahkmp2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhrahkmp2()
	local tbSay = {
	"Ng� ��c./#doimanhhkmpngudoc()",
"C�i Bang./#doimanhhkmpcaibang()",
"Thi�n Nh�n./#doimanhhkmpthiennhan()",
"C�n L�n./#doimanhhkmpconlon()",
"V� �ang./#doimanhhkmpvodang()",
"Trang tr��c./#doimanhrahkmp()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam()
	local tbSay = {
	"M�ng Long Ch�nh H�ng T�ng M�o./#doimanhhkmpthieulam_ok(1)",
	"M�ng Long Kim Ti Ch�nh H�ng C� Sa./#doimanhhkmpthieulam_ok(2)",
"M�ng Long Ph�t Ph�p Huy�n B�i./#doimanhhkmpthieulam_ok(4)",
"M�ng Long Huy�n Ti Ph�t ��i./#doimanhhkmpthieulam_ok(3)",
"M�ng Long ��t Ma T�ng h�i./#doimanhhkmpthieulam_ok(5)",
"Ph�c Ma T� Kim C�n./#doimanhhkmpthieulam_ok(6)",
"Ph�c Ma Huy�n Ho�ng C� Sa./#doimanhhkmpthieulam_ok(7)",
"Ph�c Ma � Kim Nhuy�n �i�u./#doimanhhkmpthieulam_ok(8)",
"Ph�c Ma Ph�t T�m Nhuy�n Kh�u./#doimanhhkmpthieulam_ok(9)",
"Ph�c Ma Ph� �� T�ng h�i./#doimanhhkmpthieulam_ok(10)",
"Trang Sau./#doimanhhkmpthieulam2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam2()
	local tbSay = {
"T� Kh�ng Gi�ng Ma Gi�i �ao./#doimanhhkmpthieulam_ok(11)",
"T� Kh�ng T� Kim C� Sa./#doimanhhkmpthieulam_ok(12)",
"T� Kh�ng H� ph�p Y�u ��i./#doimanhhkmpthieulam_ok(13)",
"T� Kh�ng Nhuy�n B� H� Uy�n./#doimanhhkmpthieulam_ok(14)",
"T� Kh�ng Gi�i Lu�t Ph�p gi�i./#doimanhhkmpthieulam_ok(15)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end


function doimanhhkmpthienvuong()
	local tbSay = {
	"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y./#doimanhhkmpthieulam_ok(16)",
	"H�m Thi�n V� Th�n T��ng Kim Gi�p./#doimanhhkmpthieulam_ok(17)",
"H�m Thi�n Uy V� Th�c y�u ��i./#doimanhhkmpthieulam_ok(18)",
"H�m Thi�n H� ��u Kh�n Th�c Uy�n./#doimanhhkmpthieulam_ok(19)",
"H�m Thi�n Th�a Long Chi�n Ngoa./#doimanhhkmpthieulam_ok(20)",
"K� Nghi�p B�n L�i To�n Long th��ng./#doimanhhkmpthieulam_ok(21)",
"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i./#doimanhhkmpthieulam_ok(22)",
"K� Nghi�p B�ch H� V� Song kh�u./#doimanhhkmpthieulam_ok(23)",
"K� Nghi�p H�aV�n K� L�n Th� ./#doimanhhkmpthieulam_ok(24)",
"K� Nghi�p Chu T��c L�ng V�n Ngoa./#doimanhhkmpthieulam_ok(25)",
"Trang Sau./#doimanhhkmpthienvuong2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthienvuong2()
	local tbSay = {
"Ng� Long L��ng Ng�n B�o �ao./#doimanhhkmpthieulam_ok(26)",
"Ng� Long Chi�n Th�n Phi Qu�i gi�p./#doimanhhkmpthieulam_ok(27)",
"Ng� Long Thi�n M�n Th�c Y�u ho�n./#doimanhhkmpthieulam_ok(28)",
"Ng� Long T�n Phong H� y�n./#doimanhhkmpthieulam_ok(29)",
"Ng� Long Tuy�t M�nh Ch� ho�n./#doimanhhkmpthieulam_ok(30)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpngamy()
	local tbSay = {
	"V� Gian � Thi�n Ki�m./#doimanhhkmpthieulam_ok(31)",
	"V� Gian Thanh Phong Truy Y./#doimanhhkmpthieulam_ok(32)",
"V� Gian Ph�t V�n Ti ��i./#doimanhhkmpthieulam_ok(33)",
"V� Gian C�m V�n H� Uy�n./#doimanhhkmpthieulam_ok(34)",
"V� Gian B�ch Ng�c B�n Ch� ./#doimanhhkmpthieulam_ok(35)",
"V� Ma Ma Ni qu�n./#doimanhhkmpthieulam_ok(36)",
"V� Ma T� Kh�m C� Sa./#doimanhhkmpthieulam_ok(37)",
"V� Ma B�ng Tinh Ch� Ho�n./#doimanhhkmpthieulam_ok(38)",
"V� Ma T�y T��ng Ng�c Kh�u./#doimanhhkmpthieulam_ok(39)",
"V� Ma H�ng Truy Nhuy�n Th�p h�i./#doimanhhkmpthieulam_ok(40)",
"Trang Sau./#doimanhhkmpngamy2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpngamy2()
	local tbSay = {
"V� Tr�n Ng�c N� T� T�m qu�n./#doimanhhkmpthieulam_ok(41)",
"V� Tr�n Thanh T�m H��ng Thi�n Ch�u./#doimanhhkmpthieulam_ok(42)",
"V� Tr�n T� Bi Ng�c Ban Ch�./#doimanhhkmpthieulam_ok(43)",
"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i./#doimanhhkmpthieulam_ok(44)",
"V� Tr�n Ph�t Quang Ch� Ho�n./#doimanhhkmpthieulam_ok(45)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthuyyen()
	local tbSay = {
	"T� Ho�ng Ph�ng Nghi �ao./#doimanhhkmpthieulam_ok(46)",
	"T� Ho�ng Tu� T�m Khinh Sa Y./#doimanhhkmpthieulam_ok(47)",
"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i./#doimanhhkmpthieulam_ok(48)",
"T� Ho�ng B�ng Tung C�m uy�n./#doimanhhkmpthieulam_ok(49)",
"T� Ho�ng Th�y Ng�c Ch� Ho�n./#doimanhhkmpthieulam_ok(50)",
"B�ch H�i Uy�n ��ng Li�n Ho�n �ao./#doimanhhkmpthieulam_ok(51)",
"B�ch H�i Ho�n Ch�u V� Li�n./#doimanhhkmpthieulam_ok(52)",
"B�ch H�i H�ng Linh Kim Ti ��i./#doimanhhkmpthieulam_ok(53)",
"B�ch H�i H�ng L�ng Ba./#doimanhhkmpthieulam_ok(54)",
"B�ch H�i Khi�n T� Ch� ho�n./#doimanhhkmpthieulam_ok(55)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpngudoc()
	local tbSay = {
	"U Lung Kim X� Ph�t ��i./#doimanhhkmpthieulam_ok(56)",
	"U Lung X�ch Y�t M�t trang./#doimanhhkmpthieulam_ok(57)",
"U Lung Thanh Ng� Tri�n y�u./#doimanhhkmpthieulam_ok(58)",
"U Lung Ng�n Th�m H� Uy�n./#doimanhhkmpthieulam_ok(59)",
"U Lung M�c Th� Nhuy�n L�./#doimanhhkmpthieulam_ok(60)",
"Minh �o T� S�t ��c Nh�n./#doimanhhkmpthieulam_ok(61)",
"Minh �o U ��c �m Y./#doimanhhkmpthieulam_ok(62)",
"Minh �o ��c Y�t Ch� Ho�n./#doimanhhkmpthieulam_ok(63)",
"Minh �o H� C�t H� uy�n./#doimanhhkmpthieulam_ok(64)",
"Minh �o Song Ho�n X� H�i./#doimanhhkmpthieulam_ok(65)",
"Trang Sau./#doimanhhkmpngudoc2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpngudoc2()
	local tbSay = {
"Ch� Ph��c Ph� gi�p ��u ho�n./#doimanhhkmpthieulam_ok(66)",
"Ch� Ph��c Di�t L�i C�nh Ph� ./#doimanhhkmpthieulam_ok(67)",
"Ch� Ph��c U �o Ch� Ho�n./#doimanhhkmpthieulam_ok(68)",
"Ch� Ph��c Xuy�n T�m ��c Uy�n./#doimanhhkmpthieulam_ok(69)",
"Ch� Ph��c B�ng H�a Th�c C�t Ngoa./#doimanhhkmpthieulam_ok(70)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpduongmon()
	local tbSay = {
	"B�ng H�n ��n Ch� Phi �ao./#doimanhhkmpthieulam_ok(71)",
	"B�ng H�n Huy�n Y Th�c Gi�p./#doimanhhkmpthieulam_ok(72)",
"B�ng H�n T�m Ti�n Y�u Kh�u./#doimanhhkmpthieulam_ok(73)",
"B�ng H�n Huy�n Thi�n B�ng H�a B�i./#doimanhhkmpthieulam_ok(74)",
"B�ng H�n Nguy�t �nh Ngoa./#doimanhhkmpthieulam_ok(75)",
"Thi�n Quang Hoa V� M�n Thi�n./#doimanhhkmpthieulam_ok(76)",
"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ./#doimanhhkmpthieulam_ok(77)",
"Thi�n Quang S�m La Th�c ��i./#doimanhhkmpthieulam_ok(78)",
"Thi�n Quang Song B�o H�n Thi�t Tr�c./#doimanhhkmpthieulam_ok(79)",
"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n./#doimanhhkmpthieulam_ok(80)",
"Trang Sau./#doimanhhkmpduongmon2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpduongmon2()
	local tbSay = {
"S�m Hoang Phi Tinh �o�t H�n./#doimanhhkmpthieulam_ok(81)",
"S�m Hoang KimTi�n Li�n Ho�n Gi�p./#doimanhhkmpthieulam_ok(82)",
"S�m Hoang H�n Gi�o Y�u Th�c./#doimanhhkmpthieulam_ok(83)",
"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i./#doimanhhkmpthieulam_ok(84)",
"S�m Hoang Tinh V�n Phi L�./#doimanhhkmpthieulam_ok(85)",
"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n./#doimanhhkmpthieulam_ok(86)",
"��a Ph�ch H�c Di�m Xung Thi�n Li�n./#doimanhhkmpthieulam_ok(87)",
"��a Ph�ch T�ch L�ch L�i H�a Gi�i./#doimanhhkmpthieulam_ok(88)",
"��a Ph�ch Kh�u T�m tr�c./#doimanhhkmpthieulam_ok(89)",
"��a Ph�ch ��a H�nh Thi�n L� Ngoa./#doimanhhkmpthieulam_ok(90)",
"Trang Tr��c./#doimanhhkmpduongmon()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpcaibang()
	local tbSay = {
	"��ng C�u Phi Long ��u ho�n./#doimanhhkmpthieulam_ok(91)",
"��ng C�u Gi�ng Long C�i Y./#doimanhhkmpthieulam_ok(92)",
"��ng C�u Ti�m Long Y�u ��i./#doimanhhkmpthieulam_ok(93)",
"��ng C�u Kh�ng Long H� Uy�n./#doimanhhkmpthieulam_ok(94)",
"��ng C�u Ki�n Long Ban Ch� ./#doimanhhkmpthieulam_ok(95)",
"��ch Kh�i L�c Ng�c Tr��ng./#doimanhhkmpthieulam_ok(96)",
"��ch Kh�i C�u ��i C�i Y./#doimanhhkmpthieulam_ok(97)",
"��ch Kh�i Tri�n M�ng y�u ��i./#doimanhhkmpthieulam_ok(98)",
"��ch Kh�i C�u T�ch B� H� uy�n./#doimanhhkmpthieulam_ok(99)",
"��ch Kh�i Th�o Gian Th�ch gi�i./#doimanhhkmpthieulam_ok(100)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthiennhan()
	local tbSay = {
	"Ma S�t Qu� C�c U Minh Th��ng./#doimanhhkmpthieulam_ok(101)",
	"Ma S�t T�n D��ng �nh Huy�t Gi�p./#doimanhhkmpthieulam_ok(102)",
"Ma S�t X�ch K� T�a Y�u Kh�u./#doimanhhkmpthieulam_ok(103)",
"Ma S�t C� H�a Li�u Thi�n uy�n./#doimanhhkmpthieulam_ok(104)",
"Ma S�t V�n Long Th� Ch�u gi�i./#doimanhhkmpthieulam_ok(105)",
"Ma Ho�ng Kim Gi�p Kh�i./#doimanhhkmpthieulam_ok(106)",
"Ma Ho�ng �n Xu�t H� H�ng Khuy�n./#doimanhhkmpthieulam_ok(107)",
"Ma Ho�ng Kh� C�c Th�c y�u ��i./#doimanhhkmpthieulam_ok(108)",
"Ma Ho�ng Huy�t Y Th� Tr�c./#doimanhhkmpthieulam_ok(109)",
"Ma Ho�ng ��ng ��p Ngoa./#doimanhhkmpthieulam_ok(110)",
"Trang Sau./#doimanhhkmpthiennhan2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthiennhan2()
	local tbSay = {
"Ma Th� Li�t Di�m Qu�n Mi�n./#doimanhhkmpthieulam_ok(111)",
"Ma Th� L� Ma Ph� T�m Li�n./#doimanhhkmpthieulam_ok(112)",
"Ma Th� Nghi�p H�a U Minh Gi�i./#doimanhhkmpthieulam_ok(113)",
"Ma Th� Huy�t Ng�c Th�t S�t B�i./#doimanhhkmpthieulam_ok(114)",
"Ma Th� s�n  H�i Phi H�ng L�./#doimanhhkmpthieulam_ok(115)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpvodang()
	local tbSay = {
	"L�ng Nh�c Th�i C�c Ki�m./#doimanhhkmpthieulam_ok(116)",
	"L�ng Nh�c V� Ng� ��o b�o./#doimanhhkmpthieulam_ok(117)",
"L�ng Nh�c N� L�i Gi�i./#doimanhhkmpthieulam_ok(118)",
"L�ng Nh�c V� C�c Huy�n Ng�c B�i./#doimanhhkmpthieulam_ok(119)",
"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i./#doimanhhkmpthieulam_ok(120)",
"C�p Phong Ch�n V� Ki�m./#doimanhhkmpthieulam_ok(121)",
"C�p Phong Tam Thanh Ph�./#doimanhhkmpthieulam_ok(122)",
"C�p Phong Huy�n Ti Tam �o�n c�m./#doimanhhkmpthieulam_ok(123)",
"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i./#doimanhhkmpthieulam_ok(124)",
"C�p Phong Thanh T�ng Ph�p gi�i./#doimanhhkmpthieulam_ok(125)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpconlon()
	local tbSay = {
	"S��ng Tinh Thi�n Ni�n H�n Thi�t./#doimanhhkmpthieulam_ok(126)",
	"S��ng Tinh Ng�o S��ng ��o b�o./#doimanhhkmpthieulam_ok(127)",
"S��ng Tinh Thanh Phong L� ��i./#doimanhhkmpthieulam_ok(128)",
"S��ng Tinh Thi�n Tinh B�ng Tinh th� ./#doimanhhkmpthieulam_ok(129)",
"S��ng Tinh Phong B�o ch� ho�n./#doimanhhkmpthieulam_ok(130)",
"L�i Khung H�n Tung B�ng B�ch quan ./#doimanhhkmpthieulam_ok(131)",
"L�i Khung Thi�n ��a H� ph� ./#doimanhhkmpthieulam_ok(132)",
"L�i Khung Phong L�i Thanh C�m ��i./#doimanhhkmpthieulam_ok(133)",
"L�i Khung Linh Ng�c U�n L�i./#doimanhhkmpthieulam_ok(134)",
"L�i Khung C�u Thi�n D�n L�i gi�i./#doimanhhkmpthieulam_ok(135)",
"Trang Sau./#doimanhhkmpconlon2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpconlon2()
	local tbSay = {
"V� �o B�c Minh ��o qu�n./#doimanhhkmpthieulam_ok(136)",
"V� �o Ki B�n ph� ch�./#doimanhhkmpthieulam_ok(137)",
"V� �o Th�c T�m ch� ho�n./#doimanhhkmpthieulam_ok(138)",
"V� �o Thanh �nh Huy�n Ng�c B�i./#doimanhhkmpthieulam_ok(139)",
"V� �o Tung Phong Tuy�t �nh ngoa./#doimanhhkmpthieulam_ok(140)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
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
				tbAwardTemplet:GiveAwardByList({{szName = "Trang B� HKMP",tbProp={0,iddo},nCount=1,nQuality=1},}, "test", 1);
			--	else
				--tbAwardTemplet:GiveAwardByList({{szName = "Trang B� HKMP",tbProp={0,iddo+539},nCount=1,nQuality=1},}, "test", 1);
				end
			else
				Say("H�nh trang kh�ng �� 100 Kim Nguy�n B�o.")
				return
			end
		else
			if CalcEquiproomItemCount(4,343,1,-1)>=100 then
				ConsumeEquiproomItem(100,4,343,1,-1)
				local tyle=random(1,100)
				if tyle<=200 then
				tbAwardTemplet:GiveAwardByList({{szName = "Trang B� HKMP",tbProp={0,iddo},nCount=1,nQuality=1},}, "test", 1);
				--else
				--tbAwardTemplet:GiveAwardByList({{szName = "Trang B� HKMP",tbProp={0,iddo+539},nCount=1,nQuality=1},}, "test", 1);
				end
			else
				Say("H�nh trang kh�ng �� 100 kim nguy�n B�o.")
				return
			end
		end
end


-----------------------------------------------------Chuy�n Sinh -------------

function chuyensinh001()

	local nTransLife = ST_GetTransLifeCount()	
	if (nTransLife >= 6) then
		return
		Say("B�y gi� ta m�t r�i c� chuy�n g� �� ng�y mai n�i!")
	end
	if CalcEquiproomItemCount(4,343,1,-1)>=200 then
		ConsumeEquiproomItem(200,4,343,1,-1)
		Talk(1, "", "c�n c� 500 KNB m�i c� th� chuy�n sinh .")
		return
	end
	if GetLevel() < 199 then
		Talk(1, "", "C�p 190 tr� l�n m�i ca th� chuy�n sinh.")
		return
	end
	if (GetCash() <= 10000000) then
		Talk(1, "", "Ph�i ca �� 1k v�n m�i ca th� chuy�n sinh.")
		return
	end
	Pay(10000000)
	ST_DoTransLife()

end
-----------------------------------��i �� KNB---------------

function doiKNB()
    if CalcFreeItemCellCount() < 10 then
            Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",0);
            return 0;
        end
    GiveItemUI("��i V�t Ph�m.", "Ch� b� 1 trang b� v�o.","doiKNB_ok")
    end
    function doiKNB_ok(nCount)
        if (nCount ~= 1) then 
                Say("C�c h� ch� c�n b� v�o 1 trang b�.",0);
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
            Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� ��i ���c")
            return
        end
        if (nCurItemQuality ~=1) then
            Talk(1,"", "Trang bi kh�ng ph�i l� trang b� ho�ng kim, kh�ng th� ��i ���c")
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
                tbAwardTemplet:GiveAwardByList({{szName = "Kim Nguy�n B�o",tbProp={4,343,1,1},nCount=50},}, "test", 1);
            else
                RemoveItemByIndex(nItemIndex)
                tbAwardTemplet:GiveAwardByList({{szName = "Kim Nguy�n B�o ",tbProp={4,343,1,1},nCount=50},}, "test", 1);
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
                tbAwardTemplet:GiveAwardByList({{szName = "��i Kim Nguy�n b�o",tbProp={4,342,1,1},nCount=50},}, "test", 1);
            else
                RemoveItemByIndex(nItemIndex)
                tbAwardTemplet:GiveAwardByList({{szName = "��i Kim Nguy�n b�o",tbProp={4,342,1,1},nCount=50},}, "test", 1);
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
        --		tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,343,1,1},nCount=4000},}, "test", 1);
        --		tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,343,1,1},nCount=4000},}, "test", 1);
        --		tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,343,1,1},nCount=4000},}, "test", 1);
            --	tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,343,1,1},nCount=4000},}, "test", 1);
        --	else
        --		RemoveItemByIndex(nItemIndex)
        --		tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,343,1,1},nCount=8000},}, "test", 1);
        --	end	
        else
                Say("Trang b� n�y kh�ng ��i ra ti�n ��ng ���c.")
                return
        end
        
        
    end
    

------------------------------ mua HKMP H�n ch� ------------------
function trangbihancherandom()
	local tbSay = {
	"[H�n ch� th�i gian] M�ng Long T� Kim B�t Nh� Gi�i./#trangbihancherandom_ok(769,1)",
	"[H�n ch� th�i gian] Ph�c Ma V� L��ng Kim Cang Uy�n./#trangbihancherandom_ok(771,2)",
"[H�n ch� th�i gian] T� Kh�ng ��t Ma T�ng H�i./#trangbihancherandom_ok(776,3)",
"[H�n ch� th�i gian] Ng� Long T�n Phong Ph�t C�./#trangbihancherandom_ok(793,4)",
"[H�n ch� th�i gian] V� Gian Thanh Phong Nhuy�n K�ch./#trangbihancherandom_ok(796,5)",
"[H�n ch� th�i gian] V� Y�m Thu Th�y L�u Quang ��i./#trangbihancherandom_ok(801,6)",
"[H�n ch� th�i gian] V� Tr�n T�nh �nh L�u T�./#trangbihancherandom_ok(808,7)",
"[H�n ch� th�i gian] Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u./#trangbihancherandom_ok(811,8)",
"[H�n ch� th�i gian] B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n ./#trangbihancherandom_ok(816,9)",
"[H�n ch� th�i gian] Minh Hoan Song Ho�n X� Kh�u./#trangbihancherandom_ok(829,10)",
"[H�n ch� th�i gian] Ch� Ph�c Tr�ng C�t Ng�c B�i./#trangbihancherandom_ok(834,11)",
"Trang Sau./#trangbihancherandom2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function trangbihancherandom2()
	local tbSay = {
"[H�n ch� th�i gian] Thi�n Quang ��a H�nh Thi�n L� Ngoa./#trangbihancherandom_ok(843,12)",
"[H�n ch� th�i gian] ��a Ph�ch Phong H�n Th�c Y�u./#trangbihancherandom_ok(854,13)",
"[H�n ch� th�i gian] ��ng C�u Ng� Long Ng�c B�i./#trangbihancherandom_ok(855,14)",
"[H�n ch� th�i gian] Ma S�t C� H�a Li�u Thi�n Ho�n./#trangbihancherandom_ok(868,15)",
"[H�n ch� th�i gian] Ma Ho�ng Dung Kim �o�n Nh�t Gi�i./#trangbihancherandom_ok(874,16)",
"[H�n ch� th�i gian] Ma Th� L� Ma Ph� T�m ��i./#trangbihancherandom_ok(876,17)",
"[H�n ch� th�i gian] L�ng Nh�c V� Ng� Th�c ��i./#trangbihancherandom_ok(881,18)",
"[H�n ch� th�i gian] C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n./#trangbihancherandom_ok(888,19)",
"[H�n ch� th�i gian] S��ng Tinh L�u Tinh C�n Nguy�t Kh�u./#trangbihancherandom_ok(891,20)",
"[H�n ch� th�i gian] L�i Khung Linh Ng�c �n L�i Uy�n./#trangbihancherandom_ok(898,21)",
"[H�n ch� th�i gian] V� Hoan Th�i Uy�n Ch�n V� Li�n./#trangbihancherandom_ok(901,22)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
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
		Say("H�nh trang kh�ng �� 100 ��i Kim Nguy�n B�o.")
		return
	end
end
function trangbihanchemax()
	local tbSay = {
	"[H�n ch� th�i gian] M�ng Long T� Kim B�t Nh� Gi�i./#trangbihanchemax_ok(686)",
	"[H�n ch� th�i gian] Ph�c Ma V� L��ng Kim Cang Uy�n./#trangbihanchemax_ok(687)",
"[H�n ch� th�i gian] T� Kh�ng ��t Ma T�ng H�i./#trangbihanchemax_ok(688)",
"[H�n ch� th�i gian] Ng� Long T�n Phong Ph�t C�./#trangbihanchemax_ok(689)",
"[H�n ch� th�i gian] V� Gian Thanh Phong Nhuy�n K�ch./#trangbihanchemax_ok(690)",
"[H�n ch� th�i gian] V� Y�m Thu Th�y L�u Quang ��i./#trangbihanchemax_ok(691)",
"[H�n ch� th�i gian] V� Tr�n T�nh �nh L�u T�./#trangbihanchemax_ok(692)",
"[H�n ch� th�i gian] Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u./#trangbihanchemax_ok(693)",
"[H�n ch� th�i gian] B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n ./#trangbihanchemax_ok(694)",
"[H�n ch� th�i gian] Minh Hoan Song Ho�n X� Kh�u./#trangbihanchemax_ok(695)",
"[H�n ch� th�i gian] Ch� Ph�c Tr�ng C�t Ng�c B�i./#trangbihanchemax_ok(696)",
"Trang Sau./#trangbihanchemax2()",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function trangbihanchemax2()
	local tbSay = {
"[H�n ch� th�i gian] Thi�n Quang ��a H�nh Thi�n L� Ngoa./#trangbihanchemax_ok(697)",
"[H�n ch� th�i gian] ��a Ph�ch Phong H�n Th�c Y�u./#trangbihanchemax_ok(698)",
"[H�n ch� th�i gian] ��ng C�u Ng� Long Ng�c B�i./#trangbihanchemax_ok(699)",
"[H�n ch� th�i gian] Ma S�t C� H�a Li�u Thi�n Ho�n./#trangbihanchemax_ok(700)",
"[H�n ch� th�i gian] Ma Ho�ng Dung Kim �o�n Nh�t Gi�i./#trangbihanchemax_ok(701)",
"[H�n ch� th�i gian] Ma Th� L� Ma Ph� T�m ��i./#trangbihanchemax_ok(702)",
"[H�n ch� th�i gian] L�ng Nh�c V� Ng� Th�c ��i./#trangbihanchemax_ok(703)",
"[H�n ch� th�i gian] C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n./#trangbihanchemax_ok(704)",
"[H�n ch� th�i gian] S��ng Tinh L�u Tinh C�n Nguy�t Kh�u./#trangbihanchemax_ok(705)",
"[H�n ch� th�i gian] L�i Khung Linh Ng�c �n L�i Uy�n./#trangbihanchemax_ok(706)",
"[H�n ch� th�i gian] V� Hoan Th�i Uy�n Ch�n V� Li�n./#trangbihanchemax_ok(707)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function trangbihanchemax_ok(idtrangbi)
	if CalcEquiproomItemCount(4,342,1,1)>=250 then
		ConsumeEquiproomItem(250,4,342,1,1)
		tbAwardTemplet:GiveAwardByList({{szName = "Phi V�n",tbProp={0,idtrangbi},nCount=1,nQuality=1},}, "test", 1);
	else	
		Say("H�nh trang kh�ng �� 100 ��i KNB.")
		return
	end
end
function menuhanche_KNB()
	local szTitle = "<#><npc> N�i n�y ��u l� k� tr�n d� b�o! ��i hi�p c�n g�!?"
	local Opt = 
	{
		{"Mua Trang B� H�n Ch� Random Option (100 KNB)", trangbihancherandom},
		{"Mua Trang B� H�n Ch� Max Option (250 ��i KNB)", trangbihanchemax},
		{"K�t th�c ��i tho�i. ", End},
	}
	CreateNewSayEx(szTitle,Opt)
end
