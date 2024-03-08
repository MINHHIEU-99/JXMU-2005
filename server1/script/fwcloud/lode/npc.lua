------------Lanh Tho Chien Dev By TungHuyen-----------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\fwcloud\\lode\\ketqua1lo.lua")
Include("\\script\\fwcloud\\lode\\ketqua2lo.lua")

tbKandy = {}
tbKandy.szFile = "\\sode\\danhsode.dat"
MAX_COUNT = 200

function main123123(nNpcIndex)
--server_loadfile(tbKandy.szFile)
dofile("script/fwcloud/lode/npc.lua");
local ketqua1 = docketqualo1()
local ketqua2 = docketqualo2()
local dategiai = docngayupdategiai()
local tab_Content = {
--"Nh�n th��ng s� may m�n./nhanthuong",
--"Ghi s� may m�n./ghilo1",
--"Ghi s� may m�n x5./ghilo5",
--"Ghi s� may m�n x10./ghilo10",
--"Ghi s� may m�n x50./ghilo50",
"Tho�t./no"
	}
Say("<color=cyan>V�ng xoay may m�n<color>\nCh�o m�ng b�n ��n v�i v�ng xo�y cu�c ��i.\n<color=green>\nK�t qu� l� 1 nh�y : "..ketqua1.."\n<color=yellow>K�t qu� l� 2 nh�y : ".. ketqua2 .. "<color>\nC�p nh�t ng�y : " .. dategiai, getn(tab_Content), tab_Content);       
end;


function main(nNpcIndex)
dofile("script/fwcloud/lode/npc.lua");
local ketqua1 = docketqualo1()
local ketqua2 = docketqualo2()
local dategiai = docngayupdategiai()

local szTitle = "<color=cyan>V�ng xoay may m�n<color>\nCh�o m�ng b�n ��n v�i v�ng xo�y cu�c ��i.\n<color=green>\nK�t qu� l� 1 nh�y : "..ketqua1.." \n<color=yellow>K�t qu� l� 2 nh�y : ".. ketqua2 .. "<color>\nC�p nh�t ng�y : " .. dategiai
local tbOpt = {}
	local nHour = tonumber(GetLocalDate("%H%M"));
	tinsert(tbOpt, 1, {"Tho�t.", no})
	 if (nHour < 1800) and (nHour >= 0700 ) then	
--	tinsert(tbOpt, 1, {"Ghi s� may m�n x1 (23 KNB = 1 phi�u).", ghilo1})
--	tinsert(tbOpt, 1, {"Ghi s� may m�n x5 (115 KNB = 1 phi�u).", ghilo5})
--	tinsert(tbOpt, 1, {"Ghi s� may m�n x10 (230 KNB = 1 phi�u).", ghilo10})
--	tinsert(tbOpt, 1, {"Ghi s� may m�n x50 (1150 KNB = 1 phi�u).", ghilo50})
end

	tinsert(tbOpt, 1, {"Nh�n th��ng s� may m�n.", nhanthuong})


	CreateNewSayEx(szTitle, tbOpt)
end

function nhanthuong()
GiveItemUI("D� k�t qu�", "Vui l�ng ��t v� v�o ��y m�i l�n ch� c� th� ��t 1 v�.", "check_ketqua", "OnCancel");
end

function check_ketqua(nCount)
--Msg2Player(nCount)
	if nCount <= 0 then
		Say("V� s� may m�n c�a ng��i ��u ? ",2,"D� l�i k�t qu�/nhanthuong","�� ta suy ngh� l�i/OnCancel");
		return 0;
	end
	if nCount > 1 then
		Say("Th�t ��ng ti�c ch� cho ph�p d� k�t qu� 1 v� / l�n !!!",2,"D� l�i k�t qu�/nhanthuong","�� ta suy ngh� l�i/OnCancel");
		return 0;
	end

	for i = 1, nCount do
		local dategiai = 	docngayupdategiai()
		local nItemidx = 	GetGiveItemUnit(i);
		local g, d, p = 	GetItemProp(nItemidx);
		local nSolo= 	GetItemParam(nItemidx, 1);
		local nHeso= 	GetItemParam(nItemidx, 2);
		local nDay= 	GetItemParam(nItemidx, 3);
		local nMon= 	GetItemParam(nItemidx, 4);
		local nDate =	nDay*100 + nMon
		if (g ~= 6 or d ~= 1 or p ~= 4568) then
			Say("Ta kh�ng th�y t�m <color=yellow>V� s�<color> n�o c�.", 2,"D� l�i k�t qu�/GiveTiaoZhanLing","�� ta suy ngh� l�i/OnCancel");
			return 0;
		end;
		if (tonumber(dategiai) ~= tonumber(nDate)) then
		Say("K�t qu� c�a v� s� n�y ch�a ���c c�p nh�t.")
		return 0
		end;
			for k=1, getn(%tbGiaiLo) do
			if nSolo == %tbGiaiLo[k] then
			Say(format("Ch�c m�ng b�n tr�ng con s� <color=yellow>%d<color>\nH� s� : <color=green>x%d<color>\nNh�n ���c : <color=orange>%d<color>",nSolo,nHeso,nHeso*80))
			tbAwardTemplet:GiveAwardByList({{szName="��i Kim Nguy�n B�o",tbProp={4,1503,1,1,1,0},nCount=nHeso*80,},}, "test", 1);
			RemoveItemByIndex(nItemidx)
			logplayer("sode/rutxu_"..date("%d_%m_%Y")..".txt",format("Th�i gian	%s	T�i kho�n	[ %s]	Nh�n v�t	[%s ]	�� tr�ng s�	[%s]	 l�	%s	KNB	! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSolo,nHeso*80))
			return 0
			end;
		end;
			for j=1, getn(%tbGiaiLo2nhay) do
			if nSolo == %tbGiaiLo2nhay[j] then
			Say(format("Ch�c m�ng b�n tr�ng 2 con s� <color=yellow>%d<color>\nH� s� : <color=green>x%d<color>\nNh�n ���c : <color=orange>%d<color>",nSolo,nHeso,nHeso*80*2))
			tbAwardTemplet:GiveAwardByList({{szName="KNB",tbProp={4,1503,1,1,1,0},nCount=nHeso*80*2,},}, "test", 1);
			RemoveItemByIndex(nItemidx)
			logplayer("sode/rutxu_"..date("%d_%m_%Y")..".txt",format("Th�i gian	%s	T�i kho�n	[ %s]	Nh�n v�t	[%s ]	�� tr�ng s�	[%s]	 l�	%s	KNB	! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSolo,nHeso*80*2))
			return 0
			end;
		end;

	end;
	Say("M� s� n�y c� v� nh� h�m nay kh�ng ���c may m�n r�i...")
end

TBMONTH = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}

function cg_getnextdate(oldday, num)
	local nDay = tonumber(oldday)
	local nYear = floor(nDay / 10000)
	local nMonth = floor((nDay - nYear * 10000) / 100)
	nDay = nDay - nYear * 10000 - nMonth * 100 
	nDay = nDay + num
	
	while (nDay > TBMONTH[nMonth]) do
		nDay = nDay - TBMONTH[nMonth]
		if (nMonth == 12) then
			nMonth = 1
			nYear = nYear + 1
		else
			nMonth = nMonth + 1
		end
	end
	return (nYear * 1000000 +200000 + nMonth * 100 + nDay)
end

function ghilo1()
local nKNB = CalcEquiproomItemCount(4,1503,1,1)--so xu tren hanh trang
if nKNB < 23 then
Say("Kh�ch quan kh�ng mang �� 23 KNB!", 0)
return
end
AskClientForNumber("ghiso1", 1, 100, "H�y nh�p con s� may m�n ");
end

function ghiso1(nSolo)
	server_loadfile(tbKandy.szFile)


		local nLo = 		server_getdata(tbKandy.szFile,"COUNT_LIMIT_NUMBER",nSolo);
		local nowday = 	tonumber(date("%y%m%d"))
		local nextday = 	cg_getnextdate(nowday, 1)

		local mm =		tonumber(date( "%m"))
		local day =		tonumber(date( "%d"))
		local year = 	tonumber(date( "%Y"))
		local today = 	tonumber(date("%Y%m%d"))
		if nLo == nil or nLo == "" then
			nLo = 0
		end;
		if nLo + 1 > MAX_COUNT then
		Say(format("S� b�n l�a ch�n c� v� �� ��n gi�i h�n ghi trong ng�y vui l�ng th� l�i. Con s� may m�n %d c�n c� th� ghi th�m %d �i�m.",nSolo,MAX_COUNT - nLo))
		return
		end;
		local nKNB = CalcEquiproomItemCount(4,1503,1,1)--so xu tren hanh trang
		local nItemIndex = 	AddItem(6,1,4568,1,1,0)
		if nKNB < 23 then
		Say("Kh�ch quan kh�ng mang �� 23 KNB!", 0)
		return
		end
		ConsumeEquiproomItem(23,4,1503,1,1)
		server_setdata(tbKandy.szFile,"COUNT_LIMIT_NUMBER",nSolo,nLo + 1);	
		server_savedata(tbKandy.szFile);
		SetSpecItemParam(nItemIndex, 3, day)
		SetSpecItemParam(nItemIndex, 4, mm)
		SetSpecItemParam(nItemIndex, 1, nSolo)
		SetSpecItemParam(nItemIndex, 2, 1)
		ITEM_SetExpiredTime(nItemIndex, nextday ,180000)
		SyncItem(nItemIndex)
logplayer("sode/ghiso_"..date("%d_%m_%Y")..".txt",format("Th�i gian	%s	T�i kho�n	[ %s]	Nh�n v�t	[%s ]	�� ghi	[%s]	 l�	1	�i�m	! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSolo))

end

function ghilo5()
local nKNB = CalcEquiproomItemCount(4,1503,1,1)--so xu tren hanh trang
if nKNB < 115 then
Say("Kh�ch quan kh�ng mang �� 115 KNB!", 0)
return
end

AskClientForNumber("ghiso5", 1, 100, "H�y nh�p con s� may m�n ");
end

function ghiso5(nSolo)
	server_loadfile(tbKandy.szFile)
		local nLo = 		server_getdata(tbKandy.szFile,"COUNT_LIMIT_NUMBER",nSolo);
		local nowday = 	tonumber(date("%y%m%d"))
		local nextday = 	cg_getnextdate(nowday, 1)

		local mm =		tonumber(date( "%m"))
		local day =		tonumber(date( "%d"))
		local year = 	tonumber(date( "%Y"))
		local today = 	tonumber(date("%Y%m%d"))
		if nLo == nil or nLo == "" then
			nLo = 0
		end;
		if nLo + 5 > MAX_COUNT then
		Say(format("S� b�n l�a ch�n c� v� �� ��n gi�i h�n ghi trong ng�y vui l�ng th� l�i. Con s� may m�n %d c�n c� th� ghi th�m %d �i�m.",nSolo,MAX_COUNT - nLo))
		return
		end;
		local nKNB = CalcEquiproomItemCount(4,1503,1,1)--so xu tren hanh trang
		local nItemIndex = 	AddItem(6,1,4568,1,1,0)
		if nKNB < 115 then
		Say("Kh�ch quan kh�ng mang �� 115 KNB!", 0)
		return
		end
		ConsumeEquiproomItem(115,4,1503,1,1)

		server_setdata(tbKandy.szFile,"COUNT_LIMIT_NUMBER",nSolo,nLo + 5);
		server_savedata(tbKandy.szFile);
		SetSpecItemParam(nItemIndex, 3, day)
		SetSpecItemParam(nItemIndex, 4, mm)
		SetSpecItemParam(nItemIndex, 1, nSolo)
		SetSpecItemParam(nItemIndex, 2, 5)
		ITEM_SetExpiredTime(nItemIndex, nextday ,180000)
		SyncItem(nItemIndex)
logplayer("sode/ghiso_"..date("%d_%m_%Y")..".txt",format("Th�i gian	%s	T�i kho�n	[ %s]	Nh�n v�t	[%s ]	�� ghi	[%s]	 l�	5	�i�m	! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSolo))

end

function ghilo10()
local nKNB = CalcEquiproomItemCount(4,1503,1,1)--so xu tren hanh trang
if nKNB < 230 then
Say("Kh�ch quan kh�ng mang �� 230 KNB!", 0)
return
end

AskClientForNumber("ghiso10", 1, 100, "H�y nh�p con s� may m�n ");
end

function ghiso10(nSolo)
	server_loadfile(tbKandy.szFile)
		local nLo = 		server_getdata(tbKandy.szFile,"COUNT_LIMIT_NUMBER",nSolo);
		local nowday = 	tonumber(date("%y%m%d"))
		local nextday = 	cg_getnextdate(nowday, 1)

		local mm =		tonumber(date( "%m"))
		local day =		tonumber(date( "%d"))
		local year = 	tonumber(date( "%Y"))
		local today = 	tonumber(date("%Y%m%d"))
		if nLo == nil or nLo == "" then
			nLo = 0
		end;
		if nLo + 10 > MAX_COUNT then
		Say(format("S� b�n l�a ch�n c� v� �� ��n gi�i h�n ghi trong ng�y vui l�ng th� l�i. Con s� may m�n %d c�n c� th� ghi th�m %d �i�m.",nSolo,MAX_COUNT - nLo))
		return
		end;
		local nKNB = CalcEquiproomItemCount(4,1503,1,1)--so xu tren hanh trang
		local nItemIndex = 	AddItem(6,1,4568,1,1,0)
		if nKNB < 230 then
		Say("Kh�ch quan kh�ng mang �� 230 KNB!", 0)
		return
		end
		ConsumeEquiproomItem(230,4,1503,1,1)

		server_setdata(tbKandy.szFile,"COUNT_LIMIT_NUMBER",nSolo,nLo + 10);
		server_savedata(tbKandy.szFile);
		SetSpecItemParam(nItemIndex, 3, day)
		SetSpecItemParam(nItemIndex, 4, mm)
		SetSpecItemParam(nItemIndex, 1, nSolo)
		SetSpecItemParam(nItemIndex, 2, 10)
		ITEM_SetExpiredTime(nItemIndex, nextday ,180000)
		SyncItem(nItemIndex)
logplayer("sode/ghiso_"..date("%d_%m_%Y")..".txt",format("Th�i gian	%s	T�i kho�n	[ %s]	Nh�n v�t	[%s ]	�� ghi	[%s]	 l�	10	�i�m	! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSolo))

end

function ghilo50()
local nKNB = CalcEquiproomItemCount(4,1503,1,1)--so xu tren hanh trang
if nKNB < 1150 then
Say("Kh�ch quan kh�ng mang �� 1150 KNB!", 0)
return
end

AskClientForNumber("ghiso50", 1, 100, "H�y nh�p con s� may m�n ");
end

function ghiso50(nSolo)
	server_loadfile(tbKandy.szFile)
		local nLo = 		server_getdata(tbKandy.szFile,"COUNT_LIMIT_NUMBER",nSolo);
		local nowday = 	tonumber(date("%y%m%d"))
		local nextday = 	cg_getnextdate(nowday, 1)

		local mm =		tonumber(date( "%m"))
		local day =		tonumber(date( "%d"))
		local year = 	tonumber(date( "%Y"))
		local today = 	tonumber(date("%Y%m%d"))
		if nLo == nil or nLo == "" then
			nLo = 0
		end;
		if nLo + 50 > MAX_COUNT then
		Say(format("S� b�n l�a ch�n c� v� �� ��n gi�i h�n ghi trong ng�y vui l�ng th� l�i. Con s� may m�n %d c�n c� th� ghi th�m %d �i�m.",nSolo,MAX_COUNT - nLo))
		return
		end
		local nKNB = 	CalcEquiproomItemCount(4,1503,1,1)--so xu tren hanh trang
		local nItemIndex = 	AddItem(6,1,4568,1,1,0)
		if nKNB < 1150 then
		Say("Kh�ch quan kh�ng mang �� 1150 KNB!", 0)
		return
		end
		ConsumeEquiproomItem(1150,4,1503,1,1)
		server_setdata(tbKandy.szFile,"COUNT_LIMIT_NUMBER",nSolo,nLo + 50);	
		server_savedata(tbKandy.szFile);
		SetSpecItemParam(nItemIndex, 3, day)
		SetSpecItemParam(nItemIndex, 4, mm)
		SetSpecItemParam(nItemIndex, 1, nSolo)
		SetSpecItemParam(nItemIndex, 2, 50)
		ITEM_SetExpiredTime(nItemIndex, nextday ,180000)
		SyncItem(nItemIndex)
logplayer("sode/ghiso_"..date("%d_%m_%Y")..".txt",format("Th�i gian	%s	T�i kho�n	[ %s]	Nh�n v�t	[%s ]	�� ghi	[%s]	 l�	50	�i�m	! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),nSolo))

end

function server_setdata(filename,szsect,szkey,szvalue)
	IniFile_SetData(filename, szsect, szkey, szvalue)	
end

function server_getdata(filename,szsect,szkey)
	return IniFile_GetData(filename, szsect, szkey)
end

function server_savedata(filename)
	IniFile_Save(filename,filename)
end