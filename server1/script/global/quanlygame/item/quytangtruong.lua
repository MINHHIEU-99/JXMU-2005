Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("LEAGUE")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\battles\\battlehead.lua")

--task  3778 3779 3780 3781 3782 3783 3784 3785 

--task  3786 3787 3788 3789 
--task 3790




function main(nItemIndex)
dofile("script/global/quanlygame/item/quytangtruong.lua")
if GetTask(3786) > 15 or  GetTask(3787)  > 15 or  GetTask(3788)  > 15 then
SetTask(3786,0)
SetTask(3787,0)
SetTask(3788,0)
Msg2Player("<color=pink>VËt phÈm ®· qu¸ h¹n sö dông hoÆc nhËn ®ñ th­ëng hÖ thèng tù hñy bá vËt phÈm.")
Say("<color=pink>VËt phÈm ®· qu¸ h¹n sö dông hoÆc nhËn ®ñ th­ëng v­ît qu¸ 15 lÇn quy ®Şnh hÖ thèng tù hñy bá vËt phÈm.")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hñy bá vËt phÈm thµnh c«ng do v­ît qu¸ 15 lÇn",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end


--Msg2Player("<color=pink>B¹n ®· thùc hiÖn nhËn lÇn ®Çu ngµy <color=yellow> "..GetTask(3790).."/"..GetTask(3791).."/2020.")
if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y nhËn.",0);
		return 1
end
	local nSilverCount = CalcEquiproomItemCount(6,1,4527,-1) ;
	if(nSilverCount < 1) then 
	Talk(1,"","CÇn cã vâ l©m lÖnh mang theo bªn ng­êi míi cã thÓ sö dông quü Tİch Lòy.") 
	return  1
	end
		local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
Msg2Player("VËt phÈm ®· qu¸ h¹n sö dông")
Msg2Player("<color=pink>VËt phÈm ®· qu¸ h¹n sö dông hoÆc nhËn ®ñ th­ëng hÖ thèng tù hñy bá vËt phÈm.")
Say("<color=pink>VËt phÈm ®· qu¸ h¹n sö dông hoÆc nhËn ®ñ th­ëng hÖ thèng tù hñy bá vËt phÈm.")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hñy bá vËt phÈm thµnh c«ng do hÕt h¹n",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end
if GetTask(3786) >= 15 then
SetTask(3786,0)
SetTask(3787,0)
SetTask(3788,0)
Msg2Player("<color=pink>B¹n ®· hoµn thµnh nhiÖm vô gãi Chu T­íc hÖ thèng tù hñy bá vËt phÈm.")
Say("<color=pink>B¹n ®· hoµn thµnh nhiÖm vô gãi Chu T­íc hÖ thèng tù hñy bá vËt phÈm.Giê ®©y b¹n cã thÓ mua hép Quü Tİch Lòy míi t¹i kú tr©n c¸t vµ bÊt ®Çu lùa chän c¸c gãi ®Ó tiÕp tôc")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hñy bá vËt phÈm thµnh c«ng do ®· hoµn thµnh 15 nhiÖm vô gãi Chu T­íc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end
if GetTask(3787) >= 15 then
SetTask(3786,0)
SetTask(3787,0)
SetTask(3788,0)
Msg2Player("<color=pink>B¹n ®· hoµn thµnh nhiÖm vô gãi Chu T­íc hÖ thèng tù hñy bá vËt phÈm.")
Say("<color=pink>B¹n ®· hoµn thµnh nhiÖm vô gãi Thanh Long hÖ thèng tù hñy bá vËt phÈm.Giê ®©y b¹n cã thÓ mua hép Quü Tİch Lòy míi t¹i kú tr©n c¸t vµ bÊt ®Çu lùa chän c¸c gãi ®Ó tiÕp tôc")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hñy bá vËt phÈm thµnh c«ng do ®· hoµn thµnh 15 nhiÖm vô gãi Thanh Long",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end
if GetTask(3788) >= 15 then
SetTask(3786,0)
SetTask(3787,0)
SetTask(3788,0)
Msg2Player("<color=pink>B¹n ®· hoµn thµnh nhiÖm vô gãi B¹ch Hæ hÖ thèng tù hñy bá vËt phÈm.")
Say("<color=pink>B¹n ®· hoµn thµnh nhiÖm vô gãi B¹ch Hæ hÖ thèng tù hñy bá vËt phÈm.Giê ®©y b¹n cã thÓ mua hép Quü Tİch Lòy míi t¹i kú tr©n c¸t vµ bÊt ®Çu lùa chän c¸c gãi ®Ó tiÕp tôc")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hñy bá vËt phÈm thµnh c«ng do ®· hoµn thµnh 15 nhiÖm vô gãi B¹ch Hæ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end

if GetTask(3786) > 0 then
Msg2Player("<color=pink>HiÖn t¹i gãi ®Çu t­ cña b¹n lµ Chu T­íc : mçi ngµy nhËn ®­îc 15xu + 1 tiªn thæ lé liªn tôc trong 15 ngµy.")
end
if GetTask(3787)  > 0 then
Msg2Player("<color=pink>HiÖn t¹i gãi ®Çu t­ cña b¹n lµ Thanh Long : mçi ngµy nhËn ®­îc 25xu + 1 tiªn thæ lé liªn tôc trong 15 ngµy.")
end
if GetTask(3788)  > 0 then
Msg2Player("<color=pink>HiÖn t¹i gãi ®Çu t­ cña b¹n lµ B¹ch Hæ : mçi ngµy nhËn ®­îc 40xu + 1 tiªn thæ lé liªn tôc trong 15 ngµy.")
end
if GetTask(3786) == 0 and  GetTask(3787) == 0  and  GetTask(3788) == 0  then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ch­a chän gãi ®Çu t­ nµo.")
end

local szTitle =  "Quü t¨ng tr­íc ®Çu t­ 1 lîi 10 vÒ sau."
local tbOpt = 
{

{"Chän Mua C¸c Gãi Quü Tİch Lòy", chonmuagoi},
{"NhËn PhÇn Th­ëng H»ng Ngµy", phanthuonghangngay},
{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end


function phanthuonghangngay()
if GetTask(3790) > 0 or GetTask(3791) > 0 then
Msg2Player("<color=pink>B¹n ®· thùc hiÖn nhËn lÇn ®Çu ngµy <color=yellow> "..GetTask(3790).."/"..GetTask(3791).."/2020.")
end

if GetTask(3786) > 0 then
		Say("<color=green>Quü Chu T­íc:<color> mçi ngµy nhËn ®­îc 15xu + 1 tiªn thæ lé liªn tôc trong 15 ngµy.",1,
		"NhËn quµ h«m nay/nhanhomnaychutuoc")
		return
		end
if GetTask(3787) > 0 then
		Say("<color=green>Quü Thanh Long:<color> mçi ngµy nhËn ®­îc 25xu + 1 tiªn thæ lé liªn tôc trong 15 ngµy.",1,
		"NhËn quµ h«m nay/nhanhomnaythanhlong")
		return
		end
if GetTask(3788) > 0 then
		Say("<color=green>Quü B¹ch Hæ:<color> mçi ngµy nhËn ®­îc 40xu + 1 tiªn thæ lé liªn tôc trong 15 ngµy.",1,
		"NhËn quµ h«m nay/nhanhomnaybachho")
		return
		end
		end
		
		
function nhanhomnaychutuoc()
local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) == nDate) then -- neu khac se
		Say("Mçi ngµy chØ ®­îc nhËn 1 lÇn ngµy mai h·y quay l¹i nhĞ.", 0)
		return
end
		local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) ~= nDate) then -- neu khac se
SetTask(3789, nDate);
tbAwardTemplet:GiveAwardByList({{szName = "tiÒn ®ång",tbProp={4,417,1,1,0},nCount=15},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,4584,1,1},nCount=1,nBindState=-2},}, "test", 1);
SetTask(3786,GetTask(3786)+1)
		Say("NhËn thµnh c«ng phÇn th­ëng h»ng ngµy gãi Chu T­íc", 0)
	    logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn thµnh c«ng gãi Chu T­íc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
ngaynhanthuong()
end
end

function nhanhomnaythanhlong()
local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) == nDate) then -- neu khac se
		Say("Mçi ngµy chØ ®­îc nhËn 1 lÇn ngµy mai h·y quay l¹i nhĞ.", 0)
		return
end
		local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) ~= nDate) then -- neu khac se
SetTask(3789, nDate);
tbAwardTemplet:GiveAwardByList({{szName = "tiÒn ®ång",tbProp={4,417,1,1,0},nCount=25},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,4584,1,1},nCount=1,nBindState=-2},}, "test", 1);
SetTask(3787,GetTask(3787)+1)
		Say("NhËn thµnh c«ng phÇn th­ëng h»ng ngµy gãi Thanh Long", 0)
		logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn thµnh c«ng gãi Thanh Long",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
ngaynhanthuong()
end
end

function nhanhomnaybachho()
local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) == nDate) then -- neu khac se
		Say("Mçi ngµy chØ ®­îc nhËn 1 lÇn ngµy mai h·y quay l¹i nhĞ.", 0)
		return
end
		local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) ~= nDate) then -- neu khac se
SetTask(3789, nDate);
tbAwardTemplet:GiveAwardByList({{szName = "tiÒn ®ång",tbProp={4,417,1,1,0},nCount=40},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,4584,1,1},nCount=1,nBindState=-2},}, "test", 1);
SetTask(3788,GetTask(3788)+1)
		Say("NhËn thµnh c«ng phÇn th­ëng h»ng ngµy gãi B¹ch Hæ", 0)
		logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn thµnh c«ng gãi B¹ch Hæ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
ngaynhanthuong()
end
end				


function chonmuagoi()
local szTitle =  "Quü t¨ng tr­íc ®Çu t­ 1 lîi 10 vÒ sau xin h·y chän c¸c gãi phï häp.L­u ı chØ ®­îc chän 1 gãi vµ mçi gãi chØ ®­îc nhËn liªn tôc 15 ngµy kÓ tõ ngµy nhËn ®Çu tiªn."
local tbOpt = 
{

{"Chän Gãi Chu T­íc (200xu)", muagoichutuoc},
{"Chän Gãi Thanh Long (320xu)", muagoithanhlong},
{"Chän Gãi B¹ch Hæ (500xu)", muagoibachho},
{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end


function muagoichutuoc()
if GetTask(3787) > 0 then
		Say("B¹n ®· mua gãi Thanh Long kh«ng thÓ mua gãi Chu T­íc ®­îc n÷a.",0);
		return
end
if GetTask(3788) > 0 then
		Say("B¹n ®· mua gãi B¹ch Hæ kh«ng thÓ mua gãi Chu T­íc ®­îc n÷a.",0);
		return
end
if GetTask(3786) > 0 then
		Say("B¹n ®· mua gãi nµy råi kh«ng cÇn mua lÇn n÷a.",0);
		return
end
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 200) then 
	Talk(1,"","CÇn cã 200 xu ®Ó mua ®­îc gãi Chu T­íc.") 
	return 
	end
	SetTask(3786,1)
	ConsumeEquiproomItem(200,4,417,1,1)
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> mua gãi quü Tİch Lòy Chu T­íc");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function muagoithanhlong()
if GetTask(3786) > 0 then
		Say("B¹n ®· mua gãi Chu T­íc kh«ng thÓ mua gãi Thanh Long ®­îc n÷a.",0);
		return
end
if GetTask(3788) > 0 then
		Say("B¹n ®· mua gãi B¹ch Hæ kh«ng thÓ mua gãi Thanh Long ®­îc n÷a.",0);
		return
end
if GetTask(3787) > 0 then
		Say("B¹n ®· mua gãi nµy råi kh«ng cÇn mua lÇn n÷a.",0);
		return
end
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 320) then 
	Talk(1,"","CÇn cã 320 xu ®Ó mua ®­îc gãi Thanh Long.") 
	return 
	end
	SetTask(3787,1)
	ConsumeEquiproomItem(320,4,417,1,1)
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> mua gãi quü Tİch Lòy Thanh Long");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function muagoibachho()
if GetTask(3787) > 0 then
		Say("B¹n ®· mua gãi Thanh Long kh«ng thÓ mua gãi B¹ch Hæ ®­îc n÷a.",0);
		return
end
if GetTask(3786) > 0 then
		Say("B¹n ®· mua gãi Chu T­íc kh«ng thÓ mua gãi B¹ch Hæ ®­îc n÷a.",0);
		return
end
if GetTask(3788) > 0 then
		Say("B¹n ®· mua gãi nµy råi kh«ng cÇn mua lÇn n÷a.",0);
		return
end
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 500) then 
	Talk(1,"","CÇn cã 500 xu ®Ó mua ®­îc gãi B¹ch Hæ.") 
	return 
	end
	SetTask(3788,1)
	ConsumeEquiproomItem(500,4,417,1,1)
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> mua gãi quü Tİch Lòy B¹ch Hæ");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function ngaynhanthuong()
if GetTask(3790) >= 0 or GetTask(3791) >= 0  then
return
end
local nDate = tonumber(GetLocalDate("%d"));
local nDate2 = tonumber(GetLocalDate("%m"));
SetTask(3790,nDate)
SetTask(3791,nDate2)
Msg2Player("<color=pink>B¹n ®· thùc hiÖn nhËn lÇn ®Çu ngµy <color=yellow> "..nDate.."/"..nDate2.."/2020.")
Say("<color=pink>B¹n ®· thùc hiÖn nhËn lÇn ®Çu ngµy <color=yellow> "..nDate.."/"..nDate2.."/2020.")
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

