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
	-- Say("H·y Chê §Õn 9h00 Server Míi ChÝnh Thøc Khai Më NhÐ")
	-- tinsert(tbOpt, {"Hç trî test ", hotrotestgame});
	-- return 1;
	end

	local szTitle = " Hoan nghªn mäi ng­êi ®Õn víi <color=yellow>http://jxdamme.com<color>"
	local Opt = 
	{
		{"§çi Tªn Nh©n VËt Game (500 Xu)", DoiTenNV},
		{"NhËn LÖnh Bµi Hç Trî .", nhanlbhotro},
		{"Thay §æi Mµu PK.", trangthai1},
		-- {"NhËp CODE T©n Thñ", CODEVIP},	---- code pha thien tram
		{"Hñy trang bÞ khãa", DisposeItem},	
		{"NhËn nhÉn cµn kh«n giíi chØ", nhanCKGC},
		-- {"NhËp giftcode chia sÏ 5 b×nh tiªn th¶o lé.", nhapgifcodethem},
		-- {"NhËn ®Òn bï 8 TTL ®Æc biÖt sù cè 26-12", g7denbu8TTL},	
		-- {"NhËn §å Test", tbhoangkimbk},
		{"NhËn M¶nh Tµng B¶o §å", layevent},
		{"CÊp 120.", NhanDiemKinhNghiem},
		-- {"Hç Trî T©n Thñ Test  ", Point},
-- -		{"NhËn §å Hç Trî T©n Thñ", NhanHoTroTanThu},
		{"NhËn Hç Trî T©n Thñ (ChØ NhËn 1 LÇn)", lenhbaitanthu},
		{"LËp Bang Héi", DMcreattongtest},
		{"NhËn Trang BÞ Xanh",trangbixanh},
		{"NhËn §¸ Ðp Trang BÞ TÝm", nhandaep},
		{"NhËn Set HKMP ", sethkmp},
		{"NhËn Trang BÞ HKMP", doimanhrahkmp},
		{"NhËn Hç Trî T©n Thñ", NhanHoTroThienKiem},
		{"NhËn VËt PhÈm Hæ Trî", NhanDoHoTroTanThu},
		-- {"NhËn Tµi L·nh §¹o + Danh Väng + Phóc Duyªn",lanhdaophucduyen},
		{"NhËn C¸c Lo¹i Ngùa", nhancacloaingua},
		{"NhËn TiÒn §ång Free", LayTienDOngtest},
		{"NhËn Set HKMP ", sethkmp},
		{"Thay §æi Giíi TÝnh", chuyen_gt},
		{"TÈy Tñy Nh©n VËt.",TayTuyNhanh},
		{"Céng ®iÓm nhanh ", tangdiemnhanh},
		-- {"NhËn Nguyªn LiÖu", tbtim1},
		{"NhËn Ngùa Vip & Phi Phong (Open SÏ §ãng TÝnh N¨ng Nµy)", NhanNguaVip},
		{"NhËn Phi Phong", NhanPhiPhong},
		{"NhËn Sieu Quang Free", NhanPhienVu},

		{"NhËn Set HKMP ", sethkmp},
		{"NhËn Tói Tèng Kim", nhantuitongkim},
		{"XuÊt s­ cÊp 60 + 5 v¹n l­îng ", xuatsu1},	
		-- {"NhËn Phong V©n lÖnh bµi <free>", gmnhanphongvanlenhbai},	
		{"Ngò Hoa LÔ Bao T©n Thñ", tuimautanthu},
		-- {"NhËp CODE T©n Thñ mÆc ®Þnh <cò>.", nhapgifcodetanthumoi},
		-- {"NhËn th­ëng ®¹t mèc cÊp 30,40,50,60,90 ... ", gmnhanthuongdatmoc},
		-- {"§iÒu kiÖn thµnh lËp Bang Héi.", gmlapbanghoi},
		{"Mµu PK", doimau},	
		{"NhËn ®iÓm KiÕn ThiÕt (Dµnh Cho Bang Chñ).", kienthiet},
		{"KÕt thóc ®èi tho¹i. "},
	}
	
	-- local szAccount = GetAccount()
	-- for i=1, getn(%tbGMAccount) do
	-- 	if szAccount == %tbGMAccount[i] then
	-- 	tinsert(Opt, 1, {"Chøc N¨ng Qu¶n Lý GM", MoChucNangGM}) 
	-- 	--	tinsert(Opt, 1, {"Do Test", testcodeadmin}) 
	-- 	--	tinsert(Opt, 1, {"LayTienDongtesst", LayTienDOngtest}) 
	-- 		break
	-- 	end
	-- end
	--	local _, nTongID = GetTongName()
--		local figure = TONGM_GetFigure(nTongID, GetName())
	--if (figure == TONG_MASTER)then
--	if GetName()==("ÙTiªuÙPhong") or GetName()==("oÙÙB¶oÙNgäcÙÙoÙÙ") or GetName()==("CuuTuoc")  or GetName()==("MTÙCÙBaÙidol") or GetName()==("§¹iÙB¸ÙV­¬ng") then
	--if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
	
--	end
	
	-- local szTongName, nTongID = GetTongName();
	-- local figure = TONGM_GetFigure(nTongID, GetName())
	-- if (figure == TONG_MASTER) then
	-- --tinsert(Opt, 1, {"NhËn ®iÓm KiÕn ThiÕt (Dµnh Cho Bang Chñ).", kienthiet}) 
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
"NhËn §iÒu KiÖn T¹o Bang Héi./#dmcreatetong()",
"T¹o Bang Héi./#dmcreateit()",
"Tho¸t./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
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
			
Msg2Player("<color=yellow>Ng­¬i ®· héi ®ñ tÊt c¶ ®iªu kiÖn ®Ó t¹o Bang Héi!<color>")
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Kiªm hiÖp ch­ëng m«n nh©n:Khai s¸ng bang héi, më réng b¸ nghiÖp." ,2,"B¾t ®Çu dùng bang/Direct_CreateTong","§îi ta mét chót/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng­êi ch¬i: Kiªm hiÖp ch­ëng m«n nh©n, xin hái ta ph¶i lµm nh­ thÕ nµo míi ca thÓ khai t«ng lËp ph¸i trë thµnh Bang chñ ®©y?", "Kiªm hiÖp ch­ëng m«n nh©n: §Çu tiªn ng­¬i ph¶i cã ®ñ n¨ng lùc l·nh ®¹o, cã 16 ng­êi cïng chÝ h­íng cïng ng­¬i lËp bang, tr¶i qua 3 ngµy Kh¶o NghiÖm Kú ", "Ch­ëng m«n nh©n:  NÕu trong 3 ngµy cã ng­êi rêi bang th× néi trong 3 ngµy ®ã ng­¬i ph¶i t×m ng­êi kh¸c thay thÕ.", "Ch­ëng m«n nh©n:  Ng­¬i ph¶i cã ®ñ tµi l·nh ®¹o vµ tÝn vËt ®ã lµ Nh¹c V­¬ng KiÕm", "Ng­êi ch¬i: Nh¹c V­¬ng Kiªm ? Ng­êi nãi lµ thanh kiªm nµy µ ? ", "Kiªm hiÖp ch­ëng m«n nh©n : Th× ra lµ ng­¬i ®· cã nã... Kh«ng tÖ, qu¶ nhiªn tuæi trÎ tµi cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Kiªm hiÖp ch­ëng m«n nh©n: Nªu nh­ muèn thµnh lËp bang héi, ng­¬i cã thÓ v× nã bá ra 1 l­îng lín thêi gian, søc lùc cïng t©m huyÕt, kh«ng thÓ n÷a ®­êng hñy bá." )
		else
			Talk(6,"", "Kiªm hiÖp ch­ëng m«n nh©n:  Ng­¬i muèn hái ®iÒu kiÖn lËp bang µ? §Ó ta nãi cho ng­¬i râ.", "Kiªm hiÖp ch­ëng m«n nh©n: ®Çu tiªn ph¶i xuÊt x­,  tiªp theo ng­¬i kh«ng thÓ ë bÊt kú bang héi nµo kh¸c, ng­¬i nhÊt ®inh ph¶i cã danh väng giang hå, cuèi cïng lµ tµi l·nh ®¹o ph¶i h¬n 30 cÊp.", "Kiªm hiÖp ch­ëng m«n nh©n: Sau ®ã ®i chiÕn tr­êng t×m mét thanh Nh¹c V­¬ng Kiªm lµm bang chñ tÝn vËt lµ ®­îc råi.")
		end
	end
end

function create_pay()
	Say("Kiªm hiÖp ch­ëng m«n nh©n: Ng­¬i cÇn lÖ phi lµ 100 v¹n l­îng b¹c." ,2,"Kh«ng thµnh vÊn ®ª, ta cã ®em 100v l­îng ®©y! /create_pay_yes","Ta kh«ng ®em ®ñ tiªn råi. /create_pay_no")
end
function create_pay_yes()
	if (GetCash() >= 1000000) then
		Pay(1000000)		
		DelItem(195)		
		SetTask(99,1)				
		Direct_CreateTong()		
	else
		Talk(1,"", "Kiªm hiÖp ch­ëng m«n nh©n: ViÖc duy tr× bang héi rÊt tèn kÐm, ng­êi ph¶i cè g¾ng cïng mäi ng­êi tÝch gãp ®Ó Bang Héi ®­îc giµu m¹nh. ")	end
end

function Direct_CreateTong()
	CreateTong(1)				
end







function nhandaep()
	if CalcFreeItemCellCount()<20 then
		Say("Hµnh trang cÇn cã 20 « trèng")
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
		--{szName = "Phóc Duyªn", tbProp={6,1,124,1,0,0,0}, nCount=100},
		--{szName = "Phóc Duyªn", tbProp={4,238,1,1}, nCount=3},
		--{szName = "Phóc Duyªn", tbProp={4,239,1,1}, nCount=3},
		--{szName = "Phóc Duyªn", tbProp={4,240,1,1}, nCount=3},
		--{szName = "Phóc Duyªn", tbProp={6,1,147,10,0,0,0}, nCount=12},
	}
tbAwardTemplet:Give(tbAwardTanThu, 1, {"NhanHoTroTanThu", "NhanHoTroTanThu"})

end
function lenhbaitanthu()

if GetTask(5365)>0 then
Say("ChØ nhËn ®­îc 1 lÇn duy nhÊt.")
return
end
	if CalcFreeItemCellCount()<50 then
		Say("Hµnh trang kh«ng ®ñ 50 « trèng.")
		return
	end
	SetTask(5365,1)
	local nAddLevel =80 - GetLevel()
		ST_LevelUp(nAddLevel)
		local tbAwardTanThu = 
	{	
	--	{szName = "ThÇn Hµnh Phï", tbProp={6,1,1266,1,0,0,0}, nCount=1,nBindState = -2,nExpiredTime=60*24*2},
	--	{szName = "Håi Thµnh Phï ", tbProp={6,1,438,0,0,0,0}, nCount=1,nBindState=-2,nExpiredTime=60*24*2},
		--{szName = "LÖnh Bµi T©n Thñ", tbProp={6,1,4261,0,0,0,0}, nCount=1},
	--	{szName = "M· Bµi ChiÕu D¹ Ngäc S­ tö", tbProp={6,1,2332,0,0,0,0}, nCount=1},
	--	{szName = "BÝ KÝp 120", tbProp={6,1,1125,0,0,0,0}, nCount=1},
	--	{szName = "Tiªn Th¶o Lé", tbProp={6,1,71,1,0,0,0}, nCount=20,nBindState=-2},
	--	{szName = "Tui mau tan thu", tbProp = {6,1,4461,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName="Tói Tö MÉu",tbProp={6,1,1427,1,0,0},nCount=1,nBindState = -2},
		--{szName = "H¹t Th«ng LuyÖn Skill ", tbProp = {6,1,1008,1,0,0}, nCount = 1, nBindState = -2},
		---{szName = "§¹i Thµnh BÝ KÝp 90", tbProp = {6,1,2424,1,0,0}, nCount = 1, nBindState = -2},
		---{szName = "§¹i Thµnh BÝ KÝp 90", tbProp = {6,1,2424,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName = "§¹i Thµnh BÝ KÝp 90", tbProp = {6,1,2424,1,0,0}, nCount = 4, nBindState = -2},
	--	{szName = "S¸ch kü n¨ng cÊp 90", tbProp = {6,1,2426,1,0,0}, nCount = 4},
		--{szName = "S¸ch kü n¨ng cÊp 90", tbProp = {6,1,2426,1,0,0}, nCount = 1, nBindState = -2},
		--{szName = "S¸ch kü n¨ng cÊp 90", tbProp = {6,1,2426,1,0,0}, nCount = 1, nBindState = -2},
		--{szName = "S¸ch kü n¨ng cÊp 90", tbProp = {6,1,2426,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName = "§¹i Thµnh BÝ KÝp 120", tbProp = {6,1,2425,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName = "BÝ quyÕt kü n¨ng cÊp 120", tbProp = {6,1,1125,1,0,0}, nCount = 1, nBindState = -2},
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
"Méng Long PhËt Ph¸p HuyÒn Béi./#doimanhhkmpthieulam_ok(4)",
"Méng Long HuyÒn Ti Ph¸t ®¸i./#doimanhhkmpthieulam_ok(3)",
"Méng Long §¹t Ma T¨ng hµi./#doimanhhkmpthieulam_ok(5)",
"Phôc Ma HuyÒn Hoµng Cµ Sa./#doimanhhkmpthieulam_ok(7)",
"Phôc Ma ¤ Kim NhuyÔn §iÒu./#doimanhhkmpthieulam_ok(8)",
"Phôc Ma PhËt T©m NhuyÔn KhÊu./#doimanhhkmpthieulam_ok(9)",
"Phôc Ma Phæ §é T¨ng hµi./#doimanhhkmpthieulam_ok(10)",
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
	"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p./#doimanhhkmpthieulam_ok(17)",
"H¸m Thiªn Uy Vò Thóc yªu ®¸i./#doimanhhkmpthieulam_ok(18)",
"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn./#doimanhhkmpthieulam_ok(19)",
"H¸m Thiªn Thõa Long ChiÕn Ngoa./#doimanhhkmpthieulam_ok(20)",
"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i./#doimanhhkmpthieulam_ok(22)",
"KÕ NghiÖp B¹ch Hæ V« Song khÊu./#doimanhhkmpthieulam_ok(23)",
"KÕ NghiÖp HáaV©n Kú L©n Thñ ./#doimanhhkmpthieulam_ok(24)",
"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa./#doimanhhkmpthieulam_ok(25)",
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
	"V« Gian Thanh Phong Truy Y./#doimanhhkmpthieulam_ok(32)",
"V« Gian PhÊt V©n Ti ®¸i./#doimanhhkmpthieulam_ok(33)",
"V« Gian CÇm VËn Hé UyÓn./#doimanhhkmpthieulam_ok(34)",
"V« Gian B¹ch Ngäc Bµn ChØ ./#doimanhhkmpthieulam_ok(35)",
"V« Ma Tö Kh©m Cµ Sa./#doimanhhkmpthieulam_ok(37)",
"V« Ma B¨ng Tinh ChØ Hoµn./#doimanhhkmpthieulam_ok(38)",
"V« Ma Ma Ni qu¸n./#doimanhhkmpthieulam_ok(36)",
"V« Ma Hång Truy NhuyÔn Th¸p hµi./#doimanhhkmpthieulam_ok(40)",
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
	"Tª Hoµng TuÖ T©m Khinh Sa Y./#doimanhhkmpthieulam_ok(47)",
"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i./#doimanhhkmpthieulam_ok(48)",
"Tª Hoµng B¨ng Tung CÈm uyÓn./#doimanhhkmpthieulam_ok(49)",
"Tª Hoµng Thóy Ngäc ChØ Hoµn./#doimanhhkmpthieulam_ok(50)",
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
	"U Lung XÝch YÕt MËt trang./#doimanhhkmpthieulam_ok(57)",
"U Lung Thanh Ng« TriÒn yªu./#doimanhhkmpthieulam_ok(58)",
"U Lung Ng©n ThÒm Hé UyÓn./#doimanhhkmpthieulam_ok(59)",
"U Lung MÆc Thï NhuyÔn Lý./#doimanhhkmpthieulam_ok(60)",
"Minh ¶o U §éc ¸m Y./#doimanhhkmpthieulam_ok(62)",
"Minh ¶o §éc YÕt ChØ Hoµn./#doimanhhkmpthieulam_ok(63)",
"Minh ¶o Hñ Cèt Hé uyÓn./#doimanhhkmpthieulam_ok(64)",
"Minh ¶o Song Hoµn Xµ Hµi./#doimanhhkmpthieulam_ok(65)",
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
	"B¨ng Hµn HuyÒn Y Thóc Gi¸p./#doimanhhkmpthieulam_ok(72)",
"B¨ng Hµn T©m TiÔn Yªu KhÊu./#doimanhhkmpthieulam_ok(73)",
"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi./#doimanhhkmpthieulam_ok(74)",
"B¨ng Hµn NguyÖt ¶nh Ngoa./#doimanhhkmpthieulam_ok(75)",
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
"§ång Cõu KiÕn Long Ban ChØ ./#doimanhhkmpthieulam_ok(95)",
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
	"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p./#doimanhhkmpthieulam_ok(102)",
"Ma S¸t XÝch Ký Táa Yªu KhÊu./#doimanhhkmpthieulam_ok(103)",
"Ma S¸t Cö Háa Liªu Thiªn uyÓn./#doimanhhkmpthieulam_ok(104)",
"Ma S¸t V©n Long Thæ Ch©u giíi./#doimanhhkmpthieulam_ok(105)",
"Ma Hoµng Kim Gi¸p Kh«i./#doimanhhkmpthieulam_ok(106)",
"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn./#doimanhhkmpthieulam_ok(107)",
"Ma Hoµng Khª Cèc Thóc yªu ®¸i./#doimanhhkmpthieulam_ok(108)",
"Ma Hoµng HuyÕt Y Thó Tr¹c./#doimanhhkmpthieulam_ok(109)",
"Ma Hoµng §¨ng §¹p Ngoa./#doimanhhkmpthieulam_ok(110)",
"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn./#doimanhhkmpthieulam_ok(111)",
"Ma ThÞ LÖ Ma PhÖ T©m Liªn./#doimanhhkmpthieulam_ok(112)",
"Ma ThÞ NghiÖp Háa U Minh Giíi./#doimanhhkmpthieulam_ok(113)",
"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi./#doimanhhkmpthieulam_ok(114)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpvodang()
	local tbSay = {
	"L¨ng Nh¹c V« Ng· ®¹o bµo./#doimanhhkmpthieulam_ok(117)",
"L¨ng Nh¹c Né L«i Giíi./#doimanhhkmpthieulam_ok(118)",
"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi./#doimanhhkmpthieulam_ok(119)",
"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi./#doimanhhkmpthieulam_ok(120)",
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
	"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo./#doimanhhkmpthieulam_ok(127)",
"S­¬ng Tinh Thanh Phong Lò ®¸i./#doimanhhkmpthieulam_ok(128)",
"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ./#doimanhhkmpthieulam_ok(129)",
"S­¬ng Tinh Phong B¹o chØ hoµn./#doimanhhkmpthieulam_ok(130)",
"L«i Khung Thiªn §Þa Hé phï ./#doimanhhkmpthieulam_ok(132)",
"L«i Khung Phong L«i Thanh CÈm ®¸i./#doimanhhkmpthieulam_ok(133)",
"L«i Khung Linh Ngäc UÈn L«i./#doimanhhkmpthieulam_ok(134)",
"L«i Khung Cöu Thiªn DÉn L«i giíi./#doimanhhkmpthieulam_ok(135)",
"Vô ¶o Ki B¸n phï chó./#doimanhhkmpthieulam_ok(137)",
"Vô ¶o Thóc T©m chØ hoµn./#doimanhhkmpthieulam_ok(138)",
"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi./#doimanhhkmpthieulam_ok(139)",
"Vô ¶o Tung Phong TuyÕt ¶nh ngoa./#doimanhhkmpthieulam_ok(140)",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
end
function doimanhhkmpthieulam_ok(idchon)

		tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idchon},nQuality=1,nCount=10},}, "test", 1);
		
end
function LayTienDOngtest()
	if (CalcEquiproomItemCount(4,417,1,-1)>=50000) then
		Talk(1, "", "TiÒn ®ång trong tói ng­¬i dïng ch­a hÕt th× lÊy lµm g× cho nhiÒu.")
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
		Msg2Player("NhËn ®­îc 5000 tiÒn ®ång.");
	end
end;
function nhancacloaingua()
	local tbOpt =
	{
--	{"NhËn Ngùa Phi V©n", phivan},
                                                                                    {"NhËn Ngùa TuyÖt ¶nh", tuyetanh},
                                                                                    {"NhËn Ngùa ChiÕu D¹", chieudatanthu},
	  {"NhËn Ngùa XÝch Thè", xichthotanthu},
                                                                                    {"NhËn Ngùa ¤ V©n §¹p TuyÕt", ovan},
	  {"Tho¸t"},
	}
	CreateNewSayEx("<npc>§¹i ca ®¹i tû cÇn g× ¹ ?", tbOpt)
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
--tbAwardTemplet:GiveAwardByList({{szName = "M·nh An Bang",tbProp={0,i},nCount=1,nQuality=1},}, "test", 1);
--end
--local Index = AddGoldItem(0,190) SyncItem(Index) 
--tbAwardTemplet:GiveAwardByList({{szName = "Lam Thuû Tinh",tbProp={0,10,6,10,1,1,0},nCount=3},}, "test", 1);
--	Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· nhËn ®­îc <color=red>NhÉn Kim Quang 5 Ngµy<color> tõ boss HKMP")
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
{szName="V« Danh", tbProp={0,141},nCount = 1,nQuality=1,nBindState = -2},
		{szName="V« Danh", tbProp={0,142},nCount = 1,nQuality=1,nBindState = -2},
--		{szName="Tói Tö MÉu", tbProp={6,1,1427,1,1},nCount = 1,nBindState = -2},
	--	{szName="Tói TÝch Luü Tèng Kim", tbProp={6,1,4361,1,1},nCount = 5,nBindState = -2},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");

			--Earn(50000)
			--for i = 1,9 do local Index = AddGoldItem(0,176+i) SetItemBindState(Index, -2) end --Kim Phong
		else
			Talk(1,"","<color=green> H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng...!")
		end
end
function NhanDoHoTroTanThu()
local tbSay = {

"NhËn Trang BÞ §å Xanh./trangbixanh",
"NhËn C¸c Lo¹i Ngùa./nhancacloaingua",
"NhËn 1 Vò KhÝ HKMP Lùa Chän./hkmpvip1",
"NhËn 1 Set Kim Quang Lùa Chän./SetKimQuang",
"NhËn Bé An Bang Liªn §Êu./NhanAnBangTieu",
"NhËn Set Nhu T×nh.(ThiÕu ¸o)/Nhannhutinhtanthu",
"NhËn Bé §Þnh Quèc./Nhandinhquoctanthu",
"NhËn Set HiÖp Cèt. (ThiÕu Ngäc Béi)/Nhanhiepcottanthu",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)

end

function SetKimQuang()
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x4 « trèng");
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
Msg2Player("NhËn ®­îc bé trang bÞ Kim Quang VIP.")
end

function NhanAnBangTieu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
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
Msg2Player("NhËn ®­îc bé trang søc An Bang Liªn §Êu.")
end

function Nhannhutinhtanthu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
		return 1;
	end
	local Index = AddGoldItem(0,191) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,192) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,193) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
Msg2Player("NhËn ®­îc bé trang bÞ Nhu T×nh.")
end

function Nhandinhquoctanthu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
		return 1;
	end
	local Index = AddGoldItem(0,403) SyncItem(Index) -- DQ Tieu
	local Index = AddGoldItem(0,404) SyncItem(Index)-- an bang
	local Index = AddGoldItem(0,405) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,406) SyncItem(Index) -- an bang
	local Index = AddGoldItem(0,407) SyncItem(Index) -- an bang
Msg2Player("NhËn ®­îc bé Trang BÞ §Þnh Quèc!")
end

function Nhanhiepcottanthu()
if (CountFreeRoomByWH(3,3,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x3 « trèng");
		return 1;
	end
	local Index = AddGoldItem(0,186) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,187) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
	local Index = AddGoldItem(0,188) SyncItem(Index) SetItemBindState(Index, -2)-- an bang
Msg2Player("NhËn ®­îc Trang BÞ HiÖp Cèt!")
end

-- NhËn nhÉn CKGC +2 kÜ n¨ng
function nhanCKGC()
	local Index = AddGoldItem(0,530) SyncItem(Index) SetItemBindState(Index, 0)
	Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=yellow>NhÉn Cµn Kh«n Giíi ChØ <color> <color=pink>ADMIN <color>")
end

function NhanNguaVip()
local tbSay = {
--"Vßng S¸ng Vip/",
"Ta Muèn NhËn Phi Phong 2/#Moc2000_ngua(3468)",
"Ta Muèn NhËn L¹c §µ M«ng Cæ/#Moc2000_ngua(5213)",
"Ta Muèn NhËn H·n HuyÕt Long C©u/#Moc2000_ngua(5214)",
"Ta Muèn NhËn B¹ch Hæ TruyÒn ThuyÕt/#Moc2000_ngua(5215)",
"Ta Muèn NhËn Kim Tinh Hæ V­¬ng/#Moc2000_ngua(5216)",
"Ta Muèn NhËn Truy §iÖn/#Moc2000_ngua(5217)",
"Ta Muèn NhËn L­u Tinh /#Moc2000_ngua(5218)",
"Ta Muèn NhËn D­¬ng Sa /#Moc2000_ngua(5093)",
"Ta Muèn NhËn Ngù Phong /#Moc2000_ngua(5094)",
--"Ta Muèn NhËn 400® Liªn §Êu/#Moc2000_diemvinhdu()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n §i §­êng Nµo ?",getn(tbSay),tbSay)

end

function Moc2000_ngua(idgold)
	--if (GetTask(HOAPHUONGTRANG) >= 300) and (GetTask(NHANTHUONGMOC) == 0) then
		local tbAward = {
			{szName="S­ Tö Hoµng Kim",tbProp={0,idgold},nCount=1,nQuality=1,nExpiredTime=30*24*60},		
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 300") SetTask(NHANTHUONGMOC,1)
		--Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· NhËn Thµnh C«ng Mèc Event 300")	

	--else
	--	Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
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
tbAwardTemplet:GiveAwardByList(award1111, "PhÇn Th­ëng");

end

function nhantuitongkim()
local award1111  ={
{

		{szName="Thien Thach",tbProp={6,1,4361,1,0,0},nCount=500},


	
	},
	
}
tbAwardTemplet:GiveAwardByList(award1111, "PhÇn Th­ëng");

end
function NhanPhienVu()
local Index = AddItem(0,10,13,10,0,0,0) SetItemBindState(Index, -2)-- Phi Van
end
-------------------------------------------------code cua quy ----------------------------------
function NhanDiemKinhNghiem()
	if GetLevel()<200 then
			local nAddLevel =120 - GetLevel()

		ST_LevelUp(nAddLevel)

else Say("Ng­¬i §· §¹t CÊp 120 Råi")
end
end
-----------code moi

function xuatsu1()
if check_faction() == 1 then
		Talk(1, "", "§¹i hiÖp ch­a ®· gia nhËp m«n ph¸i.")
		return 1
end

if(GetLevel()<61) then
		Say("ChØ dµnh cho nh÷ng nh©n sü ®¼ng cÊp > 60")
		return 1
end

	if  GetCamp() ~= 4 then
			
				local sltien = GetCash()
				local sltienphaitra = 50000
				if(sltien < sltienphaitra) then
					Say("§¹i hiÖp kh«ng mang ®ñ: "..sltienphaitra.." l­îng")
					return
				end
				SetCamp(4)
				SetCurCamp(4)
								Pay(sltienphaitra)
else
Say("Ng­¬i lµ s¸t thñ kh«ng thÓ thùc hiÖn mÖnh lÖnh!")
end
end
function NhanDoLongDao()
	if GetLevel()>=114 or GetLevel()<60 then
		Say("§¹i hiÖp ®· trªn cÊp 114 hoÆc d­íi cÊp 60, kh«ng thÓ mua gãi nµy.",0);
		return 1
	end
	if CalcEquiproomItemCount(4,417,1,1)>=299 then
		local nAddLevel =114 - GetLevel()
		ST_LevelUp(nAddLevel)
		tbAwardTemplet:GiveAwardByList({{szName = "Lam Thuû Tinh",tbProp={4,238,1,1},nCount=1,nBindState=-2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Tö Thuû Tinh",tbProp={4,239,1,1},nCount=1,nBindState=-2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Lôc Thuû Tinh",tbProp={4,240,1,1},nCount=1,nBindState=-2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1},nCount=6,nBindState=-2},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "ChiÕu D¹ Ngäc S­ Tö",tbProp={0,10,5,5,0,0,0},nCount=1,nBindState=-2,nExpiredTime=7*24*60},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng HuyÒn Tho¹i",tbProp={6,1,4443,1,1},nCount=5,nBindState=-2},}, "test", 1);
		Earn(10000000)
		ConsumeEquiproomItem(299,4,417,1,1)
	else
		Say("Hµnh trang kh«ng ®ñ 299 Xu.")
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
Msg2Player("ChØ Cã <color=pink>Ban Qu¶n TrÞ <color>Míi Cã QuyÒn Sö Dông Chøc N¨ng Nµy")
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MoChucNangGM()
	local tbOpt = {
		{"NhËn LÖnh Bµi Admin", LBAdmin},
		{"Kªt Thóc §èi Tho¹i."},
	}
	CreateNewSayEx("<npc>L·o Phu Cã Mét Sè Man Cùc PhÈm, Ng­êi CÇn Mãn Nµo", tbOpt)
end
-----------------------------------------------------------------------------------------------------------------------------------
function LBAdmin()
local index = AddItem(6,1,4906,0,0,0,0) SyncItem(index) SetItemBindState(index,-2) -- -2:khoa 0: k bi khoa 
local index = AddItem(6,1,4890,0,0,0,0) SyncItem(index) SetItemBindState(index,-2)
Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=yellow>LÖnh Bµi <color> <color=pink>ADMIN <color>")	
end


function sethkmp()
	local tab_Content = {
		"Rêi khái/no",
		"ThiÕu L©m quyÒn/#sethkmp1(1)",
		"ThiÕu L©m c«n/#sethkmp1(2)",
		"ThiÕu L©m ®ao/#sethkmp1(3)",
		"Thiªn V­¬ng chïy/#sethkmp1(4)",
		"Thiªn V­¬ng th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng ®ao/#sethkmp1(6)",
		"Nga My kiÕm/#sethkmp1(7)",
		"Nga My ch­ëng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Thóy Yªn ®ao/#sethkmp1(10)",
		"Thóy Yªn song ®ao/#sethkmp1(11)",
		"Ngò §éc ch­ëng/#sethkmp1(12)",
		"Ngò §éc ®ao/#sethkmp1(13)",
		"Ngò §éc bïa/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"Rêi khái/no",
	--	"Hoa S¬n/#sethkmpche1()",
		"§­êng M«n phi ®ao/#sethkmp1(15)",
		"§­êng M«n tô tiÔn/#sethkmp1(16)",
		"§­êng M«n phi tiªu/#sethkmp1(17)",
		"§­êng M«n bÉy/#sethkmp1(18)",
		"C¸i Bang rång/#sethkmpchecaibang()",
		"C¸i Bang bæng/#sethkmp1(20)",
		"Thiªn NhÉn kÝch/#sethkmp1(21)",
		"Thiªn NhÉn bïa/#sethkmp1(22)",
		"Thiªn NhÉn ®ao/#sethkmpche()",
		"Vâ §ang khÝ /#sethkmp1(24)",
		"Vâ §ang kiÕm/#sethkmp1(25)",
		"C«n L«n ®ao/#sethkmp1(26)",
		"C«n L«n kiÕm/#sethkmp1(27)",
		"C«n L«n bïa/#sethkmp1(28)",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
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
	Talk(1, "", "Trao ®æi thµnh c«ng");
	else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>200 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
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
	Say("Mçi nh©n vËt chØ ®­¬c nhËn hç trî t©n thñ 1 lÇn duy nhÊt.")
	return
end
if GetLevel()>=70 then
	Say("T©n Thñ chØ giµnh cho nh©n vËt d­íi cÊp 70")
	return
end
if (CountFreeRoomByWH(5,8,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 5x8 « trèng");
		return 1;
	end
		if CalcFreeItemCellCount() >= 40 then
			--SetTask(NhiemVuTanThu,1)
		--	local Index = AddItem(6,1,4812,1,0,0) SetItemBindState(Index, -2)--Mau Tan Thu
			local Index = AddItem(6,1,1266,1,0,0) ITEM_SetExpiredTime(Index,60*24*30) SyncItem(Index)  SetItemBindState(Index, -2)--Thanh Hanh Phu
			local Index = AddItem(6,1,438,1,0,0) SyncItem(Index) SetItemBindState(Index, -2)--Tho Dia Phu
			local Index = AddItem(6,1,4460,1,0,0) SyncItem(Index) SetItemBindState(Index, -2)--B¶o R­¬ng Vò KhÝ T©n Thñ
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
			Talk(1,"","<color=green> H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng...!")
		end
end

function DisposeItem() -- Huy item
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn träng trong viÖc hñy vËt phÈm, vËt phÈm ®· hñy kh«ng thÓ lÊy l¹i ®­îc!", "DisposeConfirm", "onCancel", 1);
	end
	
	function DisposeConfirm(nCount)
		for i=1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			local strItem = GetItemName(nItemIndex)
			RemoveItemByIndex(nItemIndex)
			WriteLog(date("%Y%m%d %H%M%S").."\t".." GM Hñy Item "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
		end--for
		Msg2Player("Thao t¸c hñy vËt phÈm thµnh c«ng")
		Talk(1, "", "Thao t¸c thµnh c«ng, kiÓm tra l¹i!");	
	end
	function TayTuyNhanh()
		local tbSay = {"Ng­¬i muèn tÈy tñy lo¹i g× ®©y?"}
			tinsert(tbSay, "T¨ng ®iÓm nhanh/tangdiemnhanh")
			tinsert(tbSay, "TÈy ®iÓm kü n¨ng/taydiemkynang")
			tinsert(tbSay, "TÈy ®iÓm tiÒm n¨ng/taydiemtiemnang")
			tinsert(tbSay, "KÕt thóc ®èi tho¹i./OnCancel")
		CreateTaskSay(tbSay)
	end
	
	function taydiemkynang()
		Say("Ng­¬i ®ång ý TÈy ®iÓm kü n¨ng kh«ng?", 2, "TÈy ®iÓm kü n¨ng /taydiemkynangok","Kh«ng tÈy /OnCancel")
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
		Msg2Player("TÈy Tñy thµnh c«ng! ng­¬i ®· cã thÓ ph©n phèi "..rollback_point.." ®iÓm. ")
		Talk(1,"KickOutSelf","TÈy Tñy thµnh c«ng! ng­¬i ®· cã thÓ ph©n phèi "..rollback_point.." ®iÓm.")
	end
	
	function taydiemtiemnang()
		Say("Ng­¬i ®ång ý tÈy ®iÓm tiÒm n¨ng kh«ng?", 2, "TÈy ®iÓm tiÒm n¨ng/taydiemtiemnangok", "Kh«ng tÈy /OnCancel")
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