-------------------------------- THU VIEN TONG -------------------------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\item\\ib\\shenxingfu.lua");
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\g7vn\\g7quanly.lua")
Include("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua")
Include("\\script\\global\\quanlygame\\sukien\\sevenday\\trongbanghoi\\trongbanghoi.lua")
Include("\\script\\missions\\challengeoftime\\npc_death.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\tieungao\\quanlygame.lua")
Include("\\script\\lib\\gb_taskfuncs.lua");	
Include("\\script\\event\\storm\\function.lua")	--Storm

function main()

dofile("script/global/quanlygame/hotrotanthu/item/lenhbaitanthuvip.lua")
	if (GetAccount() ~= "gmlive05" and GetAccount() ~= "gmlive10"  and GetAccount() ~= "gmlive14" and  GetAccount() ~= "gmlive06" and GetAccount() ~= "gmlive07" and GetAccount() ~= "khainguyen" and GetAccount() ~= "gmlive08"  and GetAccount() ~= "gmlive11" and GetAccount() ~= "suntn96" and GetAccount() ~= "gmlive09" and GetAccount() ~= "gmlive10")  then
			Say("B�n kh�ng ph�i gm",0);
	return 1
end
local bilTbOp = {}	 

local nHour = tonumber(GetLocalDate("%H%M"))
local nWeekDay = tonumber(GetLocalDate("%w"));
--local szTongName, nTongID = GetTongName();
--local figure = TONGM_GetFigure(nTongID, GetName())
--if (figure == TONG_MASTER) and GetCamp() ~= 0 and nTongID ~= 0 then
	--tinsert(bilTbOp, "Nh�n Ki�n Thi�t L� Bao Bang H�i/kienthietlebao")
	--tinsert(bilTbOp, "G�i Ti�n V�n L�n Qu� Bang H�i/guitienbang")
	--end
	if GetAccount() == "gmlive05" or  GetAccount() == "gmlive06" or  GetAccount() == "khainguyen"  or  GetAccount() == "gmlive07"then
	tinsert(bilTbOp, "Reload 8GS/Bil_ReLoadScript_MultiGamerSVWithLinkInput")

	end
	tinsert(bilTbOp, "M� Kh�a Nhanh NV/GMMENUVIP")
	tinsert(bilTbOp, "Ch�c N�ng Live CT/MapCTC")

	--tinsert(bilTbOp, "xem skill/xemskill")
--	tinsert(bilTbOp, "xem hwid/checkhwid")
	tinsert(bilTbOp, "Ch�c N�ng GM Live/GMLIVeStream")
    tinsert(bilTbOp, "Di Chuy�n/thpGM")
    tinsert(bilTbOp, "L�y Th�n Th�nh Th� ��a/laythanthanh")
	tinsert(bilTbOp, "K�t th�c ��i tho�i/bil.OnCancel")
	Say("<color=green>Trang Ch�: <color=pink>", getn(bilTbOp), bilTbOp)
	return 1
end

function MapCTC()
	Say("Th�n h�nh ph� c� th� ��a ��i hi�p <color=yellow>"..GetName().."<color> ��n b�t c� th�nh th� hay th�n tr�n n�o, vui l�ng ch�n n�i ng�i mu�n ��n.", 8, 
		"Chi�n tr��ng bi�n kinh/MapBK",
		"Chi�n tr��ng l�m an/MapLA",
		"Chi�n tr��ng ph��ng t��ng/MapPT",
		"Chi�n tr��ng t��ng d��ng/MapTD",
		"Chi�n tr��ng th�nh ��/MapTDo",
		"Chi�n tr��ng d��ng ch�u/MapDC",
		"Chi�n tr��ng ��i l�/MapDL",
		"R�i kh�i/no"
		);
end
function MapBK()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(927,1747,3400);
end
function MapLA()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(930,1744,3398);
end
function MapPT()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(929,1768,3519);
end
function MapTD()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(931,1711,3308);
end
function MapTDo()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
	NewWorld(926,1712,3306);	
end
function MapDC()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(932,1712,3306);
end
function MapDL()
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)	
	NewWorld(928,1713,3307);
end


function GMMENUVIP()
	SetTaskTemp(246, SearchPlayer(GetName()))
	local szTitle = "ADMIN CONTROL"
	local tbOpt = 
	{
		{"Qu�n l� nh�n v�t",HeThongQuanLyNhanVat},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
		end


function HeThongQuanLyNhanVat(rolename)
	if (FALSE(rolename)) then rolename = GetName();end
	if KiemTraNhanVatOnOFF(rolename) then return end
	SetTaskTemp(246, SearchPlayer(rolename));
	local szTitle = "ADMIN CONTROL"
	local tbOpt = 
	{
		{"Nh�p t�n nh�n v�t",NhapTenNhanVat},
	--	{"C�m T�ng Kim "..rolename.."",BandVaUnBand},
				{"Th�m 1 l�n m� kh�a cho "..rolename.."",setmokhoa},
				{"Th�m 5 l�n m� kh�a cho "..rolename.."",setmokhoa5},
				--	{"Buff D� T�u cho "..rolename.."",BuffDaTauNhanVat, {2}},
		--{"Xoa da tau",xoadatau},


		{"K�t th�c ��i tho�i.",ResetTastChatVoiGM},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NhapTenNhanVatOKE(Name)
	local Keywk1 = strfind(Name, "/")
	if FALSE(Keywk1) then
		return HeThongQuanLyNhanVat(Name)
	end
	local Name = strsub(Name, Keywk1 + 1)
	return HeThongQuanLyNhanVat(Name)
end

function NhapTenNhanVat()
	return AskClientForString("NhapTenNhanVatOKE", "", 1, 20, "Nh�p t�n nh�n v�t");
end


function xoadatau()
local nTotalTask = tl_counttasklinknum(1);

--local myTaskInfo = tl_gettaskinfo()
Task_AwardLink = AssignValue_LinkAward(TL_AWARDLINK)
--local nTotalTask = tl_counttasklinknum(1);
--Ladder_NewLadder(10118, GetName(), nTotalTask, 1);
--tl_getlinkaward(Task_AwardLink, -100);
Msg2Player("Xoa o1k  "..tl_getlinkaward(Task_AwardLink, nTotalTask).."");
end

--------------------------------------- BUFF d� t�u CHO NHAN VAT ----------------------------------------------
function themsonvdatau(nvar)
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua");
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua"); 
Include("\\script\\event\\storm\\function.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\global\\seasonnpc.lua");
	for i=1,nvar do  -- i la so lan
	tl_settaskcourse(3)	
	PayPlayerLinkAward();
	Task_TaskProcess()
	end
end

function NhapDaTauOK(n)
	local PlayerIndexGamer = GetTaskTemp(246);
	CallPlayerFunction(GetTaskTemp(246), themsonvdatau, n)
	logplayer("dulieu/loggmkhai.txt",format("[%s]	[ %s]	[%s ]	Buff [%s]	Nhi�m v� D� T�u	cho nh�n v�t [%s] ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),n,callPlayerFunction(PlayerIndexGamer, GetName)))	
	return CallPlayerFunction(GetTaskTemp(246), Say, "B�n nh�n ���c h� tr� c�ng th�m <color=yellow>"..n.."<color> Nhi�m v�, th�t tuy�t v�i!", 0);
end

function NhapDaTau()
	return AskClientForNumber("NhapDaTauOK", 0, 2000, "<#>S� Nhi�m v�")
end

function BuffDaTauNhanVat()
	local PlayerIndex = GetTaskTemp(246);
	if PlayerIndex == 0 then
		return Msg2Player("L�i, Nh�n v�t �ang Offline!");
	else
		Say("B�n c� ch�c v� �i�u n�y? <color=red>Th�m nhi�m v� d� t�u nh�n v�t<color> <color=yellow>"..CallPlayerFunction(PlayerIndex, GetName).."<color>", 2, "Ch�c r�i/NhapDaTau", "Ta nh�m/OnCancel")
	end
end
----------------------------

--------------------------------- KIEM TRA NHAN VAT ONLINE HAY OFFLINE ----------------------------------------------
function KiemTraNhanVatOnOFF(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5985) == 1 then
		Talk(1, "", "Nh�n v�t �ang <color=yellow>Offline Live<color> <enter>kh�ng th� l�y PlayerIndex!")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "L�i ho�c t�n nh�n v�t kh�ng t�n t�i <enter>kh�ng th� l�y PlayerIndex")
		return 1
	else
		return nil
	end
end	

function setmokhoa()
	local PlayerIndex = GetTaskTemp(246);
	CallPlayerFunction(PlayerIndex, SetTask, 5999, 1);
	return CallPlayerFunction(PlayerIndex, Say, "B�n �� ���c GameMaster gi�p ��, t�ng b�n 1 l�n m� ��nh trang b� hay c�m �n ADMIN!", 0);
end

function setmokhoa5()
	local PlayerIndex = GetTaskTemp(246);
	CallPlayerFunction(PlayerIndex, SetTask, 5999, 5);
	return CallPlayerFunction(PlayerIndex, Say, "B�n �� ���c GameMaster gi�p ��, t�ng b�n 5 l�n m� ��nh trang b� hay c�m �n ADMIN!", 0);
end


function laythanthanh()
if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y nh�p",0);
		return
end
		tbAwardTemplet:GiveAwardByList({szName="Th�n th�nh ph�", tbProp={6,1,1266,1,0}, nCount = 1, nBindState = -2,nExpiredTime=10080}, "");
		tbAwardTemplet:GiveAwardByList({szName="Th�n th�nh ph�", tbProp={6,1,438,1,0}, nCount = 1, nBindState = -2,nExpiredTime=10080}, "");
end


function GMLIVeStream()
local tbSay = {}
tinsert(tbSay,"��i m�u Ch�nh Ph�i./mauvang2")
tinsert(tbSay,"��i m�u T� Ph�i./mautim2")
tinsert(tbSay,"��i m�u Trung L�p./mauxanh2")
tinsert(tbSay,"��i m�u S�t Th�./maudo2")
tinsert(tbSay,"��i m�u Luy�n C�ng./mautrang2")
tinsert(tbSay,"��i m�u Admin./mauadmin2")
tinsert(tbSay,"T�n H�nh./TanHinhGM")
tinsert(tbSay,"Hi�n H�nh./HienHinhGM")
tinsert(tbSay,"Bi�n GM./DoiHinhGm")
tinsert(tbSay,"Tho�t/no")
Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n tr�ng th�i m� b�n mu�n !", getn(tbSay), tbSay)
end

function dichuyengm()
	local tbOpt =
	{
                                            {"��n Thi�n T�", GMTONGKIM2},
                                            {"��n T�ng Kim", GMTONGKIM},
                                            {"V� Ba L�ng Huy�n", GMBLH},
                                            {"C�ng Th�nh", GMCONGTHANH},
                                            {"Tr� r�ng L�m An", ronglaman},
                                            {"Tr� r�ng Bi�n Kinh", rongbk},

	{"Tho�t"},
	}
	CreateNewSayEx("<npc>��i ca �i ��u ?", tbOpt)
end

function GMTONGKIM2()
NewWorld(900,1440, 3334)
end

function GMTONGKIM()
NewWorld(380,1440, 3334)
end

function GMBLH()
NewWorld(53,1621, 3190)
end

function GMCONGTHANH()
NewWorld(930,1764, 3372)
end

function ronglaman()
NewWorld(930,1761, 3398)
end

function rongbk()
NewWorld(927,1755, 3397)
end



function DoiHinhGm()
ChangeOwnFeature(0,0,1204);
SetCurCamp(5)
AddSkillState(465,10,0,200*60*1080)
AddSkillState(464,10,0,200*60*1080)
Msg2Player("B�n nh�n h�nh d�ng GM")
end

function mautrang2()
SetCurCamp(0)
SetCamp(0)
end

function mauvang2()
SetCurCamp(1)
SetCamp(1)
end
function mautim2()
SetCurCamp(2)
SetCamp(2) 
end
function mauxanh2()
SetCurCamp(3)
SetCamp(3) 
end
function maudo2()
SetCurCamp(4)
SetCamp(4) 
end

function mauadmin2()
SetCurCamp(5)
SetCamp(5) 
end

function HienHinhGM()
SetCurCamp(6)
SetCamp(6)
AddSkillState(733,60,1,1*18)
end

function TanHinhGM()
AddSkillState(458,60,1,60*60*18)
AddSkillState(459,60,1,60*60*18)
AddSkillState(546,60,1,60*60*18)
AddSkillState(313,60,1,60*60*18)
AddSkillState(314,60,1,60*60*18)
AddSkillState(315,60,1,60*60*18)
AddSkillState(316,60,1,60*60*18)
AddSkillState(539,60,1,60*60*18)
AddSkillState(540,60,1,60*60*18)
AddSkillState(732,60,1,60*60*18)
AddSkillState(733,60,1,60*60*18)

for i=511,533 do
AddSkillState(i,60,1,600*600*18)
end
end


Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")

function thpGM()
	local nW, nX, nY = GetWorldPos()	
	Say("Maps.t�a ��:  <color=red>"..(nW)..","..(nX)..","..(nY).."<color><enter><enter>Hi�n t�i c�: <bclr=green><color=red> "..GetPlayerCount().." <color><bclr> ng��i �ang online.", 8, 
		"Tho�t /no",
		"Th�nh /gopos_step2town",
		"Th�n /#gopos_step2(8)",
		"Ph�i/#gopos_step2(9)",
		"B�n �� c�p 90/#gopos_step2lv90()",
		"Chi�n Tr��ng T�ng Kim /GMTONGKIM",
		"Chi�n tr��ng Th�t Th�nh ��i Chi�n/gopos_sevencityfield",
		"L�nh Th� Chi�n/lanhthochienne")
	return 1	
end;

tab_RevivePos = {
	[1] = {	--"�ɶ�"
		{"Th�nh �� ��ng", 6, 11},{"Th�nh �� t�y", 7, 11},{"Th�nh �� nam", 8, 11},{"Th�nh �� b�c", 9, 11},{"Th�nh �� trung t�m", 5, 11}
	},
	[2] = {	--"����"
		{"T��ng D��ng ��ng", 30, 78},{"T��ng D��ng t�y", 32 , 78},{"T��ng D��ng nam", 31, 78},{"T��ng D��ng b�c", 33, 78},{"T��ng D��ng trung t�m", 29, 78}
	},
	[3] = {	--"����"
		{"Ph��ng T��ng ��ng", 1, 1},{"Ph��ng T��ng t�y", 2, 1},{"Ph��ng T��ng nam", 3, 1},{"Ph��ng T��ng b�c", 4, 1},{"Ph��ng T��ng trung t�m", 0, 1}
	},
	[4] = {	--"����"
		{"��i l� b�c", 64, 162},{"��i l� trung t�m", 63, 162}
	},
	[5] = {	--"�꾩"
		{"Bi�n Kinh ��ng", 24, 37},{"Bi�n Kinh t�y", 25, 37},{"Bi�n Kinh nam", 24, 37},{"Bi�n Kinh b�c", 26, 37},{"Bi�n Kinh trung t�m", 23, 37}
	},
	[6] = {	--"����"
		{"D��ng Ch�u ��ng", 35, 80},{"D��ng Ch�u t�y", 38, 80},{"D��ng Ch�u nam", 37, 80},{"D��ng Ch�u b�c", 36, 80},{"D��ng Ch�u trung t�m", 34, 80}
	},
	[7] = {	--"�ٰ�"
		{"L�m An ��ng", 68, 176},{"L�m An nam", 67, 176},{"L�m An b�c", 69, 176}
	},
	[8] = {	--"��ׯ"
		{"Ba L�ng huy�n", 19, 53},{"Giang T�n Th�n", 10, 20},{"V�nh L�c tr�n", 43, 99},{"Chu Ti�n tr�n", 45, 100},{"��o H��ng th�n", 47, 101},{"Long M�n tr�n", 55, 121},{"Th�ch C� tr�n", 59, 153},{"Long Tuy�n th�n", 65, 174},{"T�y S�n th�n", 1, 175}
	},
	[9] = {	--"����"
		{"Thi�n V��ng Bang", 21, 59},{"Thi�u L�m ph�i", 52, 103},{"���ng M�n", 15, 25},{"Ng� ��c Gi�o", 71, 183},{"Nga My ph�i", 13, 13},{"Th�y Y�n m�n", 61, 154},{"Thi�n Nh�n gi�o", 28, 49},{"C�i Bang", 53, 115},{"V� �ang ph�i", 40, 81},{"C�n L�n ph�i", 58, 131}
	},
};

function gopos_step2town()
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh ��/#gopos_step2(1)",
		"T��ng D��ng/#gopos_step2(2)",
		"Ph��ng T��ng/#gopos_step2(3)",
		"��i L�/#gopos_step2(4)",
		"Bi�n Kinh/#gopos_step2(5)",
		"D��ng Ch�u/#gopos_step2(6)",
		"L�m An/#gopos_step2(7)",
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

function lanhthochienne()



	local tbSay = {}
tinsert(tbSay,"Khu v�c 1A ./#gotosm1A()")
tinsert(tbSay,"Khu v�c 2A ./#gotosm1B()")
tinsert(tbSay,"Khu v�c 3A ./#gotosm1C()")
tinsert(tbSay,"Khu v�c 4A ./#gotosm1D()")
tinsert(tbSay,"K�t th�c ��i tho�i ! /#no()")
tinsert(tbSay,"trang k�/trangkeben1")

Say("L�a ch�n khu v�c tham chi�n", getn(tbSay), tbSay)

	return 1	
end;


function trangkeben1()



	local tbSay = {}
tinsert(tbSay,"Khu v�c 1B ./#gotosm2A()")
tinsert(tbSay,"Khu v�c 2B ./#gotosm2B()") 
tinsert(tbSay,"Khu v�c 3B ./#gotosm2C()")
tinsert(tbSay,"Khu v�c 4B ./#gotosm2D()")
tinsert(tbSay,"K�t th�c ��i tho�i ! /#no()")
tinsert(tbSay,"trang k�/trangkeben2")

Say("L�a ch�n khu v�c tham chi�n", getn(tbSay), tbSay)

	return 1	
end;

function trangkeben2()



	local tbSay = {}
tinsert(tbSay,"Khu v�c 1A ./#gotosm3A()")
tinsert(tbSay,"Khu v�c 2A ./#gotosm3B()")
tinsert(tbSay,"Khu v�c 3A ./#gotosm3C()")
tinsert(tbSay,"Khu v�c 4A ./#gotosm3D()")
tinsert(tbSay,"K�t th�c ��i tho�i ! /#no()")
tinsert(tbSay,"trang k�/trangkeben1")

Say("L�a ch�n khu v�c tham chi�n", getn(tbSay), tbSay)

	return 1	
end;

function gotosm1A()
NewWorld(614, 1543, 3277)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm1B()
NewWorld(614, 1425, 3462)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm1C()
NewWorld(614, 1267, 3246)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm1D()
NewWorld(614, 1423, 3107)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm2A()
NewWorld(615, 1592, 3156)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm2B()
NewWorld(615, 1824, 3248)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm2C()
NewWorld(615, 1792, 3043)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm2D()
NewWorld(615, 1712, 3344)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm3A()
NewWorld(616, 1602, 2955)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm3B()
NewWorld(616, 1628, 3459)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm3C()
NewWorld(616, 1464, 3426)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

function gotosm3D()
NewWorld(616, 1363, 3157)--dong
SetProtectTime(18*3) --���뱣��ʱ��
AddSkillState(963, 1, 0, 18*3)
SetFightState(0)

	--sieunhanbienhinh()
	SetPKFlag(1)
	ForbidChangePK(1);
end

--���з����������ڶ���
function gopos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end;

--���з���������������
function gopos_step3(nIdx, nSubIdx)
	local file = [[\settings\RevivePos.ini]];
	ini_loadfile(file, 0)
	local szData = ini_getdata(file, tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);

	local szArr = split(szData);
	local nPosX = floor(tonumber(szArr[1]) / 32);
	local nPosY = floor(tonumber(szArr[2]) / 32);
	
	if (not nPosX or not nPosY) then
		return
	end;
	NewWorld(tab_RevivePos[nIdx][nSubIdx][3], nPosX, nPosY)
	SetFightState(0);
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i "..tab_RevivePos[nIdx][nSubIdx][1].." n�o");
end;


tab_lv90map = {
		{875,1576,3177	,"H�c Sa ��ng",},
		{322,1589,3164	,"Tr��ng B�ch s�n B�c",},
		{321,967,2313	,"Tr��ng B�ch s�n Nam ",},
		{75,1811,3012	,"Kho� Lang ��ng",},
		{227,1588,3237	,"Sa M�c 3",},
		{225,1474,3275	,"Sa M�c 1",},
		{226,1560,3184	,"Sa M�c 2",},
		{336,1124,3187	,"Phong L�ng ��",},
		{340,1845,3438	,"M�c Cao Qu�t",},
		{144,1691,3020	,"D��c V��ng ��ng t�ng 4",},
		{93,1529,3166	,"Ti�n C�c ��ng",},
		{124,1675,3418	,"C�n Vi�n ��ng",},
		{152,1672,3361	,"Tuy�t B�o ��ng t�ng 8",},
		{917,1816,3392	,"Ph�ch Huy�t C�c",},
		{918,1816,3392	,"�c Nh�n C�c",},
		{919,1608,3168	,"Th�c C�t Nhai",},
		{920,1608,3168	,"H�c M�c Nhai",},
		{921,1560,3104	,"Thi�n Ph� S�n",},
		{922,1560,3104	,"B�n Long S�n",},
		{923,2008,4080	,"��a M�u S�n",},
		{924,2008,4080	,"Uy�n Ph��ng S�n",},
		{949,1602,3199	,"M� Cung Ki�m Gia",},	-- B�o danh v�o Ki�m Gia  tr�n c�p 120
		{950,1592,3195	,"�c Lang C�c",}		-- ch� luy�n skill
	}

function gopos_step2lv90(ns, ne)
	print(ns, ne)
	if (not ns) then
		ns_1 = 1;
		ne_1 = 7;
	else
		ns_1 = ns;
		ne_1 = ne;
	end
	
	if (ne_1 - ns_1 > 6) then
		ne_1 = ns_1 + 6;
	end
	
	local n_count = getn(tab_lv90map);
	
	local tab_Content = {};
	for i = ns_1, ne_1 do
		tinsert(tab_Content, tab_lv90map[i][4].."/#gopos_step3lv90( "..i..")");
	end
	
	if (ns_1 ~= 1) then
		tinsert(tab_Content, "Trang tr��c/#gopos_step2lv90( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang k� /#gopos_step2lv90( "..(ne_1+1)..","..n_count..")");
	end
	
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

function gopos_step3lv90(nIdx)
	NewWorld(tab_lv90map[nIdx][1], tab_lv90map[nIdx][2], tab_lv90map[nIdx][3])
	SetFightState(1);
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i "..tab_lv90map[nIdx][4].." n�o");
end

function gopos_step2battle()
	--if ( GetLevel() < 120 ) then
		--Talk( 1, "", "T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 120 h�y v� luy�n th�m r�i h�y t�nh." );
	--else
		--Say ( "Trong T�ng Kim, b�n l�i th� v� s� ng��i tuy c� chi�m �u th� nh�ng s� nh�n ���c �i�m t�ch l�y �t h�n, c�c h� mu�n ch�n b�o danh b�n n�o?", 3, "V�o �i�m b�o danh phe V�ng (T)/#DoRescriptFunc(1)", "V�o �i�m b�o danh phe T�m (K)/#DoRescriptFunc(2)","�� ta suy ngh� l�i./no" );
	--end;
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "T�ng Kim l� n�i r�t nguy hi�m, ch�a ��t c�p 40 kh�ng th� tham gia chi�n tr��ng." );
	else
		Say ( "Trong T�ng Kim, b�n l�i th� v� s� ng��i tuy c� chi�m �u th� nh�ng s� nh�n ���c �i�m t�ch l�y �t h�n, c�c h� mu�n ch�n b�o danh b�n n�o?", 3, "V�o �i�m b�o danh phe T�ng /ToSong", "V�o �i�m b�o danh phe Kim /ToJin","�� ta suy ngh� l�i./no" );
	end;
end

function gopos_sevencityfield()
	Say("Ng��i mu�n �i chi�n tr��ng n�o c�a Th�t Th�nh ��i Chi�n?", 8,
		"Chi�n tr��ng Th�nh ��/#goto_sevencityfield(1)",
		"Chi�n tr��ng Bi�n Kinh/#goto_sevencityfield(2)",
		"Chi�n tr��ng ��i L�/#goto_sevencityfield(3)",
		"Chi�n tr��ng Ph��ng T��ng/#goto_sevencityfield(4)",
		"Chi�n tr��ng L�m An/#goto_sevencityfield(5)",
		"Chi�n tr��ng T��ng D��ng/#goto_sevencityfield(6)",
		"Chi�n tr��ng D��ng Ch�u/#goto_sevencityfield(7)",
		"�� ta suy ngh� l�i/Cancel")
end

function goto_sevencityfield(nIndex)
	local player = PlayerList:GetPlayer(PlayerIndex)
	--local tbErr = {}
	--if (BattleWorld:CheckMapPermission(player, tbErr) == 0) then
	--	player:Say(tbErr.Msg)
	--	return
	--end
	local nMapId = FIELD_LIST[nIndex]
	BattleWorld:Transfer(player, nMapId)
end
function ToSong()
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
			NewWorld( 324, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
			NewWorld( 325, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end

function ToJin()
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
			NewWorld( 324, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
			NewWorld( 325, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end

Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")

function Direct_CreateTong()
	CreateTong(1)	
end



--=====================================

--================================================-- Reload Script --=================================================--
Include("\\script\\lib\\remoteexc.lua")

function Bil_ReLoadScriptWithLinkInput(bilLinkReload)
	if type(bilLinkReload) == "string" then
		local bilLinkReload = bilLinkReload
		local Keywk1 = strfind(bilLinkReload, "\script")
		bilLinkReload = strsub(bilLinkReload, Keywk1-1, strlen(bilLinkReload))
		local Bil_RLScript = LoadScript(bilLinkReload);
		if (FALSE(Bil_RLScript)) then
			return Msg2Player("Error,False to ReLoading Script!<enter><color=yellow>"..bilLinkReload.."");
		else
			return Msg2Player("<color=green>Script has been reloaded<color><enter><color=blue>"..bilLinkReload.."");
		end
	end
	return AskClientForString("Bil_ReLoadScriptWithLinkInput", "", 1, 500, "<#>Nh�p ���ng d�n")
end

function Bil_ReLoadScript_MultiGamerSVWithLinkInput(bilLinkReload)
	if type(bilLinkReload) == "string" then
		local bilLinkReload = bilLinkReload
		local Keywk1 = strfind(bilLinkReload, "\script")
		bilLinkReload = strsub(bilLinkReload, Keywk1-1, strlen(bilLinkReload))
		RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadScriptMultiGamesv", {bilLinkReload})
		return Msg2Player("�� g�i y�u c�u ��n S3Relay!")
	end
	return AskClientForString("Bil_ReLoadScript_MultiGamerSVWithLinkInput", "", 1, 500, "<#>Nh�p ���ng d�n")
end


function bilReloadTaskReleaseS3Relay(bilData, bilScriptS3Relay)
	if type(bilData) == "string" then
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReleaseTaskS3Relay", {bilData}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadTaskReleaseS3Relay", {})
	elseif type(bilData) == "number" then
		if (bilData == 0) then
			return Msg2Player("\nError,False to Release Task S3Relay!<enter><color=yellow>"..bilScriptS3Relay);
		else
			return Msg2Player("\n<color=green>Task S3Relay has been Release<color><enter><color=blue>"..bilScriptS3Relay)
		end
	end
	AskClientForString("bilReloadTaskReleaseS3Relay", "", 1, 500, "<#>Nh�p Task S3Relay")
end

function bilReloadScriptReloadS3Relay(bilData, bilScriptS3Relay)
	if type(bilData) == "string" then
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadScriptS3Relay", {bilData}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadScriptReloadS3Relay", {})
	elseif type(bilData) == "number" then
		if (bilData == 0) then
			return Msg2Player("\nError,False to ReLoading S3Relay Script!<enter><color=yellow>"..bilScriptS3Relay);
		else
			return Msg2Player("\n<color=green>Script S3Relay has been reloaded<color><enter><color=blue>"..bilScriptS3Relay)
		end
	end
	AskClientForString("bilReloadScriptReloadS3Relay", "", 1, 500, "<#>Nh�p ���ng d�n S3Relay")
end

function bilReloadTaskReloadS3Relay(bilValue, bilTaskName)
	if bilValue == nil then
		return AskClientForString("bilReloadTaskReloadS3Relay", "", 1, 500, "<#>File Task S3Relay")
	elseif type(bilValue) == "string" then
		Msg2Player("Sent data to S3Relay!")
		return RemoteExc("\\script\\bil4i3n\\bil4i3n_funcs3relay.lua", "bilReloadTaskS3Relay", {bilValue}, "\\script\\global\\bil4i3n\\bill4i3n.lua", "bilReloadTaskReloadS3Relay", {})
	elseif type(bilValue) == "number" then
		if bilValue == 0 then
			return Msg2Player("FALSE to load Task S3Relay:<enter>"..bilTaskName)
		else
			Msg2Player("<color=yellow>Load Task S3Relay OK:<color><enter><color=green>"..bilTaskName)
		end
	end
end

Include("\\script\\global\\skills_table.lua")

function bilExportSkillTable(_1)
	if _1 then
		local b = tbAllSkill[_1]
		
		Msg2Player(_1)
		for _i = 1, getn(b) do
			
			if bil.True(b[_i]) then
				Msg2Player("   C�p ".._i.."0 --------------------")
			
				for _i2 = 1, getn(b[_i]) do
					Msg2Player("      |- "..bil.C(1, b[_i][_i2]).."-"..bil.C(2, GetSkillName(b[_i][_i2])))
				end
			end
			
		end
		
		return
	end

	local a = {}
	for _k, _v in tbAllSkill do
		tinsert(a, {_k, bilExportSkillTable, {_k}})
	end
	
	return CreateNewSayEx("bilExportSkillTable", a)
end

function xemskill()
local id = GetTask(5827)
Msg2Player(GetSkillExp(id))
end

function checkhwid()
Msg2Player(getHWID())
end

function getHWID()
	local hwid = ""
	for i= 1,8 do
		hwid = hwid .. split(GetInfo(),"-")[i]
	end
	return hwid

end