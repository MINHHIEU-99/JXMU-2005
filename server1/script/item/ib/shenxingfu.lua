--Th�n h�nh ph� edit by mcteam
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\gm_tool\\g7configall.lua")
Include("\\script\\global\\station.lua")
IncludeLib("TONG")
IncludeLib("TITLE");
function main(sel)
	if GetAccount()=="boquyx123" or GetAccount=="loctran1" or GetAccount=="kimluyen2002" then
		dofile("script/item/ib/shenxingfu.lua")
	end
	--Msg2Player(""..IsDisabledTeam().."")
	local szTongName, nTongID = GetTongName();
if szTongName ~= nil and szTongName ~= "" then

if TONG_GetMemberCount(nTongID) > 100 then
Say("Bang v��t qu� 100 th�nh vi�n kh�ng th� s� d�ng th�n th�nh ph�.Xin h�y t�n tr�ng s�n ch�i kh�ng gian l�n trong vi�c s�p nh�p bang h�i �� tr�nh phi�n ph�c cho ch�nh b�n bang m�nh.");
return 1
end
end
--LuuLogNhanVat2()
--	LuuLogNhanVatPH2()
	if GetLevel()>=60 then
	--RemoveSkillState(1512,20,3,559872000,1) 
	--RemoveSkillState(1679,20,3,559872000,1) 
	end
	if GetSkillState(1682)>=1 then
		local ntime = 18*60*60*24*1
			local n_title = 236
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
	elseif GetSkillState(1683)>=1 then
		local ntime = 18*60*60*24*1
			local n_title = 237
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
	elseif GetSkillState(1684)>=1 then
		local ntime = 18*60*60*24*1
			local n_title = 238
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
	elseif GetSkillState(1685)>=1 then
		 local ntime = 18*60*60*24*1
			local n_title = 239
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
	end
	if GetSkillState(1643)>=1 then
		local ntime = 18*60*60*24*1
			local n_title = 233
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
	elseif GetSkillState(1644)>=1 then
		local ntime = 18*60*60*24*1
			local n_title = 234
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
	elseif GetSkillState(1645)>=1 then
		local ntime = 18*60*60*24*1
			local n_title = 235
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
	end
	if GetSkillState(1708)>=1 then
		local ntime = 18*60*60*24*1
			local n_title = 254
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
	end
	--dofile("script/global/g7vn/g7configall.lua")
	if HaveMagic(361)~=-1 then
	--Msg2Player("aaaaaaaa"..GetSkillState(1078).."")
	--DelMagic(361) 
	end
if GetAccount()~="philoc656463" then
	local nDate = tonumber(date("%Y%m%d%H%M"))
		if nDate <= ThoiGianHetHanDiemTP then
		Say("��ng v�o l�c <color=yellow>"..ThoiGianOpenStr.."<color> m�i b�t ��u ch�nh th�c khai m� m�y ch�");
		return 1
	end
end
--if --GetExpPercent()<-100 then
	--	Say("Kinh nghi�m �m n�n kh�ng th� s� d�ng Th�n H�nh Ph�.");
	--	return 1
	--end
	--if ( GetTaskTemp(200) == 1 ) or ( SubWorldIdx2ID( SubWorld ) >= 387 and SubWorldIdx2ID( SubWorld ) <= 395)then
	--	Msg2Player("Hi�n t�i ng��i kh�ng th� s� d�ng th�n h�nh ph�!");
	--	return 1
	--end
	
	--if GetTask(5859) == 1 then
	--	Msg2Player("Hi�n t�i ng��i kh�ng th� s� d�ng th�n h�nh ph�!");
	--	return 1
	--end
	
	local nSubWorldID = GetWorldPos();
	if (nSubWorldID >= 375 and nSubWorldID <= 386) then
		Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng th�n h�nh ph�.");
		return 1
	end
	
	--if (nSubWorldID >= 416 and nSubWorldID <= 511) then
	--	Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng th�n h�nh ph�.");
	--	return 1
	--end
	
--	if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223)	or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342	or nSubWorldID == 175	or nSubWorldID == 337	or nSubWorldID == 338	or nSubWorldID == 339 or ( nSubWorldID >= 387 and  nSubWorldID <= 395 ) )then 
--		Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng th�n h�nh ph�.");
--		return 1
--	end;

	--����ս��֮������ǵ�ͼ������ʹ��
	--if (CheckAllMaps(nSubWorldID) == 1) then
	--	Msg2Player("B�n �� hi�n t�i ng��i �ang ��ng thu�c khu v�c ��c th�, kh�ng th� s� d�ng th�n h�nh ph�.");
	--	return 1
	--end;
	
--	if (GetLevel() < 5) or check_faction()==1 then
	--	Say("Ng��i ch�i ph�i ��t ��ng c�p 5 tr� l�n + �� gia nh�p m�n ph�i m�i c� th� s� d�ng th�n h�nh ph�.", 0);
	--	return 1
--	end;

	local PK_value = GetPK()
	if PK_value == 10 then
		--Say("Ng��i hai tay d�nh ��y m�u tr� s� <color=red>PK 10<color> �i ��n ch�n tr�i g�c b� th� c�ng kh�ng th� tho�t kh�i lu�t ph�p! <enter>Mau mau ��n nh� lao ��u th� �� gi�m b�t tr� PK", 0);
		--return 1
	end
	
	Say("Th�n h�nh ph� c� th� ��t �i�m h�i sinh, v� c�ng c� th� �i ��n n�i th�nh th� tr�n n�o ��.", 6, 
		"R�i kh�i/no",
		"Thi�t ��t �i�m h�i sinh, l�n sau n�u ��i hi�p s� d�ng th� ��a ph� s� ��n n�i n�y./set_backpos", 
		"S� d�ng thu�t th�n h�nh c� th� ��a ��i hi�p ��n th�nh th� th�n tr�n ch� ��nh./gototown"
		--	"Boss Ti�u Ho�ng Kim/#bandomonphai()",
	--	"Chi�n Long ��ng./congchienlongdong",
		--"�i Hoa S�n Tam K�./vaodautruonghoason",
	
		--"B�t Qu�i Tr�n ��./vaodautruong"
		--"�i ��n v� tr� kh�c./#tbVNGWORDPOS:GotoOtherMap()"
		--"�i ��n v� tr� kh�c./Goto_OtherMap"
		);

	return 1	
end;

function hoatdonggame()

	local tbSay = {}
	tinsert(tbSay,"��u Tr��ng Sinh T� (Qu� Trung)./#vaodautruong()")
	tinsert(tbSay,"Th�i ta kh�ng mu�n �i./no")
	Say("M�i l�a ch�n khu v�c tham ��u", getn(tbSay), tbSay)
	return 1	
end;
function vaodautruong2()

	local tbSay = {}
	tinsert(tbSay,"H�u Doanh B�c./#gotoDT2(1572,2438)")
	tinsert(tbSay,"H�u Doanh Nam./#gotoDT2(1206,3156)")
	tinsert(tbSay,"H�u Doanh  ��ng./#gotoDT2(1545,3110)")
	tinsert(tbSay,"H�u Doanh T�y./#gotoDT2(1218,2452)")
	tinsert(tbSay,"Th�i ta kh�ng mu�n �i./no")
	Say("M�i l�a ch�n khu v�c tham ��u", getn(tbSay), tbSay)
	return 1	
end;
function gotoDT2(nX,nY)
if GetLevel()<80 then
	Say("Khu v�c ch� gi�nh cho nh�n v�t c�p 80 tr� l�n")
	return
end
	local nHour = tonumber(GetLocalDate("%H%M"))
NewWorld(1001,nX,nY)
SetPunish(0)
SetLogoutRV(1);
	local szTong = GetTong()
	if not szTong or  szTong == "" then
		SetCreateTeam(0);
		SetCurCamp(4);
end
end


function gototapket_ok(toadox,toadoy)
if GetLevel()<60 then
 Say("C�p �� 60 m�i c� th� l�n b�n �� n�y.")
 return
end
	NewWorld(333 , toadox, toadoy)
	SetFightState(0)
end
function vaodautruonghoason()

	local tbSay = {}
	tinsert(tbSay,"�i�m T�p K�t 1./#gototapket_ok(1286,3209)")
	tinsert(tbSay,"�i�m T�p K�t 2./#gototapket_ok(1321,2884)")
	tinsert(tbSay,"�i�m T�p K�t 3./#gototapket_ok(1544,3206)")
	tinsert(tbSay,"Th�i ta kh�ng mu�n �i./no")
	Say("M�i l�a ch�n khu v�c tham ��u", getn(tbSay), tbSay)
	return 1	
end;
function vaodautruong()

	local tbSay = {}
	tinsert(tbSay,"H�u Doanh B�c./#gotoDT(1572,2438)")
	tinsert(tbSay,"H�u Doanh Nam./#gotoDT(1206,3156)")
	tinsert(tbSay,"H�u Doanh  ��ng./#gotoDT(1545,3110)")
	tinsert(tbSay,"H�u Doanh T�y./#gotoDT(1218,2452)")
	tinsert(tbSay,"Th�i ta kh�ng mu�n �i./no")
	Say("M�i l�a ch�n khu v�c tham ��u", getn(tbSay), tbSay)
	return 1	
end;
function gotoDT(nX,nY)
	local nHour = tonumber(GetLocalDate("%H%M"))
NewWorld(355,nX,nY)
SetPunish(0)
SetFightState(0)
SetLogoutRV(1);
	local szTong = GetTong()
	if not szTong or  szTong == "" then
		SetCreateTeam(0);
		SetCurCamp(4);
end
end
function congchienlongdong()
if GetLevel()<40 then
 Say("C�p �� 40 m�i c� th� l�n b�n �� n�y.")
 return
end
local tbSay = {

"L�n C�ng T��ng V�n./congtuongvan",
"L�n C�ng V� Di S�n./congvudison",
"L�n C�ng La Ti�u S�n./conglatieuson",
"Th�i ta kh�ng mu�n n�a./no"
}
Say("B�n ch�n ch�c n�ng n�o ?",getn(tbSay),tbSay)
end
function congtuongvan()
NewWorld(959 , floor(1551), floor(2989))
SetFightState(1)
SetProtectTime(18*0) -- 4 giay bat tu 
AddSkillState(963, 1, 0, 18*0)
end
function congvudison()
NewWorld(959 , floor(1425), floor(2997))
SetFightState(1)
SetProtectTime(18*0) -- 4 giay bat tu 
AddSkillState(963, 1, 0, 18*0)
end
function conglatieuson()
NewWorld(959 , floor(1690), floor(3158))
SetFightState(1)
SetProtectTime(18*0) -- 4 giay bat tu 
AddSkillState(963, 1, 0, 18*0)
end
function dennoidanhcobac()
if GetLevel()<60 then
 Say("C�p �� 60 m�i c� th� l�n b�n �� n�y.")
 return
end
local idx={1286,1321,1544}
	local idy={3209,2884,3206}
	local toado=random(1,3)
	NewWorld(333 , idx[toado], idy[toado])
	SetFightState(0)
end
-------------------------------Luyen cong tan thu----------------------------------------------

function luyencongtanthu()
	local tab_Content = {
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 20 /gopos_step2lv20",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 30 /gopos_step2lv30",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 40 /gopos_step2lv40",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 50 /gopos_step2lv50",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 60 /gopos_step2lv60",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 70 /gopos_step2lv70",
		"Di chuy�n ��n b�n �� luy�n c�ng c�p 80 /gopos_step2lv80",
		"Ta ch�a mu�n �i ��u c�./no",
	}
	Say("L�a ch�n b�n �� luy�n c�ng c�n thi�t.", getn(tab_Content), tab_Content);
end;

tab_lv80map = {
		{224,1622,3118	,"Sa M�c ��a bi�u (L�m An)",},
		{198,1521,2947	,"Thanh Kh� ��ng (��i L�)",},
		{320,1147,3123	,"Ch�n n�i Tr��ng B�ch (T��ng D��ng)",},
		{181,1425,2999	,"L��ng Th�y ��ng (��i L�)",},
		{201,1616,3195	,"B�ng H� ��ng (Ph��ng T��ng)",},
		{202,1787,2823	,"Ph� Dung ��ng (Th�nh ��)",},
		{203,1548,2990	,"V� Danh ��ng (��i L�)",},
		{207,1585,3215	,"T�n L�ng t�ng 3 (Ph��ng T��ng)",},
	}

function gopos_step2lv80(ns, ne)
	if GetExp()<0 then
		Say("Kinh nghi�m �m n�n kh�ng th� s� d�ng Th�n H�nh Ph�.");
		return 1
	end
if GetLevel()<70 then
	Say("Ch�a �� ��ng c�p �� l�n map n�y luy�n c�ng.")
	return
end
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H�y gia nh�p m�n ph�i �� ti�p t�c b�n t�u !!!");
		return
	end 
	local n_count = getn(tab_lv80map);
	local tab_Content = {};
	for i = 1, 8 do
		tinsert(tab_Content, tab_lv80map[i][4].."/#gopos_step3lv80( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv80(nIdx)
	NewWorld(tab_lv80map[nIdx][1], tab_lv80map[nIdx][2], tab_lv80map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv80map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 70----------------------------
tab_lv70map = {
{319,1630,3587	,"L�m Du Quan (D��ng Ch�u)",},
--		--{993,1630,3587	,"L�m Du Quan 2 (Bi�n Kinh)",},
		--{994,1630,3587	,"L�m Du Quan 1 (Bi�n Kinh)",},
		--{1003,1630,3587	,"L�m Du Quan 4 (Ph��ng T��ng)",},
		--{1004,1630,3587	,"L�m Du Quan 2 (Ph��ng T��ng)",},
		--{1012,1630,3587	,"L�m Du Quan 6 (��i L�)",},
		--{1013,1630,3587	,"L�m Du Quan 3(��i L�)",},
		--{1014,1630,3587	,"L�m Du Quan 4 (L�m An)",},
		{123,1702,3350	,"L�o H� ��ng (D��ng Ch�u)",},
		{995,1702,3350	,"L�o H� ��ng 2 (D��ng Ch�u)",},
		{996,1702,3350	,"L�o H� ��ng 3 (D��ng Ch�u)",},
		{206,1603,3215	,"T�n L�ng t�ng 2 (Ph��ng T��ng)",},
		{72,1659,3308	,"��i t� ��ng (Ph��ng T��ng)",},
		{169,1596,3213	,"Long Nh�n ��ng (��i L�)",},
		{130,1541,3147	,"L�u Ti�n ��ng t�ng 6 (T��ng D��ng)",},
		
		
	}
	
	

function gopos_step2lv70(ns, ne)
if GetLevel()<60 then
	Say("Ch�a �� ��ng c�p �� l�n map n�y luy�n c�ng.")
	return
end
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H�y gia nh�p m�n ph�i �� ti�p t�c b�n t�u !!!");
		return
	end 
	--print(ns, ne)
		if (not ne) then
		ns_1 = 1;
		ne_1 = 8;
	else
		ns_1 = ns;
		ne_1 = ne;
	end
	
	if (ne_1 - ns_1 > 7) then
		ne_1 = ns_1 + 7;
	end
	
	local n_count = getn(tab_lv70map);
	
	local tab_Content = {};
	for i = ns_1, ne_1 do
		tinsert(tab_Content, tab_lv70map[i][4].."/#gopos_step3lv70( "..i..")");
	end
	
	if (ns_1 ~= 1) then
		tinsert(tab_Content, "Trang tr��c/#gopos_step2lv70( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang k� /#gopos_step2lv70( "..(ne_1+1)..","..n_count..")");

	end
	
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
	
end


function gopos_step3lv70(nIdx)
	if tab_lv70map[nIdx][1]==993 then
		AddTermini(226);
		SetLogoutRV(1);
	end
	if tab_lv70map[nIdx][1]==994 then
		AddTermini(227);
		SetLogoutRV(1);
	end
	if tab_lv70map[nIdx][1]==1003 then
		AddTermini(228);
		SetLogoutRV(1);
	end
	if tab_lv70map[nIdx][1]==1004 then
		AddTermini(229);
		SetLogoutRV(1);
	end
	if tab_lv70map[nIdx][1]==995 then
		AddTermini(230);
		SetLogoutRV(1);
	end
	if tab_lv70map[nIdx][1]==996 then
		AddTermini(231);
		SetLogoutRV(1);
	end
	if tab_lv70map[nIdx][1]==1012 then
		AddTermini(242);
		SetLogoutRV(1);
	end
	if tab_lv70map[nIdx][1]==1013 then
		AddTermini(243);
		SetLogoutRV(1);
	end
	if tab_lv70map[nIdx][1]==1014 then
		AddTermini(244);
		SetLogoutRV(1);
	end
	NewWorld(tab_lv70map[nIdx][1], tab_lv70map[nIdx][2], tab_lv70map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv70map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 60----------------------------
tab_lv60map = {
		{79,1600,3206	,"T��ng D��ng Nha M�n M�t ��o (T��ng D��ng)",},
		{56,1516,3443	,"Ho�nh S�n Ph�i",},
		{166,1649,3231	,"Thi�n T�m Th�p t�ng 3 (��i L�)",},
		{117,1644,3033	,"T��ng V�n ��ng t�ng 2 (T��ng D��ng)",},
		{118,1590,3182	,"T��ng V�n ��ng t�ng 3 (T��ng D��ng)",},
		{196,1539,3267	,"D��ng Gi�c ��ng (��i L�)",},
		{149,1610,3220	,"Tuy�t B�o ��ng t�ng 3 (D��ng Ch�u)",},
	}

function gopos_step2lv60(ns, ne)
if GetLevel()<50 then
	Say("Ch�a �� ��ng c�p �� l�n map n�y luy�n c�ng.")
	return
end
	local n_count = getn(tab_lv60map);
	local tab_Content = {};
	for i = 1, 7 do
		tinsert(tab_Content, tab_lv60map[i][4].."/#gopos_step3lv60( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv60(nIdx)
	NewWorld(tab_lv60map[nIdx][1], tab_lv60map[nIdx][2], tab_lv60map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv60map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 50----------------------------
tab_lv50map = {
		{182,1777,2982	,"Nghi�t Long ��ng (��i L�)",},
		{164,1611,3187	,"Thi�n T�m Th�p (��i L�)",},
		{165,1473,3151	,"Thi�n T�m Th�p T�ng 2 (��i L�)",},
		{38,1598,3189	,"M� Cung Thi�t Th�p (Bi�n Kinh)",},
		{116,1605,3210	,"T��ng V�n ��ng (T��ng D��ng)",},
		{66,1889,3107	,"��y ��ng ��nh H�",},
		{125,1662,3153	,"L�u Ti�n ��ng (T��ng D��ng)",},
	}

function gopos_step2lv50(ns, ne)
if GetLevel()<40 then
	Say("Ch�a �� ��ng c�p �� l�n map n�y luy�n c�ng.")
	return
end
	local n_count = getn(tab_lv50map);
	local tab_Content = {};
	for i = 1, 7 do
		tinsert(tab_Content, tab_lv50map[i][4].."/#gopos_step3lv50( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function gopos_step3lv50(nIdx)
	NewWorld(tab_lv50map[nIdx][1], tab_lv50map[nIdx][2], tab_lv50map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv50map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 40----------------------------
tab_lv40map = {
		{21,2622,4502	,"Thanh Th�nh S�n (Th�nh ��)",},
		{167,1575,3239	,"�i�m Th��ng S�n (L�m An)",},
		{41,2064,2813	,"Ph�c Ng�u S�n T�y (D��ng Ch�u)",},
		{91,1606,3212	,"M� Cung K� Qu�n ��ng (D��ng Ch�u)",},
		{122,1613,3324	,"Ho�ng H� Nguy�n ��u (D��ng Ch�u)",},
		{113,1684,3349	,"M�t Th�t Ti�u L�m (D��ng Ch�u)",},
		{23,1589,3204	,"Th�n Ti�n ��ng (Th�nh ��)",},
		{8,1605,3503	,"L�ng T�n Th�y Ho�ng (Ph��ng T��ng)",},
		{170,1612,3187	,"Th� Ph� ��ng (��i L�)",},
--		{21,2594,4404	,"Thanh Th�nh S�n",},
{180,1599,3210	,"Long Cung ��ng (��i L�)",},

	}

function gopos_step2lv40(ns, ne)
if GetLevel()<30 then
	Say("Ch�a �� ��ng c�p �� l�n map n�y luy�n c�ng.")
	return
end
	local n_count = getn(tab_lv40map);
	local tab_Content = {};
	for i = 1, 10 do
		tinsert(tab_Content, tab_lv40map[i][4].."/#gopos_step3lv40( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv40(nIdx)
	NewWorld(tab_lv40map[nIdx][1], tab_lv40map[nIdx][2], tab_lv40map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv40map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 30----------------------------
tab_lv30map = {
		{193,1938,2845	,"V� Di S�n (��i L�)",},
		{170,1612,3187	,"Th� Ph� ��ng",},
	--	{167,1599,3224	,"�i�m Th��ng S�n",},
	--	{22,1759,3365	,"B�ch V�n ��ng (Th�nh ��)",},
	--	{1010,1759,3365	,"B�ch V�n ��ng 2 (Th�nh �� 2)",},
	--	{21,2594,4404	,"Thanh Th�nh S�n",},
		{92,1631,3292	,"Th�c C��ng S�n (D��ng Ch�u)",},
	--	{1011,1631,3292	,"Th�c C��ng S�n 2 (D��ng Ch�u 2)",},
		{90,1646,3544	,"Ph�c Ng�u S�n ��ng (D��ng Ch�u)",},
	}

function gopos_step2lv30(ns, ne)
if GetLevel()<20 then
	Say("Ch�a �� ��ng c�p �� l�n map n�y luy�n c�ng.")
	return
end
	local n_count = getn(tab_lv30map);
	local tab_Content = {};
	for i = 1, 4 do
		tinsert(tab_Content, tab_lv30map[i][4].."/#gopos_step3lv30( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv30(nIdx)
	if tab_lv30map[nIdx][1]==1010 then
		AddTermini(240);
		SetLogoutRV(1);
	end
	if tab_lv30map[nIdx][1]==1011 then
		AddTermini(241);
		SetLogoutRV(1);
	end
	NewWorld(tab_lv30map[nIdx][1], tab_lv30map[nIdx][2], tab_lv30map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv30map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end

---------------------map luyen cong 20----------------------------
tab_lv20map = {
		{19,3102,3963	,"Ki�m C�c T�y Nam (Th�nh ��)",},
	--	{1007,3102,3963	,"Ki�m C�c T�y Nam 2 (Th�nh �� 2)",},
		{3,1133,3721	,"Ki�m C�c T�y B�c (Ph��ng T��ng)",},
		--{43,1623,3181	,"Ki�m C�c Trung Nguy�n (D��ng Ch�u)",},
		{70,1602,3227	,"V� L�ng S�n (Ph��ng T��ng)",},
		{71,1677,3142	,"B�ch Th�y ��ng (Ph��ng T��ng)",},
		--{73,1595,3205	,"Ph�c L�u ��ng (Ph��ng T��ng)",},
		{7,2276,2825	,"T�n L�ng (Ph��ng T��ng)",},
		{1009,2276,2825	,"T�n L�ng 2 (Ph��ng T��ng 2)",},
		--{179,1617,3286	,"La Ti�u S�n (��i L�)",},

	}

function gopos_step2lv20(ns, ne)
if GetLevel()<10 then
	Say("Ch�a �� ��ng c�p �� l�n map n�y luy�n c�ng.")
	return
end
	local n_count = getn(tab_lv20map);
	local tab_Content = {};
	for i = 1, 4 do
		tinsert(tab_Content, tab_lv20map[i][4].."/#gopos_step3lv20( "..i..")");
	end
	
	
	tinsert(tab_Content, "H�y b�/no");
	Say("Th�n H�nh Ph�, di chuy�n ��n n�i c�n ��n.", getn(tab_Content), tab_Content);
end


function gopos_step3lv20(nIdx)
	if tab_lv20map[nIdx][1]==1007 then
		AddTermini(238);
		SetLogoutRV(1);
	end
	if tab_lv20map[nIdx][1]==1009 then
		AddTermini(239);
		SetLogoutRV(1);
	end
	NewWorld(tab_lv20map[nIdx][1], tab_lv20map[nIdx][2], tab_lv20map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ng�i y�n! Ch�ng ta �i!"..tab_lv20map[nIdx][4].."!");
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)
end

-------------------------------END Luyen cong tan thu----------------------------------------------


function Goto_StepPos(nIdx)
	--local tbOtherMap = tb_OtherMap[nIdx];
	--NewWorld(tbOtherMap[1], tbOtherMap[2], tbOtherMap[3]);
	--SetFightState(0);
	--Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i"..tbOtherMap[4].." n�o");
end

function Goto_OtherMap()
	--local tab_Content = {};
	--local nCount = getn(tb_OtherMap);
	--for i = 1, nCount do
		--tinsert(tab_Content, tb_OtherMap[i][4].."/Goto_StepPos( "..i..")");
	--end
	--tinsert(tab_Content, "R�i kh�i/no");
	--Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

tb_OtherMap = {
		{523,1579,3121	,"Minh nguy�t tr�n T��ng D��ng",},
		{521,1579,3121	,"Minh nguy�t tr�n Th�nh ��",},
		{520,1579,3121	,"Minh nguy�t tr�n Ph��ng T��ng",},
		{525,1579,3121	,"Minh nguy�t tr�n ��i L�",},
		{524,1579,3121	,"Minh nguy�t tr�n D��ng Ch�u",},
		{522,1579,3121	,"Minh nguy�t tr�n Bi�n Kinh",},
		{526,1579,3121	,"Minh nguy�t tr�n L�m An",},
		{55,1602,3125		,"��o Hoa Nguy�n",},
	};

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
--�趨�����㣨ѡ���У�
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("L�c n�y b�n kh�ng th� s� d�ng v�t ph�m n�y");
			return 1;
		end
	end	
	
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh ��/#setpos_step2(1)",
		"T��ng D��ng/#setpos_step2(2)",
		"Ph��ng T��ng/#setpos_step2(3)",
		"��i L�/#setpos_step2(4)",
		"Bi�n Kinh/#setpos_step2(5)",
		"D��ng Ch�u/#setpos_step2(6)",
		"L�m An/#setpos_step2(7)",
		"Th�n trang/#setpos_step2(8)",
		"M�n ph�i/#setpos_step2(9)"
	}
	Say("Thi�t ��t �i�m h�i th�nh cho l �n sau s� d�ng th� ��a ph�", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Thi�t ��t �i�m h�i th�nh cho l �n sau s� d�ng th� ��a ph�", getn(tab_Content), tab_Content);
end;

--ѡ�ص�
function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	Say("��i hi�p �� ��t th�nh c�ng �i�m h�i sinh"..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("��i hi�p �� ��t th�nh c�ng �i�m h�i sinh"..tab_RevivePos[nIdx][nSubIdx][1]);
end;

--�س�
function gototown()
	
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh th� /gopos_step2town",
	--	"Th�nh th� 2/gopos_step2town2",
		"Th�n trang/#gopos_step2(8)",
		"M�n ph�i/#gopos_step2(9)",
		"B�n �� luy�n c�ng t�n th� 2x ��n 8x/#luyencongtanthu()",
		"B�n �� c�p 90/#gopos_step2lv90()",
		"B�n �� Thu Ph� /#menuthuphi()",
		--"B�n �� C�p 190/#bandocap150()",
		"Chi�n tr��ng t�ng T�ng Kim/gopos_step2battle",
	--	"Chi�n tr��ng Th�t Th�nh ��i Chi�n/gopos_sevencityfield"
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end;
function bandocap150()
	if GetLevel()<190 then
		Say("C�p 150 m�i c� th� l�n b�n �� n�y.")
		return
	end
	SetFightState(1)
	SetLogoutRV(1)
	NewWorld(150,1586,3172)
end
function bandocap120()
	if GetLevel()<120 then
		Say("C�p 120 m�i c� th� l�n b�n �� n�y.")
		return
	end
	SetLogoutRV(1)
	SetFightState(1)
	NewWorld(924,2008,4080)
end
function bandomonphai()
	local tab_Content = {
		"Thi�n V��ng Bang 2/#bandomonphai_ok(1021,1567,3226)",
		"Thi�u L�m Ph�i 2/#bandomonphai_ok(1024,1624,3164)",
		"���ng M�n 2/#bandomonphai_ok(1015,4028,5183)",
		"Ng� ��c Gi�o 2/#bandomonphai_ok(1018,1491,3177)",
		"Nga My Ph�i 2/#bandomonphai_ok(1016,1948,4924)",
		"Th�y Y�n M�n 2/#bandomonphai_ok(1019,403,1361)",
		"Thi�n Nh�n Gi�o 2/#bandomonphai_ok(1022,1644,3215)",
		"C�i Bang 2/#bandomonphai_ok(1020,1501,3672)",
		"V� �ang Ph�i 2/#bandomonphai_ok(1017,1592,3206)",
		"C�n L�n Ph�i 2/#bandomonphai_ok(1023,1488,3069)",
		"R�i kh�i/no",
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end
function bandomonphai_ok(nmap,nx,ny)
	NewWorld(nmap,nx,ny)
	if nmap==1022 then
		SetFightState(1)
	else
	SetFightState(0)
	end
end
function menuthuphi()
	local tab_Content = {
		
		"��ng Tr��ng B�ch (Ph��ng T��ng)/#bandomoitren100(150)",
		"T�y Tr��ng B�ch (Bi�n Kinh)/#bandomoitren100(1005)",
		"Sa M�c Cao Qu�t (Th�nh ��)/#bandomoitren100(1006)",
		"R�i kh�i/no",
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

function bandomoitren100(mapid)
	if GetLevel()<80 then
		Say("B�n �� n�y ch� gi�nh cho nh�n v�t c�p 80 tr� l�n.")
		return
	end
	
	if CalcEquiproomItemCount(6,1,4426,-1)<1 then
		Say("C�n c� C�u Ch�u L�nh tr�n ng��i m�i c� th� l�n b�n �� n�y.")
		return
	end
	if mapid == 150 then
			AddTermini(235);
			SetLogoutRV(1);
			SetProtectTime(18*2) -- 4 giay bat tu 
	AddSkillState(963, 1, 0, 18*2)
	SetFightState(1)
			NewWorld(mapid,1617,3185)
		end
		if mapid == 1005 then
			AddTermini(236);
			SetLogoutRV(1);
			SetProtectTime(18*2) -- 4 giay bat tu 
	AddSkillState(963, 1, 0, 18*2)
	SetFightState(1)
			NewWorld(mapid,1589,3164)
		end
		if mapid == 150 then
			AddTermini(237);
			SetLogoutRV(1);
			SetProtectTime(18*2) -- 4 giay bat tu 
	AddSkillState(963, 1, 0, 18*2)
	SetFightState(1)
			NewWorld(mapid,1586,3172)
		end
	
end


tab_RevivePos2 = {
	[1] = {	--"�ɶ�"
		{"Th�nh �� ��ng", 6, 1027},{"Th�nh �� t�y", 7, 1027},{"Th�nh �� nam", 8, 1027},{"Th�nh �� b�c", 9, 1027},{"Th�nh �� trung t�m", 5, 1027}
	},
	[2] = {	--"����"
		{"T��ng D��ng ��ng", 30, 1026},{"T��ng D��ng t�y", 32 , 1026},{"T��ng D��ng nam", 31, 1026},{"T��ng D��ng b�c", 33, 1026},{"T��ng D��ng trung t�m", 29, 1026}
	},
	[3] = {	--"����"
		{"Ph��ng T��ng ��ng", 1, 1025},{"Ph��ng T��ng t�y", 2, 1025},{"Ph��ng T��ng nam", 3, 1025},{"Ph��ng T��ng b�c", 4, 1025},{"Ph��ng T��ng trung t�m", 0, 1025}
	},
	[4] = {	--"����"
		{"��i l� b�c", 64, 1029},{"��i l� trung t�m", 63, 1029}
	},
	[5] = {	--"�꾩"
		{"Bi�n Kinh ��ng", 24, 1028},{"Bi�n Kinh t�y", 25, 1028},{"Bi�n Kinh nam", 24, 1028},{"Bi�n Kinh b�c", 26, 1028},{"Bi�n Kinh trung t�m", 23, 1028}
	},
	[6] = {	--"����"
		{"D��ng Ch�u ��ng", 35, 1030},{"D��ng Ch�u t�y", 38, 1030},{"D��ng Ch�u nam", 37, 1030},{"D��ng Ch�u b�c", 36, 1030},{"D��ng Ch�u trung t�m", 34, 1030}
	},
	[7] = {	--"�ٰ�"
		{"L�m An ��ng", 68, 1031},{"L�m An nam", 67, 1031},{"L�m An b�c", 69, 1031}
	},
};
function gopos_step2town2()
	local tab_Content = {
		"R�i kh�i/no",
		"Th�nh ��/#gopos_step22(1)",
		"T��ng D��ng/#gopos_step22(2)",
		"Ph��ng T��ng/#gopos_step22(3)",
		"��i L�/#gopos_step22(4)",
		"Bi�n Kinh/#gopos_step22(5)",
		"D��ng Ch�u/#gopos_step22(6)",
		"L�m An/#gopos_step22(7)",
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end
function gopos_step22(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos2[nIdx]) do
		tinsert(tab_Content, tab_RevivePos2[nIdx][i][1].."/#gopos_step33( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end;
function gopos_step33(nIdx, nSubIdx)
	local file = [[\settings\RevivePos.ini]];
	ini_loadfile(file, 0)
	local szData = ini_getdata(file, tab_RevivePos2[nIdx][nSubIdx][3], tab_RevivePos2[nIdx][nSubIdx][2]);

	local szArr = split(szData);
	local nPosX = floor(tonumber(szArr[1]) / 32);
	local nPosY = floor(tonumber(szArr[2]) / 32);
	
	if (not nPosX or not nPosY) then
		return
	end;

	NewWorld(tab_RevivePos2[nIdx][nSubIdx][3], nPosX, nPosY)
	SetFightState(0);
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i"..tab_RevivePos2[nIdx][nSubIdx][1].." n�o");
end;

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
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i"..tab_RevivePos[nIdx][nSubIdx][1].." n�o");
end;

tab_lv130map = {
		{917,1816,3392	,	"Ph�ch Huy�t C�c",},
		{824,1816,3392	,	"�c Nh�n C�c",},
		{919,1608,3168	,	"Th�c C�t Nhai",},
		{920,1608,3168	,	"H�c M�c Nhai",},
		{921,1560,3104	,	"Thi�n Ph� S�n",},
		{922,1560,3104	,	"B�n Long S�n",},
		{923,2008,4080	,	"��a M�u S�n",},
		{924,2008,4080	,	"Uy�n Ph��ng S�n",},
		{949,1602,3199	,	"M� Cung Ki�m Gia",},
		{950,1592,3195	,	"�c Lang C�c",},
}

function gopos_step2lv130(ns, ne)
	
	if bandotren90 == 1 then
		Say("Ch�c n�ng b�n �� m�i t�m th�i ch�a m�")
		return
	end

	if GetLevel() < 190 then
		Say("��ng c�p c�a ng��i ch�a �� 130 kh�ng th� ��n khu v�c n�y")
		return
	end

--	print(ns, ne)
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
	
	local n_count = getn(tab_lv130map);
	
	local tab_Content = {};
	for i = ns_1, ne_1 do
		tinsert(tab_Content, tab_lv130map[i][4].."/#gopos_step3lv130( "..i..")");
	end
	
	if (ns_1 ~= 1) then
		tinsert(tab_Content, "Trang tr��c/#gopos_step2lv130( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang k� /#gopos_step2lv130( "..(ne_1+1)..","..n_count..")");

	end
	
	tinsert(tab_Content, "R�i kh�i/no");
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end

function gopos_step3lv130(nIdx)

	NewWorld(tab_lv130map[nIdx][1], tab_lv130map[nIdx][2], tab_lv130map[nIdx][3])
	SetFightState(1);
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i <color=yellow>"..tab_lv130map[nIdx][4].."<color> n�o");
	
end

tab_lv90map = {
		--{959,1437,3057	,	"Chi�n Long ��ng",},
		--{875,1576,3177	,	"H�c Sa ��ng",},
		{322,1589,3164	,	"Tr��ng B�ch s�n B�c (Bi�n Kinh)",},
	--	{998,1589,3164	,	"Tr��ng B�ch s�n B�c 2 (Bi�n Kinh 2)",},
		{321,967,2313	,		"Tr��ng B�ch s�n Nam (Ph��ng T��ng)",},
	--	{997,967,2313	,		"Tr��ng B�ch s�n Nam 2 (Ph��ng T��ng 2)",},
		{75,1811,3012	,		"Kho� Lang ��ng (Ph��ng T��ng)",},
		{227,1588,3237	,	"Sa M�c 3 (L�m An)",},
		{225,1474,3275	,	"Sa M�c 1 (L�m An)",},
		{226,1560,3184	,	"Sa M�c 2 (L�m An)",},
	--	{999,1560,3184	,	"Sa M�c 2 - 2",},
		{336,1124,3187	,	"Phong L�ng �� (T��ng D��ng)",},
		{340,1845,3438	,	"M�c Cao Qu�t (Th�nh ��)",},
	--	{1000,1845,3438	,	"M�c Cao Qu�t 2 (Th�nh �� 2)",},
		{144,1691,3020	,	"D��c V��ng ��ng t�ng 4 (Bi�n Kinh)",},
		{93,1529,3166	,		"Ti�n C�c ��ng (D��ng Ch�u)",},
		{124,1675,3418	,	"C�n Vi�n ��ng (D��ng Ch�u)",},
	--	{152,1672,3361	,	"Tuy�t B�o ��ng t�ng 8 (D��ng Ch�u)",},
	}

function gopos_step2lv90(ns, ne)
	if GetExpPercent()<-25 then
		Say("Kinh nghi�m �m n�n kh�ng th� s� d�ng Th�n H�nh Ph�.");
		return 1
	end
if GetLevel()<80 then
	Say("Ch�a �� ��ng c�p �� l�n map n�y luy�n c�ng.")
	return
end
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H�y gia nh�p m�n ph�i �� ti�p t�c b�n t�u !!!");
		return
	end 
--	print(ns, ne)
	if (not ns) then
		ns_1 = 1;
		ne_1 = 9;
	else
		ns_1 = ns;
		ne_1 = ne;
	end
	
	if (ne_1 - ns_1 > 8) then
		ne_1 = ns_1 + 8;
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

	if tab_lv90map[nIdx][1] == 959 then--chien long dong

		if chienlongdong == 0 then
			Say("Ch�c n�ng Chi�n Long ��ng t�m th�i ch�a m�")
			return
		end

		if GetCash() < 0 then
			Say("��i hi�p kh�ng mang �� 1 l��ng")
			return
		end
		--SetProtectTime(18*4) -- 4 giay bat tu 
		--AddSkillState(963, 1, 0, 18*4)
		Pay(1)
		else
			if GetCash() < 0 then
				Say("��i hi�p kh�ng mang �� 1 l��ng")
				return
			end
			Pay(1)
	end
if tab_lv90map[nIdx][1] == 336 then
			SetProtectTime(18*3) -- 4 giay bat tu 
		AddSkillState(963, 1, 0, 18*3)
		end
		if tab_lv90map[nIdx][1] == 997 then
			AddTermini(232);
			SetLogoutRV(1);
		end
		if tab_lv90map[nIdx][1] == 998 then
			AddTermini(233);
			SetLogoutRV(1);
		end
		if tab_lv90map[nIdx][1] == 1000 then
			AddTermini(234);
			SetLogoutRV(1);
		end
		SetProtectTime(18*3) -- 4 giay bat tu 
		AddSkillState(963, 1, 0, 18*3)
	NewWorld(tab_lv90map[nIdx][1], tab_lv90map[nIdx][2], tab_lv90map[nIdx][3])
	SetProtectTime(18*3) -- 4 giay bat tu 
		AddSkillState(963, 1, 0, 18*3)
	SetFightState(1);
	Msg2Player("Xin h�y ng�i y�n, ch�ng ta �i <color=yellow>"..tab_lv90map[nIdx][4].."<color> n�o");
	
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
		"Chi�n tr��ng Th�nh ��/#goto_sevencityfield1(1)",
		"Chi�n tr��ng Bi�n Kinh/#goto_sevencityfield1(2)",
		"Chi�n tr��ng ��i L�/#goto_sevencityfield1(3)",
		"Chi�n tr��ng Ph��ng T��ng/#goto_sevencityfield1(4)",
		"Chi�n tr��ng L�m An/#goto_sevencityfield1(5)",
		"Chi�n tr��ng T��ng D��ng/#goto_sevencityfield1(6)",
		"Chi�n tr��ng D��ng Ch�u/#goto_sevencityfield1(7)",
		"�� ta suy ngh� l�i/Cancel")
end
function goto_sevencityfield1(nIndex)
	local player = Player:New(PlayerIndex)
	local mapid = FIELD_LIST[nIndex]
	local err = {}
	if (BattleWorld:CheckPermission(mapid, player, err) == 0) then
		player:Say(err.Msg)
	else
		local field = BattleWorld:FindField(mapid)
		if (not field) then
			player:Say("Ch�a t�ng nghe qua c� n�i n�y")
			BattleWorld:Log(format("[ERROR SEVENCITY]field(%d) not found", mapid))
		elseif (field:Login(player) == 0) then
			BattleWorld:Log(format("[ERROR SEVENCITY]failed to login field(%d)", mapid))
		end
	end
end
function goto_sevencityfield(nIndex)
	local player = PlayerList:GetPlayer(PlayerIndex)
	local tbErr = {}
	if (BattleWorld:CheckMapPermission(player, tbErr) == 0) then
		player:Say(tbErr.Msg)
		return
	end
	if GetCash() < 0 then
		Say("��i hi�p kh�ng mang �� 1 l��ng")
		return
	end
	Pay(1)
	local nMapId = FIELD_LIST[nIndex]
	BattleWorld:Transfer(player, nMapId)
end
function ToSong()	-- �����η�������	
	if GetCash() < 0 then
	--	Say("��i hi�p kh�ng mang �� 7 l��ng")
	--	return
	end
	--Pay(7)
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	--elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		--	NewWorld( 324, 1541, 3178);
		--	DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		--	Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
			NewWorld( 325, 1541, 3178);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end

function ToJin()	-- ����𷽱�����
	if GetCash() < 0 then
	--	Say("��i hi�p kh�ng mang �� 7 l��ng")
	--	return
	end
	--Pay(7)
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Chi�n tr��ng T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 40 h�y v� luy�n th�m r�i h�y t�nh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim S� C�p" );
	--elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		--	NewWorld( 324, 1570, 3085);
	--		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		--	Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Trung C�p" );
	else
			NewWorld( 325, 1570, 3085);
			DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
			Msg2Player( "��n n�i b�o danh Chi�n Tr��ng T�ng Kim Cao C�p" );
	end
end

function DoRescriptFunc(nSel)
	if ( GetLevel() < 90 ) then
		Talk( 1, "", "T�ng Kim gian kh� kh�c li�t, ng��i ch�a ��t ��n c�p 90 h�y v� luy�n th�m r�i h�y t�nh." );
		return
	end
	local tbsongjin_pos = {1608,3254};	--�η������
	local szstr = "Phe V�ng (T)";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "Phe T�m (K)";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�� ��n th�nh ��i L�" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�� ��n th�nh ��i L�" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ��������ʹ�ûسǷ�
		Msg2Player( "�� ��n th�nh ��i L�" );
	end
end


function no()
end
