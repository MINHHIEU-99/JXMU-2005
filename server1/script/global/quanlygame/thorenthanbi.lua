--------------------------------------------------------------------------------------------------------
-- File Name		:	thorenhoangkim.lua
--	Author			:	Alone_ (Nguyen Khai)
--	Create Time	:	27/10/2017 - 20:20
--	Description		:	
--------------------------------------------------------------------------------------------------------
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("ITEM")
IncludeLib("SETTING")
IncludeLib("QUESTKEY")
IncludeLib("LEAGUE")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\½­ÄÏÇø\\ÁÙ°²\\ÁÙ°²\\npc\\Ö°ÄÜ_ÉñÃØÌú½³.lua")

Include( "\\script\\task\\system\\task_string.lua" );

-- script viet hoa By http://tranhba.com  ®óc l¹i 
Include("\\script\\global\\recoin_goldenequip.lua")
-- script viet hoa By http://tranhba.com  hoµn mü an bang ®å trang søc ®eo tay 
Include("\\script\\task\\equipex\\head.lua");
-- script viet hoa By http://tranhba.com  b¹ch kim trang bÞ 
Include("\\script\\global\\platina_upgrade.lua")
-- script viet hoa By http://tranhba.com  ®óc l¹i b¹ch kim trang bÞ 
-- script viet hoa By http://tranhba.com Include("\\script\\global\\recoin_platinaequip.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\event\\reclaim_equip\\reclaim_equip.lua") -- script viet hoa By http://tranhba.com »ØÊÕ°ó¶¨ÎïÆ·
-- script viet hoa By http://tranhba.com  ®óc l¹i kim « trang bÞ 
Include("\\script\\event\\equip_publish\\jinwu\\refine_equip.lua")
Include("\\script\\misc\\itemexchangevalue\\itemexchangevalue.lua") -- script viet hoa By http://tranhba.com  ¶Ò»»¾«Á¶±¦Ïä
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_lingpai.lua")	-- script viet hoa By http://tranhba.com  ¶Ò»»ÐÂ×°±¸ÁîÅÆ£¨×ÏòþµÈ£©
Include("\\script\\activitysys\\npcdailog.lua")

-- script viet hoa By http://tranhba.com  ®óc l¹i tö m·ng - By DinhHQ 
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")

Include("\\script\\global\\tieungao\\anbanghoanmy.lua")
Include("\\script\\task\\equipex\\head.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\vng_feature\\nangcapvodanh\\main.lua")


function main()

dofile("script/global/quanlygame/thorenthanbi.lua")
	tbOpt =
	{
		"<dec><npc>Ta lµ 1 tay thî rÌn l©u n¨m .Nhê rÌn luyÖn tõ nhá nªn ta rÊt cã tµi khÐo tay ®óc ®Ëp c¸c lo¹i vò khÝ rÊt ®Ñp vµ tèt..",
				 -- "§æi kim quang th¹ch lÊy lÖnh bµi kim quang./doilbkimquang",
		 -- "test ABHM./nguyenlieuABHM",
		  		  "Muèn Ðp ABHM./ephmab",

		  "Hîp m·nh lo¹i 100 m·nh./luuyrapmanh",
		  "§Ëp L¹i Option Cho Trang BÞ HKMP/LocOptionHKOKNEW",
        -- "Hîp m·nh lo¹i 4 m·nh vµ 6 m·nh./compose_entry",
        "ChÕ t¹o mÆt n¹./matnachuongmon",
        "Gia h¹n mÆt n¹ 7 ngµy./giahanitem7",
        "Gia h¹n mÆt n¹ 30 ngµy./giahanitem30",
								  	--	  "Ta muèn mêi xin ng­¬i gióp mét tay ph©n chia hoµng kim trang bÞ./split_entry",
						  		  "Ta muèn dïng m¶nh ®å phæ hk hîp thµnh hoµng kim trang bÞ ./compose_entry",
        "Trïng luyÖn mÆt n¹./trungluyenmatna",

		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function ephmab()
main_task_give()
end

function nguyenlieuABHM()

tbAwardTemplet:GiveAwardByList({{szName="Tö thñy tinh",tbProp={4,238,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Lôc thñy tinh",tbProp={4,239,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Lam thñy tinh",tbProp={4,240,1,0,0,0},nCount=10},} ,"test", 1);
tbAwardTemplet:GiveAwardByList({{szName="HuyÒn tinh cÊp 8",tbProp={6,1,147,8,0,0},nCount=1},} ,"test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Cóc hoa th¹ch",tbProp={4,963,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B¨ng th¹ch kÕt tinh",tbProp={4,967,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B¨ng ThiÒm T¬",tbProp={4,965,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kª huyÕt th¹ch",tbProp={4,966,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M· N·o",tbProp={4,964,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M¶nh thiªn th¹ch",tbProp={4,968,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§iÒn Hoµng Th¹ch",tbProp={4,969,1,0,0,0},nCount=10},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="TÝn Sø Kim Bµi",tbProp={6,1,888,1,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="TÝn Sø Kim Bµi",tbProp={6,1,4511,1,0,0},nCount=1},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName="ThÇn BÝ Kho¸ng Th¹ch",tbProp={6,1,398,1,0,0},nCount=1},}, "test", 1);
end

tbListIDItem  =
	{
		[1] = {1529,1},
		[2] = {1530,2},
		[3] = {1531,3},
		[4] = {1532,4},
		[5] = {1533,5},
		[6] = {1534,6},
		[7] = {1535,7},
		[8] = {1536,8},
		[9] = {1537,9},
		[10] = {1538,10},
		[11] = {1539,11},
		[12] = {1540,12},
		[13] = {1541,13},
		[14] = {1542,14},
		[15] = {1543,15},
		[16] = {1544,16},
		[17] = {1545,17},
		[18] = {1546,18},
		[19] = {1547,19},
		[20] = {1548,20},
		[21] = {1549,21},
		[22] = {1550,22},
		[23] = {1551,23},
		[24] = {1552,24},
		[25] = {1553,25},
		[26] = {1554,26},
		[27] = {1555,27},
		[28] = {1556,28},
		[29] = {1557,29},
		[30] = {1558,30},
		[31] = {1559,31},
		[32] = {1560,32},
		[33] = {1561,33},
		[34] = {1562,34},
		[35] = {1563,35},
		[36] = {1564,36},
		[37] = {1565,37},
		[38] = {1566,38},
		[39] = {1567,39},
		[40] = {1568,40},
		[41] = {1569,41},
		[42] = {1570,42},
		[43] = {1571,43},
		[44] = {1572,44},
		[45] = {1573,45},
		[46] = {1574,46},
		[47] = {1575,47},
		[48] = {1576,48},
		[49] = {1577,49},
		[50] = {1578,50},
		[51] = {1579,51},
		[52] = {1580,52},
		[53] = {1581,53},
		[54] = {1582,54},
		[55] = {1583,55},
		[56] = {1584,56},
		[57] = {1585,57},
		[58] = {1586,58},
		[59] = {1587,59},
		[60] = {1588,60},
		[61] = {1589,61},
		[62] = {1590,62},
		[63] = {1591,63},
		[64] = {1592,64},
		[65] = {1593,65},
		[66] = {1594,66},
		[67] = {1595,67},
		[68] = {1596,68},
		[69] = {1597,69},
		[70] = {1598,70},
		[71] = {1599,71},
		[72] = {1600,72},
		[73] = {1601,73},
		[74] = {1602,74},
		[75] = {1603,75},
		[76] = {1604,76},
		[77] = {1605,77},
		[78] = {1606,78},
		[79] = {1607,79},
		[80] = {1608,80},
		[81] = {1609,81},
		[82] = {1610,82},
		[83] = {1611,83},
		[84] = {1612,84},
		[85] = {1613,85},
		[86] = {1614,86},
		[87] = {1615,87},
		[88] = {1616,88},
		[89] = {1617,89},
		[90] = {1618,90},
		[91] = {1619,91},
		[92] = {1620,92},
		[93] = {1621,93},
		[94] = {1622,94},
		[95] = {1623,95},
		[96] = {1624,96},
		[97] = {1625,97},
		[98] = {1626,98},
		[99] = {1627,99},
		[100] = {1628,100},
		[101] = {1629,101},
		[102] = {1630,102},
		[103] = {1631,103},
		[104] = {1632,104},
		[105] = {1633,105},
		[106] = {1634,106},
		[107] = {1635,107},
		[108] = {1636,108},
		[109] = {1637,109},
		[110] = {1638,110},
		[111] = {1639,111},
		[112] = {1640,112},
		[113] = {1641,113},
		[114] = {1642,114},
		[115] = {1643,115},
		[116] = {1644,116},
		[117] = {1645,117},
		[118] = {1646,118},
		[119] = {1647,119},
		[120] = {1648,120},
		[121] = {1649,121},
		[122] = {1650,122},
		[123] = {1651,123},
		[124] = {1652,124},
		[125] = {1653,125},
		[126] = {1654,126},
		[127] = {1655,127},
		[128] = {1656,128},
		[129] = {1657,129},
		[130] = {1658,130},
		[131] = {1659,131},
		[132] = {1660,132},
		[133] = {1661,133},
		[134] = {1662,134},
		[135] = {1663,135},
		[136] = {1664,136},
		[137] = {1665,137},
		[138] = {1666,138},
		[139] = {1667,139},
		[140] = {1668,140},
}

function luuyrapmanh()
	tbOpt =
	{
		"<dec><npc>B¹n cã m·nh hoµng kim h·y gom ®ñ 100 m·nh ®Ó r¸p thµnh trang bÞ HKMP vÜnh viÔn .",
                                                       "Ta ®· ®äc hiÓu råi ta muèn r¸p HKMP/EpHoangKim",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function EpHoangKim()
	GiveItemUI("ChÕ t¹o trang bÞ hoµng kim !","CÇn 100 M·nh Hoµng Kim cïng lo¹i sÏ cã h¹n sö dông vÜnh viÔn.!","TienHanhGhepHK")
end


function TienHanhGhepHK(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit( i )		--get itemindex
		local nG, nD,nP = GetItemProp(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local nCountStack = GetItemStackCount(nItemIndex) or 1;

		if nG ~= 4 then
			Say("<color=0xa9ffe0>Ng­êi tÝnh qua mÆt l·o giµ nh­ ta sao ? BiÕn ®i chæ kh¸c.",0);
			return
		end
		if   nD < %tbListIDItem[1][1] or nD > %tbListIDItem[140][1] then
			Say("<color=0xa9ffe0>Ng­êi tÝnh qua mÆt l·o giµ nh­ ta sao ? BiÕn ®i chæ kh¸c.",0);
			return
		end
	
		if nCountStack < 100 then
			Say("<color=0xa9ffe0>§¹i hiÖp ch­a ®ñ sè l­îng 100 M¶nh Hoµng Kim ®ång lo¹i !",0);
			return
		end
		--if (GetCash() < 10000000) then
     --   Talk(1,"","<color=white>Cã vô rÌn miÔn phÝ n÷a sao haha ®¹i hiÖp cÇn cã 1000 v¹n l­îng råi h·y nãi chuyÖn víi ta..") -- go
		--return
--	end
	--local nSilverCount = CalcEquiproomItemCount(6,1,4415,1) ;
	--if(nSilverCount < 50) then -- gia xu
	--Talk(1,"","CÇn cã 50 tèng kim tÝch lòy bao.") -- go
	--return end
--	local nSilverCount = CalcEquiproomItemCount(4,1673,1,1) ;
	--if(nSilverCount < 50) then -- gia xu
	--Talk(1,"","CÇn cã 100 B¹c Thái.") -- go
	--return end
	--	local nSilverCount = CalcEquiproomItemCount(4,1674,1,1) ;
	--if(nSilverCount < 50) then -- gia xu
	--Talk(1,"","CÇn cã 100 Vµng Thái.") -- go
	--return end
	--local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	--if(nSilverCount < 100) then -- gia xu
	--Talk(1,"","CÇn cã 100 Xu lµm lé phÝ.") -- go
	--return end
		local temp = %tbListIDItem;
		for e =1,getn(temp) do
			local a = temp[e][1];
			local b = temp[e][2];
			if nD == a then
				c = b
			end
		end
	end

	nItemIndex = GetGiveItemUnit(1)
                           local nTen=GetItemName(nItemIndex)
	k = RemoveItemByIndex( nItemIndex )
	if ( k ~= 1 ) then
		Say("Ng­êi tÝnh qua mÆt l·o giµ nh­ ta sao ? BiÕn ®i chæ kh¸c.",0)
		return 0
	end

tbitem  =
	{
		[1]={szName = "Trang BÞ Hoµng Kim", tbProp = {0, c}, nCount = 1,nQuality = 1,},
	}
	tbAwardTemplet:GiveAwardByList(tbitem, "GhÐp M·nh Hoµng Kim ");
						--   Pay(10000000)
				local szNews = format("<pic=7>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· Ðp thµnh c«ng trang bÞ <color=gold>"..nTen.." <color=yellow>T¹i Thî §óc Trang BÞ.")
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
logplayer("dulieu/rapthanhconghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· Ðp thµnh c«ng "..nTen.." ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
--SaveNow()
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

function loai100manh()
	tbOpt =
	{
		"<dec><npc>Ta lµ 1 tay thî rÌn l©u n¨m .Nhê rÌn luyÖn tõ nhá nªn ta rÊt cã tµi khÐo tay ®óc ®Ëp c¸c lo¹i vò khÝ rÊt ®Ñp vµ tèt..",
         "Hîp thµnh m·nh An Bang./EPAB",
		 "Hîp thµnh m·nh §Þnh Quèc./EPDQ",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end



function EPAB()
	tbOpt =
	{
		"<dec><npc>cÇn cã 100 m·nh míi cã thÓ hîp thµnh trang bÞ.",
         "An Bang Cóc Hoa Th¹ch ChØ hoµn./nhantren",
		  "An Bang Kª HuyÕt Th¹ch Giíi ChØ./nhanduoi",
         "An Bang §iÒn Hoµng Th¹ch Ngäc Béi./ngocboi",
         "An Bang B¨ng Tinh Th¹ch H¹ng Liªn./daychuyen",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function EPDQ()
	tbOpt =
	{
		"<dec><npc>cÇn cã 100 m·nh míi cã thÓ hîp thµnh trang bÞ.",
         "§Þnh Quèc Thanh Sa Tr­êng Sam./aodq",
		  "§Þnh Quèc ¤ Sa Ph¸t Qu¸n./nondq",
         --"An Bang §iÒn Hoµng Th¹ch Ngäc Béi./ngocboi",
       --  "An Bang B¨ng Tinh Th¹ch H¹ng Liªn./daychuyen",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end


function doilbkimquang()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i ThÇn BÝ L©m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="Kim Quang Th¹ch",tbProp={4,1517,1,1},nCount=100},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={6,1,4478,1,1},nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn cã lµ 100 m·nh cña trang bÞ cÇn hîp thµnh.")
end 



function nhantren()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i ThÇn BÝ L©m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M·nh Hoµng Kim",tbProp={4,1326,1,1},nCount=100},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,165},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn cã lµ 100 m·nh cña trang bÞ cÇn hîp thµnh.")
end 

function nhanduoi()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i ThÇn BÝ L©m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M·nh Hoµng Kim",tbProp={4,1327,1,1},nCount=100},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,167},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn cã lµ 100 m·nh cña trang bÞ cÇn hîp thµnh.")
end 

function ngocboi()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i ThÇn BÝ L©m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M·nh Hoµng Kim",tbProp={4,1328,1,1},nCount=100},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,166},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn cã lµ 100 m·nh cña trang bÞ cÇn hîp thµnh.")
end 

function daychuyen()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i ThÇn BÝ L©m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M·nh Hoµng Kim",tbProp={4,1329,1,1},nCount=100},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,164},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn cã lµ 100 m·nh cña trang bÞ cÇn hîp thµnh.")
end 



function aodq()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i ThÇn BÝ L©m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M·nh Hoµng Kim",tbProp={4,1330,1,1},nCount=100},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,159},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn cã lµ 100 m·nh cña trang bÞ cÇn hîp thµnh.")
end 

function nondq()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s hîp thµnh c«ng <color=gold><%s><color=green><enter><color=yellow>< T¹i ThÇn BÝ L©m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M·nh Hoµng Kim",tbProp={4,1331,1,1},nCount=100},
			},
		tbProduct = {szName="Thµnh PhÈm",tbProp={0,160},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguyªn liÖu cÇn cã lµ 100 m·nh cña trang bÞ cÇn hîp thµnh.")
end 


tbHKMP = {

		[1]={	
			{"Méng Long ChÝnh Hång T¨ng M·o",1}, 
			{"Méng Long Kim Ti ChÝnh Hång Cµ Sa",2},
			{"Méng Long HuyÒn Ti Ph¸t ®¸i",3},
			{"Méng Long PhËt Ph¸p HuyÒn Béi",4},
			{"Méng Long §¹t Ma T¨ng hµi",5},
			{"Phôc Ma Tö Kim C«n",6},
			{"Phôc Ma HuyÒn Hoµng Cµ Sa",7},
			{"Phôc Ma ¤ Kim NhuyÔn §iÒu",8},
			{"Phôc Ma PhËt T©m NhuyÔn KhÊu",9},
			{"Phôc Ma Phæ §é T¨ng hµi",10},
{"Tø Kh«ng Gi¸ng Ma Giíi ®ao",11},
{"Tø Kh«ng Tö Kim Cµ Sa",12},
{"Tø Kh«ng Hé ph¸p Yªu ®¸i",13},
{"Tø Kh«ng NhuyÔn B× Hé UyÓn",14},
{"Tø Kh«ng Giíi LuËt Ph¸p giíi",15},
{"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",16},
{"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p",17},
{"H¸m Thiªn Uy Vò Thóc yªu ®¸i",18},
{"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn",19},
{"H¸m Thiªn Thõa Long ChiÕn Ngoa",20},
{"KÕ NghiÖp B«n L«i Toµn Long th­¬ng",21},
{"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",22},
{"KÕ NghiÖp B¹ch Hæ V« Song khÊu",23},
{"KÕ NghiÖp HáaV©n Kú L©n Thñ ",24},
{"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",25},
{"Ngù Long L­îng Ng©n B¶o ®ao",26},
{"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",27},
{"Ngù Long Thiªn M«n Thóc Yªu hoµn",28},
{"Ngù Long TÊn Phong Hé yÓn",29},
{"Ngù Long TuyÖt MÖnh ChØ hoµn",30},
{"V« Gian û Thiªn KiÕm",31},
{"V« Gian Thanh Phong Truy Y",32},
{"V« Gian PhÊt V©n Ti ®¸i",33},
{"V« Gian CÇm VËn Hé UyÓn",34},
{"V« Gian B¹ch Ngäc Bµn ChØ ",35},
{"V« Ma Ma Ni qu¸n",36},
{"V« Ma Tö Kh©m Cµ Sa",37},
{"V« Ma B¨ng Tinh ChØ Hoµn",38},
{"V« Ma TÈy T­îng Ngäc KhÊu ",39},
{"V« Ma Hång Truy NhuyÔn Th¸p hµi",40},
{"V« TrÇn Ngäc N÷ Tè T©m qu¸n",41},
{"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",42},
{"V« TrÇn Tõ Bi Ngäc Ban ChØ ",43},
{"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi",44},
{"V« TrÇn PhËt Quang ChØ Hoµn",45},
{"Tª Hoµng Phông Nghi ®ao",46},
{"Tª Hoµng TuÖ T©m Khinh Sa Y",47},
{"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",48},
{"Tª Hoµng B¨ng Tung CÈm uyÓn",49},
{"Tª Hoµng Thóy Ngäc ChØ Hoµn",50},
{"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao",51},
{"BÝch H¶i Hoµn Ch©u Vò Liªn",52},
{"BÝch H¶i Hång Linh Kim Ti ®¸i",53},
{"BÝch H¶i Hång L¨ng Ba",54},
{"BÝch H¶i Khiªn TÕ ChØ hoµn",55},
{"U Lung Kim Xµ Ph¸t ®¸i",56},
{"U Lung XÝch YÕt MËt trang",57},
{"U Lung Thanh Ng« TriÒn yªu",58},
{"U Lung Ng©n ThÒm Hé UyÓn",59},
{"U Lung MÆc Thï NhuyÔn Lý ",60},
{"Minh ¶o Tµ S¸t §éc NhËn",61},
{"Minh ¶o U §éc ¸m Y",62},
{"Minh ¶o §éc YÕt ChØ Hoµn",63},
{"Minh ¶o Hñ Cèt Hé uyÓn",64},
{"Minh ¶o Song Hoµn Xµ Hµi",65},
{"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn",66},
{"Chó Ph­îc DiÖt L«i C¶nh Phï ",67},
{"Chó Ph­îc U ¶o ChØ Hoµn",68},
{"Chó Ph­îc Xuyªn T©m §éc UyÓn",69},
{"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",70},
{"B¨ng Hµn §¬n ChØ Phi §ao",71},
{"B¨ng Hµn HuyÒn Y Thóc Gi¸p",72},
{"B¨ng Hµn T©m TiÔn Yªu KhÊu",73},
{"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",74},
{"B¨ng Hµn NguyÖt ¶nh Ngoa",75},
{"Thiªn Quang Hoa Vò M¹n Thiªn",76},
{"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ",77},
{"Thiªn Quang S©m La Thóc §¸i",78},
{"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c",79},
{"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",80},
{"S©m Hoang Phi Tinh §o¹t Hån",81},
{"S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",82},
{"S©m Hoang Hån Gi¶o Yªu Thóc",83},
{"S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi",84},
{"S©m Hoang Tinh VÉn Phi Lý ",85},
{"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",86},
{"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",87},
{"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",88},
{"§Þa Ph¸ch KhÊu T©m tr¹c",89},
{"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",90},
{"§ång Cõu Phi Long §Çu hoµn",91},
{"§ång Cõu Gi¸ng Long C¸i Y",92},
{"§ång Cõu TiÒm Long Yªu §¸i",93},
{"§ång Cõu Kh¸ng Long Hé UyÓn",94},
{"§ång Cõu KiÕn Long Ban ChØ ",95},
{"§Þch Kh¸i Lôc Ngäc Tr­îng",96},
{"§Þch Kh¸i Cöu §¹i C¸i Y",97},
{"§Þch Kh¸i TriÒn M·ng yªu ®¸i",98},
{"§Þch Kh¸i CÈu TÝch B× Hé uyÓn",99},
{"§Þch Kh¸i Th¶o Gian Th¹ch giíi",100},
{"Ma S¸t Quû Cèc U Minh Th­¬ng",101},
{"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",102},
{"Ma S¸t XÝch Ký Táa Yªu KhÊu",103},
{"Ma S¸t Cö Háa Liªu Thiªn uyÓn",104},
{"Ma S¸t V©n Long Thæ Ch©u giíi",105},
{"Ma Hoµng Kim Gi¸p Kh«i",106},
{"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",107},
{"Ma Hoµng Khª Cèc Thóc yªu ®¸i",108},
{"Ma Hoµng HuyÕt Y Thó Tr¹c",109},
{"Ma Hoµng §¨ng §¹p Ngoa",110},
{"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn",111},
{"Ma ThÞ LÖ Ma PhÖ T©m Liªn",112},
{"Ma ThÞ NghiÖp Háa U Minh Giíi",113},
{"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",114},
{"Ma ThÞ s¬n  H¶i Phi Hång Lý ",115},
{"L¨ng Nh¹c Th¸i Cùc KiÕm",116},
{"L¨ng Nh¹c V« Ng· ®¹o bµo",117},
{"L¨ng Nh¹c Né L«i Giíi",118},
{"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi",119},
{"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",120},
{"CËp Phong Ch©n Vò KiÕm",121},
{"CËp Phong Tam Thanh Phï ",122},
{"CËp Phong HuyÒn Ti Tam §o¹n cÈm",123},
{"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",124},
{"CËp Phong Thanh Tïng Ph¸p giíi",125},
{"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",126},
{"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo",127},
{"S­¬ng Tinh Thanh Phong Lò ®¸i",128},
{"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ",129},
{"S­¬ng Tinh Phong B¹o chØ hoµn",130},
{"L«i Khung Hµn Tung B¨ng B¹ch quan",131},
{"L«i Khung Thiªn §Þa Hé phï ",132},
{"L«i Khung Phong L«i Thanh CÈm ®¸i",133},
{"L«i Khung Linh Ngäc UÈn L«i",134},
{"L«i Khung Cöu Thiªn DÉn L«i giíi",135},
{"Vô ¶o B¾c Minh §¹o qu¸n",136},
{"Vô ¶o Ki B¸n phï chó ",137},
{"Vô ¶o Thóc T©m chØ hoµn",138},
{"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",139},
{"Vô ¶o Tung Phong TuyÕt ¶nh ngoa",140},
},
}



function LocOptionHKOKNEW()
	local title = "Läc Trang bÞ HKMP"
	g_GiveItemUI(title, "NL cÇn cã: 1 HKMP + 1 Bóa Hoµng Kim mua t¹i kú tr©n c¸c ", {GiveUIOKT7}, nil, nil)   --- 100 tiÒn ®ång l­u ý 100 tiÒn ®ång ph¶i ®Ó ngoµi hµnh trang
end


function GiveUIOKT7(putCount) --ep phi phong 9
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo trang bÞ HKMP")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end	
	local ts1 = ITEM_GetExpiredTime(itemIndex) -- timestamp: thoi gian tin = s tu 1/1/1970
	--local ts2 = GetLocalTime()
	--local t = ts1 - ts2
	--  local ntime = t/60 
	--print(ts1,ntime)
	--if (t >0) then
		
		--1,14,20,34,40,49,53,78,91,99,111,119,124,129
		local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local hkmpTable = tbHKMP[1]
		local minId = hkmpTable[1][2]
		local maxId = hkmpTable[3][2]   --- d·y cuèi cïng cña bant tbHKMP ®Þnh nghÜa ë trªn			
		if (goldEquipIndex < 1) or (goldEquipIndex > 140) or (ts1 >0) then 
			Talk(1,"", "Xin vui lßng ®Æt vµo 1 trang bÞ HKMP vµ trang bÞ ph¶i kh«ng cã h¹n sö dông")
			return
		end
		local nSilverCount = CalcEquiproomItemCount(6,1,4504,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "CÇn cã 1 <color=red>Bóa Hoµng Kim<color> ®Ó ngoµi hµnh trang míi cã thÓ ®Ëp l¹i trang bÞ.")
		return
		end
	
		    if (RemoveItemByIndex(itemIndex) == 1) then
            tenhk = tbHKMP[1][goldEquipIndex][1] 
			local ndxit = AddGoldItem(0, goldEquipIndex )
			local rate = CalcEquiproomItemCount(6, 1, 4522, -1); 
			if (rate >= 1) then
			      ConsumeEquiproomItem(1,6,1,4504,1)
				--ITEM_SetExpiredTime(ndxit,ntime)
				SyncItem(ndxit);
Msg2SubWorld("<pic=7>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> läc l¹i option trang bÞ <color=gold>"..tenhk.."<color> thµnh c«ng <color=yellow>T¹i Thî RÌn ThÇn BÝ.")
logplayer("dulieu/rathanhconghkmp.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] ®· r· thµnh c«ng "..tenhk.." ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
				else
		Talk(1, "", "Kh«ng ®ñ nguyªn liÖu xin h·y kiÓm tra l¹i.")
		return
		end
	else
		Talk(1,"", "Trang bÞ kh«ng cã trong danh s¸ch nguyªn liÖu kh«ng ®óng")
		return
	end
end


--------------------------------------ep mat na ---------------------------------------------------------------------------
function matnachuongmon()
	tbOpt =
	{
		"<dec><npc>Ta lµ 1 tay thî rÌn l©u n¨m .Nhê rÌn luyÖn tõ nhá nªn ta rÊt cã tµi khÐo tay ®óc ®Ëp c¸c lo¹i vò khÝ rÊt ®Ñp vµ tèt..",
         "Hîp thµnh mÆt n¹ Kim So¸i./kimsoai",
         "Hîp thµnh mÆt n¹ Méc V­¬ng./mocvuong",
         "Hîp thµnh mÆt n¹ Thñy Qu©n./thuyquan",
         "Hîp thµnh mÆt n¹ Háa T­íng./hoatuong",
         "Hîp thµnh mÆt n¹ Thæ C«ng./thocong",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function kimsoai()
	tbOpt =
	{
		"<dec><npc>Hîp thµnh mÆt n¹ Kim So¸i..",
         "Hîp thµnh mÆt n¹ CÊp 1./matnakimsoai1",
         "Hîp thµnh mÆt n¹ CÊp 2./matnakimsoai2",
         "Hîp thµnh mÆt n¹ CÊp 3./matnakimsoai3",
         "Hîp thµnh mÆt n¹ CÊp 4./matnakimsoai4",
         "Hîp thµnh mÆt n¹ CÊp 5./matnakimsoai5",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function mocvuong()
	tbOpt =
	{
		"<dec><npc>Hîp thµnh mÆt n¹ Kim So¸i..",
         "Hîp thµnh mÆt n¹ CÊp 1./matnamocvuong1",
         "Hîp thµnh mÆt n¹ CÊp 2./matnamocvuong2",
         "Hîp thµnh mÆt n¹ CÊp 3./matnamocvuong3",
         "Hîp thµnh mÆt n¹ CÊp 4./matnamocvuong4",
         "Hîp thµnh mÆt n¹ CÊp 5./matnamocvuong5",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function thuyquan()
	tbOpt =
	{
		"<dec><npc>Hîp thµnh mÆt n¹ Kim So¸i..",
         "Hîp thµnh mÆt n¹ CÊp 1./matnathuyquan1",
         "Hîp thµnh mÆt n¹ CÊp 2./matnathuyquan2",
        "Hîp thµnh mÆt n¹ CÊp 3./matnathuyquan3",
         "Hîp thµnh mÆt n¹ CÊp 4./matnathuyquan4",
         "Hîp thµnh mÆt n¹ CÊp 5./matnathuyquan5",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function hoatuong()
	tbOpt =
	{
		"<dec><npc>Hîp thµnh mÆt n¹ Kim So¸i..",
         "Hîp thµnh mÆt n¹ CÊp 1./matnahoatuong1",
         "Hîp thµnh mÆt n¹ CÊp 2./matnahoatuong2",
         "Hîp thµnh mÆt n¹ CÊp 3./matnahoatuong3",
         "Hîp thµnh mÆt n¹ CÊp 4./matnahoatuong4",
         "Hîp thµnh mÆt n¹ CÊp 5./matnahoatuong5",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function thocong()
	tbOpt =
	{
		"<dec><npc>Hîp thµnh mÆt n¹ Kim So¸i..",
         "Hîp thµnh mÆt n¹ CÊp 1./matnathocong1",
         "Hîp thµnh mÆt n¹ CÊp 2./matnathocong2",
         "Hîp thµnh mÆt n¹ CÊp 3./matnathocong3",
         "Hîp thµnh mÆt n¹ CÊp 4./matnathocong4",
         "Hîp thµnh mÆt n¹ CÊp 5./matnathocong5",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end



--------------------------------------ep mat na ---------------------------------------------------------------------------
matnakimsoai = 839
matnamocvuong = 850
matnathuyquan = 861
matnahoatuong = 872
matnathocong = 883
MANHMATNA = 1673
BIPHO = 1676
TUTHUYTINH = 239
LAMTHUYTINH = 238
LUCTHUYTINH =240

function matnakimsoai1()
soluong_manhmatna = 10
soluong_bipho = 1
soluong_thuytinh = 1
soluongtien = 500*10000

	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnakimsoai,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnakimsoai2()
soluong_manhmatna = 20
soluong_bipho = 2
soluong_thuytinh = 3
soluongtien = 1000*10000
local IDMATNA = matnakimsoai + 1
	local nCount_matna = CalcEquiproomItemCount(0,11,matnakimsoai,-1)
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnakimsoai,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,0,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnakimsoai3()
soluong_manhmatna = 30
soluong_bipho = 3
soluong_thuytinh = 5
soluongtien = 2000*10000
local IDMATNA = matnakimsoai + 2
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	local nCount_matna = CalcEquiproomItemCount(0,11,matnakimsoai+1,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnakimsoai+1,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnakimsoai4()
soluong_manhmatna = 40
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnakimsoai + 3
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dalinhkhi = CalcEquiproomItemCount(4,1674,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnakimsoai+2,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("ThiÕu ®¸ linh khÝ ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnakimsoai+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnakimsoai55()
soluong_manhmatna = 40
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnakimsoai + 4
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dathiendia= CalcEquiproomItemCount(4,1675,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("ThiÕu ®¸ thiªn ®Þa ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={4,IDMATNA,1,0,0,0}, nCount = 1}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


------------------------------------------moc
function matnamocvuong1()
soluong_manhmatna = 10
soluong_bipho = 1
soluong_thuytinh = 1
soluongtien = 500*10000

	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnamocvuong,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnamocvuong2()
soluong_manhmatna = 20
soluong_bipho = 2
soluong_thuytinh = 3
soluongtien = 1000*10000
local IDMATNA = matnamocvuong + 1
	local nCount_matna = CalcEquiproomItemCount(0,11,matnamocvuong,-1)
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnamocvuong,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,0,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnamocvuong3()
soluong_manhmatna = 30
soluong_bipho = 3
soluong_thuytinh = 5
soluongtien = 2000*10000
local IDMATNA = matnamocvuong + 2
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	local nCount_matna = CalcEquiproomItemCount(0,11,matnamocvuong+1,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnamocvuong+1,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnamocvuong4()
soluong_manhmatna = 40
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnamocvuong + 3
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dalinhkhi = CalcEquiproomItemCount(4,1674,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnamocvuong+2,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("ThiÕu ®¸ linh khÝ ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnamocvuong+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end

-----------------------------thuy
function matnathuyquan1()
soluong_manhmatna = 10
soluong_bipho = 1
soluong_thuytinh = 1
soluongtien = 500*10000

	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnathuyquan,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnathuyquan2()
soluong_manhmatna = 20
soluong_bipho = 2
soluong_thuytinh = 3
soluongtien = 1000*10000
local IDMATNA = matnathuyquan + 1
	local nCount_matna = CalcEquiproomItemCount(0,11,matnathuyquan,-1)
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathuyquan,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,0,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnathuyquan3()
soluong_manhmatna = 30
soluong_bipho = 3
soluong_thuytinh = 5
soluongtien = 2000*10000
local IDMATNA = matnathuyquan + 2
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	local nCount_matna = CalcEquiproomItemCount(0,11,matnathuyquan+1,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathuyquan+1,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnathuyquan4()
soluong_manhmatna = 40
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnathuyquan + 3
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dalinhkhi = CalcEquiproomItemCount(4,1674,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnathuyquan+2,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("ThiÕu ®¸ linh khÝ ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathuyquan+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end
--------------------------------------hoa
function matnahoatuong1()
soluong_manhmatna = 10
soluong_bipho = 1
soluong_thuytinh = 1
soluongtien = 500*10000

	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnahoatuong,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnahoatuong2()
soluong_manhmatna = 20
soluong_bipho = 2
soluong_thuytinh = 3
soluongtien = 1000*10000
local IDMATNA = matnahoatuong + 1
	local nCount_matna = CalcEquiproomItemCount(0,11,matnahoatuong,-1)
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnahoatuong,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,0,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnahoatuong3()
soluong_manhmatna = 30
soluong_bipho = 3
soluong_thuytinh = 5
soluongtien = 2000*10000
local IDMATNA = matnahoatuong + 2
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	local nCount_matna = CalcEquiproomItemCount(0,11,matnahoatuong+1,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnahoatuong+1,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnahoatuong4()
soluong_manhmatna = 40
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnahoatuong + 3
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dalinhkhi = CalcEquiproomItemCount(4,1674,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnahoatuong+2,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("ThiÕu ®¸ linh khÝ ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnahoatuong+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end

------------------------tho
function matnathocong1()
soluong_manhmatna = 10
soluong_bipho = 1
soluong_thuytinh = 1
soluongtien = 500*10000

	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnathocong,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnathocong2()
soluong_manhmatna = 20
soluong_bipho = 2
soluong_thuytinh = 3
soluongtien = 1000*10000
local IDMATNA = matnathocong + 1
	local nCount_matna = CalcEquiproomItemCount(0,11,matnathocong,-1)
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathocong,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,0,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnathocong3()
soluong_manhmatna = 30
soluong_bipho = 3
soluong_thuytinh = 5
soluongtien = 2000*10000
local IDMATNA = matnathocong + 2
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local nCount_tuthuytinh = CalcEquiproomItemCount(4,TUTHUYTINH,1,-1)
	local nCount_lamthuytinh = CalcEquiproomItemCount(4,LAMTHUYTINH,1,-1)
	local nCount_lucthuytinh = CalcEquiproomItemCount(4,LUCTHUYTINH,1,-1)
	local money = GetCash()
	local nCount_matna = CalcEquiproomItemCount(0,11,matnathocong+1,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ tö thñy tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lam thñy tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("ThiÕu bÝ lôc thñy tinh !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathocong+1,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end


function matnathocong4()
soluong_manhmatna = 40
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnathocong + 3
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dalinhkhi = CalcEquiproomItemCount(4,1674,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnathocong+2,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("ThiÕu ®¸ linh khÝ ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathocong+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end

---------------------lib mat na 5
function matnakimsoai5()
	local tbOpt = {}
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [S¸t th­¬ng vËt lý]./#matnakimsoai5chonhe(4)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t ngo¹i c«ng]./#matnakimsoai5chonhe(5)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t néi c«ng]./#matnakimsoai5chonhe(6)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [L«i s¸t néi c«ng]./#matnakimsoai5chonhe(7)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [Háa s¸t néi c«ng]./#matnakimsoai5chonhe(8)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t ngo¹i c«ng]./#matnakimsoai5chonhe(9)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t néi c«ng]./#matnakimsoai5chonhe(10)")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("VÞ ®¹i hiÖp muèn lùa chän s¸t th­¬ng g× nµo?", getn(tbOpt), tbOpt)	
end


function matnakimsoai5chonhe(nMatNa)
soluong_manhmatna = 50
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnakimsoai + nMatNa
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dathiendia= CalcEquiproomItemCount(4,1675,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnakimsoai+3,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("ThiÕu ®¸ thiªn ®Þa ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnakimsoai+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end

function matnamocvuong5()
	local tbOpt = {}
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [S¸t th­¬ng vËt lý]./#matnamocvuong5chonhe(4)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t ngo¹i c«ng]./#matnamocvuong5chonhe(5)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t néi c«ng]./#matnamocvuong5chonhe(6)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [L«i s¸t néi c«ng]./#matnamocvuong5chonhe(7)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [Háa s¸t néi c«ng]./#matnamocvuong5chonhe(8)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t ngo¹i c«ng]./#matnamocvuong5chonhe(9)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t néi c«ng]./#matnamocvuong5chonhe(10)")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("VÞ ®¹i hiÖp muèn lùa chän s¸t th­¬ng g× nµo?", getn(tbOpt), tbOpt)	
end


function matnamocvuong5chonhe(nMatNa)
soluong_manhmatna = 50
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnamocvuong + nMatNa
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dathiendia= CalcEquiproomItemCount(4,1675,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnamocvuong+3,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("ThiÕu ®¸ thiªn ®Þa ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnamocvuong+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end

----
function matnathuyquan5()
	local tbOpt = {}
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [S¸t th­¬ng vËt lý]./#matnathuyquan5chonhe(4)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t ngo¹i c«ng]./#matnathuyquan5chonhe(5)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t néi c«ng]./#matnathuyquan5chonhe(6)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [L«i s¸t néi c«ng]./#matnathuyquan5chonhe(7)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [Háa s¸t néi c«ng]./#matnathuyquan5chonhe(8)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t ngo¹i c«ng]./#matnathuyquan5chonhe(9)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t néi c«ng]./#matnathuyquan5chonhe(10)")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("VÞ ®¹i hiÖp muèn lùa chän s¸t th­¬ng g× nµo?", getn(tbOpt), tbOpt)	
end


function matnathuyquan5chonhe(nMatNa)
soluong_manhmatna = 50
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnathuyquan + nMatNa
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dathiendia= CalcEquiproomItemCount(4,1675,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnathuyquan+3,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("ThiÕu ®¸ thiªn ®Þa ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathuyquan+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end

----
function matnahoatuong5()
	local tbOpt = {}
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [S¸t th­¬ng vËt lý]./#matnahoatuong5chonhe(4)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t ngo¹i c«ng]./#matnahoatuong5chonhe(5)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t néi c«ng]./#matnahoatuong5chonhe(6)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [L«i s¸t néi c«ng]./#matnahoatuong5chonhe(7)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [Háa s¸t néi c«ng]./#matnahoatuong5chonhe(8)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t ngo¹i c«ng]./#matnahoatuong5chonhe(9)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t néi c«ng]./#matnahoatuong5chonhe(10)")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("VÞ ®¹i hiÖp muèn lùa chän s¸t th­¬ng g× nµo?", getn(tbOpt), tbOpt)	
end


function matnahoatuong5chonhe(nMatNa)
soluong_manhmatna = 50
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnahoatuong + nMatNa
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dathiendia= CalcEquiproomItemCount(4,1675,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnahoatuong+3,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("ThiÕu ®¸ thiªn ®Þa ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnahoatuong+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end

--
function matnathocong5()
	local tbOpt = {}
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [S¸t th­¬ng vËt lý]./#matnathocong5chonhe(4)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t ngo¹i c«ng]./#matnathocong5chonhe(5)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [B¨ng s¸t néi c«ng]./#matnathocong5chonhe(6)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [L«i s¸t néi c«ng]./#matnathocong5chonhe(7)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [Háa s¸t néi c«ng]./#matnathocong5chonhe(8)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t ngo¹i c«ng]./#matnathocong5chonhe(9)")
	tinsert(tbOpt, "N©ng cÊp mÆt n¹ [§éc s¸t néi c«ng]./#matnathocong5chonhe(10)")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("VÞ ®¹i hiÖp muèn lùa chän s¸t th­¬ng g× nµo?", getn(tbOpt), tbOpt)	
end


function matnathocong5chonhe(nMatNa)
soluong_manhmatna = 50
soluong_bipho = 5
soluongtien = 3000*10000
local IDMATNA = matnathocong + nMatNa
	local nCount_manhmatna = CalcEquiproomItemCount(4,MANHMATNA,1,-1)
	local nCount_bipho = CalcEquiproomItemCount(4,BIPHO,1,-1)
	local money = GetCash()
	local nCount_dathiendia= CalcEquiproomItemCount(4,1675,1,-1)
	local nCount_huyentinh = CalcEquiproomItemCount(6,1,147,8)
	local nCount_matna = CalcEquiproomItemCount(0,11,matnathocong+3,-1)
	if nCount_matna < 1 then
	Say("ThiÕu mÆt n¹ !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("ThiÕu huyÒn tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("ThiÕu ®¸ thiªn ®Þa ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("ThiÕu m¶nh mÆt n¹ !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("ThiÕu bÝ phæ !")
	return 0
	end
	if money < soluongtien then
	Say("ThiÕu tiÒn v¹n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathocong+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");		
		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><MÆt n¹ ch­ëng m«n><color>");
	end

---- gia han

tbMatNa = {842,843,844,845,846,847,848,849,853,854,855,856,857,858,859,860,864,865,866,867,868,869,870,871,875,876,877,878,879,880,881,882,886,887,888,889,890,891,892,893}


tbVnGiaHanPhu = {}
--tbVnGiaHanPhu.nExpiredTime = 10080

function tbVnGiaHanPhuGiveUIConfirm7(nCount)
	if nCount ~= 1 then
		Talk(1, "", "VËt phÈm bá vµo kh«ng ®óng, xin h·y kiÓm tra l¹i!")
		return
	end
		for i=1, nCount do
 		local nIDX = GetGiveItemUnit(i)
		if ConsumeEquiproomItem(1, 6,1,4524,1) ~= 1 then
		Talk(1, "", "Kh«ng t×m thÊy vËt phÈm Ngò hµnh kú th¹ch cÊp 1 trong hµnh trang, gia h¹n thÊt b¹i.")
		return
	end
		local szName = GetItemName(nIDX)
		if checkten(szName) <1 then
		Say("ChØ cã thÓ gia h¹n cho mÆt n¹ ch­ëng m«n cÊp 4 vµ 5")
		return
	end
		local ts1 = ITEM_GetExpiredTime(nIDX) -- timestamp: thoi gian tinh = s tu 1/1/1970
		local ts2 = GetLocalTime()
		local t = ts1 - ts2
		local ntime = t/60  --- th?i gian còn h?n c?a item
		ITEM_SetExpiredTime(nIDX, 10080 + ntime )
		SyncItem(nIDX)
		Say("Chóc mõng ®¹i hiÖp ®· gia h¹n thµnh c«ng mÆt n¹ ch­ëng m«n 7 ngµy")
	end
end

function giahanitem7()
	GiveItemUI("Gia H¹n Phï", "Xin h·y bá mÆt n¹ cã h¹n sö dông  vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm7", "onCancel")
end

function checkten(szName)
if szName == "MÆt n¹ - Kim So¸I [CÊp 4]" or szName == "MÆt n¹ - Kim So¸I [CÊp 5]" or szName == "MÆt n¹ - Méc V­¬ng [CÊp 4]" or szName == "MÆt n¹ - Méc V­¬ng [CÊp 5]" or szName == "MÆt n¹ - Thñy Qu©n [CÊp 4]" or szName == "MÆt n¹ - Thñy Qu©n [CÊp 5]" or szName == "MÆt n¹ - Háa T­íng [CÊp 4]" or szName == "MÆt n¹ - Háa T­íng [CÊp 5]" or szName == "MÆt n¹ - Thæ C«ng [CÊp 4]" or szName == "MÆt n¹ - Thæ C«ng [CÊp 5]" then 
--Msg2Player("leuleu")
return 1
else
return 0
end
end

function giahanitem30()
	GiveItemUI("Gia H¹n Phï", "Xin h·y bá mÆt n¹ cã h¹n sö dông  vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm30", "onCancel")
end

function tbVnGiaHanPhuGiveUIConfirm30(nCount)
	if nCount ~= 1 then
		Talk(1, "", "VËt phÈm bá vµo kh«ng ®óng, xin h·y kiÓm tra l¹i!")
		return
	end
		for i=1, nCount do
 		local nIDX = GetGiveItemUnit(i)
		if ConsumeEquiproomItem(1, 6,1,4525,1) ~= 1 then
		Talk(1, "", "Kh«ng t×m thÊy vËt phÈm Ngò hµnh kú th¹ch cÊp 2 trong hµnh trang, gia h¹n thÊt b¹i.")
		return
	end
		local szName = GetItemName(nIDX)
		if checkten(szName) <1 then
		Say("ChØ cã thÓ gia h¹n cho mÆt n¹ ch­ëng m«n cÊp 4 vµ 5")
		return
	end
		local ts1 = ITEM_GetExpiredTime(nIDX) -- timestamp: thoi gian tinh = s tu 1/1/1970
		local ts2 = GetLocalTime()
		local t = ts1 - ts2
		local ntime = t/60  --- th?i gian còn h?n c?a item
		ITEM_SetExpiredTime(nIDX, 43200 + ntime )
		SyncItem(nIDX)
		Say("Chóc mõng ®¹i hiÖp ®· gia h¹n thµnh c«ng mÆt n¹ ch­ëng m«n 30 ngµy")
	end
end

function trungluyenmatna()
	GiveItemUI("Trïng LuyÖn MÆt N¹ CÊp 5", "Xin h·y bá mÆt n¹ cÊp 5 vµo « bªn d­íi", "tbTrungLuyen", "onCancel")
end


function tbTrungLuyen(nCount)
	if nCount ~= 1 then
		Talk(1, "", "VËt phÈm bá vµo kh«ng ®óng, xin h·y kiÓm tra l¹i!")
		return
	end
		for i=1, nCount do
 		local nIDX = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nIDX)
		if ConsumeEquiproomItem(1, 6,1,398,1) ~= 1 then
		Talk(1, "", "Kh«ng t×m thÊy vËt phÈm ThÇn bÝ kho¸ng th¹ch trong hµnh trang")
		return
	end
		local szName = GetItemName(nIDX)
		if checkten(szName) <1 then
		Say("ChØ cã thÓ trïng luyÖn cho mÆt n¹ ch­ëng m«n cÊp 5")
		return
	end
		local ts1 = ITEM_GetExpiredTime(nIDX) -- timestamp: thoi gian tinh = s tu 1/1/1970
		local ts2 = GetLocalTime()
		local t = ts1 - ts2
		local ntime = t/60  --- th?i gian còn h?n c?a item
		local tbAwardItem = {tbProp={0,11,nP,1,0,0}, nCount = 1,nExpiredTime=ntime}
		RemoveItemByIndex(nIDX)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "MÆt n¹ ch­ëng m«n");	
		Say("Chóc mõng ®¹i hiÖp ®· trïng luyÖn thµnh c«ng mÆt n¹ " .. szName) 
	end
end
