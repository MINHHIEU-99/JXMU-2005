Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")

-----------------------------THUONG TOP TONG KIM - XU KHOA-----------------------------
NAMETOP1 = "ÙÙZETÙÙ"
NAMETOP2 = "DiªmÙV­¬ng"
NAMETOP3 = "TaoDoubkill"
NAMETOP4 = "FanÙVâÙL©mÙXYZ"
NAMETOP5 = "ÙÙAÙKayÙÙ"
NAMETOP6 = "ÙÙXeÙÙÙ"
NAMETOP7 = "KhoaÙ34"
NAMETOP8 = "TiÒn§ångKhãa6"
NAMETOP9 = "§¹iÙCaÙBÐo"
NAMETOP10 = "§­êngÙTam"
-----------------------------THUONG XU KHOA NEU NHU LA BANG CHU CHIEM THANH-----------------------------
IDTOP1 = "zet111"
IDTOP2 = "vulocdien116"
IDTOP3 = "dannynghia"
IDTOP4 = "thanhnhan3"
IDTOP5 = "manh01"
IDTOP6 = "chamchamthoi"
IDTOP7 = "khoa01"
IDTOP8 = "huongtruc6"
IDTOP9 = "tiososad"
IDTOP10 = "nhd001"
-----------------------------THUONG TOP TONG KIM - XU THUONG-----------------------------
NAMETOP1T7 = ""
NAMETOP2T7 = ""
NAMETOP3T7 = ""
IDTOP1T7 = ""
IDTOP2T7 = ""
IDTOP3T7 = ""
------------------------------------------------------------------------------------------------------------------------

function thuongtop_tongkim()
dofile("script/global/namcung/thuongtoptongkim.lua")
	local nWeek = tonumber(date("%w"))
	local szTitle = "<npc>Ngµi cÇn ta gióp g×?\n-Ngay 22/06 <color=orange>§ua TOP 1 -> 10<color> Tèng Kim 21:00 nhËn KNB <color=fire>T7 & CN<color> "
	local tbOpt =
	{
		--{"Th­ëng TOP Tèng Kim [Test]", thuong_top_xukhoa},

		{"KÕt thóc ®èi tho¹i"},
	}
	--if  nWeek == 6 or nWeek == 0 then --Vµo Thø 7 vµ Chñ NhËt sÏ hiÖn dßng nµy
	--tinsert(tbOpt, 2, {"Th­ëng TOP Tèng Kim [Xu Th­êng]", thuong_top_xuthuong}) 
	--end
	CreateNewSayEx(szTitle, tbOpt)
end

function thuong_top_xukhoa()
	local nHour = tonumber(GetLocalDate("%H%M"))
	local szTitle = "<npc>Sau 22h30 hÖ thèng sÏ tù ®éng xuÊt hiÖn dßng ®Ó nhËn th­ëng!\n<color=red>L­u ý: PhÇn th­ëng sÏ tù hñy bá sau 23h59<color>\nTOP1: <color=fire>"..NAMETOP1.."<color>\nTOP2: <color=fire>"..NAMETOP2.."<color>\nTOP3: <color=fire>"..NAMETOP3.."<color>\nTOP4: <color=fire>"..NAMETOP4.."<color>\nTOP5: <color=fire>"..NAMETOP5.."<color>\nTOP6: <color=fire>"..NAMETOP6.."<color>\nTOP7: <color=fire>"..NAMETOP7.."<color>\nTOP8: <color=fire>"..NAMETOP8.."<color>\nTOP9: <color=fire>"..NAMETOP9.."<color>\nTOP10: <color=fire>"..NAMETOP10.."<color>"
	local tbOpt =
	{
		{"KÕt thóc ®èi tho¹i"},
	}
	if GetName() == (""..NAMETOP1.."") or GetAccount() == (""..IDTOP1.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 1
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 1] Tèng Kim", thuong_top1tk}) 
	end
	if GetName() == (""..NAMETOP2.."") or GetAccount() == (""..IDTOP2.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 2
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 2] Tèng Kim", thuong_top2tk}) 
	end
	if GetName() == (""..NAMETOP3.."") or GetAccount() == (""..IDTOP3.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 3
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 3] Tèng Kim", thuong_top3tk}) 
	end
	if GetName() == (""..NAMETOP4.."") or GetAccount() == (""..IDTOP4.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 4
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 4] Tèng Kim", thuong_top4tk}) 
	end
	if GetName() == (""..NAMETOP5.."") or GetAccount() == (""..IDTOP5.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 5
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 5] Tèng Kim", thuong_top5tk}) 
	end
	if GetName() == (""..NAMETOP6.."") or GetAccount() == (""..IDTOP6.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 6
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 6] Tèng Kim", thuong_top6tk}) 
	end
	if GetName() == (""..NAMETOP7.."") or GetAccount() == (""..IDTOP7.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 7
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 7] Tèng Kim", thuong_top7tk}) 
	end
	if GetName() == (""..NAMETOP8.."") or GetAccount() == (""..IDTOP8.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 8
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 8] Tèng Kim", thuong_top8tk}) 
	end
	if GetName() == (""..NAMETOP9.."") or GetAccount() == (""..IDTOP9.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 9
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 9] Tèng Kim", thuong_top9tk}) 
	end
	if GetName() == (""..NAMETOP10.."") or GetAccount() == (""..IDTOP10.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 10
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 10] Tèng Kim", thuong_top10tk}) 
	end
	CreateNewSayEx(szTitle, tbOpt)
end
-----------------------------THUONG TOP TONG KIM - TOP 1-----------------------------
tbtop1 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 300},
	}

function thuong_top1tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop1, "PhÇn th­ëng TOP 1 TK");
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 1 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 1 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 2-----------------------------
tbtop2 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 200},
	}
function thuong_top2tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop2, "PhÇn th­ëng TOP 2 TK");
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 2 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 2 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 3-----------------------------
tbtop3 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 100},
	}
function thuong_top3tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop3, "PhÇn th­ëng TOP 3 TK");
	--thuong_top3tk_xuthuong()
	--Msg2Player("<color=orange>V× trËn 21h võa råi 2 phe kh«ng ®ñ mçi bªn 40 ng­êi nªn sÏ kh«ng cã th­ëng Xu Th­êng!<color>" );
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 3 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 3 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 4-----------------------------
tbtop4 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top4tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop4, "PhÇn th­ëng TOP 4 TK");
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 4 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 4 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 5-----------------------------
tbtop5 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top5tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop5, "PhÇn th­ëng TOP 5 TK");
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 50 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 50 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 6-----------------------------
tbtop6 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top6tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop6, "PhÇn th­ëng TOP 6 TK");
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 6 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 6 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 7-----------------------------
tbtop7 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top7tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop7, "PhÇn th­ëng TOP 7 TK");
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 7 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 7 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 8-----------------------------
tbtop8 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top8tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop8, "PhÇn th­ëng TOP 8 TK");
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 8 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 8 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))

	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 9-----------------------------
tbtop9 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top9tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop9, "PhÇn th­ëng TOP 9 TK");
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 9 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 9 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 10-----------------------------
tbtop10 =
	{
		[1]	={szName = "TiÒn ®ång (Khãa)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top10tk()
	if GetTask(3651) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop10, "PhÇn th­ëng TOP 10 TK");
	Msg2Player("NhËn thµnh c«ng Th­ëng TOP 10 Tèng Kim trËn 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 10 Tèng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG (XU THUONG) TOP TONG KIM - TOP 1-----------------------------
tbtop1_xuthuong =
	{
		[1]	={szName = "TiÒn ®ång", tbProp = {4,417,1,1,0,0}, nCount = 300},
	}

function thuong_top1tk_t7()
	if GetTask(3652) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop1_xuthuong, "PhÇn th­ëng TOP 1 TK");
	Msg2Player("<color=orange>H«m nay lµ cuèi tuÇn vµ b¹n ®¹t TOP 1 nªn nhËn ®­îc 300 TiÒn ®ång (Kh«ng Khãa)<color>" );
	SetTask(3652,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 1 Tèng Kim [Xu Th­êng].\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG (XU THUONG) TOP TONG KIM - TOP 2-----------------------------
tbtop2_xuthuong =
	{
		[1]	={szName = "TiÒn ®ång", tbProp = {4,417,1,1,0,0}, nCount = 200},
	}

function thuong_top2tk_t7()
	if GetTask(3652) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop2_xuthuong, "PhÇn th­ëng TOP 2 TK");
	Msg2Player("<color=orange>H«m nay lµ cuèi tuÇn vµ b¹n ®¹t TOP 2 nªn nhËn ®­îc 200 TiÒn ®ång (Kh«ng Khãa)<color>" );
	SetTask(3652,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 2 Tèng Kim [Xu Th­êng].\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG (XU THUONG) TOP TONG KIM - TOP 3-----------------------------
tbtop3_xuthuong =
	{
		[1]	={szName = "TiÒn ®ång", tbProp = {4,417,1,1,0,0}, nCount = 100},
	}

function thuong_top3tk_t7()
	if GetTask(3652) > 0 then
		Say("Ng­¬i ®· nhËn råi mµ cßn tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop3_xuthuong, "PhÇn th­ëng TOP 3 TK");
	Msg2Player("<color=orange>H«m nay lµ cuèi tuÇn vµ b¹n ®¹t TOP 3 nªn nhËn ®­îc 100 TiÒn ®ång (Kh«ng Khãa)<color>" );
	SetTask(3652,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Thêi gian : [%s]  - Tµi kho¶n: [%s] - Nh©n vËt: [%s] ®· nhËn thµnh c«ng th­ëng TOP 3 Tèng Kim [Xu Th­êng].\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
------------------------------
function thuong_top_xuthuong()
--do
--	Talk(1, "", "Qu©n lùc h«m nay cña 2 phe\nTèng: 33 - Kim: 31\nKh«ng ®ñ yªu cÇu nªn sÏ kh«ng cã th­ëng Xu Th­êng!")
--	return
--end
	local nHour = tonumber(GetLocalDate("%H%M"))
	local nWeek = tonumber(date("%w"))
		if  nWeek == 1 or nWeek == 2 or nWeek == 3 or nWeek == 4 or nWeek == 50 then
		Talk(1, "", "PhÇn th­ëng <color=wood>§ua TOP [1,2,3]<color>\nChØ cã thÓ nhËn vµo <color=wood>Thø 7 vµ Chñ NhËt<color> hµng tuÇn\n§¹i hiÖp vui lßng quay l¹i sau nhÐ")
	return
end
	local szTitle = "<npc>\nSau 22h30 sÏ tù ®éng xuÊt hiÖn dßng ®Ó nhËn th­ëng!\n<color=red>L­u ý: PhÇn th­ëng sÏ tù hñy bá sau 23h59<color>\n[TOP1 - PK]:<color=orange>"..NAMETOP1T7.."<color>\n[TOP2 - PK]:<color=orange>"..NAMETOP2T7.."<color>\n[TOP3 - PK]:<color=orange>"..NAMETOP3T7.."<color>"
	local tbOpt =
	{
		{"KÕt thóc ®èi tho¹i"},
	}
	if GetName() == (""..NAMETOP1T7.."") or GetAccount() == (""..IDTOP1T7.."") and GetTask(3652) == 0 and nHour >= 2230 and nHour < 2359 then -- TOP 1
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 1] Tèng Kim Cuèi TuÇn", thuong_top1tk_t7}) 
	end
	if GetName() == (""..NAMETOP2T7.."") or GetAccount() == (""..IDTOP2T7.."") and GetTask(3652) == 0 and nHour >= 2230 and nHour < 2359 then -- TOP 2
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 2] Tèng Kim Cuèi TuÇn", thuong_top2tk_t7}) 
	end
	if GetName() == (""..NAMETOP3T7.."") or GetAccount() == (""..IDTOP3T7.."") and GetTask(3652) == 0 and nHour >= 2230 and nHour < 2359 then -- TOP 3
	tinsert(tbOpt, 2, {"NhËn th­ëng ®¹t [TOP 3] Tèng Kim Cuèi TuÇn", thuong_top3tk_t7}) 
	end
	CreateNewSayEx(szTitle, tbOpt)
end
