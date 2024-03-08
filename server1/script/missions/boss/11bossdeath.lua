----------------***Heart*Doldly***----------------------
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
-----------------------------------------------------------------------------

DROPRATE_BOSS_HONOURRATE = {
		["V­¬ng T¸ "] = {350, 136},--739
		["HuyÒn Gi¸c §¹i S­ "] = {350, 134},--740
		["§­êng BÊt NhiÔm"] = {350, 149},--741
		["B¹ch Doanh Doanh"] = {350, 138},--742
		["Thanh TuyÖt S­ Th¸i"] = {350, 137},--743
		["Yªn HiÓu Tr¸i"] = {350, 168},--744
		["Hµ Nh©n Ng· "] = {350, 171},--
		["§¬n T­ Nam"] = {350, 171},--746745
		["TuyÒn C¬ Tö "] = {350, 144},--747
		["§¹i M· Hæ "] = {0, 250},
		["Gia LuËt TÞ Ly"] = {350, 130},--563
		["Hoµn Nhan TuyÕt Y"] = {400, 130},--564
		["§oan Méc DuÖ "] = {400, 127},--565
		["Cæ B¸ch"] = {350, 141},--566
		["§¹o Thanh Ch©n Nh©n"] = {300, 130},--562
		["Chung Linh Tó "] = {400, 130},--567
		["Hµ Linh Phiªu"] = {400, 130},--568
		["Lam Y Y"] = {250, 176},--582
		["M¹nh Th­¬ng L­¬ng"] = {300, 180},--583
                ["§­êng Phi YÕn"] = {300, 180},--1366
		["Thanh Liªn Tö"] = {300, 180},--1368
}

HONOURID = {3022, 3022}
SIGNET_DROPCOUNT = 20
TSK_PLAYER_BOSSKILLED = 2598 
KILLBOSSEXPAWARD = 500000000	--Tæ §éi GiÕt NhËn §­îc Kinh NghiÖm
KILLBOSSNEAREXPAWARD = 500000000	--Ng­êi Xung Quanh §øng GÇn Boss NhËn §­îc Kinh NghiÖm

--PhÇn Th­ëng R¬i Ra Tõ Boss Hoµng Kim
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Boss Hoµng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
tk=random(1,2)
if tk==1 then
	vlmt=22
	else vlmt=26
end

local tbVnNewItemDropAward = {
	[1] = {				
               {nExp_tl=10e8},
		{szName="Ng©n L­îng",nJxb=500000,nCount=1},
		{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4807,1,0,0},nCount=100},
		{szName="Xu",tbProp={4,417,1,1,0,0},nCount=300},

	},
	[2] = {
		--{szName = "MËt TÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4345,1,0,0},nCount=1,nRate=2,CallBack= _Message},  
		--{szName = "MËt TÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4346,1,0,0},nCount=1,nRate=0.1,CallBack= _Message},   
             	{szName="Can Khon Song",tbProp={6,1,2119,1,0,0},nCount=1,nRate=1,CallBack= _Message},
		{szName="Nhat Ky",tbProp={6,1,2126,1,0,0},nCount=1,nRate=1,CallBack= _Message},
		{szName="B¸ch NghÖ Thiªn Th¹ch",tbProp={6,1,49004,1,0,0},nCount=10,nRate=1,CallBack= _Message},
		{szName="B¸ch NghÖ Tinh Ngäc",tbProp={6,1,30355,1,0,0},nCount=10,nRate=1,CallBack= _Message},
                {szName="B¶o R­¬ng Tinh S­¬ng H¹ng Liªn",tbProp={6,1,6020,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=0.1,CallBack= _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Kh«i",tbProp={6,1,6021,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nRate=7,CallBack= _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Th­îng Giíi",tbProp={6,1,6022,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.2,CallBack= _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Hé UyÓn",tbProp={6,1,6023,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.3,CallBack= _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Yªu §¸i",tbProp={6,1,6024,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=2,CallBack= _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Hµi",tbProp={6,1,6027,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=15,CallBack= _Message},
		{szName="B¶o R­¬ng Tinh S­¬ng Béi",tbProp={6,1,6028,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nRate=0.1,CallBack= _Message},
	

	},
	}
function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local maxcount = SIGNET_DROPCOUNT;
	local _, nTongID = GetTongName();
	if (nTongID > 0) then
		if (IsDoubledMoneyBox(nTongID)) then
			maxcount = getSignetDropRate(SIGNET_DROPCOUNT);
		end;
	end;
	local nCurtime = GetCurServerTime() + 7 * 24 *60 * 60
	local nYear = tonumber(FormatTime2String("%Y", nCurtime))
	local nMonth = tonumber(FormatTime2String("%m", nCurtime))
	local nDay = tonumber(FormatTime2String("%d", nCurtime))
	
		tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
			tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,roiboss(),format("killed_%s",GetNpcName(nNpcIndex)))
			PlayerFunLib:AddExp(30000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i Boss HKMP"));

	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
				if nDate <= TimeKetThucEventFree then
			tbAwardTemplet:GiveAwardByList({{szName = "Event Free", tbProp ={ 6, 1, ideventfree, 1, 0, 0}, nCount=20, nExpiredTime=TimeHetHanEventFree}},  "test", 1)
			end
	
	if (GetProductRegion() == "cn" or GetProductRegion() == "cn_ib") then
		local szNpcName = GetNpcName(nNpcIndex);
		if (DROPRATE_BOSS_HONOURRATE[szNpcName]) then
			for i = 1, getn(DROPRATE_BOSS_HONOURRATE[szNpcName]) do
				local nrate = random(1, 10000);
				if (nrate < DROPRATE_BOSS_HONOURRATE[szNpcName][i]) then
				DropItem(world, x, y, PlayerIndex, 6, 1, HONOURID[i], 1, 0, 0, 0, 0, 0, 0, 0, 0);
				end;
			end;
		end;
	end;
	
---------------------------------------------PhÇn Th­ëng Tæ §éi GiÕt Boss--------------------------------------------------------------------------------------------------------------------
	local nTeamSize = GetTeamSize();
	local szName;

	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm Tæ §éi GiÕt BOSS hoµng kim"));
		end
	else
		szName = GetName();
		local tbnvboss = {
		--	{szName="Hµnh HiÖp LÖnh",tbProp={6,1,2566,1,0,0},nCount=20},
		--	{szName="TiÒn §ång Khãa",tbProp={4,1495,1,1,0,0},nCount=20,nBindState = -2},
	}
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i BOSS hoµng kim"));
		--tbAwardTemplet:GiveAwardByList(tbnvboss, "PhÇn th­ëng Tiªu DiÖt Boss C¸ Nh©n")
	end
-----------------------------------------------------------------------------------------------PhÇn Th­ëng Ng­êi Xung Quanh §øng GÇn Boss--------------------------------------------------------
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s phÇn th­ëng","Kinh nghiÖm §øng Xung Quanh Lóc BOSS Hoµng Kim BÞ Tiªu DiÖt"));
	end
	
	local szNews = format("<color=green>§¹i HiÖp <color><color=yellow>%s<color> t¹i <color=yellow>%s<color> <color=blue> ®· tiªu diÖt thµnh c«ng <color><color=yellow>%s<color> ", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- BOSS XuÊt HiÖn
	local nCount = GetTask(TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(TSK_PLAYER_BOSSKILLED, nCount);
	
	if (GetNpcParam(nNpcIndex, 1) == 1) then --19:30
		
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "ReduceGoldBossCount", 0);
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function roiboss()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Boss Hoµng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local c = random(1,200)

if c==50 then
	tbAwardTemplet:GiveAwardByList({{szName = "MËt TÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4345,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if c==100 then
	--tbAwardTemplet:GiveAwardByList({{szName = "MËt TÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4346,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;


local d = random(1,80)

if d==50 or d==30 then
	--tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng Y",tbProp={6,1,4883,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if d==70 then
	--tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ Tinh S­¬ng KhÝ Giíi",tbProp={6,1,4884,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;

local e = random(1,50)

if e==80 then
	--tbAwardTemplet:GiveAwardByList({{szName = "MËt TÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;

local f= random(1,30)

if f==15 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;

			local f1= random(1,50)

				if f1==25 then
									local i2 = random(1,3)
									if i2==1 then
									--tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt H¹ng Liªn",tbProp={6,1,4429,1,1},nCount=1,CallBack= _Message},}, "test", 1);
									else if i2==2 then
									tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt Hé UyÓn",tbProp={6,1,4432,1,1},nCount=1,CallBack= _Message},}, "test", 1);
									else if i2==3 then
										--tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt Hµi",tbProp={6,1,4436,1,1},nCount=1,CallBack= _Message},}, "test", 1);
										end
										end
										end
				end;
local d1= random(1,50)
if d1==45 then
	local d12=random(1,2)
	if d12==1 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Kh¶i",tbProp={6,1,4509,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},CallBack= _Message,},}, "test", 1);
	else if d12==2 then
	--bAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Vò KhÝ",tbProp={6,1,4510,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},CallBack= _Message,},}, "test", 1);
	end
	end
end;
end
function OnTimer(npcindex, nTimeOut) 
	DelNpc(npcindex);
end