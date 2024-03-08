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







function main()
dofile("script/global/quanlygame/item/quymotvonbonloi.lua")
local szTitle =  "Xin h·y Chän nh÷ng thø b¹n cho lµ cÇn thiÕt"

local tbOpt = 
{

{"NhËn Quµ Siªu Lîi NhuËn", quamotvonbonloi},
{"NhËn Quµ Khi §· §¹t CÊp 90", nhanquacap90},
{"NhËn Quµ Khi §· §¹t CÊp 100", nhanquacap100},
{"NhËn Quµ Khi §· §¹t CÊp 110", nhanquacap110},

{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end



function quamotvonbonloi()
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return
end
if GetTask(3777) > 0 then
		Say("§¹i hiÖp ®· nhËn gãi nµy råi.xin h·y luyÖn lªn cÊp 90 ®Ó nhËn hç trî tiÕp theo.",0);
		return
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0},nCount=400,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "thÇn thµnh",tbProp={6,1,1266,1,1},nCount=1,nExpiredTime=43200,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "thæ ®Þa",tbProp={6,1,438,1,1},nCount=1,nExpiredTime=43200,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
SetTask(3777,100)
	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> më thµnh c«ng.<color=pink> LÔ Hép TÝch Lòy NhËn Quµ Siªu Lîi NhuËn.");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end



function nhanquacap90()
if GetLevel() < 90 then
		Say("§¹i hiÖp hiÖn t¹i ch­a ®¹t cÊp 90.",0);
		return
end
if GetTask(3777) ~= 100 then
		Say("§¹i hiÖp ch­a nhËn gãi Quµ Siªu Lîi NhuËn xin h·y nhËn tr­ícnhËn t¹i hµng ®Çu tiªn.",0);
		return
end
if GetTask(3777) == 200 then
		Say("§¹i hiÖp ®· nhËn råi.",0);
		ConsumeEquiproomItem(1,6,1,4562,-1);
		return
end
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0},nCount=20,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "Thiªn s¬n  B¶o Lé",tbProp={6,1,72,1,1},nCount=2,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "QuÕ hoa töu",tbProp={6,1,125,1,1},nCount=2,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,nBindState=-2},}, "test", 1);

SetTask(3777,200)

	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> nhËn th­ëng thµnh c«ng cÊp 90.<color=pink> (Khi më Gãi §Çu T­)");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end


function nhanquacap100()
if GetLevel() < 100 then
		Say("§¹i hiÖp hiÖn t¹i ch­a ®¹t cÊp 100.",0);
		return
end
if GetTask(3777) ~= 200 then
		Say("§¹i hiÖp ch­a nhËn gãi NhËn Quµ Khi §· §¹t CÊp 90 xin h·y nhËn tr­íc.",0);
		return
end
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0},nCount=30,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "Tiªn thæ Lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "QuÕ hoa töu",tbProp={6,1,125,1,1},nCount=3,nBindState=-2},}, "test", 1);

	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> nhËn th­ëng thµnh c«ng cÊp 100.<color=pink> (Khi më Gãi §Çu T­)");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
SetTask(3777,300)
end


function nhanquacap110()
if GetLevel() < 110 then
		Say("§¹i hiÖp hiÖn t¹i ch­a ®¹t cÊp 110.",0);
		return
end
if GetTask(3777) ~= 300 then
		Say("§¹i hiÖp ch­a nhËn gãi NhËn Quµ Khi §· §¹t CÊp 110 xin h·y nhËn tr­íc.",0);
		return
end
if GetTask(3777) == 400 then
		Say("§¹i hiÖp ®· nhËn råi xãa bá vËt phÈm.",0);
		ConsumeEquiproomItem(1,6,1,4562,-1);
		return
end
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ nhËn.")
		return
end
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0},nCount=50,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "§¹i thµnh",tbProp={6,1,2424,1,1},nCount=1,nBindState=-2},}, "test", 1);

	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> nhËn th­ëng thµnh c«ng cÊp 110.<color=pink> (Khi më lÔ Gãi §Çu T­)");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	SetTask(3777,400)
ConsumeEquiproomItem(1,6,1,4562,-1);
end


