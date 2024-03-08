Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("LEAGUE")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")








function main()
dofile("script/global/quanlygame/item/lebaomemmoi.lua")

		if GetLevel() >= 92 then
		Say("§¼ng cÊp tõ 92 trë lªn 0 thÓ nhËn.")
		return
	end
if GetCamp() == 0 then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ më.")
		return 1;
end
if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y më.",0);
		return 1;
end
tbAwardTemplet:GiveAwardByList({{szName = "n÷ Nhi Hång",tbProp={6,1,4530,1,1},nCount=5,nExpiredTime=43200,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "thÇn thµnh",tbProp={6,1,1266,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "thæ ®Þa",tbProp={6,1,438,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "Hµnh HiÖp LÖnh",tbProp={6,1,4527,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Hót M¸u LÖnh",tbProp={6,1,4529,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Trung Thµnh BK",tbProp={6,1,4544,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Thanh D­¬ng Kh«i",tbProp={0,177},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Kú L©n HuyÕt",tbProp={0,178},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Tr¹c Liªn Quang",tbProp={0,179},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong C«ng CÈn Tam Th¸n",tbProp={0,180},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong §o¹t Hån Ngäc ®¸i",tbProp={0,181},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong HËu NghÖ dÉn cung",tbProp={0,182},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Lan §×nh Ngäc",tbProp={0,183},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Thiªn Lý Th¶o Th­îng Phi",tbProp={0,184},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong §ång T­íc Xu©n Th©m",tbProp={0,185},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "ChiÕu D¹",tbProp={0,10,5,10,0,0},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);

ST_LevelUp(92-GetLevel())


	local szNews = format("Xin Chóc Mõng <color=green>"..GetName().."<color=white> më thµnh c«ng.<color=pink> (LÔ Hép T©n Thñ Hç Trî Mem Míi)");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end




