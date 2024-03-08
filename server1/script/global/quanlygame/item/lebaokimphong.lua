IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
	if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return 1;
	end
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Thanh D­¬ng Kh«i",tbProp={0,177},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Kú L©n HuyÕt",tbProp={0,178},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Tr¹c Liªn Quang",tbProp={0,179},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong C«ng CÈn Tam Th¸n",tbProp={0,180},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong §o¹t Hån Ngäc ®¸i",tbProp={0,181},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong HËu NghÖ dÉn cung",tbProp={0,182},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Lan §×nh Ngäc",tbProp={0,183},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Thiªn Lý Th¶o Th­îng Phi",tbProp={0,184},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong §ång T­íc Xu©n Th©m",tbProp={0,185},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);





end





