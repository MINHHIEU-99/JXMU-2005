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
Include("\\script\\������\\�ٰ�\\�ٰ�\\npc\\ְ��_��������.lua")

Include( "\\script\\task\\system\\task_string.lua" );

-- script viet hoa By http://tranhba.com  ��c l�i 
Include("\\script\\global\\recoin_goldenequip.lua")
-- script viet hoa By http://tranhba.com  ho�n m� an bang �� trang s�c �eo tay 
Include("\\script\\task\\equipex\\head.lua");
-- script viet hoa By http://tranhba.com  b�ch kim trang b� 
Include("\\script\\global\\platina_upgrade.lua")
-- script viet hoa By http://tranhba.com  ��c l�i b�ch kim trang b� 
-- script viet hoa By http://tranhba.com Include("\\script\\global\\recoin_platinaequip.lua")
-- script viet hoa By http://tranhba.com Include("\\script\\event\\reclaim_equip\\reclaim_equip.lua") -- script viet hoa By http://tranhba.com ���հ���Ʒ
-- script viet hoa By http://tranhba.com  ��c l�i kim � trang b� 
Include("\\script\\event\\equip_publish\\jinwu\\refine_equip.lua")
Include("\\script\\misc\\itemexchangevalue\\itemexchangevalue.lua") -- script viet hoa By http://tranhba.com  �һ���������
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_lingpai.lua")	-- script viet hoa By http://tranhba.com  �һ���װ�����ƣ������ȣ�
Include("\\script\\activitysys\\npcdailog.lua")

-- script viet hoa By http://tranhba.com  ��c l�i t� m�ng - By DinhHQ 
Include("\\script\\vng_feature\\trungluyen\\refine_equip.lua")

Include("\\script\\global\\tieungao\\anbanghoanmy.lua")
Include("\\script\\task\\equipex\\head.lua");
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\vng_feature\\nangcapvodanh\\main.lua")


function main()

dofile("script/global/quanlygame/thorenthanbi.lua")
	tbOpt =
	{
		"<dec><npc>Ta l� 1 tay th� r�n l�u n�m .Nh� r�n luy�n t� nh� n�n ta r�t c� t�i kh�o tay ��c ��p c�c lo�i v� kh� r�t ��p v� t�t..",
				 -- "��i kim quang th�ch l�y l�nh b�i kim quang./doilbkimquang",
		 -- "test ABHM./nguyenlieuABHM",
		  		  "Mu�n �p ABHM./ephmab",

		  "H�p m�nh lo�i 100 m�nh./luuyrapmanh",
		  "��p L�i Option Cho Trang B� HKMP/LocOptionHKOKNEW",
        -- "H�p m�nh lo�i 4 m�nh v� 6 m�nh./compose_entry",
        "Ch� t�o m�t n�./matnachuongmon",
        "Gia h�n m�t n� 7 ng�y./giahanitem7",
        "Gia h�n m�t n� 30 ng�y./giahanitem30",
								  	--	  "Ta mu�n m�i xin ng��i gi�p m�t tay ph�n chia ho�ng kim trang b�./split_entry",
						  		  "Ta mu�n d�ng m�nh �� ph� hk h�p th�nh ho�ng kim trang b� ./compose_entry",
        "Tr�ng luy�n m�t n�./trungluyenmatna",

		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function ephmab()
main_task_give()
end

function nguyenlieuABHM()

tbAwardTemplet:GiveAwardByList({{szName="T� th�y tinh",tbProp={4,238,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="L�c th�y tinh",tbProp={4,239,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Lam th�y tinh",tbProp={4,240,1,0,0,0},nCount=10},} ,"test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Huy�n tinh c�p 8",tbProp={6,1,147,8,0,0},nCount=1},} ,"test", 1);
tbAwardTemplet:GiveAwardByList({{szName="C�c hoa th�ch",tbProp={4,963,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B�ng th�ch k�t tinh",tbProp={4,967,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B�ng Thi�m T�",tbProp={4,965,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="K� huy�t th�ch",tbProp={4,966,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M� N�o",tbProp={4,964,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh thi�n th�ch",tbProp={4,968,1,0,0,0},nCount=10},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�i�n Ho�ng Th�ch",tbProp={4,969,1,0,0,0},nCount=10},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="T�n S� Kim B�i",tbProp={6,1,888,1,0,0},nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="T�n S� Kim B�i",tbProp={6,1,4511,1,0,0},nCount=1},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName="Th�n B� Kho�ng Th�ch",tbProp={6,1,398,1,0,0},nCount=1},}, "test", 1);
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
		"<dec><npc>B�n c� m�nh ho�ng kim h�y gom �� 100 m�nh �� r�p th�nh trang b� HKMP v�nh vi�n .",
                                                       "Ta �� ��c hi�u r�i ta mu�n r�p HKMP/EpHoangKim",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function EpHoangKim()
	GiveItemUI("Ch� t�o trang b� ho�ng kim !","C�n 100 M�nh Ho�ng Kim c�ng lo�i s� c� h�n s� d�ng v�nh vi�n.!","TienHanhGhepHK")
end


function TienHanhGhepHK(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit( i )		--get itemindex
		local nG, nD,nP = GetItemProp(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local nCountStack = GetItemStackCount(nItemIndex) or 1;

		if nG ~= 4 then
			Say("<color=0xa9ffe0>Ng��i t�nh qua m�t l�o gi� nh� ta sao ? Bi�n �i ch� kh�c.",0);
			return
		end
		if   nD < %tbListIDItem[1][1] or nD > %tbListIDItem[140][1] then
			Say("<color=0xa9ffe0>Ng��i t�nh qua m�t l�o gi� nh� ta sao ? Bi�n �i ch� kh�c.",0);
			return
		end
	
		if nCountStack < 100 then
			Say("<color=0xa9ffe0>��i hi�p ch�a �� s� l��ng 100 M�nh Ho�ng Kim ��ng lo�i !",0);
			return
		end
		--if (GetCash() < 10000000) then
     --   Talk(1,"","<color=white>C� v� r�n mi�n ph� n�a sao haha ��i hi�p c�n c� 1000 v�n l��ng r�i h�y n�i chuy�n v�i ta..") -- go
		--return
--	end
	--local nSilverCount = CalcEquiproomItemCount(6,1,4415,1) ;
	--if(nSilverCount < 50) then -- gia xu
	--Talk(1,"","C�n c� 50 t�ng kim t�ch l�y bao.") -- go
	--return end
--	local nSilverCount = CalcEquiproomItemCount(4,1673,1,1) ;
	--if(nSilverCount < 50) then -- gia xu
	--Talk(1,"","C�n c� 100 B�c Th�i.") -- go
	--return end
	--	local nSilverCount = CalcEquiproomItemCount(4,1674,1,1) ;
	--if(nSilverCount < 50) then -- gia xu
	--Talk(1,"","C�n c� 100 V�ng Th�i.") -- go
	--return end
	--local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	--if(nSilverCount < 100) then -- gia xu
	--Talk(1,"","C�n c� 100 Xu l�m l� ph�.") -- go
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
		Say("Ng��i t�nh qua m�t l�o gi� nh� ta sao ? Bi�n �i ch� kh�c.",0)
		return 0
	end

tbitem  =
	{
		[1]={szName = "Trang B� Ho�ng Kim", tbProp = {0, c}, nCount = 1,nQuality = 1,},
	}
	tbAwardTemplet:GiveAwardByList(tbitem, "Gh�p M�nh Ho�ng Kim ");
						--   Pay(10000000)
				local szNews = format("<pic=7>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� �p th�nh c�ng trang b� <color=gold>"..nTen.." <color=yellow>T�i Th� ��c Trang B�.")
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
logplayer("dulieu/rapthanhconghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� �p th�nh c�ng "..nTen.." ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
		"<dec><npc>Ta l� 1 tay th� r�n l�u n�m .Nh� r�n luy�n t� nh� n�n ta r�t c� t�i kh�o tay ��c ��p c�c lo�i v� kh� r�t ��p v� t�t..",
         "H�p th�nh m�nh An Bang./EPAB",
		 "H�p th�nh m�nh ��nh Qu�c./EPDQ",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end



function EPAB()
	tbOpt =
	{
		"<dec><npc>c�n c� 100 m�nh m�i c� th� h�p th�nh trang b�.",
         "An Bang C�c Hoa Th�ch Ch� ho�n./nhantren",
		  "An Bang K� Huy�t Th�ch Gi�i Ch�./nhanduoi",
         "An Bang �i�n Ho�ng Th�ch Ng�c B�i./ngocboi",
         "An Bang B�ng Tinh Th�ch H�ng Li�n./daychuyen",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function EPDQ()
	tbOpt =
	{
		"<dec><npc>c�n c� 100 m�nh m�i c� th� h�p th�nh trang b�.",
         "��nh Qu�c Thanh Sa Tr��ng Sam./aodq",
		  "��nh Qu�c � Sa Ph�t Qu�n./nondq",
         --"An Bang �i�n Ho�ng Th�ch Ng�c B�i./ngocboi",
       --  "An Bang B�ng Tinh Th�ch H�ng Li�n./daychuyen",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end


function doilbkimquang()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s h�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th�n B� L�m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="Kim Quang Th�ch",tbProp={4,1517,1,1},nCount=100},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={6,1,4478,1,1},nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n c� l� 100 m�nh c�a trang b� c�n h�p th�nh.")
end 



function nhantren()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s h�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th�n B� L�m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M�nh Ho�ng Kim",tbProp={4,1326,1,1},nCount=100},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,165},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n c� l� 100 m�nh c�a trang b� c�n h�p th�nh.")
end 

function nhanduoi()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s h�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th�n B� L�m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M�nh Ho�ng Kim",tbProp={4,1327,1,1},nCount=100},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,167},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n c� l� 100 m�nh c�a trang b� c�n h�p th�nh.")
end 

function ngocboi()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s h�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th�n B� L�m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M�nh Ho�ng Kim",tbProp={4,1328,1,1},nCount=100},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,166},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n c� l� 100 m�nh c�a trang b� c�n h�p th�nh.")
end 

function daychuyen()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s h�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th�n B� L�m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M�nh Ho�ng Kim",tbProp={4,1329,1,1},nCount=100},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,164},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n c� l� 100 m�nh c�a trang b� c�n h�p th�nh.")
end 



function aodq()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s h�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th�n B� L�m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M�nh Ho�ng Kim",tbProp={4,1330,1,1},nCount=100},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,159},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n c� l� 100 m�nh c�a trang b� c�n h�p th�nh.")
end 

function nondq()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s h�p th�nh c�ng <color=gold><%s><color=green><enter><color=yellow>< T�i Th�n B� L�m An ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local tbFormula = 
	{
			tbMaterial = 
			{
		{szName="M�nh Ho�ng Kim",tbProp={4,1331,1,1},nCount=100},
			},
		tbProduct = {szName="Th�nh Ph�m",tbProp={0,160},nQuality=1,nCount = 1,CallBack= _Message},
		nWidth = 1,
		nHeight = 3,
		nFreeItemCellLimit = 1,	
	}
	local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
	p:ComposeDailog()
Msg2Player("<color=green>Nguy�n li�u c�n c� l� 100 m�nh c�a trang b� c�n h�p th�nh.")
end 


tbHKMP = {

		[1]={	
			{"M�ng Long Ch�nh H�ng T�ng M�o",1}, 
			{"M�ng Long Kim Ti Ch�nh H�ng C� Sa",2},
			{"M�ng Long Huy�n Ti Ph�t ��i",3},
			{"M�ng Long Ph�t Ph�p Huy�n B�i",4},
			{"M�ng Long ��t Ma T�ng h�i",5},
			{"Ph�c Ma T� Kim C�n",6},
			{"Ph�c Ma Huy�n Ho�ng C� Sa",7},
			{"Ph�c Ma � Kim Nhuy�n �i�u",8},
			{"Ph�c Ma Ph�t T�m Nhuy�n Kh�u",9},
			{"Ph�c Ma Ph� �� T�ng h�i",10},
{"T� Kh�ng Gi�ng Ma Gi�i �ao",11},
{"T� Kh�ng T� Kim C� Sa",12},
{"T� Kh�ng H� ph�p Y�u ��i",13},
{"T� Kh�ng Nhuy�n B� H� Uy�n",14},
{"T� Kh�ng Gi�i Lu�t Ph�p gi�i",15},
{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",16},
{"H�m Thi�n V� Th�n T��ng Kim Gi�p",17},
{"H�m Thi�n Uy V� Th�c y�u ��i",18},
{"H�m Thi�n H� ��u Kh�n Th�c Uy�n",19},
{"H�m Thi�n Th�a Long Chi�n Ngoa",20},
{"K� Nghi�p B�n L�i To�n Long th��ng",21},
{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",22},
{"K� Nghi�p B�ch H� V� Song kh�u",23},
{"K� Nghi�p H�aV�n K� L�n Th� ",24},
{"K� Nghi�p Chu T��c L�ng V�n Ngoa",25},
{"Ng� Long L��ng Ng�n B�o �ao",26},
{"Ng� Long Chi�n Th�n Phi Qu�i gi�p",27},
{"Ng� Long Thi�n M�n Th�c Y�u ho�n",28},
{"Ng� Long T�n Phong H� y�n",29},
{"Ng� Long Tuy�t M�nh Ch� ho�n",30},
{"V� Gian � Thi�n Ki�m",31},
{"V� Gian Thanh Phong Truy Y",32},
{"V� Gian Ph�t V�n Ti ��i",33},
{"V� Gian C�m V�n H� Uy�n",34},
{"V� Gian B�ch Ng�c B�n Ch� ",35},
{"V� Ma Ma Ni qu�n",36},
{"V� Ma T� Kh�m C� Sa",37},
{"V� Ma B�ng Tinh Ch� Ho�n",38},
{"V� Ma T�y T��ng Ng�c Kh�u ",39},
{"V� Ma H�ng Truy Nhuy�n Th�p h�i",40},
{"V� Tr�n Ng�c N� T� T�m qu�n",41},
{"V� Tr�n Thanh T�m H��ng Thi�n Ch�u",42},
{"V� Tr�n T� Bi Ng�c Ban Ch� ",43},
{"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",44},
{"V� Tr�n Ph�t Quang Ch� Ho�n",45},
{"T� Ho�ng Ph�ng Nghi �ao",46},
{"T� Ho�ng Tu� T�m Khinh Sa Y",47},
{"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",48},
{"T� Ho�ng B�ng Tung C�m uy�n",49},
{"T� Ho�ng Th�y Ng�c Ch� Ho�n",50},
{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao",51},
{"B�ch H�i Ho�n Ch�u V� Li�n",52},
{"B�ch H�i H�ng Linh Kim Ti ��i",53},
{"B�ch H�i H�ng L�ng Ba",54},
{"B�ch H�i Khi�n T� Ch� ho�n",55},
{"U Lung Kim X� Ph�t ��i",56},
{"U Lung X�ch Y�t M�t trang",57},
{"U Lung Thanh Ng� Tri�n y�u",58},
{"U Lung Ng�n Th�m H� Uy�n",59},
{"U Lung M�c Th� Nhuy�n L� ",60},
{"Minh �o T� S�t ��c Nh�n",61},
{"Minh �o U ��c �m Y",62},
{"Minh �o ��c Y�t Ch� Ho�n",63},
{"Minh �o H� C�t H� uy�n",64},
{"Minh �o Song Ho�n X� H�i",65},
{"Ch� Ph��c Ph� gi�p ��u ho�n",66},
{"Ch� Ph��c Di�t L�i C�nh Ph� ",67},
{"Ch� Ph��c U �o Ch� Ho�n",68},
{"Ch� Ph��c Xuy�n T�m ��c Uy�n",69},
{"Ch� Ph��c B�ng H�a Th�c C�t Ngoa",70},
{"B�ng H�n ��n Ch� Phi �ao",71},
{"B�ng H�n Huy�n Y Th�c Gi�p",72},
{"B�ng H�n T�m Ti�n Y�u Kh�u",73},
{"B�ng H�n Huy�n Thi�n B�ng H�a B�i",74},
{"B�ng H�n Nguy�t �nh Ngoa",75},
{"Thi�n Quang Hoa V� M�n Thi�n",76},
{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",77},
{"Thi�n Quang S�m La Th�c ��i",78},
{"Thi�n Quang Song B�o H�n Thi�t Tr�c",79},
{"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",80},
{"S�m Hoang Phi Tinh �o�t H�n",81},
{"S�m Hoang KimTi�n Li�n Ho�n Gi�p",82},
{"S�m Hoang H�n Gi�o Y�u Th�c",83},
{"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",84},
{"S�m Hoang Tinh V�n Phi L� ",85},
{"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",86},
{"��a Ph�ch H�c Di�m Xung Thi�n Li�n",87},
{"��a Ph�ch T�ch L�ch L�i H�a Gi�i",88},
{"��a Ph�ch Kh�u T�m tr�c",89},
{"��a Ph�ch ��a H�nh Thi�n L� Ngoa",90},
{"��ng C�u Phi Long ��u ho�n",91},
{"��ng C�u Gi�ng Long C�i Y",92},
{"��ng C�u Ti�m Long Y�u ��i",93},
{"��ng C�u Kh�ng Long H� Uy�n",94},
{"��ng C�u Ki�n Long Ban Ch� ",95},
{"��ch Kh�i L�c Ng�c Tr��ng",96},
{"��ch Kh�i C�u ��i C�i Y",97},
{"��ch Kh�i Tri�n M�ng y�u ��i",98},
{"��ch Kh�i C�u T�ch B� H� uy�n",99},
{"��ch Kh�i Th�o Gian Th�ch gi�i",100},
{"Ma S�t Qu� C�c U Minh Th��ng",101},
{"Ma S�t T�n D��ng �nh Huy�t Gi�p",102},
{"Ma S�t X�ch K� T�a Y�u Kh�u",103},
{"Ma S�t C� H�a Li�u Thi�n uy�n",104},
{"Ma S�t V�n Long Th� Ch�u gi�i",105},
{"Ma Ho�ng Kim Gi�p Kh�i",106},
{"Ma Ho�ng �n Xu�t H� H�ng Khuy�n",107},
{"Ma Ho�ng Kh� C�c Th�c y�u ��i",108},
{"Ma Ho�ng Huy�t Y Th� Tr�c",109},
{"Ma Ho�ng ��ng ��p Ngoa",110},
{"Ma Th� Li�t Di�m Qu�n Mi�n",111},
{"Ma Th� L� Ma Ph� T�m Li�n",112},
{"Ma Th� Nghi�p H�a U Minh Gi�i",113},
{"Ma Th� Huy�t Ng�c Th�t S�t B�i",114},
{"Ma Th� s�n  H�i Phi H�ng L� ",115},
{"L�ng Nh�c Th�i C�c Ki�m",116},
{"L�ng Nh�c V� Ng� ��o b�o",117},
{"L�ng Nh�c N� L�i Gi�i",118},
{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",119},
{"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",120},
{"C�p Phong Ch�n V� Ki�m",121},
{"C�p Phong Tam Thanh Ph� ",122},
{"C�p Phong Huy�n Ti Tam �o�n c�m",123},
{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",124},
{"C�p Phong Thanh T�ng Ph�p gi�i",125},
{"S��ng Tinh Thi�n Ni�n H�n Thi�t",126},
{"S��ng Tinh Ng�o S��ng ��o b�o",127},
{"S��ng Tinh Thanh Phong L� ��i",128},
{"S��ng Tinh Thi�n Tinh B�ng Tinh th� ",129},
{"S��ng Tinh Phong B�o ch� ho�n",130},
{"L�i Khung H�n Tung B�ng B�ch quan",131},
{"L�i Khung Thi�n ��a H� ph� ",132},
{"L�i Khung Phong L�i Thanh C�m ��i",133},
{"L�i Khung Linh Ng�c U�n L�i",134},
{"L�i Khung C�u Thi�n D�n L�i gi�i",135},
{"V� �o B�c Minh ��o qu�n",136},
{"V� �o Ki B�n ph� ch� ",137},
{"V� �o Th�c T�m ch� ho�n",138},
{"V� �o Thanh �nh Huy�n Ng�c B�i",139},
{"V� �o Tung Phong Tuy�t �nh ngoa",140},
},
}



function LocOptionHKOKNEW()
	local title = "L�c Trang b� HKMP"
	g_GiveItemUI(title, "NL c�n c�: 1 HKMP + 1 B�a Ho�ng Kim mua t�i k� tr�n c�c ", {GiveUIOKT7}, nil, nil)   --- 100 ti�n ��ng l�u � 100 ti�n ��ng ph�i �� ngo�i h�nh trang
end


function GiveUIOKT7(putCount) --ep phi phong 9
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ��t v�o trang b� HKMP")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
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
		local maxId = hkmpTable[3][2]   --- d�y cu�i c�ng c�a bant tbHKMP ��nh ngh�a � tr�n			
		if (goldEquipIndex < 1) or (goldEquipIndex > 140) or (ts1 >0) then 
			Talk(1,"", "Xin vui l�ng ��t v�o 1 trang b� HKMP v� trang b� ph�i kh�ng c� h�n s� d�ng")
			return
		end
		local nSilverCount = CalcEquiproomItemCount(6,1,4504,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "C�n c� 1 <color=red>B�a Ho�ng Kim<color> �� ngo�i h�nh trang m�i c� th� ��p l�i trang b�.")
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
Msg2SubWorld("<pic=7>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> l�c l�i option trang b� <color=gold>"..tenhk.."<color> th�nh c�ng <color=yellow>T�i Th� R�n Th�n B�.")
logplayer("dulieu/rathanhconghkmp.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� r� th�nh c�ng "..tenhk.." ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
				else
		Talk(1, "", "Kh�ng �� nguy�n li�u xin h�y ki�m tra l�i.")
		return
		end
	else
		Talk(1,"", "Trang b� kh�ng c� trong danh s�ch nguy�n li�u kh�ng ��ng")
		return
	end
end


--------------------------------------ep mat na ---------------------------------------------------------------------------
function matnachuongmon()
	tbOpt =
	{
		"<dec><npc>Ta l� 1 tay th� r�n l�u n�m .Nh� r�n luy�n t� nh� n�n ta r�t c� t�i kh�o tay ��c ��p c�c lo�i v� kh� r�t ��p v� t�t..",
         "H�p th�nh m�t n� Kim So�i./kimsoai",
         "H�p th�nh m�t n� M�c V��ng./mocvuong",
         "H�p th�nh m�t n� Th�y Qu�n./thuyquan",
         "H�p th�nh m�t n� H�a T��ng./hoatuong",
         "H�p th�nh m�t n� Th� C�ng./thocong",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function kimsoai()
	tbOpt =
	{
		"<dec><npc>H�p th�nh m�t n� Kim So�i..",
         "H�p th�nh m�t n� C�p 1./matnakimsoai1",
         "H�p th�nh m�t n� C�p 2./matnakimsoai2",
         "H�p th�nh m�t n� C�p 3./matnakimsoai3",
         "H�p th�nh m�t n� C�p 4./matnakimsoai4",
         "H�p th�nh m�t n� C�p 5./matnakimsoai5",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function mocvuong()
	tbOpt =
	{
		"<dec><npc>H�p th�nh m�t n� Kim So�i..",
         "H�p th�nh m�t n� C�p 1./matnamocvuong1",
         "H�p th�nh m�t n� C�p 2./matnamocvuong2",
         "H�p th�nh m�t n� C�p 3./matnamocvuong3",
         "H�p th�nh m�t n� C�p 4./matnamocvuong4",
         "H�p th�nh m�t n� C�p 5./matnamocvuong5",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function thuyquan()
	tbOpt =
	{
		"<dec><npc>H�p th�nh m�t n� Kim So�i..",
         "H�p th�nh m�t n� C�p 1./matnathuyquan1",
         "H�p th�nh m�t n� C�p 2./matnathuyquan2",
        "H�p th�nh m�t n� C�p 3./matnathuyquan3",
         "H�p th�nh m�t n� C�p 4./matnathuyquan4",
         "H�p th�nh m�t n� C�p 5./matnathuyquan5",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function hoatuong()
	tbOpt =
	{
		"<dec><npc>H�p th�nh m�t n� Kim So�i..",
         "H�p th�nh m�t n� C�p 1./matnahoatuong1",
         "H�p th�nh m�t n� C�p 2./matnahoatuong2",
         "H�p th�nh m�t n� C�p 3./matnahoatuong3",
         "H�p th�nh m�t n� C�p 4./matnahoatuong4",
         "H�p th�nh m�t n� C�p 5./matnahoatuong5",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function thocong()
	tbOpt =
	{
		"<dec><npc>H�p th�nh m�t n� Kim So�i..",
         "H�p th�nh m�t n� C�p 1./matnathocong1",
         "H�p th�nh m�t n� C�p 2./matnathocong2",
         "H�p th�nh m�t n� C�p 3./matnathocong3",
         "H�p th�nh m�t n� C�p 4./matnathocong4",
         "H�p th�nh m�t n� C�p 5./matnathocong5",
		"K�t th�c ��i tho�i./no",
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
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnakimsoai,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("Thi�u �� linh kh� ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnakimsoai+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("Thi�u �� thi�n ��a ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={4,IDMATNA,1,0,0,0}, nCount = 1}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnamocvuong,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("Thi�u �� linh kh� ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnamocvuong+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnathuyquan,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("Thi�u �� linh kh� ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathuyquan+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnahoatuong,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("Thi�u �� linh kh� ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnahoatuong+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LUCTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,TUTHUYTINH, 1,-1)
		ConsumeEquiproomItem(soluong_thuytinh, 4,LAMTHUYTINH, 1,-1)
		Pay(soluongtien)
		local tbAwardItem = {tbProp={0,11,matnathocong,1,0,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if nCount_tuthuytinh < soluong_thuytinh then
	Say("Thi�u b� t� th�y tinh !")
	return 0
	end
	if nCount_lamthuytinh < soluong_thuytinh then
	Say("Thi�u b� lam th�y tinh !")
	return 0
	end
	if nCount_lucthuytinh < soluong_thuytinh then
	Say("Thi�u b� l�c th�y tinh !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
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
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dalinhkhi < 40 then
	Say("Thi�u �� linh kh� ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathocong+2,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1674, 1,-1)	-- da linh khi
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
	end

---------------------lib mat na 5
function matnakimsoai5()
	local tbOpt = {}
	tinsert(tbOpt, "N�ng c�p m�t n� [S�t th��ng v�t l�]./#matnakimsoai5chonhe(4)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t ngo�i c�ng]./#matnakimsoai5chonhe(5)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t n�i c�ng]./#matnakimsoai5chonhe(6)")
	tinsert(tbOpt, "N�ng c�p m�t n� [L�i s�t n�i c�ng]./#matnakimsoai5chonhe(7)")
	tinsert(tbOpt, "N�ng c�p m�t n� [H�a s�t n�i c�ng]./#matnakimsoai5chonhe(8)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t ngo�i c�ng]./#matnakimsoai5chonhe(9)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t n�i c�ng]./#matnakimsoai5chonhe(10)")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("V� ��i hi�p mu�n l�a ch�n s�t th��ng g� n�o?", getn(tbOpt), tbOpt)	
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("Thi�u �� thi�n ��a ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnakimsoai+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
	end

function matnamocvuong5()
	local tbOpt = {}
	tinsert(tbOpt, "N�ng c�p m�t n� [S�t th��ng v�t l�]./#matnamocvuong5chonhe(4)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t ngo�i c�ng]./#matnamocvuong5chonhe(5)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t n�i c�ng]./#matnamocvuong5chonhe(6)")
	tinsert(tbOpt, "N�ng c�p m�t n� [L�i s�t n�i c�ng]./#matnamocvuong5chonhe(7)")
	tinsert(tbOpt, "N�ng c�p m�t n� [H�a s�t n�i c�ng]./#matnamocvuong5chonhe(8)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t ngo�i c�ng]./#matnamocvuong5chonhe(9)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t n�i c�ng]./#matnamocvuong5chonhe(10)")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("V� ��i hi�p mu�n l�a ch�n s�t th��ng g� n�o?", getn(tbOpt), tbOpt)	
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("Thi�u �� thi�n ��a ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnamocvuong+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
	end

----
function matnathuyquan5()
	local tbOpt = {}
	tinsert(tbOpt, "N�ng c�p m�t n� [S�t th��ng v�t l�]./#matnathuyquan5chonhe(4)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t ngo�i c�ng]./#matnathuyquan5chonhe(5)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t n�i c�ng]./#matnathuyquan5chonhe(6)")
	tinsert(tbOpt, "N�ng c�p m�t n� [L�i s�t n�i c�ng]./#matnathuyquan5chonhe(7)")
	tinsert(tbOpt, "N�ng c�p m�t n� [H�a s�t n�i c�ng]./#matnathuyquan5chonhe(8)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t ngo�i c�ng]./#matnathuyquan5chonhe(9)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t n�i c�ng]./#matnathuyquan5chonhe(10)")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("V� ��i hi�p mu�n l�a ch�n s�t th��ng g� n�o?", getn(tbOpt), tbOpt)	
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("Thi�u �� thi�n ��a ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathuyquan+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
	end

----
function matnahoatuong5()
	local tbOpt = {}
	tinsert(tbOpt, "N�ng c�p m�t n� [S�t th��ng v�t l�]./#matnahoatuong5chonhe(4)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t ngo�i c�ng]./#matnahoatuong5chonhe(5)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t n�i c�ng]./#matnahoatuong5chonhe(6)")
	tinsert(tbOpt, "N�ng c�p m�t n� [L�i s�t n�i c�ng]./#matnahoatuong5chonhe(7)")
	tinsert(tbOpt, "N�ng c�p m�t n� [H�a s�t n�i c�ng]./#matnahoatuong5chonhe(8)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t ngo�i c�ng]./#matnahoatuong5chonhe(9)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t n�i c�ng]./#matnahoatuong5chonhe(10)")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("V� ��i hi�p mu�n l�a ch�n s�t th��ng g� n�o?", getn(tbOpt), tbOpt)	
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("Thi�u �� thi�n ��a ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnahoatuong+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
	end

--
function matnathocong5()
	local tbOpt = {}
	tinsert(tbOpt, "N�ng c�p m�t n� [S�t th��ng v�t l�]./#matnathocong5chonhe(4)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t ngo�i c�ng]./#matnathocong5chonhe(5)")
	tinsert(tbOpt, "N�ng c�p m�t n� [B�ng s�t n�i c�ng]./#matnathocong5chonhe(6)")
	tinsert(tbOpt, "N�ng c�p m�t n� [L�i s�t n�i c�ng]./#matnathocong5chonhe(7)")
	tinsert(tbOpt, "N�ng c�p m�t n� [H�a s�t n�i c�ng]./#matnathocong5chonhe(8)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t ngo�i c�ng]./#matnathocong5chonhe(9)")
	tinsert(tbOpt, "N�ng c�p m�t n� [��c s�t n�i c�ng]./#matnathocong5chonhe(10)")
	tinsert(tbOpt, "Tho�t/nothing")
	Say("V� ��i hi�p mu�n l�a ch�n s�t th��ng g� n�o?", getn(tbOpt), tbOpt)	
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
	Say("Thi�u m�t n� !")
	return 0
	end
	if nCount_huyentinh < 1 then
	Say("Thi�u huy�n tinh 8 ")
	return 0 
	end
	if nCount_dathiendia < 40 then
	Say("Thi�u �� thi�n ��a ")
	return 0 
	end
	if nCount_manhmatna < soluong_manhmatna then
	Say("Thi�u m�nh m�t n� !")
	return 0
	end
	if nCount_bipho < soluong_bipho then
	Say("Thi�u b� ph� !")
	return 0
	end
	if money < soluongtien then
	Say("Thi�u ti�n v�n !")
	return 0
	end
		ConsumeEquiproomItem(1, 0,11,matnathocong+3,-1)
		ConsumeEquiproomItem(soluong_manhmatna, 4,MANHMATNA, 1,-1)
		ConsumeEquiproomItem(soluong_bipho, 4,BIPHO, 1,-1)
		ConsumeEquiproomItem(40, 4,1675, 1,-1)	-- da thien dia
		ConsumeEquiproomItem(1, 6,1, 147,8)	-- huyen tinh 8
		local tbAwardItem = {tbProp={0,11,IDMATNA,1,0,0}, nCount = 1,nExpiredTime=7*24*60}
		Pay(soluongtien)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");		
		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><M�t n� ch��ng m�n><color>");
	end

---- gia han

tbMatNa = {842,843,844,845,846,847,848,849,853,854,855,856,857,858,859,860,864,865,866,867,868,869,870,871,875,876,877,878,879,880,881,882,886,887,888,889,890,891,892,893}


tbVnGiaHanPhu = {}
--tbVnGiaHanPhu.nExpiredTime = 10080

function tbVnGiaHanPhuGiveUIConfirm7(nCount)
	if nCount ~= 1 then
		Talk(1, "", "V�t ph�m b� v�o kh�ng ��ng, xin h�y ki�m tra l�i!")
		return
	end
		for i=1, nCount do
 		local nIDX = GetGiveItemUnit(i)
		if ConsumeEquiproomItem(1, 6,1,4524,1) ~= 1 then
		Talk(1, "", "Kh�ng t�m th�y v�t ph�m Ng� h�nh k� th�ch c�p 1 trong h�nh trang, gia h�n th�t b�i.")
		return
	end
		local szName = GetItemName(nIDX)
		if checkten(szName) <1 then
		Say("Ch� c� th� gia h�n cho m�t n� ch��ng m�n c�p 4 v� 5")
		return
	end
		local ts1 = ITEM_GetExpiredTime(nIDX) -- timestamp: thoi gian tinh = s tu 1/1/1970
		local ts2 = GetLocalTime()
		local t = ts1 - ts2
		local ntime = t/60  --- th?i gian c�n h?n c?a item
		ITEM_SetExpiredTime(nIDX, 10080 + ntime )
		SyncItem(nIDX)
		Say("Ch�c m�ng ��i hi�p �� gia h�n th�nh c�ng m�t n� ch��ng m�n 7 ng�y")
	end
end

function giahanitem7()
	GiveItemUI("Gia H�n Ph�", "Xin h�y b� m�t n� c� h�n s� d�ng  v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm7", "onCancel")
end

function checkten(szName)
if szName == "M�t n� - Kim So�I [C�p 4]" or szName == "M�t n� - Kim So�I [C�p 5]" or szName == "M�t n� - M�c V��ng [C�p 4]" or szName == "M�t n� - M�c V��ng [C�p 5]" or szName == "M�t n� - Th�y Qu�n [C�p 4]" or szName == "M�t n� - Th�y Qu�n [C�p 5]" or szName == "M�t n� - H�a T��ng [C�p 4]" or szName == "M�t n� - H�a T��ng [C�p 5]" or szName == "M�t n� - Th� C�ng [C�p 4]" or szName == "M�t n� - Th� C�ng [C�p 5]" then 
--Msg2Player("leuleu")
return 1
else
return 0
end
end

function giahanitem30()
	GiveItemUI("Gia H�n Ph�", "Xin h�y b� m�t n� c� h�n s� d�ng  v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm30", "onCancel")
end

function tbVnGiaHanPhuGiveUIConfirm30(nCount)
	if nCount ~= 1 then
		Talk(1, "", "V�t ph�m b� v�o kh�ng ��ng, xin h�y ki�m tra l�i!")
		return
	end
		for i=1, nCount do
 		local nIDX = GetGiveItemUnit(i)
		if ConsumeEquiproomItem(1, 6,1,4525,1) ~= 1 then
		Talk(1, "", "Kh�ng t�m th�y v�t ph�m Ng� h�nh k� th�ch c�p 2 trong h�nh trang, gia h�n th�t b�i.")
		return
	end
		local szName = GetItemName(nIDX)
		if checkten(szName) <1 then
		Say("Ch� c� th� gia h�n cho m�t n� ch��ng m�n c�p 4 v� 5")
		return
	end
		local ts1 = ITEM_GetExpiredTime(nIDX) -- timestamp: thoi gian tinh = s tu 1/1/1970
		local ts2 = GetLocalTime()
		local t = ts1 - ts2
		local ntime = t/60  --- th?i gian c�n h?n c?a item
		ITEM_SetExpiredTime(nIDX, 43200 + ntime )
		SyncItem(nIDX)
		Say("Ch�c m�ng ��i hi�p �� gia h�n th�nh c�ng m�t n� ch��ng m�n 30 ng�y")
	end
end

function trungluyenmatna()
	GiveItemUI("Tr�ng Luy�n M�t N� C�p 5", "Xin h�y b� m�t n� c�p 5 v�o � b�n d��i", "tbTrungLuyen", "onCancel")
end


function tbTrungLuyen(nCount)
	if nCount ~= 1 then
		Talk(1, "", "V�t ph�m b� v�o kh�ng ��ng, xin h�y ki�m tra l�i!")
		return
	end
		for i=1, nCount do
 		local nIDX = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nIDX)
		if ConsumeEquiproomItem(1, 6,1,398,1) ~= 1 then
		Talk(1, "", "Kh�ng t�m th�y v�t ph�m Th�n b� kho�ng th�ch trong h�nh trang")
		return
	end
		local szName = GetItemName(nIDX)
		if checkten(szName) <1 then
		Say("Ch� c� th� tr�ng luy�n cho m�t n� ch��ng m�n c�p 5")
		return
	end
		local ts1 = ITEM_GetExpiredTime(nIDX) -- timestamp: thoi gian tinh = s tu 1/1/1970
		local ts2 = GetLocalTime()
		local t = ts1 - ts2
		local ntime = t/60  --- th?i gian c�n h?n c?a item
		local tbAwardItem = {tbProp={0,11,nP,1,0,0}, nCount = 1,nExpiredTime=ntime}
		RemoveItemByIndex(nIDX)
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M�t n� ch��ng m�n");	
		Say("Ch�c m�ng ��i hi�p �� tr�ng luy�n th�nh c�ng m�t n� " .. szName) 
	end
end
