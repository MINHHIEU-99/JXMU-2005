Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")

-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------
local tbItemNewBossDropAward={

	[1] = {
		{szName="Ng©n L­îng",nJxb=100000000,nCount=1},
	--{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=200},
		{szName="§¹i Kim Nguyªn b¶o",tbProp={4,1496,1,1,0,01},nCount=50},
		{szName="Tinh Ngoc",tbProp={6,1,4806,1,1},nCount=200},
	--	{szName="TÈy Tñy Kinh",tbProp={6,1,vlmt,1,0,0},nCount=1},
		--{szName="Vâ L©m MËt TÞch",tbProp={6,1,26,1,0,0},nCount=1},
	--	{szName = "Tinh LuyÖn Th¹ch",tbProp={6,1,2280,1,0,0},nCount=random(1,2)},
	---	{szName = "Tö Tinh Kho¸ng Th¹ch ",tbProp={6,1,4885,1,0,0},nCount=random(1,2)},
	--	{szName="Can Khon Song",tbProp={6,1,2119,1,0,0},nCount=random(0,1)},
	--	{szName="Nhat Ky",tbProp={6,1,2126,1,0,0},nCount=random(0,1)},
	{szName="M¶nh Ngùa Hoµng Kim (1-7)",tbProp={4,random(1497,1503),1,1,0},nCount=1},
	{szName="Ngu Linh Kiem Dinh Phu	",tbProp={6,1,3007,1,0,0},nCount=2},
	{szName="Quy Nguyen ",tbProp={6,1,3008,1,0,0},nCount=2},
	{szName="H·n HuyÕt Long C©u",tbProp={0,6043},nCount=1,nQuality=1,nExpiredTime=3*24*60},
	},
		[2] = {--100%/10 mon trang Bi

	
	},
}


function OnDeath(nNpcIndex)
	tenboss=GetNpcName(nNpcIndex)
	if (PlayerIndex == nil or PlayerIndex == 0) then
		return
	end
	--	 StackExp(500000000);
PlayerFunLib:AddExp(50000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i Admin"));
	local nTeamSize = GetTeamSize();
	local szName;
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 100000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc §éc C« CÇu B¹i bÞ tiªu diÖt"));
	end
	szNews = format("§¹i HiÖp <color=green>"..GetName().."<color> ®¸nh th«ng n¸t ®Ýt <color=Cyan>LOL L­u HuÊn <color>, tªn tuæi sÏ vang väng giang hå !");
	AddGlobalNews(szNews);
	Msg2SubWorld(szNews);
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbItemNewBossDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
	--tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,roiboss(),format("killed_%s",GetNpcName(nNpcIndex)))

local r6 = random(1,5)
if r6==1 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5,},}, "test", 1);--
end;

if r6==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,},}, "test", 1);--
end;



if r6==3 then
--	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ngùa Siªu Quang",tbProp={4,1504,1,1,0},nCount=1},}, "test", 1);	
end;


if r6==4 then
	tbAwardTemplet:GiveAwardByList({{szName = "Can Khon Song",tbProp={6,1,2219,1,1},nCount=1},}, "test", 1);	
end;


if r6==5 then
	--tbAwardTemplet:GiveAwardByList({{szName = "S¸ch kÜ n¨ng cÊp 150 cÊp 24",tbProp={6,1,4372,1,1},nCount=1},}, "test", 1);	
end;

local r7= random(1,5)
if r7==2 then
	--tbAwardTemplet:GiveAwardByList({{szName = "H·n HuyÕt ThÇn C©u",tbProp={0,6043},nCount=1,nQuality=1,nExpiredTime=7*24*60,},}, "test", 1);--
	tbAwardTemplet:GiveAwardByList({{szName = "H·n HuyÕt Long C©u",tbProp={0,6049},nCount=1,nQuality=1,nExpiredTime=7*24*60,},}, "test", 1);--
end;

end

function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end

function roiboss()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Boss Hoµng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local c = random(1,3)

if c==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "MËt TÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;

local d= random(1,3)
if d==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;

			local f1= random(1,5)

				if f1==3 then
									local i2 = random(1,3)
									if i2==1 then
									tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt Kh«i",tbProp={6,1,4430,1,1},nCount=1,CallBack= _Message},}, "test", 1);
									else if i2==2 then
									tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt Yªu §¸i",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message},}, "test", 1);
									else if i2==3 then
										tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt Béi",tbProp={6,1,4437,1,1},nCount=1,CallBack= _Message},}, "test", 1);
										end
										end
										end
				end;
				
local d1= random(1,7)
if d1==3 then
	local d12=random(1,2)
	if d12==1 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Kh¶i",tbProp={6,1,4509,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},CallBack= _Message,},}, "test", 1);
	else if d12==2 then
	bAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Vò KhÝ",tbProp={6,1,4510,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},CallBack= _Message,},}, "test", 1);
	end
	end
end;

end
