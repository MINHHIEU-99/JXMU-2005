Include("\\script\\global\\forbidmap.lua");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\basic.lua");
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")

--tinhpn 20100809: forbid Tong Map
local tbUseOnlyInMap = 
{
	53,999
}
local checkOnlyUseInMap = function()
	local nMapId = SubWorldIdx2MapCopy(SubWorld)
	for i = 1, getn( %tbUseOnlyInMap ) do		--ÌØÊâµØÍ¼½ûÓÃ
		if( %tbUseOnlyInMap[i] == nMapId ) then
			return 1
		end
	end
	return 0
end

function main2(nItemIdx)
dofile("script/global/quanlygame/sukien/tinhluyenthanbinh/mocbai.lua")
				Msg2Player("T¹m thêi vËt phÈm nµy kh«ng thÓ sö dông xin h·y ®îi BQT më l¹i vËt phÈm nµy");
		return 1
		end


function main(nItemIdx)
dofile("script/global/quanlygame/item/satthulenh.lua")
	local _, _, _, nLevel= GetItemProp( nItemIdx );
	local ForbiddenMap = {44, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 326, 327, 328, 329, 330, 331, 334, 335, 337, 338, 339, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374}
	local GoldenBoss = 
	{
					  --{562, "§¹o Thanh Ch©n Nh©n", 4,12},
					  --{563, "Gia LuËt TÞ Ly", 3,12},
					  --{564, "ÍêÑÕÑ©ÒÂ", 3,12},
					  --{565, "§oan Méc DuÖ ", 3,12},
					  --{566, "Cæ B¸ch", 0,12},
					  --{567, "Chung Linh Tó ", 2,12},
					  --{568, "Hµ Linh Phiªu", 2,12},
					  --{582, "Lam Y Y", 1,12},
					  --{583, "M¹nh Th­¬ng L­¬ng", 3,12},
					  --{739, "V­¬ng T¸ ", 0,10},
					  --{740, "HuyÒn Gi¸c §¹i S­ ", 0,12},
					  --{741, "§­êng BÊt NhiÔm", 1,12},
					--  {742, "B¹ch Doanh Doanh", 1,12},
					  --{743, "Thanh HiÓu S­ Th¸i ", 2,12},
					  --{744, "Yªn HiÓu Tr¸i", 2,12},
					  --{745, "Hµ Nh©n Ng· ", 3,12},
					  --{746, "µ¥Ë¼ÄÏ", 4,10},
					  --{747, "TuyÒn C¬ Tö ", 4,12},
					  {511, "Tr­¬ng T«ng ChÝnh",5,300},
			  		 {513, "DiÖu Nh­ ",5,300},
			  		 {523, "LiÔu Thanh Thanh",5,400}
		}
			  		  
	local bosspro = {};
	local W,X,Y = GetWorldPos();
	local nMapId = W;
	if ( GetFightState() == 0 ) then	--·ÇÕ½¶·Çø½ûÓÃ
		Msg2Player("Kh«ng ë trong tr¹ng th¸i chiÕn ®Êu th× kh«ng thÓ sö dông");
		return 1
	end
	
	--tinhpn 20100803:  forbid Tong Map
	if %checkOnlyUseInMap() ~= 1 then
		Msg2Player("Kh«ng thÓ sö dông vËt phÈm nµy t¹i ®©y.")
		return 1
	end
	
	for i = 249, 318 do	--Ï´ËèµºÉ½¶´
		if ( i == nMapId ) then
			Msg2Player("N¬i ®©y kh«ng thÓ sö dông vËt phÈm nµy ");
			return 1
		end
	end	
	for i = 375, 415 do	--ÐÂÔöËÎ½ðÕ½³¡µØÍ¼ ËÍÐÅÈÎÎñµØÍ¼ ±ÈÎä´ó»áµØÍ¼
		if ( i == nMapId ) then
			Msg2Player("N¬i ®©y kh«ng thÓ sö dông vËt phÈm nµy ");
			return 1
		end
	end
	for i = 1, getn( ForbiddenMap ) do		--ÌØÊâµØÍ¼½ûÓÃ
		if( ForbiddenMap[i] == nMapId ) then
			Msg2Player("N¬i ®©y kh«ng thÓ sö dông vËt phÈm nµy ");
			return 1
		end
	end

	if (CheckAllMaps(nMapId) == 1) then
		Msg2Player("N¬i ®©y kh«ng thÓ sö dông vËt phÈm nµy ");
		return 1
	end
	addboss()
if GetTask(4652) == 9 then
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Hoµng",tbProp={0,168},nCount=1,nQuality = 1,nExpiredTime=60*24*7,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Hoµng",tbProp={0,169},nCount=1,nQuality = 1,nExpiredTime=60*24*7,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Hoµng",tbProp={0,170},nCount=1,nQuality = 1,nExpiredTime=60*24*7,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Hoµng",tbProp={0,171},nCount=1,nQuality = 1,nExpiredTime=60*24*7,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Hoµng",tbProp={0,172},nCount=1,nQuality = 1,nExpiredTime=60*24*7,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Hoµng",tbProp={0,173},nCount=1,nQuality = 1,nExpiredTime=60*24*7,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Hoµng",tbProp={0,174},nCount=1,nQuality = 1,nExpiredTime=60*24*7,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Hoµng",tbProp={0,175},nCount=1,nQuality = 1,nExpiredTime=60*24*7,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thiªn Hoµng",tbProp={0,176},nCount=1,nQuality = 1,nExpiredTime=60*24*7,},}, "test", 1);
end
--Msg2Player(GetTask(4652))
SetTask(4652,GetTask(4652) +1)
	end
	
	
	
function addboss(nNpcIndex)
  local bosspro = {};
  local nMapId, nPosX16, nPosY16 = GetWorldPos();
  local SId = SubWorldID2Idx(nMapId);
  local nNpcIndex;
    local idnpc=random(812,820)

  GoldenBossSeries = random( 0, 4);
  if (SId >= 0) then
	  if (random(1,100) <= 100) then
	  	nNpcIndex = AddNpc(idnpc, 1, SId, nPosX16 * 32, nPosY16 * 32, 1, "Boss S¸t Thñ");
	  	if nNpcIndex > 0 then
	  		SetNpcDeathScript(nNpcIndex,"\\script/global/quanlygame/item/satthulenh.lua");
            AddTimer(3000* 18, "OnTimeout", nNpcIndex);
		--	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,random(1330,1331),1,1,0},nCount=1,},}, "test", 1);

	end
end
end
end


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end

	
function OnDeath(nNpcIndex)

local itemr = random(4,6)
for i=1,6 do
drop_random_item(nNpcIndex )
end
end;

QY_ITEM_INFO	=
{
	[1]	= {tb_item = {{0,4,0},
	{0,4,1},
	{0,2,0},
	{0,2,1},
	{0,2,2}, 
	{0,2,3}, 
	{0,2,4}, 
	{0,2,5}, 
	{0,2,6},
	{0,2,8},
	{0,2,9},
	{0,2,10},
	{0,2,11},
	{0,2,12},
	{0,2,13},
	{0,6,0},
	{0,6,1},
	{0,5,0},
	{0,5,1},
	{0,5,2},
	{0,5,3},
	{0,8,0},
	{0,8,1},
	{0,7,0},
	{0,7,1},
	{0,7,2},
	{0,7,3},
	{0,7,4},
	{0,7,5},
	{0,7,6},
	{0,7,7},
	{0,7,8},
	{0,7,9},
	{0,7,10},
	{0,7,11},
	{0,7,12},
	{0,7,13},
	{0,0,0},
	{0,0,1},
	{0,0,2},
	{0,0,3},
	{0,0,4},
	{0,0,5},
	{0,9,0},
	{0,9,1},
	{0,1,0},
	{0,1,1},
	{0,1,2},
	{0,3,0},
	}},

};

function drop_random_item(nNpcIndex)

local x, y, world = GetNpcPos(nNpcIndex);
	for i = 1, getn(QY_ITEM_INFO) do
		local tb_item	= 	QY_ITEM_INFO[i].tb_item;
			local nIdx		= random(getn(tb_item));
			local nx, ny, nz	= tb_item[nIdx][1], tb_item[nIdx][2], tb_item[nIdx][3];

		local nItemIdx = DropItem(world, x, y, PlayerIndex, nx, ny, nz, 10, random(0,4), 100, 10);
			SyncItem(nItemIdx);

	end
end;	
	
