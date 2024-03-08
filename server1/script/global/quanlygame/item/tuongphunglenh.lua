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





function main()
dofile("script/global/quanlygame/item/tuongphunglenh.lua")
if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y nhËn.",0);
		return 1
end
--if GetTask(3784) == 2  then
--Msg2Player("<color=pink>§· hoµn thµnh chuçi nhiÖm hÖ thèng hñy bá t­¬ng phïng lÖnh.")
--Say("<color=pink>§· hoµn thµnh chuçi nhiÖm hÖ thèng hñy bá t­¬ng phïng lÖnh.")
	--	return
--end
if GetTask(3778) == 2 and  GetTask(3779) == 2 and  GetTask(3780) == 2 and  GetTask(3781) == 2 and  GetTask(3782) == 2 and  GetTask(3783) == 2 and  GetTask(3784) == 2 and  GetTask(3800) == 2  and  GetTask(3801) == 2   then
Msg2Player("<color=pink>§· hoµn thµnh chuçi nhiÖm hÖ thèng hñy bá t­¬ng phïng lÖnh.")
Say("<color=pink>§· hoµn thµnh chuçi nhiÖm hÖ thèng hñy bá t­¬ng phïng lÖnh.")
	logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] §· hoµn thµnh chuçi nhiÖm hÖ thèng hñy bá t­¬ng phïng lÖnh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

		return
end

local dangcap = GetLevel()
if dangcap < 50 then
ST_LevelUp(50 - dangcap)
Earn(100000)
end
if GetTask(3778) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô d­íi cÊp 60 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3779) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 60 ®Õn d­íi cÊp 70 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3780) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 70 ®Õn d­íi cÊp 80 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3781) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 80 ®Õn d­íi cÊp 85 : Hoµn thµnh 15 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3782) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 85 ®Õn d­íi cÊp 90 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3783) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 90 ®Õn d­íi cÊp 93 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3784) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 93 trë lªn : Hoµn thµnh 20 nhiÖm vô d· tÈu bÊt kú + 3000 ®iÓm tèng kim (kh«ng liªn tôc).")
end
if GetTask(3800) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 95 trë lªn : Hoµn thµnh 20 nhiÖm vô d· tÈu bÊt kú + 1 chuyÕn phong  l¨ng ®é (chØ cÇn cã tham gia ®i thuyÒn kh«ng nhÊt thiÕt hoµn thµnh).")
end
if GetTask(3801) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 98 trë lªn : Hoµn thµnh 20 nhiÖm vô d· tÈu bÊt kú + 1 chuyÕn v­ît ¶i (chØ cÇn cã tham gia v­ît ¶i kh«ng nhÊt thiÕt hoµn thµnh).")
end
if GetTask(3778) == 0 and  GetTask(3779) == 0  and  GetTask(3780) == 0  and  GetTask(3781) == 0  and  GetTask(3782) == 0  and  GetTask(3783) == 0  and  GetTask(3784) == 0  and  GetTask(3780) == 0 and  GetTask(3800) == 0  and  GetTask(3801) == 0 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ch­a nhËn nhiªm vô nµo.")
end

local szTitle =  "T­¬ng phïng lÖnh nhËn quµ siªu hªn"
local tbOpt = 
{

{"NV Hoµn Thµnh (d­íi cÊp 60)", nhiemvu10},
{"NV Hoµn Thµnh (cÊp 60-69)", nhiemvu1060},
{"NV Hoµn Thµnh (cÊp 70-79)", nhiemvu1070},
{"NV Hoµn Thµnh (cÊp 80-84)", nhiemvu1080},
{"NV Hoµn Thµnh (cÊp 85-89)", nhiemvu1085},
{"NV Hoµn Thµnh (cÊp 90-92)", nhiemvu1090},
{"Sang trang tiÕp theo", trang2},


{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end


function trang2()
dofile("script/global/quanlygame/item/tuongphunglenh.lua")
if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y nhËn.",0);
		return 1
end
if GetTask(3778) == 2 and  GetTask(3779) == 2 and  GetTask(3780) == 2 and  GetTask(3781) == 2 and  GetTask(3782) == 2 and  GetTask(3783) == 2 and  GetTask(3784) == 2 and  GetTask(3800) == 2  and  GetTask(3801) == 2  then
Msg2Player("<color=pink>§· hoµn thµnh chuçi nhiÖm hÖ thèng hñy bá t­¬ng phïng lÖnh.")
Say("<color=pink>§· hoµn thµnh chuçi nhiÖm hÖ thèng hñy bá t­¬ng phïng lÖnh.")
	logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] §· hoµn thµnh chuçi nhiÖm hÖ thèng hñy bá t­¬ng phïng lÖnh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

		return
end
local dangcap = GetLevel()
if dangcap < 50 then
ST_LevelUp(50 - dangcap)
Earn(100000)
end
if GetTask(3778) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô d­íi cÊp 60 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3779) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 60 ®Õn d­íi cÊp 70 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3780) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 70 ®Õn d­íi cÊp 80 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3781) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 80 ®Õn d­íi cÊp 85 : Hoµn thµnh 15 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3782) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 85 ®Õn d­íi cÊp 90 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3783) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 90 ®Õn d­íi cÊp 93 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
end
if GetTask(3784) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 93 trë lªn : Hoµn thµnh 20 nhiÖm vô d· tÈu bÊt kú + 3000 ®iÓm tèng kim (kh«ng liªn tôc).")
end
if GetTask(3800) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 95 trë lªn : Hoµn thµnh 20 nhiÖm vô d· tÈu bÊt kú + 1 chuyÕn phong  l¨ng ®é (chØ cÇn cã tham gia ®i thuyÒn kh«ng nhÊt thiÕt hoµn thµnh).")
end
if GetTask(3801) == 1 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 98 trë lªn : Hoµn thµnh 20 nhiÖm vô d· tÈu bÊt kú + 1 chuyÕn v­ît ¶i (chØ cÇn cã tham gia v­ît ¶i kh«ng nhÊt thiÕt hoµn thµnh).")
end
if GetTask(3778) == 0 and  GetTask(3779) == 0  and  GetTask(3780) == 0  and  GetTask(3781) == 0  and  GetTask(3782) == 0  and  GetTask(3783) == 0  and  GetTask(3784) == 0  and  GetTask(3780) == 0 and  GetTask(3800) == 0  and  GetTask(3801) == 0 then
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ch­a nhËn nhiªm vô nµo.")
end

local szTitle =  "T­¬ng phïng lÖnh nhËn quµ siªu hªn"
local tbOpt = 
{

{"NV Hoµn Thµnh (cÊp 93+)", nhiemvu1093},
{"NV Hoµn Thµnh (cÊp 95+)", nhiemvu1095},
{"NV Hoµn Thµnh (cÊp 98+)", nhiemvu1098},

{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end


--------------------NV10 ------------------------

function nhiemvu10()
if GetLevel() >= 60 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
local tab_Content = {
"Ta ®· hoµn thµnh nhiÖm vô/hoanthanhnhiemvu10",
"Ta ®Õn nhËn nhiÖm vô/nhannhiemvu10",
"TiÕn muèn hñy nhiÖm vô nµy/huynhiemvu10",
"ChØ xem th«i/no"
	}
Say("<color=white>NhiÖm Vô HiÖn T¹i:\nD· TÈu " ..GetTask(3785) .. "/10", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu10()
if GetTask(3778) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=pink>chóc mõng ®¹i hiÖp nhËn nhiÖm vô d­íi cÊp 60 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
SetTask(3778,1)
end

function huynhiemvu10()
if GetTask(3778) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi kh«ng ®­îc hñy n÷a xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=green>B¹n ®· hñy nhiÖm vô thµnh c«ng.B©y giê cã thÓ nhËn nhiÖm vô l¹i.")
SetTask(3778,0)
end

function hoanthanhnhiemvu10()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if GetLevel() >= 60 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
if GetTask(3778) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
if GetTask(3778) < 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nµy xin h·y nhËn nhiÖm vô råi h· tiÕp tôc.",0);
		return
end
if GetTask(3785) < 10 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô d· tÈu quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
SetTask(3778,2)
StackExp(5000000);
Earn(100000)
SetTask(3785,0)
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô t­¬ng phïng lÖnh nhËn ®­îc phÇn th­ëng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hoanthanhnhiemvu10",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end


--------------------60-70-NV10 ------------------------

function nhiemvu1060()
if GetLevel() >= 70 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
local tab_Content = {
"Ta ®· hoµn thµnh nhiÖm vô/hoanthanhnhiemvu1060",
"Ta ®Õn nhËn nhiÖm vô/nhannhiemvu1060",
"TiÕn muèn hñy nhiÖm vô nµy/huynhiemvu1060",
"ChØ xem th«i/no"
	}
Say("<color=white>NhiÖm Vô HiÖn T¹i:\nD· TÈu " ..GetTask(3785) .. "/10", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1060()
if GetTask(3779) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=pink>nhËn nhiÖm vô cÊp 60 ®Õn d­íi cÊp 70 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
SetTask(3779,1)
end

function huynhiemvu1060()
if GetTask(3779) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi kh«ng ®­îc hñy n÷a xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=green>B¹n ®· hñy nhiÖm vô thµnh c«ng.B©y giê cã thÓ nhËn nhiÖm vô l¹i.")
SetTask(3779,0)
end

function hoanthanhnhiemvu1060()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if GetLevel() >= 70 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
if GetTask(3779) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
if GetTask(3779) < 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nµy xin h·y nhËn nhiÖm vô råi h· tiÕp tôc.",0);
		return
end
if GetTask(3785) < 10 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô d· tÈu quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
SetTask(3779,2)
StackExp(20000000);
SetTask(3785,0)
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,71,1,1},nCount=3,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô t­¬ng phïng lÖnh nhËn ®­îc phÇn th­ëng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] huynhiemvu1060",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end

--------------------70-80-NV10 ------------------------

function nhiemvu1070()
if GetLevel() >= 80 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
local tab_Content = {
"Ta ®· hoµn thµnh nhiÖm vô/hoanthanhnhiemvu1070",
"Ta ®Õn nhËn nhiÖm vô/nhannhiemvu1070",
"TiÕn muèn hñy nhiÖm vô nµy/huynhiemvu1070",
"ChØ xem th«i/no"
	}
Say("<color=white>NhiÖm Vô HiÖn T¹i:\nD· TÈu " ..GetTask(3785) .. "/10", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1070()
if GetTask(3780) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 70 ®Õn d­íi cÊp 80 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
SetTask(3780,1)
end

function huynhiemvu1070()
if GetTask(3780) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi kh«ng ®­îc hñy n÷a xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=green>B¹n ®· hñy nhiÖm vô thµnh c«ng.B©y giê cã thÓ nhËn nhiÖm vô l¹i.")
SetTask(3780,0)
end

function hoanthanhnhiemvu1070()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if GetLevel() >= 80 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
if GetTask(3780) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
if GetTask(3780) < 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nµy xin h·y nhËn nhiÖm vô råi h· tiÕp tôc.",0);
		return
end
if GetTask(3785) < 10 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô d· tÈu quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
SetTask(3780,2)
StackExp(40000000);
SetTask(3785,0)
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,71,1,1},nCount=4,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô t­¬ng phïng lÖnh nhËn ®­îc phÇn th­ëng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
			logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhannhiemvu1070",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end




--------------------80-85-NV10 ------------------------

function nhiemvu1080()
if GetLevel() >= 85 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
local tab_Content = {
"Ta ®· hoµn thµnh nhiÖm vô/hoanthanhnhiemvu1080",
"Ta ®Õn nhËn nhiÖm vô/nhannhiemvu1080",
"TiÕn muèn hñy nhiÖm vô nµy/huynhiemvu1080",
"ChØ xem th«i/no"
	}
Say("<color=white>NhiÖm Vô HiÖn T¹i:\nD· TÈu " ..GetTask(3785) .. "/15", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1080()
if GetTask(3781) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 80 ®Õn d­íi cÊp 85 : Hoµn thµnh 15 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
SetTask(3781,1)
end

function huynhiemvu1080()
if GetTask(3781) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi kh«ng ®­îc hñy n÷a xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=green>B¹n ®· hñy nhiÖm vô thµnh c«ng.B©y giê cã thÓ nhËn nhiÖm vô l¹i.")
SetTask(3781,0)
end

function hoanthanhnhiemvu1080()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if GetLevel() >= 85 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
if GetTask(3781) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
if GetTask(3781) < 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nµy xin h·y nhËn nhiÖm vô råi h· tiÕp tôc.",0);
		return
end
if GetTask(3785) < 15 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô d· tÈu quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
SetTask(3781,2)
StackExp(50000000);
SetTask(3785,0)
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,71,1,1},nCount=5,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô t­¬ng phïng lÖnh nhËn ®­îc phÇn th­ëng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
				logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hoanthanhnhiemvu1080",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end




--------------------85-90-NV10 ------------------------

function nhiemvu1085()
if GetLevel() >= 90 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
local tab_Content = {
"Ta ®· hoµn thµnh nhiÖm vô/hoanthanhnhiemvu1085",
"Ta ®Õn nhËn nhiÖm vô/nhannhiemvu1085",
"TiÕn muèn hñy nhiÖm vô nµy/huynhiemvu1085",
"ChØ xem th«i/no"
	}
Say("<color=white>NhiÖm Vô HiÖn T¹i:\nD· TÈu " ..GetTask(3785) .. "/20", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1085()
if GetTask(3782) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 85 ®Õn d­íi cÊp 90 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
SetTask(3782,1)
end

function huynhiemvu1085()
if GetTask(3782) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi kh«ng ®­îc hñy n÷a xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=green>B¹n ®· hñy nhiÖm vô thµnh c«ng.B©y giê cã thÓ nhËn nhiÖm vô l¹i.")
SetTask(3782,0)
end

function hoanthanhnhiemvu1085()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if GetLevel() >= 90 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
if GetTask(3782) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
if GetTask(3782) < 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nµy xin h·y nhËn nhiÖm vô råi h· tiÕp tôc.",0);
		return
end
if GetTask(3785) < 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nµy xin h·y nhËn nhiÖm vô råi h· tiÕp tôc.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô d· tÈu quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end

SetTask(3782,2)
StackExp(80000000);
SetTask(3785,0)
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,71,1,1},nCount=5,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô t­¬ng phïng lÖnh nhËn ®­îc phÇn th­ëng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
					logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hoanthanhnhiemvu1085",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end




--------------------90-93-NV10 ------------------------

function nhiemvu1090()
if GetLevel() >= 93 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
local tab_Content = {
"Ta ®· hoµn thµnh nhiÖm vô/hoanthanhnhiemvu1090",
"Ta ®Õn nhËn nhiÖm vô/nhannhiemvu1090",
"TiÕn muèn hñy nhiÖm vô nµy/huynhiemvu1090",
"ChØ xem th«i/no"
	}
Say("<color=white>NhiÖm Vô HiÖn T¹i:\nD· TÈu " ..GetTask(3785) .. "/20 - \nPhó quı cÈm h¹p " ..GetTask(3333) .. "/10", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1090()
if GetTask(3783) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 90 ®Õn d­íi cÊp 93 : Hoµn thµnh 10 nhiÖm vô d· tÈu bÊt kú (kh«ng liªn tôc).")
SetTask(3783,1)
end

function huynhiemvu1090()
if GetTask(3783) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi kh«ng ®­îc hñy n÷a xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=green>B¹n ®· hñy nhiÖm vô thµnh c«ng.B©y giê cã thÓ nhËn nhiÖm vô l¹i.")
SetTask(3783,0)
end

function hoanthanhnhiemvu1090()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if GetLevel() >= 93 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
if GetTask(3783) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
if GetTask(3783) < 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nµy xin h·y nhËn nhiÖm vô råi h· tiÕp tôc.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô d· tÈu quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
if GetTask(3333) < 10 then
		Say("ch­a hoµn thµnh ®ñ sö dông phó quı cÈm h¹p theo quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
SetTask(3783,2)
StackExp(150000000);
SetTask(3785,0)
SetTask(3333,0)

tbAwardTemplet:GiveAwardByList({{szName = "ng­êi tuyÕt",tbProp={6,1,4346,1,1},nCount=20,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô t­¬ng phïng lÖnh nhËn ®­îc phÇn th­ëng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
						logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hoanthanhnhiemvu1090",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end





--------------------93+ NV10 ------------------------

function nhiemvu1093()
if GetLevel() >= 95 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
local tab_Content = {
"Ta ®· hoµn thµnh nhiÖm vô/hoanthanhnhiemvu1093",
"Ta ®Õn nhËn nhiÖm vô/nhannhiemvu1093",
"TiÕn muèn hñy nhiÖm vô nµy/huynhiemvu1093",
"ChØ xem th«i/no"
	}
Say("<color=white>NhiÖm Vô HiÖn T¹i:\nD· TÈu " ..GetTask(3785) .. "/20 \nTèng Kim " ..GetTask(3332) .. "/3000", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1093()
if GetTask(3784) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 93 trë lªn : Hoµn thµnh 20 nhiÖm vô d· tÈu bÊt kú vµ tèng kim ®¹t 3000 ®iÓm (kh«ng liªn tôc).")
SetTask(3784,1)
end

function huynhiemvu1093()
if GetTask(3784) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi kh«ng ®­îc hñy n÷a xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=green>B¹n ®· hñy nhiÖm vô thµnh c«ng.B©y giê cã thÓ nhËn nhiÖm vô l¹i.")
SetTask(3784,0)
end

function hoanthanhnhiemvu1093()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if GetLevel() >= 100 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
if GetTask(3784) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô d· tÈu quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
if GetTask(3332) < 3000 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô tèng kim ®¹t 3000 ®iÓm trë lªn theo quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
SetTask(3784,2)
SetTask(3332,0)

SetTask(3785,0)
StackExp(200000000);
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,1765,1,1},nCount=2,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô t­¬ng phïng lÖnh nhËn ®­îc phÇn th­ëng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
							logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hoanthanhnhiemvu1093",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end



--------------------95+ NV10 ------------------------

function nhiemvu1095()
if GetLevel() >= 98 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
local tab_Content = {
"Ta ®· hoµn thµnh nhiÖm vô/hoanthanhnhiemvu1095",
"Ta ®Õn nhËn nhiÖm vô/nhannhiemvu1095",
"TiÕn muèn hñy nhiÖm vô nµy/huynhiemvu1095",
"ChØ xem th«i/no"
	}
Say("<color=white>NhiÖm Vô HiÖn T¹i:\nD· TÈu " ..GetTask(3785) .. "/20 \nPhong L¨ng §é " ..GetTask(3803) .. "/1", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1095()
if GetTask(3800) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 95 trë lªn : Hoµn thµnh 20 nhiÖm vô d· tÈu bÊt kú vµ 1 chuyÕn phong l¨ng ®é.")
SetTask(3800,1)
end

function huynhiemvu1095()
if GetTask(3800) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi kh«ng ®­îc hñy n÷a xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=green>B¹n ®· hñy nhiÖm vô thµnh c«ng.B©y giê cã thÓ nhËn nhiÖm vô l¹i.")
SetTask(3800,0)
end

function hoanthanhnhiemvu1095()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if GetLevel() >= 98 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
if GetTask(3800) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô d· tÈu quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
if GetTask(3803) < 1 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô 1 chuyÕn phong l¨ng ®é xin h·y kiÓm tra l¹i..",0);
		return
end
SetTask(3800,2)
SetTask(3803,0)
SetTask(3785,0)
StackExp(100000000);
StackExp(100000000);
StackExp(100000000);
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,1765,1,1},nCount=2,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô t­¬ng phïng lÖnh nhËn ®­îc phÇn th­ëng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
							logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hoanthanhnhiemvu1095",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end



--------------------98+ NV10 ------------------------

function nhiemvu1098()
if GetLevel() >= 110 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
local tab_Content = {
"Ta ®· hoµn thµnh nhiÖm vô/hoanthanhnhiemvu1098",
"Ta ®Õn nhËn nhiÖm vô/nhannhiemvu1098",
"TiÕn muèn hñy nhiÖm vô nµy/huynhiemvu1098",
"ChØ xem th«i/no"
	}
Say("<color=white>NhiÖm Vô HiÖn T¹i:\nD· TÈu " ..GetTask(3785) .. "/20 \nV­ît ¶i " ..GetTask(3804) .. "/1", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1098()
if GetTask(3801) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=pink>HiÖn t¹i ®¹i hiÖp ®ang nhËn nhiÖm vô cÊp 98 trë lªn : Hoµn thµnh 20 nhiÖm vô d· tÈu bÊt kú vµ 1 chuyÕn v­ît ¶i.")
SetTask(3801,1)
end

function huynhiemvu1098()
if GetTask(3801) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi kh«ng ®­îc hñy n÷a xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
Msg2Player("<color=green>B¹n ®· hñy nhiÖm vô thµnh c«ng.B©y giê cã thÓ nhËn nhiÖm vô l¹i.")
SetTask(3801,0)
end

function hoanthanhnhiemvu1098()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if GetLevel() >= 110 then
		Say("§¼ng cÊp ®¹i hiÖp kh«ng thİch hîp ®Ó lµm nhiÖm vô nµy xin h¹y chän chuçi nhiªm vô t­¬ng øng víi cÊp.",0);
		return
end
if GetTask(3801) > 1 then
		Say("§¹i hiÖp ®· lµm xong nhiÖm vô nµy råi xin h·y nhËn nhiÖm vô kh¸c.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô d· tÈu quy ®Şnh xin h·y kiÓm tra l¹i..",0);
		return
end
if GetTask(3804) < 1 then
		Say("ch­a hoµn thµnh ®ñ chuçi nhiÖm vô 1 chuyÕn v­ît ¶i ®é xin h·y kiÓm tra l¹i..",0);
		return
end
SetTask(3801,2)
SetTask(3804,0)
SetTask(3785,0)
StackExp(100000000);
StackExp(100000000);
StackExp(100000000);
tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé",tbProp={6,1,1765,1,1},nCount=2,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô t­¬ng phïng lÖnh nhËn ®­îc phÇn th­ëng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
							logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hoanthanhnhiemvu1098",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end



function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end



