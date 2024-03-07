IncludeLib("SETTING")
IncludeLib("ITEM");
IncludeLib("FILESYS")
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\judgeoffline.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
--Include("\\script\\task\\lv120skill\\head.lua")
--Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\item\\ib\\shenxingfu.lua")
Include("\\script\\global\\findboss.lua") 
Include("\\script\\global\\translife.lua")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\gm_tool\\lbadmin.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")

Include("\\script\\chucnang_adm\\include.lua")



function main()
	
	dofile("script/gm_tool/g7hotrotanthu.lua")
--	dofile("script/global/g7vn/hotrotinhnang.lua")
--	dofile("script/global/g7vn/npctanthu.lua")
	--dofile("script/global/g7vn/g7giftcodetanthu.lua")
	-- local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if (nDate >= 202010201830) and (nDate <= 202103070900) then
	-- Say("H�y Ch� ��n 9h00 Server M�i Ch�nh Th�c Khai M� Nh�")
	-- tinsert(tbOpt, {"H� tr� test ", hotrotestgame});
	-- return 1;
	end

	local szTitle = " Hoan ngh�n m�i ng��i ��n v�i <color=yellow>http://jxdamme.com<color>"
	local Opt = 
	{
		{"��i T�n Nh�n V�t Game (500 Xu)", DoiTenNV},
		{"Nh�n L�nh B�i H� Tr� .", nhanlbhotro},
		{"Thay ��i M�u PK.", trangthai1},
		-- {"Nh�p CODE T�n Th�", CODEVIP},	---- code pha thien tram
		{"H�y trang b� kh�a", DisposeItem},	
		{"Nh�n nh�n c�n kh�n gi�i ch�", nhanCKGC},
		-- {"Nh�p giftcode chia s� 5 b�nh ti�n th�o l�.", nhapgifcodethem},
		-- {"Nh�n ��n b� 8 TTL ��c bi�t s� c� 26-12", g7denbu8TTL},	
		-- {"Nh�n �� Test", tbhoangkimbk},
		{"Nh�n M�nh T�ng B�o ��", layevent},
		{"C�p 120.", NhanDiemKinhNghiem},
		-- {"H� Tr� T�n Th� Test  ", Point},
-- -		{"Nh�n �� H� Tr� T�n Th�", NhanHoTroTanThu},
		{"Nh�n H� Tr� T�n Th� (Ch� Nh�n 1 L�n)", lenhbaitanthu},
		{"L�p Bang H�i", DMcreattongtest},
		{"Nh�n Trang B� Xanh",trangbixanh},
		{"Nh�n �� �p Trang B� T�m", nhandaep},
		{"Nh�n Set HKMP ", sethkmp},
		{"Nh�n Trang B� HKMP", doimanhrahkmp},
		{"Nh�n H� Tr� T�n Th�", NhanHoTroThienKiem},
		{"Nh�n V�t Ph�m H� Tr�", NhanDoHoTroTanThu},
		-- {"Nh�n T�i L�nh ��o + Danh V�ng + Ph�c Duy�n",lanhdaophucduyen},
		{"Nh�n C�c Lo�i Ng�a", nhancacloaingua},
		{"Nh�n Ti�n ��ng Free", LayTienDOngtest},
		{"Nh�n Set HKMP ", sethkmp},
		{"Thay ��i Gi�i T�nh", chuyen_gt},
		{"T�y T�y Nh�n V�t.",TayTuyNhanh},
		{"C�ng �i�m nhanh ", tangdiemnhanh},
		-- {"Nh�n Nguy�n Li�u", tbtim1},
		{"Nh�n Ng�a Vip & Phi Phong (Open S� ��ng T�nh N�ng N�y)", NhanNguaVip},
		{"Nh�n Phi Phong", NhanPhiPhong},
		{"Nh�n Sieu Quang Free", NhanPhienVu},

		{"Nh�n Set HKMP ", sethkmp},
		{"Nh�n T�i T�ng Kim", nhantuitongkim},
		{"Xu�t s� c�p 60 + 5 v�n l��ng ", xuatsu1},	
		-- {"Nh�n Phong V�n l�nh b�i <free>", gmnhanphongvanlenhbai},	
		{"Ng� Hoa L� Bao T�n Th�", tuimautanthu},
		-- {"Nh�p CODE T�n Th� m�c ��nh <c�>.", nhapgifcodetanthumoi},
		-- {"Nh�n th��ng ��t m�c c�p 30,40,50,60,90 ... ", gmnhanthuongdatmoc},
		-- {"�i�u ki�n th�nh l�p Bang H�i.", gmlapbanghoi},
		{"M�u PK", doimau},	
		{"Nh�n �i�m Ki�n Thi�t (D�nh Cho Bang Ch�).", kienthiet},
		{"K�t th�c ��i tho�i. "},
	}
	
	-- local szAccount = GetAccount()
	-- for i=1, getn(%tbGMAccount) do
	-- 	if szAccount == %tbGMAccount[i] then
	-- 	tinsert(Opt, 1, {"Ch�c N�ng Qu�n L� GM", MoChucNangGM}) 
	-- 	--	tinsert(Opt, 1, {"Do Test", testcodeadmin}) 
	-- 	--	tinsert(Opt, 1, {"LayTienDongtesst", LayTienDOngtest}) 
	-- 		break
	-- 	end
	-- end
	--	local _, nTongID = GetTongName()
--		local figure = TONGM_GetFigure(nTongID, GetName())
	--if (figure == TONG_MASTER)then
--	if GetName()==("�Ti�u�Phong") or GetName()==("o��B�o�Ng�c��o��") or GetName()==("CuuTuoc")  or GetName()==("MT�C�Ba�idol") or GetName()==("��i�B��V��ng") then
	--if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
	
--	end
	
	-- local szTongName, nTongID = GetTongName();
	-- local figure = TONGM_GetFigure(nTongID, GetName())
	-- if (figure == TONG_MASTER) then
	-- --tinsert(Opt, 1, {"Nh�n �i�m Ki�n Thi�t (D�nh Cho Bang Ch�).", kienthiet}) 
	-- end;
--	if GetAccount()=="boquyx1234" then
	CreateNewSayEx(szTitle,Opt)
	--end
end
function nhanlbhotro()

local ItemIdx = AddItem( 6,1,4265,1,0,0)
		SetItemBindState(ItemIdx, -2);

end


function DMcreattongtest()
local tbSay = {
"Nh�n �i�u Ki�n T�o Bang H�i./#dmcreatetong()",
"T�o Bang H�i./#dmcreateit()",
"Tho�t./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end

function dmcreatetong()	
		SetCamp(4)
		SetCurCamp(4)
		AddRepute(500);
		FuYuan_Start();
		-- FuYuan_Add(1000);
		AddLeadExp(20000)
		-- AddEventItem(195)
		AddLeadExp(2000000000)
		-- AddStackItem(500,4,417,1,1,0,0,0)
		-- Earn(10000000)
			
Msg2Player("<color=yellow>Ng��i �� h�i �� t�t c� �i�u ki�n �� t�o Bang H�i!<color>")
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ki�m hi�p ch��ng m�n nh�n:Khai s�ng bang h�i, m� r�ng b� nghi�p." ,2,"B�t ��u d�ng bang/Direct_CreateTong","��i ta m�t ch�t/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng��i ch�i: Ki�m hi�p ch��ng m�n nh�n, xin h�i ta ph�i l�m nh� th� n�o m�i ca th� khai t�ng l�p ph�i tr� th�nh Bang ch� ��y?", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i c� �� n�ng l�c l�nh ��o, c� 16 ng��i c�ng ch� h��ng c�ng ng��i l�p bang, tr�i qua 3 ng�y Kh�o Nghi�m K� ", "Ch��ng m�n nh�n:  N�u trong 3 ng�y c� ng��i r�i bang th� n�i trong 3 ng�y �� ng��i ph�i t�m ng��i kh�c thay th�.", "Ch��ng m�n nh�n:  Ng��i ph�i c� �� t�i l�nh ��o v� t�n v�t �� l� Nh�c V��ng Ki�m", "Ng��i ch�i: Nh�c V��ng Ki�m ? Ng��i n�i l� thanh ki�m n�y � ? ", "Ki�m hi�p ch��ng m�n nh�n : Th� ra l� ng��i �� c� n�... Kh�ng t�, qu� nhi�n tu�i tr� t�i cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: N�u nh� mu�n th�nh l�p bang h�i, ng��i c� th� v� n� b� ra 1 l��ng l�n th�i gian, s�c l�c c�ng t�m huy�t, kh�ng th� n�a ���ng h�y b�." )
		else
			Talk(6,"", "Ki�m hi�p ch��ng m�n nh�n:  Ng��i mu�n h�i �i�u ki�n l�p bang �? �� ta n�i cho ng��i r�.", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ph�i xu�t x�,  ti�p theo ng��i kh�ng th� � b�t k� bang h�i n�o kh�c, ng��i nh�t �inh ph�i c� danh v�ng giang h�, cu�i c�ng l� t�i l�nh ��o ph�i h�n 30 c�p.", "Ki�m hi�p ch��ng m�n nh�n: Sau �� �i chi�n tr��ng t�m m�t thanh Nh�c V��ng Ki�m l�m bang ch� t�n v�t l� ���c r�i.")
		end
	end
end

function create_pay()
	Say("Ki�m hi�p ch��ng m�n nh�n: Ng��i c�n l� phi l� 100 v�n l��ng b�c." ,2,"Kh�ng th�nh v�n ��, ta c� �em 100v l��ng ��y! /create_pay_yes","Ta kh�ng �em �� ti�n r�i. /create_pay_no")
end
function create_pay_yes()
	if (GetCash() >= 1000000) then
		Pay(1000000)		
		DelItem(195)		
		SetTask(99,1)				
		Direct_CreateTong()		
	else
		Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: Vi�c duy tr� bang h�i r�t t�n k�m, ng��i ph�i c� g�ng c�ng m�i ng��i t�ch g�p �� Bang H�i ���c gi�u m�nh. ")	end
end

function Direct_CreateTong()
	CreateTong(1)				
end







function nhandaep()
	if CalcFreeItemCellCount()<20 then
		Say("H�nh trang c�n c� 20 � tr�ng")
		return
	end
	AddItem(6,1,149,1,0,0,0) --hien 1
AddItem(6,1,150,1,0,0,0) --an 1 kim
AddItem(6,1,150,1,1,0,0) --an 1 moc
AddItem(6,1,150,1,2,0,0) --an 1 thuy
AddItem(6,1,150,1,3,0,0) --an 1 hoa
AddItem(6,1,150,1,4,0,0) --an 1 tho

AddItem(6,1,151,1,0,0,0) --hien 2
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) --hien 3
AddItem(6,1,154,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 
local tbAwardTanThu = 
	{	
		--{szName = "Ph�c Duy�n", tbProp={6,1,124,1,0,0,0}, nCount=100},
		--{szName = "Ph�c Duy�n", tbProp={4,238,1,1}, nCount=3},
		--{szName = "Ph�c Duy�n", tbProp={4,239,1,1}, nCount=3},
		--{szName = "Ph�c Duy�n", tbProp={4,240,1,1}, nCount=3},
		--{szName = "Ph�c Duy�n", tbProp={6,1,147,10,0,0,0}, nCount=12},
	}
tbAwardTemplet:Give(tbAwardTanThu, 1, {"NhanHoTroTanThu", "NhanHoTroTanThu"})

end
function lenhbaitanthu()

if GetTask(5365)>0 then
Say("Ch� nh�n ���c 1 l�n duy nh�t.")
return
end
	if CalcFreeItemCellCount()<50 then
		Say("H�nh trang kh�ng �� 50 � tr�ng.")
		return
	end
	SetTask(5365,1)
	local nAddLevel =80 - GetLevel()
		ST_LevelUp(nAddLevel)
		local tbAwardTanThu = 
	{	
	--	{szName = "Th�n H�nh Ph�", tbProp={6,1,1266,1,0,0,0}, nCount=1,nBindState = -2,nExpiredTime=60*24*2},
	--	{szName = "H�i Th�nh Ph� ", tbProp={6,1,438,0,0,0,0}, nCount=1,nBindState=-2,nExpiredTime=60*24*2},
		--{szName = "L�nh B�i T�n Th�", tbProp={6,1,4261,0,0,0,0}, nCount=1},
	--	{szName = "M� B�i Chi�u D� Ng�c S� t�", tbProp={6,1,2332,0,0,0,0}, nCount=1},
	--	{szName = "B� K�p 120", tbProp={6,1,1125,0,0,0,0}, nCount=1},
	--	{szName = "Ti�n Th�o L�", tbProp={6,1,71,1,0,0,0}, nCount=20,nBindState=-2},
	--	{szName = "Tui mau tan thu", tbProp = {6,1,4461,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName="T�i T� M�u",tbProp={6,1,1427,1,0,0},nCount=1,nBindState = -2},
		--{szName = "H�t Th�ng Luy�n Skill ", tbProp = {6,1,1008,1,0,0}, nCount = 1, nBindState = -2},
		---{szName = "��i Th�nh B� K�p 90", tbProp = {6,1,2424,1,0,0}, nCount = 1, nBindState = -2},
		---{szName = "��i Th�nh B� K�p 90", tbProp = {6,1,2424,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName = "��i Th�nh B� K�p 90", tbProp = {6,1,2424,1,0,0}, nCount = 4, nBindState = -2},
	--	{szName = "S�ch k� n�ng c�p 90", tbProp = {6,1,2426,1,0,0}, nCount = 4},
		--{szName = "S�ch k� n�ng c�p 90", tbProp = {6,1,2426,1,0,0}, nCount = 1, nBindState = -2},
		--{szName = "S�ch k� n�ng c�p 90", tbProp = {6,1,2426,1,0,0}, nCount = 1, nBindState = -2},
		--{szName = "S�ch k� n�ng c�p 90", tbProp = {6,1,2426,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName = "��i Th�nh B� K�p 120", tbProp = {6,1,2425,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName = "B� quy�t k� n�ng c�p 120", tbProp = {6,1,1125,1,0,0}, nCount = 1, nBindState = -2},
	}
		for i = 1,9 do 
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0, 176+i},nCount=1,nQuality=1,nBindState=-2,nExpiredTime=60*24*15}}, "test", 1);
end 
	--PlayerFunLib:AddSkillState(1688,20,3,18*60*60*24*360,2)
	tbAwardTemplet:Give(tbAwardTanThu, 1, {"NhanHoTroTanThu", "NhanHoTroTanThu"})
		FuYuan_Start();
			AddLeadExp(90000000)
			AddRepute(450)
	--		AddProp(3)
			Earn()
	--		OpenStoreBox(1);
	--		OpenStoreBox(2);
	--		OpenStoreBox(3);
		SaveNow();
end
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
"M�ng Long Ph�t Ph�p Huy�n B�i./#doimanhhkmpthieulam_ok(4)",
"M�ng Long Huy�n Ti Ph�t ��i./#doimanhhkmpthieulam_ok(3)",
"M�ng Long ��t Ma T�ng h�i./#doimanhhkmpthieulam_ok(5)",
"Ph�c Ma Huy�n Ho�ng C� Sa./#doimanhhkmpthieulam_ok(7)",
"Ph�c Ma � Kim Nhuy�n �i�u./#doimanhhkmpthieulam_ok(8)",
"Ph�c Ma Ph�t T�m Nhuy�n Kh�u./#doimanhhkmpthieulam_ok(9)",
"Ph�c Ma Ph� �� T�ng h�i./#doimanhhkmpthieulam_ok(10)",
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
	"H�m Thi�n V� Th�n T��ng Kim Gi�p./#doimanhhkmpthieulam_ok(17)",
"H�m Thi�n Uy V� Th�c y�u ��i./#doimanhhkmpthieulam_ok(18)",
"H�m Thi�n H� ��u Kh�n Th�c Uy�n./#doimanhhkmpthieulam_ok(19)",
"H�m Thi�n Th�a Long Chi�n Ngoa./#doimanhhkmpthieulam_ok(20)",
"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i./#doimanhhkmpthieulam_ok(22)",
"K� Nghi�p B�ch H� V� Song kh�u./#doimanhhkmpthieulam_ok(23)",
"K� Nghi�p H�aV�n K� L�n Th� ./#doimanhhkmpthieulam_ok(24)",
"K� Nghi�p Chu T��c L�ng V�n Ngoa./#doimanhhkmpthieulam_ok(25)",
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
	"V� Gian Thanh Phong Truy Y./#doimanhhkmpthieulam_ok(32)",
"V� Gian Ph�t V�n Ti ��i./#doimanhhkmpthieulam_ok(33)",
"V� Gian C�m V�n H� Uy�n./#doimanhhkmpthieulam_ok(34)",
"V� Gian B�ch Ng�c B�n Ch� ./#doimanhhkmpthieulam_ok(35)",
"V� Ma T� Kh�m C� Sa./#doimanhhkmpthieulam_ok(37)",
"V� Ma B�ng Tinh Ch� Ho�n./#doimanhhkmpthieulam_ok(38)",
"V� Ma Ma Ni qu�n./#doimanhhkmpthieulam_ok(36)",
"V� Ma H�ng Truy Nhuy�n Th�p h�i./#doimanhhkmpthieulam_ok(40)",
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
	"T� Ho�ng Tu� T�m Khinh Sa Y./#doimanhhkmpthieulam_ok(47)",
"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i./#doimanhhkmpthieulam_ok(48)",
"T� Ho�ng B�ng Tung C�m uy�n./#doimanhhkmpthieulam_ok(49)",
"T� Ho�ng Th�y Ng�c Ch� Ho�n./#doimanhhkmpthieulam_ok(50)",
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
	"U Lung X�ch Y�t M�t trang./#doimanhhkmpthieulam_ok(57)",
"U Lung Thanh Ng� Tri�n y�u./#doimanhhkmpthieulam_ok(58)",
"U Lung Ng�n Th�m H� Uy�n./#doimanhhkmpthieulam_ok(59)",
"U Lung M�c Th� Nhuy�n L�./#doimanhhkmpthieulam_ok(60)",
"Minh �o U ��c �m Y./#doimanhhkmpthieulam_ok(62)",
"Minh �o ��c Y�t Ch� Ho�n./#doimanhhkmpthieulam_ok(63)",
"Minh �o H� C�t H� uy�n./#doimanhhkmpthieulam_ok(64)",
"Minh �o Song Ho�n X� H�i./#doimanhhkmpthieulam_ok(65)",
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
	"B�ng H�n Huy�n Y Th�c Gi�p./#doimanhhkmpthieulam_ok(72)",
"B�ng H�n T�m Ti�n Y�u Kh�u./#doimanhhkmpthieulam_ok(73)",
"B�ng H�n Huy�n Thi�n B�ng H�a B�i./#doimanhhkmpthieulam_ok(74)",
"B�ng H�n Nguy�t �nh Ngoa./#doimanhhkmpthieulam_ok(75)",
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
"��ng C�u Ki�n Long Ban Ch� ./#doimanhhkmpthieulam_ok(95)",
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
	"Ma S�t T�n D��ng �nh Huy�t Gi�p./#doimanhhkmpthieulam_ok(102)",
"Ma S�t X�ch K� T�a Y�u Kh�u./#doimanhhkmpthieulam_ok(103)",
"Ma S�t C� H�a Li�u Thi�n uy�n./#doimanhhkmpthieulam_ok(104)",
"Ma S�t V�n Long Th� Ch�u gi�i./#doimanhhkmpthieulam_ok(105)",
"Ma Ho�ng Kim Gi�p Kh�i./#doimanhhkmpthieulam_ok(106)",
"Ma Ho�ng �n Xu�t H� H�ng Khuy�n./#doimanhhkmpthieulam_ok(107)",
"Ma Ho�ng Kh� C�c Th�c y�u ��i./#doimanhhkmpthieulam_ok(108)",
"Ma Ho�ng Huy�t Y Th� Tr�c./#doimanhhkmpthieulam_ok(109)",
"Ma Ho�ng ��ng ��p Ngoa./#doimanhhkmpthieulam_ok(110)",
"Ma Th� Li�t Di�m Qu�n Mi�n./#doimanhhkmpthieulam_ok(111)",
"Ma Th� L� Ma Ph� T�m Li�n./#doimanhhkmpthieulam_ok(112)",
"Ma Th� Nghi�p H�a U Minh Gi�i./#doimanhhkmpthieulam_ok(113)",
"Ma Th� Huy�t Ng�c Th�t S�t B�i./#doimanhhkmpthieulam_ok(114)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpvodang()
	local tbSay = {
	"L�ng Nh�c V� Ng� ��o b�o./#doimanhhkmpthieulam_ok(117)",
"L�ng Nh�c N� L�i Gi�i./#doimanhhkmpthieulam_ok(118)",
"L�ng Nh�c V� C�c Huy�n Ng�c B�i./#doimanhhkmpthieulam_ok(119)",
"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i./#doimanhhkmpthieulam_ok(120)",
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
	"S��ng Tinh Ng�o S��ng ��o b�o./#doimanhhkmpthieulam_ok(127)",
"S��ng Tinh Thanh Phong L� ��i./#doimanhhkmpthieulam_ok(128)",
"S��ng Tinh Thi�n Tinh B�ng Tinh th� ./#doimanhhkmpthieulam_ok(129)",
"S��ng Tinh Phong B�o ch� ho�n./#doimanhhkmpthieulam_ok(130)",
"L�i Khung Thi�n ��a H� ph� ./#doimanhhkmpthieulam_ok(132)",
"L�i Khung Phong L�i Thanh C�m ��i./#doimanhhkmpthieulam_ok(133)",
"L�i Khung Linh Ng�c U�n L�i./#doimanhhkmpthieulam_ok(134)",
"L�i Khung C�u Thi�n D�n L�i gi�i./#doimanhhkmpthieulam_ok(135)",
"V� �o Ki B�n ph� ch�./#doimanhhkmpthieulam_ok(137)",
"V� �o Th�c T�m ch� ho�n./#doimanhhkmpthieulam_ok(138)",
"V� �o Thanh �nh Huy�n Ng�c B�i./#doimanhhkmpthieulam_ok(139)",
"V� �o Tung Phong Tuy�t �nh ngoa./#doimanhhkmpthieulam_ok(140)",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam_ok(idchon)

		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idchon},nQuality=1,nCount=10},}, "test", 1);
		
end
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
function nhancacloaingua()
	local tbOpt =
	{
--	{"Nh�n Ng�a Phi V�n", phivan},
                                                                                    {"Nh�n Ng�a Tuy�t �nh", tuyetanh},
                                                                                    {"Nh�n Ng�a Chi�u D�", chieudatanthu},
	  {"Nh�n Ng�a X�ch Th�", xichthotanthu},
                                                                                    {"Nh�n Ng�a � V�n ��p Tuy�t", ovan},
	  {"Tho�t"},
	}
	CreateNewSayEx("<npc>��i ca ��i t� c�n g� � ?", tbOpt)
end
function phivan()
AddItem(0,10,8,10,0,0,0)
end

function tuyetanh()
AddItem(0,10,5,3,0,0,0)
end

function ovan()
AddItem(0,10,5,6,0,0,0)
end

function chieudatanthu()
AddItem(0,10,5,10,0,0,0)
end

function xichthotanthu()
AddItem(0,10,5,7,0,0,0)
end
	function mautrogiup2()
local totalcount =CalcEquiproomItemCount(1,2,0,5);
	if totalcount >= 40 then 
	return
	end	
	local tong = 40-totalcount
	for k=1,tong do 		
	AddItem(1,2,0,5,0,0,0,0);
	end
end
function testcodeadmin()

	
mautrogiup2()
--FuYuan_Start();
		--	FuYuan_Add(10000);
		--	AddLeadExp(90000000)
		--	AddRepute(10000)
--for i=3491,3500 do
--tbAwardTemplet:GiveAwardByList({{szName = "M�nh An Bang",tbProp={0,i},nCount=1,nQuality=1},}, "test", 1);
--end
--local Index = AddGoldItem(0,190) SyncItem(Index) 
--tbAwardTemplet:GiveAwardByList({{szName = "Lam Thu� Tinh",tbProp={0,10,6,10,1,1,0},nCount=3},}, "test", 1);
--	Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� nh�n ���c <color=red>Nh�n Kim Quang 5 Ng�y<color> t� boss HKMP")
end

function NhanHoTroThienKiem()
if CalcFreeItemCellCount() >= 40 then
			SetTask(NhiemVuTanThu,1)
		--	local Index = AddItem(6,1,4812,1,0,0) SetItemBindState(Index, -2)--Mau Tan Thu
			local Index = AddItem(6,1,1266,1,0,0)  SetItemBindState(Index, -2) --Thanh Hanh Phu
			--local Index = AddItem(6,1,438,1,0,0) ITEM_SetExpiredTime(Index,60*24*30) SyncItem(Index) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,438,1,0,0) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,4261,1,0,0) SetItemBindState(Index, -2) --Lenh Bai Tan Thu
			local Index = AddItem(0,10,7,10,0,0,0) SetItemBindState(Index, -2 )-- Chieu Da
			local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0)  SetItemBindState(Index, -2) --bk 90
			local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,1125,0,0,0,0) SetItemBindState(Index, -2)--bk 120
			local Index = AddItem(6,1,2425,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
					
		--	local Index = AddItem(6,1,2390,0,0,0,0) SetItemBindState(Index, -2) --tu ngoc
		--	local Index = AddItem(6,1,2391,0,0,0,0) SetItemBindState(Index, -2) --bach ngoc
			local tbAwardcc={
{szName="V� Danh", tbProp={0,141},nCount = 1,nQuality=1,nBindState = -2},
		{szName="V� Danh", tbProp={0,142},nCount = 1,nQuality=1,nBindState = -2},
--		{szName="T�i T� M�u", tbProp={6,1,1427,1,1},nCount = 1,nBindState = -2},
	--	{szName="T�i T�ch Lu� T�ng Kim", tbProp={6,1,4361,1,1},nCount = 5,nBindState = -2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");

			--Earn(50000)
			--for i = 1,9 do local Index = AddGoldItem(0,176+i) SetItemBindState(Index, -2) end --Kim Phong
		else
			Talk(1,"","<color=green> H�y �� Tr�ng 40 � R�i Nh�n Th��ng...!")
		end
end
function NhanDoHoTroTanThu()
local tbSay = {

"Nh�n Trang B� �� Xanh./trangbixanh",
"Nh�n C�c Lo�i Ng�a./nhancacloaingua",
"Nh�n 1 V� Kh� HKMP L�a Ch�n./hkmpvip1",
"Nh�n 1 Set Kim Quang L�a Ch�n./SetKimQuang",
"Nh�n B� An Bang Li�n ��u./NhanAnBangTieu",
"Nh�n Set Nhu T�nh.(Thi�u �o)/Nhannhutinhtanthu",
"Nh�n B� ��nh Qu�c./Nhandinhquoctanthu",
"Nh�n Set Hi�p C�t. (Thi�u Ng�c B�i)/Nhanhiepcottanthu",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)

end

function SetKimQuang()
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x4 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,194) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,195) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,196) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
--	local Index = AddGoldItem(0,197) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,198) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,199) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,200) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,201) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
--	local Index = AddGoldItem(0,202) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
Msg2Player("Nh�n ���c b� trang b� Kim Quang VIP.")
end

function NhanAnBangTieu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
		return 1;
	end
	--local Index = AddGoldItem(0,424) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	--local Index = AddGoldItem(0,425) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
--	local Index = AddGoldItem(0,426) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	--local Index = AddGoldItem(0,427) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,394) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,395) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,396) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,397) SyncItem(Index) -- an bang
Msg2Player("Nh�n ���c b� trang s�c An Bang Li�n ��u.")
end

function Nhannhutinhtanthu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,191) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,192) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,193) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
Msg2Player("Nh�n ���c b� trang b� Nhu T�nh.")
end

function Nhandinhquoctanthu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,403) SyncItem(Index) -- DQ Tieu
	local Index = AddGoldItem(0,404) SyncItem(Index)-- an bang
	local Index = AddGoldItem(0,405) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,406) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,407) SyncItem(Index) -- an bang
Msg2Player("Nh�n ���c b� Trang B� ��nh Qu�c!")
end

function Nhanhiepcottanthu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x3 � tr�ng");
		return 1;
	end
	local Index = AddGoldItem(0,186) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,187) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,188) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
Msg2Player("Nh�n ���c Trang B� Hi�p C�t!")
end

-- Nh�n nh�n CKGC +2 k� n�ng
function nhanCKGC()
	local Index = AddGoldItem(0,530) SyncItem(Index) SetItemBindState(Index, 0)
	Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=yellow>Nh�n C�n Kh�n Gi�i Ch� <color> <color=pink>ADMIN <color>")
end

function NhanNguaVip()
local tbSay = {
--"V�ng S�ng Vip/",
"Ta Mu�n Nh�n Phi Phong 2/#Moc2000_ngua(3468)",
"Ta Mu�n Nh�n L�c �� M�ng C�/#Moc2000_ngua(5213)",
"Ta Mu�n Nh�n H�n Huy�t Long C�u/#Moc2000_ngua(5214)",
"Ta Mu�n Nh�n B�ch H� Truy�n Thuy�t/#Moc2000_ngua(5215)",
"Ta Mu�n Nh�n Kim Tinh H� V��ng/#Moc2000_ngua(5216)",
"Ta Mu�n Nh�n Truy �i�n/#Moc2000_ngua(5217)",
"Ta Mu�n Nh�n L�u Tinh /#Moc2000_ngua(5218)",
"Ta Mu�n Nh�n D��ng Sa /#Moc2000_ngua(5093)",
"Ta Mu�n Nh�n Ng� Phong /#Moc2000_ngua(5094)",
--"Ta Mu�n Nh�n 400� Li�n ��u/#Moc2000_diemvinhdu()",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n �i ���ng N�o ?",getn(tbSay),tbSay)

end

function Moc2000_ngua(idgold)
	--if (GetTask(HOAPHUONGTRANG) >= 300) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
			{szName="S� T� Ho�ng Kim",tbProp={0,idgold},nCount=1,nQuality=1,nExpiredTime=30*24*60},		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 300") SetTask(NHANTHUONGMOC,1)
		--Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� Nh�n Th�nh C�ng M�c Event 300")	

	--else
	--	Talk(1,"","<color=pink>"..myplayersex().." Ch�a ��t T�i M�c N�y")
	--end
end
function layevent()
local award1111  ={
{

		{szName="Thien Thach",tbProp={4,490,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,491,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,492,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,493,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,494,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,495,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,496,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,497,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,498,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,499,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,500,1,1,0,0},nCount=100},
		{szName="Thien Thach",tbProp={4,501,1,1,0,0},nCount=100},

	
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "Ph�n Th��ng");

end

function nhantuitongkim()
local award1111  ={
{

		{szName="Thien Thach",tbProp={6,1,4361,1,0,0},nCount=500},


	
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "Ph�n Th��ng");

end
function NhanPhienVu()
local Index = AddItem(0,10,13,10,0,0,0) SetItemBindState(Index, -2)-- Phi Van
end
-------------------------------------------------code cua quy ----------------------------------
function NhanDiemKinhNghiem()
	if GetLevel()<200 then
			local nAddLevel =120 - GetLevel()

		ST_LevelUp(nAddLevel)

else Say("Ng��i �� ��t C�p 120 R�i")
end
end
-----------code moi

function xuatsu1()
if check_faction() == 1 then
		Talk(1, "", "��i hi�p ch�a �� gia nh�p m�n ph�i.")
		return 1
end

if(GetLevel()<61) then
		Say("Ch� d�nh cho nh�ng nh�n s� ��ng c�p > 60")
		return 1
end

	if  GetCamp() ~= 4 then
			
				local sltien = GetCash()
				local sltienphaitra = 50000
				if(sltien < sltienphaitra) then
					Say("��i hi�p kh�ng mang ��: "..sltienphaitra.." l��ng")
					return
				end
				SetCamp(4)
				SetCurCamp(4)
								Pay(sltienphaitra)
else
Say("Ng��i l� s�t th� kh�ng th� th�c hi�n m�nh l�nh!")
end
end
function NhanDoLongDao()
	if GetLevel()>=114 or GetLevel()<60 then
		Say("��i hi�p �� tr�n c�p 114 ho�c d��i c�p 60, kh�ng th� mua g�i n�y.",0);
		return 1
	end
	if CalcEquiproomItemCount(4,417,1,1)>=299 then
		local nAddLevel =114 - GetLevel()
		ST_LevelUp(nAddLevel)
		tbAwardTemplet:GiveAwardByList({{szName = "Lam Thu� Tinh",tbProp={4,238,1,1},nCount=1,nBindState=-2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "T� Thu� Tinh",tbProp={4,239,1,1},nCount=1,nBindState=-2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "L�c Thu� Tinh",tbProp={4,240,1,1},nCount=1,nBindState=-2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Tinh H�ng B�o Th�ch",tbProp={4,353,1,1},nCount=6,nBindState=-2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Chi�u D� Ng�c S� T�",tbProp={0,10,5,5,0,0,0},nCount=1,nBindState=-2,nExpiredTime=7*24*60},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Huy�n Tho�i",tbProp={6,1,4443,1,1},nCount=5,nBindState=-2},}, "test", 1);
		Earn(10000000)
		ConsumeEquiproomItem(299,4,417,1,1)
	else
		Say("H�nh trang kh�ng �� 299 Xu.")
		return
	end
end






function LoadTabFile(szFile)
	if TabFile_Load(szFile, szFile) ~= 1 then
		print(format("%s open fail", szFile))
		return 
	end
	local nRowCount = TabFile_GetRowCount(szFile) - 1
	local tb = {}
	for i=1, nRowCount do
		for j=1, nRowCount do
			local nValue = TabFile_GetCell(szFile, i+1 , j+1)
			tb[i] = tb[i] or {}
			tb[i][j] = nValue
		end
	end
	TabFile_UnLoad(szFile)
	return tb
end

function G7VNAppendFile(url, str)
	local fs_log = openfile(url, "a");
	write(fs_log, ""..str.."");
	closefile(fs_log);
end;


function tuimautanthu()
local idex = AddItem(6,1,4335,1,0,0,0)
SyncItem(idex);
SetItemBindState(idex,-2) -- Khoa bao hiem vinh vien
end


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function AdminGame()
	for i = 1,getn(TENADMIN) do
		if GetName() == TENADMIN[i][1] and TENADMIN[i][2] == 99 then
		return 1
		end
	end
end

function ChucNangGM()
player = GetPlayerCount()
if AdminGame() == 1 then
MoChucNangGM()
else
Msg2Player("Ch� C� <color=pink>Ban Qu�n Tr� <color>M�i C� Quy�n S� D�ng Ch�c N�ng N�y")
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoChucNangGM()
	local tbOpt = {
		{"Nh�n L�nh B�i Admin", LBAdmin},
		{"K�t Th�c ��i Tho�i."},
	}
	CreateNewSayEx("<npc>L�o Phu C� M�t S� Man C�c Ph�m, Ng��i C�n M�n N�o", tbOpt)
end
-----------------------------------------------------------------------------------------------------------------------------------
function LBAdmin()
local index = AddItem(6,1,4906,0,0,0,0) SyncItem(index) SetItemBindState(index,-2) -- -2:khoa 0: k bi khoa 
local index = AddItem(6,1,4890,0,0,0,0) SyncItem(index) SetItemBindState(index,-2)
Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=yellow>L�nh B�i <color> <color=pink>ADMIN <color>")	
end


function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m quy�n/#sethkmp1(1)",
		"Thi�u L�m c�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng ch�y/#sethkmp1(4)",
		"Thi�n V��ng th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga My ki�m/#sethkmp1(7)",
		"Nga My ch��ng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n song �ao/#sethkmp1(11)",
		"Ng� ��c ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c b�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"R�i kh�i/no",
	--	"Hoa S�n/#sethkmpche1()",
		"���ng M�n phi �ao/#sethkmp1(15)",
		"���ng M�n t� ti�n/#sethkmp1(16)",
		"���ng M�n phi ti�u/#sethkmp1(17)",
		"���ng M�n b�y/#sethkmp1(18)",
		"C�i Bang r�ng/#sethkmpchecaibang()",
		"C�i Bang b�ng/#sethkmp1(20)",
		"Thi�n Nh�n k�ch/#sethkmp1(21)",
		"Thi�n Nh�n b�a/#sethkmp1(22)",
		"Thi�n Nh�n �ao/#sethkmpche()",
		"V� �ang kh� /#sethkmp1(24)",
		"V� �ang ki�m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n ki�m/#sethkmp1(27)",
		"C�n L�n b�a/#sethkmp1(28)",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
if nId==1 then
local Index = AddGoldItem(0,6223) SyncItem(Index)
end
if nId==27 then
local Index = AddGoldItem(0,6224) SyncItem(Index)
end
if nId==8 then
local Index = AddGoldItem(0,6225) SyncItem(Index)
end
	for i=1,2 do
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
	end
end
function sethkmpche1()
local nCount_muaban = CalcEquiproomItemCount(4,417,1,1)
if  nCount_muaban >= 200  then
	ConsumeEquiproomItem(200, 4,417, 1,-1)
	local Index = AddGoldItem(0,681) SyncItem(Index)
	local Index = AddGoldItem(0,682) SyncItem(Index)
	local Index = AddGoldItem(0,683) SyncItem(Index)
	local Index = AddGoldItem(0,684) SyncItem(Index)
	local Index = AddGoldItem(0,685) SyncItem(Index)
	Talk(1, "", "Trao ��i th�nh c�ng");
	else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>200 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end
	

end
function sethkmpchecaibang()
	local Index = AddGoldItem(0,91) SyncItem(Index)
	local Index = AddGoldItem(0,92) SyncItem(Index)
	local Index = AddGoldItem(0,93) SyncItem(Index)
	local Index = AddGoldItem(0,94) SyncItem(Index)
	local Index = AddGoldItem(0,95) SyncItem(Index)
	local Index = AddGoldItem(0,708) SyncItem(Index)
end
function sethkmpche()
	local Index = AddGoldItem(0,790) SyncItem(Index)
	local Index = AddGoldItem(0,111) SyncItem(Index)
	local Index = AddGoldItem(0,112) SyncItem(Index)
	local Index = AddGoldItem(0,113) SyncItem(Index)
	local Index = AddGoldItem(0,114) SyncItem(Index)
	local Index = AddGoldItem(0,115) SyncItem(Index)
end
-------------------------------------------------code cua quy ----------------------------------
function NhanHoTroTanThu()
if GetTask(3905)>0 then
	Say("M�i nh�n v�t ch� ���c nh�n h� tr� t�n th� 1 l�n duy nh�t.")
	return
end
if GetLevel()>=70 then
	Say("T�n Th� ch� gi�nh cho nh�n v�t d��i c�p 70")
	return
end
if (CountFreeRoomByWH(5,8,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 5x8 � tr�ng");
		return 1;
	end
		if CalcFreeItemCellCount() >= 40 then
			--SetTask(NhiemVuTanThu,1)
		--	local Index = AddItem(6,1,4812,1,0,0) SetItemBindState(Index, -2)--Mau Tan Thu
			local Index = AddItem(6,1,1266,1,0,0) ITEM_SetExpiredTime(Index,60*24*30) SyncItem(Index)  SetItemBindState(Index, -2)--Thanh Hanh Phu
			local Index = AddItem(6,1,438,1,0,0) SyncItem(Index) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,4460,1,0,0) SyncItem(Index) SetItemBindState(Index, -2)--B�o R��ng V� Kh� T�n Th�
			local Index = AddItem(6,1,4261,1,0,0) SetItemBindState(Index, -2) --Lenh Bai Tan Thu
local Index = AddItem(6,1,4461,1,0,0) SetItemBindState(Index, -2) --Lenh Bai Tan Thu

			local Index = AddItem(0,10,2,9,0,0,0) SetItemBindState(Index, -2 )-- Tuc Suong
			local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
	--		local Index	= AddItem(6,1,2426,0,0,0,0)  SetItemBindState(Index, -2)--bk 90
	--		local Index	= AddItem(6,1,2426,0,0,0,0) SetItemBindState(Index, -2)--bk 90
			local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,1765,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,1765,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
			local Index = AddItem(6,1,1765,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
		--	local Index = AddItem(6,1,2424,0,0,0,0) SetItemBindState(Index, -2)--dai thanh bk 90
		--	local Index = AddItem(6,1,1125,0,0,0,0) SetItemBindState(Index, -2)--bk 120
		--	local Index = AddItem(6,1,2425,0,0,0,0) SetItemBindState(Index, -2) --dai thanh bk 120
			--Earn(50000)
	--		local nAddLevel =60 - GetLevel()
	--	ST_LevelUp(nAddLevel)
			PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*90,1)
			PlayerFunLib:AddSkillState(1679,20,3,18*60*60*24*90,1)
			for i = 1,9 do local Index = AddGoldItem(0, 167+i) ITEM_SetExpiredTime(Index,60*24*30)  SyncItem(Index) SetItemBindState(Index, -2) end --Kim Phong
			--for i = 1,10 do local Index = AddItem(6,1,71,1,0,0) ITEM_SetExpiredTime(Index,60*24*7)  SyncItem(Index) SetItemBindState(Index, -2) end --tien thao lo
			SetTask(3905,1)
		else
			Talk(1,"","<color=green> H�y �� Tr�ng 40 � R�i Nh�n Th��ng...!")
		end
end

function DisposeItem() -- Huy item
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m, v�t ph�m �� h�y kh�ng th� l�y l�i ���c!", "DisposeConfirm", "onCancel", 1);
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
	function TayTuyNhanh()
		local tbSay = {"Ng��i mu�n t�y t�y lo�i g� ��y?"}
			tinsert(tbSay, "T�ng �i�m nhanh/tangdiemnhanh")
			tinsert(tbSay, "T�y �i�m k� n�ng/taydiemkynang")
			tinsert(tbSay, "T�y �i�m ti�m n�ng/taydiemtiemnang")
			tinsert(tbSay, "K�t th�c ��i tho�i./OnCancel")
		CreateTaskSay(tbSay)
	end
	
	function taydiemkynang()
		Say("Ng��i ��ng � T�y �i�m k� n�ng kh�ng?", 2, "T�y �i�m k� n�ng /taydiemkynangok","Kh�ng t�y /OnCancel")
	end
	
	function taydiemkynangok()
		i = HaveMagic(210)
		j = HaveMagic(400)
		n = RollbackSkill()
		x = 0
		if (i ~= -1) then x = x + i end
		if (j ~= -1) then x = x + j end
		rollback_point = n - x
		if (rollback_point + GetMagicPoint() < 0) then
			rollback_point = -1 * GetMagicPoint()
		end
		AddMagicPoint(rollback_point)
		if (i ~= -1) then AddMagic(210,i) end
		if (j ~= -1) then AddMagic(400,j) end
		Msg2Player("T�y T�y th�nh c�ng! ng��i �� c� th� ph�n ph�i "..rollback_point.." �i�m. ")
		Talk(1,"KickOutSelf","T�y T�y th�nh c�ng! ng��i �� c� th� ph�n ph�i "..rollback_point.." �i�m.")
	end
	
	function taydiemtiemnang()
		Say("Ng��i ��ng � t�y �i�m ti�m n�ng kh�ng?", 2, "T�y �i�m ti�m n�ng/taydiemtiemnangok", "Kh�ng t�y /OnCancel")
	end
	
	function taydiemtiemnangok()
		base_str = {35,20,25,30,20}
		base_dex = {25,35,25,20,15}
		base_vit = {25,20,25,30,25}
		base_eng = {15,25,25,20,40}
		player_series = GetSeries() + 1
		Utask88 = GetTask(88)
		AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))
		AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
		AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
		AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
	end
	
	
	function OnCancel()
	end;