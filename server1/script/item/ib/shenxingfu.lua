--ThÇn hµnh phï edit by mcteam
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
Say("Bang v­ît qu¸ 100 thµnh viªn kh«ng thÓ sö dông thÇn thµnh phï.Xin h·y t«n träng s©n ch¬i kh«ng gian lËn trong viÖc s¸p nhËp bang héi ®Ó tr¸nh phiÒn phøc cho chÝnh bæn bang m×nh.");
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
		Say("§óng vµo lóc <color=yellow>"..ThoiGianOpenStr.."<color> míi b¾t ®Çu chÝnh thøc khai më m¸y chñ");
		return 1
	end
end
--if --GetExpPercent()<-100 then
	--	Say("Kinh nghiÖm ©m nªn kh«ng thÓ sö dông ThÇn Hµnh Phï.");
	--	return 1
	--end
	--if ( GetTaskTemp(200) == 1 ) or ( SubWorldIdx2ID( SubWorld ) >= 387 and SubWorldIdx2ID( SubWorld ) <= 395)then
	--	Msg2Player("HiÖn t¹i ng­¬i kh«ng thÓ sö dông thÇn hµnh phï!");
	--	return 1
	--end
	
	--if GetTask(5859) == 1 then
	--	Msg2Player("HiÖn t¹i ng­¬i kh«ng thÓ sö dông thÇn hµnh phï!");
	--	return 1
	--end
	
	local nSubWorldID = GetWorldPos();
	if (nSubWorldID >= 375 and nSubWorldID <= 386) then
		Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
		return 1
	end
	
	--if (nSubWorldID >= 416 and nSubWorldID <= 511) then
	--	Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
	--	return 1
	--end
	
--	if (nSubWorldID == 44 or nSubWorldID == 197 or nSubWorldID == 208 or nSubWorldID == 209 or nSubWorldID == 210 or nSubWorldID == 211 or nSubWorldID == 212 or (nSubWorldID >= 213 and nSubWorldID <= 223)	or nSubWorldID == 336 or nSubWorldID == 341 or nSubWorldID == 342	or nSubWorldID == 175	or nSubWorldID == 337	or nSubWorldID == 338	or nSubWorldID == 339 or ( nSubWorldID >= 387 and  nSubWorldID <= 395 ) )then 
--		Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
--		return 1
--	end;

	--ÎÀ¹úÕ½ÕùÖ®·é»ðÁ¬³ÇµØÍ¼£¬²»ÄÜÊ¹ÓÃ
	--if (CheckAllMaps(nSubWorldID) == 1) then
	--	Msg2Player("B¶n ®å hiÖn t¹i ng­¬i ®ang ®øng thuéc khu vùc ®Æc thï, kh«ng thÓ sö dông thÇn hµnh phï.");
	--	return 1
	--end;
	
--	if (GetLevel() < 5) or check_faction()==1 then
	--	Say("Ng­êi ch¬i ph¶i ®¹t ®¼ng cÊp 5 trë lªn + ®· gia nhËp m«n ph¸i míi cã thÓ sö dông thÇn hµnh phï.", 0);
	--	return 1
--	end;

	local PK_value = GetPK()
	if PK_value == 10 then
		--Say("Ng­êi hai tay dÝnh ®Çy m¸u trÞ sè <color=red>PK 10<color> ®i ®Õn ch©n trêi gãc bÓ th× còng kh«ng thÓ tho¸t khái luËt ph¸p! <enter>Mau mau ®Õn nhµ lao ®Çu thó ®Ó gi¶m bít trÞ PK", 0);
		--return 1
	end
	
	Say("ThÇn hµnh phï cã thÓ ®Æt ®iÓm håi sinh, vµ còng cã thÓ ®i ®Õn n¬i thµnh thÞ trÊn nµo ®ã.", 6, 
		"Rêi khái/no",
		"ThiÕt ®Æt ®iÓm håi sinh, lÇn sau nÕu ®¹i hiÖp sö dông thæ ®Þa phï sÏ ®Õn n¬i nµy./set_backpos", 
		"Sö dông thuËt thÇn hµnh cã thÓ ®­a ®¹i hiÖp ®Õn thµnh thÞ th«n trÊn chØ ®Þnh./gototown"
		--	"Boss TiÓu Hoµng Kim/#bandomonphai()",
	--	"ChiÕn Long §éng./congchienlongdong",
		--"§i Hoa S¬n Tam Kú./vaodautruonghoason",
	
		--"B¸t Qu¸i TrËn §å./vaodautruong"
		--"§i ®Õn vÞ trÝ kh¸c./#tbVNGWORDPOS:GotoOtherMap()"
		--"§i ®Õn vÞ trÝ kh¸c./Goto_OtherMap"
		);

	return 1	
end;

function hoatdonggame()

	local tbSay = {}
	tinsert(tbSay,"§Çu Tr­êng Sinh Tö (Qu¶ Trung)./#vaodautruong()")
	tinsert(tbSay,"Th«i ta kh«ng muèn ®i./no")
	Say("Mêi lùa chän khu vùc tham ®Êu", getn(tbSay), tbSay)
	return 1	
end;
function vaodautruong2()

	local tbSay = {}
	tinsert(tbSay,"HËu Doanh B¾c./#gotoDT2(1572,2438)")
	tinsert(tbSay,"HËu Doanh Nam./#gotoDT2(1206,3156)")
	tinsert(tbSay,"HËu Doanh  §«ng./#gotoDT2(1545,3110)")
	tinsert(tbSay,"HËu Doanh T©y./#gotoDT2(1218,2452)")
	tinsert(tbSay,"Th«i ta kh«ng muèn ®i./no")
	Say("Mêi lùa chän khu vùc tham ®Êu", getn(tbSay), tbSay)
	return 1	
end;
function gotoDT2(nX,nY)
if GetLevel()<80 then
	Say("Khu vùc chØ giµnh cho nh©n vËt cÊp 80 trë lªn")
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
 Say("CÊp ®é 60 míi cã thÓ lªn b¶n ®å nµy.")
 return
end
	NewWorld(333 , toadox, toadoy)
	SetFightState(0)
end
function vaodautruonghoason()

	local tbSay = {}
	tinsert(tbSay,"§iÓm TËp KÕt 1./#gototapket_ok(1286,3209)")
	tinsert(tbSay,"§iÓm TËp KÕt 2./#gototapket_ok(1321,2884)")
	tinsert(tbSay,"§iÓm TËp KÕt 3./#gototapket_ok(1544,3206)")
	tinsert(tbSay,"Th«i ta kh«ng muèn ®i./no")
	Say("Mêi lùa chän khu vùc tham ®Êu", getn(tbSay), tbSay)
	return 1	
end;
function vaodautruong()

	local tbSay = {}
	tinsert(tbSay,"HËu Doanh B¾c./#gotoDT(1572,2438)")
	tinsert(tbSay,"HËu Doanh Nam./#gotoDT(1206,3156)")
	tinsert(tbSay,"HËu Doanh  §«ng./#gotoDT(1545,3110)")
	tinsert(tbSay,"HËu Doanh T©y./#gotoDT(1218,2452)")
	tinsert(tbSay,"Th«i ta kh«ng muèn ®i./no")
	Say("Mêi lùa chän khu vùc tham ®Êu", getn(tbSay), tbSay)
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
 Say("CÊp ®é 40 míi cã thÓ lªn b¶n ®å nµy.")
 return
end
local tbSay = {

"Lªn Cæng T­êng V©n./congtuongvan",
"Lªn Cæng Vò Di S¬n./congvudison",
"Lªn Cæng La Tiªu S¬n./conglatieuson",
"Th«i ta kh«ng muèn n÷a./no"
}
Say("B¹n chän chøc n¨ng nµo ?",getn(tbSay),tbSay)
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
 Say("CÊp ®é 60 míi cã thÓ lªn b¶n ®å nµy.")
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
		"Di chuyÓn ®Õn b¶n ®å luyÖn c«ng cÊp 20 /gopos_step2lv20",
		"Di chuyÓn ®Õn b¶n ®å luyÖn c«ng cÊp 30 /gopos_step2lv30",
		"Di chuyÓn ®Õn b¶n ®å luyÖn c«ng cÊp 40 /gopos_step2lv40",
		"Di chuyÓn ®Õn b¶n ®å luyÖn c«ng cÊp 50 /gopos_step2lv50",
		"Di chuyÓn ®Õn b¶n ®å luyÖn c«ng cÊp 60 /gopos_step2lv60",
		"Di chuyÓn ®Õn b¶n ®å luyÖn c«ng cÊp 70 /gopos_step2lv70",
		"Di chuyÓn ®Õn b¶n ®å luyÖn c«ng cÊp 80 /gopos_step2lv80",
		"Ta ch­a muèn ®i ®©u c¶./no",
	}
	Say("Lùa chän b¶n ®å luyÖn c«ng cÇn thiÕt.", getn(tab_Content), tab_Content);
end;

tab_lv80map = {
		{224,1622,3118	,"Sa M¹c ®Þa biÓu (L©m An)",},
		{198,1521,2947	,"Thanh Khª §éng (§¹i Lý)",},
		{320,1147,3123	,"Ch©n nói Tr­êng B¹ch (T­¬ng D­¬ng)",},
		{181,1425,2999	,"L­ìng Thñy §éng (§¹i Lý)",},
		{201,1616,3195	,"B¨ng Hµ §éng (Ph­îng T­êng)",},
		{202,1787,2823	,"Phï Dung ®éng (Thµnh §«)",},
		{203,1548,2990	,"V« Danh §éng (§¹i Lý)",},
		{207,1585,3215	,"TÇn L¨ng tÇng 3 (Ph­îng T­êng)",},
	}

function gopos_step2lv80(ns, ne)
	if GetExp()<0 then
		Say("Kinh nghiÖm ©m nªn kh«ng thÓ sö dông ThÇn Hµnh Phï.");
		return 1
	end
if GetLevel()<70 then
	Say("Ch­a ®ñ ®¼ng cÊp ®Ó lªn map nµy luyÖn c«ng.")
	return
end
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H·y gia nhËp m«n ph¶i ®Ó tiÕp tôc b«n tÈu !!!");
		return
	end 
	local n_count = getn(tab_lv80map);
	local tab_Content = {};
	for i = 1, 8 do
		tinsert(tab_Content, tab_lv80map[i][4].."/#gopos_step3lv80( "..i..")");
	end
	
	
	tinsert(tab_Content, "Hñy bá/no");
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
end


function gopos_step3lv80(nIdx)
	NewWorld(tab_lv80map[nIdx][1], tab_lv80map[nIdx][2], tab_lv80map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ngåi yªn! Chóng ta ®i!"..tab_lv80map[nIdx][4].."!");
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 70----------------------------
tab_lv70map = {
{319,1630,3587	,"L©m Du Quan (D­¬ng Ch©u)",},
--		--{993,1630,3587	,"L©m Du Quan 2 (BiÖn Kinh)",},
		--{994,1630,3587	,"L©m Du Quan 1 (BiÖn Kinh)",},
		--{1003,1630,3587	,"L©m Du Quan 4 (Ph­îng T­êng)",},
		--{1004,1630,3587	,"L©m Du Quan 2 (Ph­îng T­êng)",},
		--{1012,1630,3587	,"L©m Du Quan 6 (§¹i Lý)",},
		--{1013,1630,3587	,"L©m Du Quan 3(§¹i Lý)",},
		--{1014,1630,3587	,"L©m Du Quan 4 (L©m An)",},
		{123,1702,3350	,"L·o Hæ §éng (D­¬ng Ch©u)",},
		{995,1702,3350	,"L·o Hæ §éng 2 (D­¬ng Ch©u)",},
		{996,1702,3350	,"L·o Hæ §éng 3 (D­¬ng Ch©u)",},
		{206,1603,3215	,"TÇn L¨ng tÇng 2 (Ph­îng T­êng)",},
		{72,1659,3308	,"§¹i tï ®éng (Ph­îng T­êng)",},
		{169,1596,3213	,"Long Nh·n ®éng (§¹i Lý)",},
		{130,1541,3147	,"L­u Tiªn ®éng tÇng 6 (T­¬ng D­¬ng)",},
		
		
	}
	
	

function gopos_step2lv70(ns, ne)
if GetLevel()<60 then
	Say("Ch­a ®ñ ®¼ng cÊp ®Ó lªn map nµy luyÖn c«ng.")
	return
end
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H·y gia nhËp m«n ph¶i ®Ó tiÕp tôc b«n tÈu !!!");
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
		tinsert(tab_Content, "Trang tr­íc/#gopos_step2lv70( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang kÕ /#gopos_step2lv70( "..(ne_1+1)..","..n_count..")");

	end
	
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
	
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
	Msg2Player("Ngåi yªn! Chóng ta ®i!"..tab_lv70map[nIdx][4].."!");
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 60----------------------------
tab_lv60map = {
		{79,1600,3206	,"T­¬ng D­¬ng Nha M«n MËt §¹o (T­¬ng D­¬ng)",},
		{56,1516,3443	,"Hoµnh S¬n Ph¸i",},
		{166,1649,3231	,"Thiªn T©m Th¸p tÇng 3 (§¹i Lý)",},
		{117,1644,3033	,"T­êng V©n §éng tÇng 2 (T­¬ng D­¬ng)",},
		{118,1590,3182	,"T­êng V©n §éng tÇng 3 (T­¬ng D­¬ng)",},
		{196,1539,3267	,"D­¬ng Gi¸c §éng (§¹i Lý)",},
		{149,1610,3220	,"TuyÕt B¸o §éng tÇng 3 (D­¬ng Ch©u)",},
	}

function gopos_step2lv60(ns, ne)
if GetLevel()<50 then
	Say("Ch­a ®ñ ®¼ng cÊp ®Ó lªn map nµy luyÖn c«ng.")
	return
end
	local n_count = getn(tab_lv60map);
	local tab_Content = {};
	for i = 1, 7 do
		tinsert(tab_Content, tab_lv60map[i][4].."/#gopos_step3lv60( "..i..")");
	end
	
	
	tinsert(tab_Content, "Hñy bá/no");
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
end


function gopos_step3lv60(nIdx)
	NewWorld(tab_lv60map[nIdx][1], tab_lv60map[nIdx][2], tab_lv60map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ngåi yªn! Chóng ta ®i!"..tab_lv60map[nIdx][4].."!");
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 50----------------------------
tab_lv50map = {
		{182,1777,2982	,"NghiÖt Long §éng (§¹i Lý)",},
		{164,1611,3187	,"Thiªn T©m Th¸p (§¹i Lý)",},
		{165,1473,3151	,"Thiªn T©m Th¸p TÇng 2 (§¹i Lý)",},
		{38,1598,3189	,"Mª Cung ThiÕt Th¸p (BiÖn Kinh)",},
		{116,1605,3210	,"T­êng V©n §éng (T­¬ng D­¬ng)",},
		{66,1889,3107	,"§¸y §éng §×nh Hå",},
		{125,1662,3153	,"L­u Tiªn §éng (T­¬ng D­¬ng)",},
	}

function gopos_step2lv50(ns, ne)
if GetLevel()<40 then
	Say("Ch­a ®ñ ®¼ng cÊp ®Ó lªn map nµy luyÖn c«ng.")
	return
end
	local n_count = getn(tab_lv50map);
	local tab_Content = {};
	for i = 1, 7 do
		tinsert(tab_Content, tab_lv50map[i][4].."/#gopos_step3lv50( "..i..")");
	end
	
	
	tinsert(tab_Content, "Hñy bá/no");
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
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
	Msg2Player("Ngåi yªn! Chóng ta ®i!"..tab_lv50map[nIdx][4].."!");
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 40----------------------------
tab_lv40map = {
		{21,2622,4502	,"Thanh Thµnh S¬n (Thµnh §«)",},
		{167,1575,3239	,"§iÓm Th­¬ng S¬n (L©m An)",},
		{41,2064,2813	,"Phôc Ng­u S¬n T©y (D­¬ng Ch©u)",},
		{91,1606,3212	,"Mª Cung Kª Qu¸n §éng (D­¬ng Ch©u)",},
		{122,1613,3324	,"Hoµng Hµ Nguyªn §Çu (D­¬ng Ch©u)",},
		{113,1684,3349	,"MËt ThÊt TiÕu L©m (D­¬ng Ch©u)",},
		{23,1589,3204	,"ThÇn Tiªn §éng (Thµnh §«)",},
		{8,1605,3503	,"L¨ng TÇn Thñy Hoµng (Ph­îng T­êng)",},
		{170,1612,3187	,"Thæ PhØ §éng (§¹i Lý)",},
--		{21,2594,4404	,"Thanh Thµnh S¬n",},
{180,1599,3210	,"Long Cung §éng (§¹i Lý)",},

	}

function gopos_step2lv40(ns, ne)
if GetLevel()<30 then
	Say("Ch­a ®ñ ®¼ng cÊp ®Ó lªn map nµy luyÖn c«ng.")
	return
end
	local n_count = getn(tab_lv40map);
	local tab_Content = {};
	for i = 1, 10 do
		tinsert(tab_Content, tab_lv40map[i][4].."/#gopos_step3lv40( "..i..")");
	end
	
	
	tinsert(tab_Content, "Hñy bá/no");
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
end


function gopos_step3lv40(nIdx)
	NewWorld(tab_lv40map[nIdx][1], tab_lv40map[nIdx][2], tab_lv40map[nIdx][3])
	SetFightState(1);
	Msg2Player("Ngåi yªn! Chóng ta ®i!"..tab_lv40map[nIdx][4].."!");
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
end
---------------------map luyen cong 30----------------------------
tab_lv30map = {
		{193,1938,2845	,"Vò Di S¬n (§¹i Lý)",},
		{170,1612,3187	,"Thæ PhØ §éng",},
	--	{167,1599,3224	,"§iÓm Th­¬ng S¬n",},
	--	{22,1759,3365	,"B¹ch V©n §éng (Thµnh §«)",},
	--	{1010,1759,3365	,"B¹ch V©n §éng 2 (Thµnh §« 2)",},
	--	{21,2594,4404	,"Thanh Thµnh S¬n",},
		{92,1631,3292	,"Thôc C­¬ng S¬n (D­¬ng Ch©u)",},
	--	{1011,1631,3292	,"Thôc C­¬ng S¬n 2 (D­¬ng Ch©u 2)",},
		{90,1646,3544	,"Phôc Ng­u S¬n §«ng (D­¬ng Ch©u)",},
	}

function gopos_step2lv30(ns, ne)
if GetLevel()<20 then
	Say("Ch­a ®ñ ®¼ng cÊp ®Ó lªn map nµy luyÖn c«ng.")
	return
end
	local n_count = getn(tab_lv30map);
	local tab_Content = {};
	for i = 1, 4 do
		tinsert(tab_Content, tab_lv30map[i][4].."/#gopos_step3lv30( "..i..")");
	end
	
	
	tinsert(tab_Content, "Hñy bá/no");
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
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
	Msg2Player("Ngåi yªn! Chóng ta ®i!"..tab_lv30map[nIdx][4].."!");
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
end

---------------------map luyen cong 20----------------------------
tab_lv20map = {
		{19,3102,3963	,"KiÕm C¸c T©y Nam (Thµnh §«)",},
	--	{1007,3102,3963	,"KiÕm C¸c T©y Nam 2 (Thµnh §« 2)",},
		{3,1133,3721	,"KiÕm C¸c T©y B¾c (Ph­îng T­êng)",},
		--{43,1623,3181	,"KiÕm C¸c Trung Nguyªn (D­¬ng Ch©u)",},
		{70,1602,3227	,"Vò L¨ng S¬n (Ph­îng T­êng)",},
		{71,1677,3142	,"B¹ch Thñy §éng (Ph­îng T­êng)",},
		--{73,1595,3205	,"Phôc L­u §éng (Ph­îng T­êng)",},
		{7,2276,2825	,"TÇn L¨ng (Ph­îng T­êng)",},
		{1009,2276,2825	,"TÇn L¨ng 2 (Ph­îng T­êng 2)",},
		--{179,1617,3286	,"La Tiªu S¬n (§¹i Lý)",},

	}

function gopos_step2lv20(ns, ne)
if GetLevel()<10 then
	Say("Ch­a ®ñ ®¼ng cÊp ®Ó lªn map nµy luyÖn c«ng.")
	return
end
	local n_count = getn(tab_lv20map);
	local tab_Content = {};
	for i = 1, 4 do
		tinsert(tab_Content, tab_lv20map[i][4].."/#gopos_step3lv20( "..i..")");
	end
	
	
	tinsert(tab_Content, "Hñy bá/no");
	Say("ThÇn Hµnh Phï, di chuyÓn ®Õn n¬i cÇn ®Õn.", getn(tab_Content), tab_Content);
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
	Msg2Player("Ngåi yªn! Chóng ta ®i!"..tab_lv20map[nIdx][4].."!");
	SetProtectTime(18*3) --ÈýÃë±£»¤Ê±¼ä
	AddSkillState(963, 1, 0, 18*3)
end

-------------------------------END Luyen cong tan thu----------------------------------------------


function Goto_StepPos(nIdx)
	--local tbOtherMap = tb_OtherMap[nIdx];
	--NewWorld(tbOtherMap[1], tbOtherMap[2], tbOtherMap[3]);
	--SetFightState(0);
	--Msg2Player("Xin h·y ngåi yªn, chóng ta ®i"..tbOtherMap[4].." nµo");
end

function Goto_OtherMap()
	--local tab_Content = {};
	--local nCount = getn(tb_OtherMap);
	--for i = 1, nCount do
		--tinsert(tab_Content, tb_OtherMap[i][4].."/Goto_StepPos( "..i..")");
	--end
	--tinsert(tab_Content, "Rêi khái/no");
	--Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end

tb_OtherMap = {
		{523,1579,3121	,"Minh nguyÖt trÊn T­¬ng D­¬ng",},
		{521,1579,3121	,"Minh nguyÖt trÊn Thµnh §«",},
		{520,1579,3121	,"Minh nguyÖt trÊn Ph­îng T­êng",},
		{525,1579,3121	,"Minh nguyÖt trÊn §¹i Lý",},
		{524,1579,3121	,"Minh nguyÖt trÊn D­¬ng Ch©u",},
		{522,1579,3121	,"Minh nguyÖt trÊn BiÖn Kinh",},
		{526,1579,3121	,"Minh nguyÖt trÊn L©m An",},
		{55,1602,3125		,"§µo Hoa Nguyªn",},
	};

tab_RevivePos = {
	[1] = {	--"³É¶¼"
		{"Thµnh §« ®«ng", 6, 11},{"Thµnh §« t©y", 7, 11},{"Thµnh §« nam", 8, 11},{"Thµnh §« b¾c", 9, 11},{"Thµnh §« trung t©m", 5, 11}
	},
	[2] = {	--"ÏåÑô"
		{"T­¬ng D­¬ng ®«ng", 30, 78},{"T­¬ng D­¬ng t©y", 32 , 78},{"T­¬ng D­¬ng nam", 31, 78},{"T­¬ng D­¬ng b¾c", 33, 78},{"T­¬ng D­¬ng trung t©m", 29, 78}
	},
	[3] = {	--"·ïÏè"
		{"Ph­îng T­êng ®«ng", 1, 1},{"Ph­îng T­êng t©y", 2, 1},{"Ph­îng T­êng nam", 3, 1},{"Ph­îng T­êng b¾c", 4, 1},{"Ph­îng T­êng trung t©m", 0, 1}
	},
	[4] = {	--"´óÀí"
		{"§¹i lý b¾c", 64, 162},{"§¹i lý trung t©m", 63, 162}
	},
	[5] = {	--"ãê¾©"
		{"BiÖn Kinh ®«ng", 24, 37},{"BiÖn Kinh t©y", 25, 37},{"BiÖn Kinh nam", 24, 37},{"BiÖn Kinh b¾c", 26, 37},{"BiÖn Kinh trung t©m", 23, 37}
	},
	[6] = {	--"ÑïÖÝ"
		{"D­¬ng Ch©u ®«ng", 35, 80},{"D­¬ng Ch©u t©y", 38, 80},{"D­¬ng Ch©u nam", 37, 80},{"D­¬ng Ch©u b¾c", 36, 80},{"D­¬ng Ch©u trung t©m", 34, 80}
	},
	[7] = {	--"ÁÙ°²"
		{"L©m An ®«ng", 68, 176},{"L©m An nam", 67, 176},{"L©m An b¾c", 69, 176}
	},
	[8] = {	--"´å×¯"
		{"Ba L¨ng huyÖn", 19, 53},{"Giang T©n Th«n", 10, 20},{"VÜnh L¹c trÊn", 43, 99},{"Chu Tiªn trÊn", 45, 100},{"§¹o H­¬ng th«n", 47, 101},{"Long M«n trÊn", 55, 121},{"Th¹ch Cæ trÊn", 59, 153},{"Long TuyÒn th«n", 65, 174},{"T©y S¬n th«n", 1, 175}
	},
	[9] = {	--"ÃÅÅÉ"
		{"Thiªn V­¬ng Bang", 21, 59},{"ThiÕu L©m ph¸i", 52, 103},{"§­êng M«n", 15, 25},{"Ngò §éc Gi¸o", 71, 183},{"Nga My ph¸i", 13, 13},{"Thóy Yªn m«n", 61, 154},{"Thiªn NhÉn gi¸o", 28, 49},{"C¸i Bang", 53, 115},{"Vâ §ang ph¸i", 40, 81},{"C«n L«n ph¸i", 58, 131}
	},

};
--Éè¶¨ÖØÉúµã£¨Ñ¡³ÇÊÐ£©
function set_backpos()
	for i = 1, getn(tbBATTLEMAP) do 
		if ( nMapId == tbBATTLEMAP[i] ) then
			Msg2Player("Lóc nµy b¹n kh«ng thÓ sö dông vËt phÈm nµy");
			return 1;
		end
	end	
	
	local tab_Content = {
		"Rêi khái/no",
		"Thµnh §«/#setpos_step2(1)",
		"T­¬ng D­¬ng/#setpos_step2(2)",
		"Ph­îng T­êng/#setpos_step2(3)",
		"§¹i Lý/#setpos_step2(4)",
		"BiÖn Kinh/#setpos_step2(5)",
		"D­¬ng Ch©u/#setpos_step2(6)",
		"L©m An/#setpos_step2(7)",
		"Th«n trang/#setpos_step2(8)",
		"M«n ph¸i/#setpos_step2(9)"
	}
	Say("ThiÕt ®Æt ®iÓm håi thµnh cho l Çn sau sö dông thæ ®Þa phï", getn(tab_Content), tab_Content);
end;

--Ñ¡µØµã
function setpos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#setpos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThiÕt ®Æt ®iÓm håi thµnh cho l Çn sau sö dông thæ ®Þa phï", getn(tab_Content), tab_Content);
end;

--Ñ¡µØµã
function setpos_step3(nIdx, nSubIdx)
	SetRevPos(tab_RevivePos[nIdx][nSubIdx][3], tab_RevivePos[nIdx][nSubIdx][2]);
	Say("§¹i hiÖp ®· ®Æt thµnh c«ng ®iÓm håi sinh"..tab_RevivePos[nIdx][nSubIdx][1], 0);
	Msg2Player("§¹i hiÖp ®· ®Æt thµnh c«ng ®iÓm håi sinh"..tab_RevivePos[nIdx][nSubIdx][1]);
end;

--»Ø³Ç
function gototown()
	
	local tab_Content = {
		"Rêi khái/no",
		"Thµnh thÞ /gopos_step2town",
	--	"Thµnh thÞ 2/gopos_step2town2",
		"Th«n trang/#gopos_step2(8)",
		"M«n ph¸i/#gopos_step2(9)",
		"B¶n ®å luyÖn c«ng t©n thñ 2x ®Õn 8x/#luyencongtanthu()",
		"B¶n ®å cÊp 90/#gopos_step2lv90()",
		"B¶n §å Thu PhÝ /#menuthuphi()",
		--"B¶n §å CÊp 190/#bandocap150()",
		"ChiÕn tr­êng tèng Tèng Kim/gopos_step2battle",
	--	"ChiÕn tr­êng ThÊt Thµnh §¹i ChiÕn/gopos_sevencityfield"
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end;
function bandocap150()
	if GetLevel()<190 then
		Say("CÊp 150 míi cã thÓ lªn b¶n ®å nµy.")
		return
	end
	SetFightState(1)
	SetLogoutRV(1)
	NewWorld(150,1586,3172)
end
function bandocap120()
	if GetLevel()<120 then
		Say("CÊp 120 míi cã thÓ lªn b¶n ®å nµy.")
		return
	end
	SetLogoutRV(1)
	SetFightState(1)
	NewWorld(924,2008,4080)
end
function bandomonphai()
	local tab_Content = {
		"Thiªn V­¬ng Bang 2/#bandomonphai_ok(1021,1567,3226)",
		"ThiÕu L©m Ph¸i 2/#bandomonphai_ok(1024,1624,3164)",
		"§­êng M«n 2/#bandomonphai_ok(1015,4028,5183)",
		"Ngò §éc Gi¸o 2/#bandomonphai_ok(1018,1491,3177)",
		"Nga My Ph¸i 2/#bandomonphai_ok(1016,1948,4924)",
		"Thóy Yªn M«n 2/#bandomonphai_ok(1019,403,1361)",
		"Thiªn NhÉn Gi¸o 2/#bandomonphai_ok(1022,1644,3215)",
		"C¸i Bang 2/#bandomonphai_ok(1020,1501,3672)",
		"Vâ §ang Ph¸i 2/#bandomonphai_ok(1017,1592,3206)",
		"C«n L«n Ph¸i 2/#bandomonphai_ok(1023,1488,3069)",
		"Rêi khái/no",
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
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
		
		"§«ng Tr­êng B¹ch (Ph­îng T­êng)/#bandomoitren100(150)",
		"T©y Tr­êng B¹ch (BiÖn Kinh)/#bandomoitren100(1005)",
		"Sa M¹c Cao QuËt (Thµnh §«)/#bandomoitren100(1006)",
		"Rêi khái/no",
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end

function bandomoitren100(mapid)
	if GetLevel()<80 then
		Say("B¶n ®å nµy chØ giµnh cho nh©n vËt cÊp 80 trë lªn.")
		return
	end
	
	if CalcEquiproomItemCount(6,1,4426,-1)<1 then
		Say("CÇn cã Cöu Ch©u LÖnh trªn ng­êi míi cã thÓ lªn b¶n ®å nµy.")
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
	[1] = {	--"³É¶¼"
		{"Thµnh §« ®«ng", 6, 1027},{"Thµnh §« t©y", 7, 1027},{"Thµnh §« nam", 8, 1027},{"Thµnh §« b¾c", 9, 1027},{"Thµnh §« trung t©m", 5, 1027}
	},
	[2] = {	--"ÏåÑô"
		{"T­¬ng D­¬ng ®«ng", 30, 1026},{"T­¬ng D­¬ng t©y", 32 , 1026},{"T­¬ng D­¬ng nam", 31, 1026},{"T­¬ng D­¬ng b¾c", 33, 1026},{"T­¬ng D­¬ng trung t©m", 29, 1026}
	},
	[3] = {	--"·ïÏè"
		{"Ph­îng T­êng ®«ng", 1, 1025},{"Ph­îng T­êng t©y", 2, 1025},{"Ph­îng T­êng nam", 3, 1025},{"Ph­îng T­êng b¾c", 4, 1025},{"Ph­îng T­êng trung t©m", 0, 1025}
	},
	[4] = {	--"´óÀí"
		{"§¹i lý b¾c", 64, 1029},{"§¹i lý trung t©m", 63, 1029}
	},
	[5] = {	--"ãê¾©"
		{"BiÖn Kinh ®«ng", 24, 1028},{"BiÖn Kinh t©y", 25, 1028},{"BiÖn Kinh nam", 24, 1028},{"BiÖn Kinh b¾c", 26, 1028},{"BiÖn Kinh trung t©m", 23, 1028}
	},
	[6] = {	--"ÑïÖÝ"
		{"D­¬ng Ch©u ®«ng", 35, 1030},{"D­¬ng Ch©u t©y", 38, 1030},{"D­¬ng Ch©u nam", 37, 1030},{"D­¬ng Ch©u b¾c", 36, 1030},{"D­¬ng Ch©u trung t©m", 34, 1030}
	},
	[7] = {	--"ÁÙ°²"
		{"L©m An ®«ng", 68, 1031},{"L©m An nam", 67, 1031},{"L©m An b¾c", 69, 1031}
	},
};
function gopos_step2town2()
	local tab_Content = {
		"Rêi khái/no",
		"Thµnh §«/#gopos_step22(1)",
		"T­¬ng D­¬ng/#gopos_step22(2)",
		"Ph­îng T­êng/#gopos_step22(3)",
		"§¹i Lý/#gopos_step22(4)",
		"BiÖn Kinh/#gopos_step22(5)",
		"D­¬ng Ch©u/#gopos_step22(6)",
		"L©m An/#gopos_step22(7)",
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
function gopos_step22(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos2[nIdx]) do
		tinsert(tab_Content, tab_RevivePos2[nIdx][i][1].."/#gopos_step33( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
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
	Msg2Player("Xin h·y ngåi yªn, chóng ta ®i"..tab_RevivePos2[nIdx][nSubIdx][1].." nµo");
end;

function gopos_step2town()
	local tab_Content = {
		"Rêi khái/no",
		"Thµnh §«/#gopos_step2(1)",
		"T­¬ng D­¬ng/#gopos_step2(2)",
		"Ph­îng T­êng/#gopos_step2(3)",
		"§¹i Lý/#gopos_step2(4)",
		"BiÖn Kinh/#gopos_step2(5)",
		"D­¬ng Ch©u/#gopos_step2(6)",
		"L©m An/#gopos_step2(7)",
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end

--ÉñÐÐ·û£­£­£­£­µÚ¶þ²½
function gopos_step2(nIdx)
	local tab_Content = {};
	for i = 1, getn(tab_RevivePos[nIdx]) do
		tinsert(tab_Content, tab_RevivePos[nIdx][i][1].."/#gopos_step3( "..nIdx..","..i..")");
	end;
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end;

--ÉñÐÐ·û£­£­£­£­µÚÈý²½
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
	Msg2Player("Xin h·y ngåi yªn, chóng ta ®i"..tab_RevivePos[nIdx][nSubIdx][1].." nµo");
end;

tab_lv130map = {
		{917,1816,3392	,	"Ph¸ch HuyÕt Cèc",},
		{824,1816,3392	,	"¸c Nh©n Cèc",},
		{919,1608,3168	,	"Thùc Cèt Nhai",},
		{920,1608,3168	,	"H¾c Méc Nhai",},
		{921,1560,3104	,	"Thiªn Phô S¬n",},
		{922,1560,3104	,	"Bµn Long S¬n",},
		{923,2008,4080	,	"§Þa MÉu S¬n",},
		{924,2008,4080	,	"UyÓn Ph­îng S¬n",},
		{949,1602,3199	,	"Mª Cung KiÕm Gia",},
		{950,1592,3195	,	"¸c Lang Cèc",},
}

function gopos_step2lv130(ns, ne)
	
	if bandotren90 == 1 then
		Say("Chøc n¨ng b¶n ®å míi t¹m thêi ch­a më")
		return
	end

	if GetLevel() < 190 then
		Say("§¼ng cÊp cña ng­¬i ch­a ®ñ 130 kh«ng thÓ ®Õn khu vùc nµy")
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
		tinsert(tab_Content, "Trang tr­íc/#gopos_step2lv130( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang kÕ /#gopos_step2lv130( "..(ne_1+1)..","..n_count..")");

	end
	
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end

function gopos_step3lv130(nIdx)

	NewWorld(tab_lv130map[nIdx][1], tab_lv130map[nIdx][2], tab_lv130map[nIdx][3])
	SetFightState(1);
	Msg2Player("Xin h·y ngåi yªn, chóng ta ®i <color=yellow>"..tab_lv130map[nIdx][4].."<color> nµo");
	
end

tab_lv90map = {
		--{959,1437,3057	,	"ChiÕn Long §éng",},
		--{875,1576,3177	,	"H¾c Sa ®éng",},
		{322,1589,3164	,	"Tr­êng B¹ch s¬n B¾c (BiÖn Kinh)",},
	--	{998,1589,3164	,	"Tr­êng B¹ch s¬n B¾c 2 (BiÖn Kinh 2)",},
		{321,967,2313	,		"Tr­êng B¹ch s¬n Nam (Ph­îng T­êng)",},
	--	{997,967,2313	,		"Tr­êng B¹ch s¬n Nam 2 (Ph­îng T­êng 2)",},
		{75,1811,3012	,		"Kho¶ Lang ®éng (Ph­îng T­êng)",},
		{227,1588,3237	,	"Sa M¹c 3 (L©m An)",},
		{225,1474,3275	,	"Sa M¹c 1 (L©m An)",},
		{226,1560,3184	,	"Sa M¹c 2 (L©m An)",},
	--	{999,1560,3184	,	"Sa M¹c 2 - 2",},
		{336,1124,3187	,	"Phong L¨ng ®é (T­¬ng D­¬ng)",},
		{340,1845,3438	,	"M¹c Cao QuËt (Thµnh §«)",},
	--	{1000,1845,3438	,	"M¹c Cao QuËt 2 (Thµnh §« 2)",},
		{144,1691,3020	,	"D­îc V­¬ng ®éng tÇng 4 (BiÖn Kinh)",},
		{93,1529,3166	,		"TiÕn Cóc ®éng (D­¬ng Ch©u)",},
		{124,1675,3418	,	"C¸n Viªn ®éng (D­¬ng Ch©u)",},
	--	{152,1672,3361	,	"TuyÕt B¸o ®éng tÇng 8 (D­¬ng Ch©u)",},
	}

function gopos_step2lv90(ns, ne)
	if GetExpPercent()<-25 then
		Say("Kinh nghiÖm ©m nªn kh«ng thÓ sö dông ThÇn Hµnh Phï.");
		return 1
	end
if GetLevel()<80 then
	Say("Ch­a ®ñ ®¼ng cÊp ®Ó lªn map nµy luyÖn c«ng.")
	return
end
	local nFact = GetLastFactionNumber()
	if nFact == -1 then	
	Talk(1, "", "H·y gia nhËp m«n ph¶i ®Ó tiÕp tôc b«n tÈu !!!");
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
		tinsert(tab_Content, "Trang tr­íc/#gopos_step2lv90( 1,"..(ns_1-1)..")");
	end
	
	if (ne_1 < n_count) then
		tinsert(tab_Content, "Trang kÕ /#gopos_step2lv90( "..(ne_1+1)..","..n_count..")");

	end
	
	tinsert(tab_Content, "Rêi khái/no");
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end


function gopos_step3lv90(nIdx)

	if tab_lv90map[nIdx][1] == 959 then--chien long dong

		if chienlongdong == 0 then
			Say("Chøc n¨ng ChiÕn Long §éng t¹m thêi ch­a më")
			return
		end

		if GetCash() < 0 then
			Say("§¹i hiÖp kh«ng mang ®ñ 1 l­îng")
			return
		end
		--SetProtectTime(18*4) -- 4 giay bat tu 
		--AddSkillState(963, 1, 0, 18*4)
		Pay(1)
		else
			if GetCash() < 0 then
				Say("§¹i hiÖp kh«ng mang ®ñ 1 l­îng")
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
	Msg2Player("Xin h·y ngåi yªn, chóng ta ®i <color=yellow>"..tab_lv90map[nIdx][4].."<color> nµo");
	
end


function gopos_step2battle()
	--if ( GetLevel() < 120 ) then
		--Talk( 1, "", "Tèng Kim gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 120 h·y vÒ luyÖn thªm råi h·y tÝnh." );
	--else
		--Say ( "Trong Tèng Kim, bªn lîi thÕ vÒ sè ng­êi tuy cã chiÕm ­u thÕ nh­ng sÏ nhËn ®­îc ®iÓm tÝch lòy Ýt h¬n, c¸c h¹ muèn chän b¸o danh bªn nµo?", 3, "Vµo ®iÓm b¸o danh phe Vµng (T)/#DoRescriptFunc(1)", "Vµo ®iÓm b¸o danh phe TÝm (K)/#DoRescriptFunc(2)","§Ó ta suy nghÜ l¹i./no" );
	--end;
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "Tèng Kim lµ n¬i rÊt nguy hiÓm, ch­a ®¹t cÊp 40 kh«ng thÓ tham gia chiÕn tr­êng." );
	else
		Say ( "Trong Tèng Kim, bªn lîi thÕ vÒ sè ng­êi tuy cã chiÕm ­u thÕ nh­ng sÏ nhËn ®­îc ®iÓm tÝch lòy Ýt h¬n, c¸c h¹ muèn chän b¸o danh bªn nµo?", 3, "Vµo ®iÓm b¸o danh phe Tèng /ToSong", "Vµo ®iÓm b¸o danh phe Kim /ToJin","§Ó ta suy nghÜ l¹i./no" );
	end;
end

function gopos_sevencityfield()
	Say("Ng­¬i muèn ®i chiÕn tr­êng nµo cña ThÊt Thµnh §¹i ChiÕn?", 8,
		"ChiÕn tr­êng Thµnh §«/#goto_sevencityfield1(1)",
		"ChiÕn tr­êng BiÖn Kinh/#goto_sevencityfield1(2)",
		"ChiÕn tr­êng §¹i Lý/#goto_sevencityfield1(3)",
		"ChiÕn tr­êng Ph­îng T­êng/#goto_sevencityfield1(4)",
		"ChiÕn tr­êng L©m An/#goto_sevencityfield1(5)",
		"ChiÕn tr­êng T­¬ng D­¬ng/#goto_sevencityfield1(6)",
		"ChiÕn tr­êng D­¬ng Ch©u/#goto_sevencityfield1(7)",
		"§Ó ta suy nghÜ l¹i/Cancel")
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
			player:Say("Ch­a tõng nghe qua cã n¬i nµy")
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
		Say("§¹i hiÖp kh«ng mang ®ñ 1 l­îng")
		return
	end
	Pay(1)
	local nMapId = FIELD_LIST[nIndex]
	BattleWorld:Transfer(player, nMapId)
end
function ToSong()	-- ½øÈëËÎ·½±¨Ãûµã	
	if GetCash() < 0 then
	--	Say("§¹i hiÖp kh«ng mang ®ñ 7 l­îng")
	--	return
	end
	--Pay(7)
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "ChiÕn tr­êng Tèng Kim gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 40 h·y vÒ luyÖn thªm råi h·y tÝnh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1541, 3178);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim S¬ CÊp" );
	--elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		--	NewWorld( 324, 1541, 3178);
		--	DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		--	Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Trung CÊp" );
	else
			NewWorld( 325, 1541, 3178);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Cao CÊp" );
	end
end

function ToJin()	-- ½øÈë½ð·½±¨Ãûµã
	if GetCash() < 0 then
	--	Say("§¹i hiÖp kh«ng mang ®ñ 7 l­îng")
	--	return
	end
	--Pay(7)
	if ( GetLevel() < 40 ) then
		Talk( 1, "", "ChiÕn tr­êng Tèng Kim gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 40 h·y vÒ luyÖn thªm råi h·y tÝnh." );
	elseif ( GetLevel() >= 40 and GetLevel() < 80 ) then
			NewWorld( 323, 1570, 3085);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim S¬ CÊp" );
	--elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		--	NewWorld( 324, 1570, 3085);
	--		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		--	Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Trung CÊp" );
	else
			NewWorld( 325, 1570, 3085);
			DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
			Msg2Player( "§Õn n¬i b¸o danh ChiÕn Tr­êng Tèng Kim Cao CÊp" );
	end
end

function DoRescriptFunc(nSel)
	if ( GetLevel() < 90 ) then
		Talk( 1, "", "Tèng Kim gian khæ khèc liÖt, ng­¬i ch­a ®¹t ®Õn cÊp 90 h·y vÒ luyÖn thªm råi h·y tÝnh." );
		return
	end
	local tbsongjin_pos = {1608,3254};	--ËÎ·½×ø±êµã
	local szstr = "Phe Vµng (T)";
	if (nSel == 2) then
		tbsongjin_pos = {1566,3277};
		szstr = "Phe TÝm (K)";
	end;
	szstr = ""
	if ( GetLevel() >= 40 and GetLevel() < 80 ) then
		NewWorld( 323, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		Msg2Player( "§· ®Õn thµnh §¹i Lý" );
	elseif ( GetLevel() >= 80 and GetLevel() < 120 ) then
		NewWorld( 324, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		Msg2Player( "§· ®Õn thµnh §¹i Lý" );
	else
		NewWorld( 162, tbsongjin_pos[1], tbsongjin_pos[2]);
		SetFightState(0);
		DisabledUseTownP(0); -- ²»ÏÞÖÆÆäÊ¹ÓÃ»Ø³Ç·û
		Msg2Player( "§· ®Õn thµnh §¹i Lý" );
	end
end


function no()
end
