Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")

-----------------------------THUONG TOP TONG KIM - XU KHOA-----------------------------
NAMETOP1 = "��ZET��"
NAMETOP2 = "Di�m�V��ng"
NAMETOP3 = "TaoDoubkill"
NAMETOP4 = "Fan�V��L�m�XYZ"
NAMETOP5 = "��A�Kay��"
NAMETOP6 = "��Xe���"
NAMETOP7 = "Khoa�34"
NAMETOP8 = "Ti�n��ngKh�a6"
NAMETOP9 = "��i�Ca�B�o"
NAMETOP10 = "���ng�Tam"
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
	local szTitle = "<npc>Ng�i c�n ta gi�p g�?\n-Ngay 22/06 <color=orange>�ua TOP 1 -> 10<color> T�ng Kim 21:00 nh�n KNB <color=fire>T7 & CN<color> "
	local tbOpt =
	{
		--{"Th��ng TOP T�ng Kim [Test]", thuong_top_xukhoa},

		{"K�t th�c ��i tho�i"},
	}
	--if  nWeek == 6 or nWeek == 0 then --V�o Th� 7 v� Ch� Nh�t s� hi�n d�ng n�y
	--tinsert(tbOpt, 2, {"Th��ng TOP T�ng Kim [Xu Th��ng]", thuong_top_xuthuong}) 
	--end
	CreateNewSayEx(szTitle, tbOpt)
end

function thuong_top_xukhoa()
	local nHour = tonumber(GetLocalDate("%H%M"))
	local szTitle = "<npc>Sau 22h30 h� th�ng s� t� ��ng xu�t hi�n d�ng �� nh�n th��ng!\n<color=red>L�u �: Ph�n th��ng s� t� h�y b� sau 23h59<color>\nTOP1: <color=fire>"..NAMETOP1.."<color>\nTOP2: <color=fire>"..NAMETOP2.."<color>\nTOP3: <color=fire>"..NAMETOP3.."<color>\nTOP4: <color=fire>"..NAMETOP4.."<color>\nTOP5: <color=fire>"..NAMETOP5.."<color>\nTOP6: <color=fire>"..NAMETOP6.."<color>\nTOP7: <color=fire>"..NAMETOP7.."<color>\nTOP8: <color=fire>"..NAMETOP8.."<color>\nTOP9: <color=fire>"..NAMETOP9.."<color>\nTOP10: <color=fire>"..NAMETOP10.."<color>"
	local tbOpt =
	{
		{"K�t th�c ��i tho�i"},
	}
	if GetName() == (""..NAMETOP1.."") or GetAccount() == (""..IDTOP1.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 1
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 1] T�ng Kim", thuong_top1tk}) 
	end
	if GetName() == (""..NAMETOP2.."") or GetAccount() == (""..IDTOP2.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 2
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 2] T�ng Kim", thuong_top2tk}) 
	end
	if GetName() == (""..NAMETOP3.."") or GetAccount() == (""..IDTOP3.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 3
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 3] T�ng Kim", thuong_top3tk}) 
	end
	if GetName() == (""..NAMETOP4.."") or GetAccount() == (""..IDTOP4.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 4
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 4] T�ng Kim", thuong_top4tk}) 
	end
	if GetName() == (""..NAMETOP5.."") or GetAccount() == (""..IDTOP5.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 5
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 5] T�ng Kim", thuong_top5tk}) 
	end
	if GetName() == (""..NAMETOP6.."") or GetAccount() == (""..IDTOP6.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 6
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 6] T�ng Kim", thuong_top6tk}) 
	end
	if GetName() == (""..NAMETOP7.."") or GetAccount() == (""..IDTOP7.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 7
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 7] T�ng Kim", thuong_top7tk}) 
	end
	if GetName() == (""..NAMETOP8.."") or GetAccount() == (""..IDTOP8.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 8
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 8] T�ng Kim", thuong_top8tk}) 
	end
	if GetName() == (""..NAMETOP9.."") or GetAccount() == (""..IDTOP9.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 9
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 9] T�ng Kim", thuong_top9tk}) 
	end
	if GetName() == (""..NAMETOP10.."") or GetAccount() == (""..IDTOP10.."") and GetTask(3651) == 0 and nHour >= 0130 and nHour < 2359 then -- TOP 10
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 10] T�ng Kim", thuong_top10tk}) 
	end
	CreateNewSayEx(szTitle, tbOpt)
end
-----------------------------THUONG TOP TONG KIM - TOP 1-----------------------------
tbtop1 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 300},
	}

function thuong_top1tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop1, "Ph�n th��ng TOP 1 TK");
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 1 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 1 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 2-----------------------------
tbtop2 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 200},
	}
function thuong_top2tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop2, "Ph�n th��ng TOP 2 TK");
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 2 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 2 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 3-----------------------------
tbtop3 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 100},
	}
function thuong_top3tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop3, "Ph�n th��ng TOP 3 TK");
	--thuong_top3tk_xuthuong()
	--Msg2Player("<color=orange>V� tr�n 21h v�a r�i 2 phe kh�ng �� m�i b�n 40 ng��i n�n s� kh�ng c� th��ng Xu Th��ng!<color>" );
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 3 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 3 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 4-----------------------------
tbtop4 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top4tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop4, "Ph�n th��ng TOP 4 TK");
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 4 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 4 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 5-----------------------------
tbtop5 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top5tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop5, "Ph�n th��ng TOP 5 TK");
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 50 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 50 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 6-----------------------------
tbtop6 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top6tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop6, "Ph�n th��ng TOP 6 TK");
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 6 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 6 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 7-----------------------------
tbtop7 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top7tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop7, "Ph�n th��ng TOP 7 TK");
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 7 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 7 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 8-----------------------------
tbtop8 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top8tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop8, "Ph�n th��ng TOP 8 TK");
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 8 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 8 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))

	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 9-----------------------------
tbtop9 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top9tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop9, "Ph�n th��ng TOP 9 TK");
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 9 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 9 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG TOP TONG KIM - TOP 10-----------------------------
tbtop10 =
	{
		[1]	={szName = "Ti�n ��ng (Kh�a)", tbProp = {4,1496,1,1,0,0}, nCount = 50},
	}
function thuong_top10tk()
	if GetTask(3651) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop10, "Ph�n th��ng TOP 10 TK");
	Msg2Player("Nh�n th�nh c�ng Th��ng TOP 10 T�ng Kim tr�n 21h" );
	SetTask(3651,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 10 T�ng Kim.\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG (XU THUONG) TOP TONG KIM - TOP 1-----------------------------
tbtop1_xuthuong =
	{
		[1]	={szName = "Ti�n ��ng", tbProp = {4,417,1,1,0,0}, nCount = 300},
	}

function thuong_top1tk_t7()
	if GetTask(3652) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop1_xuthuong, "Ph�n th��ng TOP 1 TK");
	Msg2Player("<color=orange>H�m nay l� cu�i tu�n v� b�n ��t TOP 1 n�n nh�n ���c 300 Ti�n ��ng (Kh�ng Kh�a)<color>" );
	SetTask(3652,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 1 T�ng Kim [Xu Th��ng].\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG (XU THUONG) TOP TONG KIM - TOP 2-----------------------------
tbtop2_xuthuong =
	{
		[1]	={szName = "Ti�n ��ng", tbProp = {4,417,1,1,0,0}, nCount = 200},
	}

function thuong_top2tk_t7()
	if GetTask(3652) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop2_xuthuong, "Ph�n th��ng TOP 2 TK");
	Msg2Player("<color=orange>H�m nay l� cu�i tu�n v� b�n ��t TOP 2 n�n nh�n ���c 200 Ti�n ��ng (Kh�ng Kh�a)<color>" );
	SetTask(3652,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 2 T�ng Kim [Xu Th��ng].\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
-----------------------------THUONG (XU THUONG) TOP TONG KIM - TOP 3-----------------------------
tbtop3_xuthuong =
	{
		[1]	={szName = "Ti�n ��ng", tbProp = {4,417,1,1,0,0}, nCount = 100},
	}

function thuong_top3tk_t7()
	if GetTask(3652) > 0 then
		Say("Ng��i �� nh�n r�i m� c�n tham lam sao!")
		return 1
	end
	if CalcFreeItemCellCount() < 30 then
		Talk(1,"", "H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng")
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tbtop3_xuthuong, "Ph�n th��ng TOP 3 TK");
	Msg2Player("<color=orange>H�m nay l� cu�i tu�n v� b�n ��t TOP 3 n�n nh�n ���c 100 Ti�n ��ng (Kh�ng Kh�a)<color>" );
	SetTask(3652,1)
	local LogThuongTOPTongKim = "script/global/namcung/fileluuthuongtongkim/thuongtoptongkim_"..date("%d_%m_%Y")..".log"
	local FileLog = openfile(LogThuongTOPTongKim, "a");
	write(FileLog, format("Th�i gian : [%s]  - T�i kho�n: [%s] - Nh�n v�t: [%s] �� nh�n th�nh c�ng th��ng TOP 3 T�ng Kim [Xu Th��ng].\n",GetLocalDate("%m/%d/%Y - %H:%M:%S"),GetAccount(),GetName()))
	closefile(FileLog)
	SaveNow()
end
------------------------------
function thuong_top_xuthuong()
--do
--	Talk(1, "", "Qu�n l�c h�m nay c�a 2 phe\nT�ng: 33 - Kim: 31\nKh�ng �� y�u c�u n�n s� kh�ng c� th��ng Xu Th��ng!")
--	return
--end
	local nHour = tonumber(GetLocalDate("%H%M"))
	local nWeek = tonumber(date("%w"))
		if  nWeek == 1 or nWeek == 2 or nWeek == 3 or nWeek == 4 or nWeek == 50 then
		Talk(1, "", "Ph�n th��ng <color=wood>�ua TOP [1,2,3]<color>\nCh� c� th� nh�n v�o <color=wood>Th� 7 v� Ch� Nh�t<color> h�ng tu�n\n��i hi�p vui l�ng quay l�i sau nh�")
	return
end
	local szTitle = "<npc>\nSau 22h30 s� t� ��ng xu�t hi�n d�ng �� nh�n th��ng!\n<color=red>L�u �: Ph�n th��ng s� t� h�y b� sau 23h59<color>\n[TOP1 - PK]:<color=orange>"..NAMETOP1T7.."<color>\n[TOP2 - PK]:<color=orange>"..NAMETOP2T7.."<color>\n[TOP3 - PK]:<color=orange>"..NAMETOP3T7.."<color>"
	local tbOpt =
	{
		{"K�t th�c ��i tho�i"},
	}
	if GetName() == (""..NAMETOP1T7.."") or GetAccount() == (""..IDTOP1T7.."") and GetTask(3652) == 0 and nHour >= 2230 and nHour < 2359 then -- TOP 1
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 1] T�ng Kim Cu�i Tu�n", thuong_top1tk_t7}) 
	end
	if GetName() == (""..NAMETOP2T7.."") or GetAccount() == (""..IDTOP2T7.."") and GetTask(3652) == 0 and nHour >= 2230 and nHour < 2359 then -- TOP 2
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 2] T�ng Kim Cu�i Tu�n", thuong_top2tk_t7}) 
	end
	if GetName() == (""..NAMETOP3T7.."") or GetAccount() == (""..IDTOP3T7.."") and GetTask(3652) == 0 and nHour >= 2230 and nHour < 2359 then -- TOP 3
	tinsert(tbOpt, 2, {"Nh�n th��ng ��t [TOP 3] T�ng Kim Cu�i Tu�n", thuong_top3tk_t7}) 
	end
	CreateNewSayEx(szTitle, tbOpt)
end
