-------------Lanh Tho Chien Dev By TungHuyen-----------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")

-----------------------tunghuyen



function OnDeath(nNpcIndex)
add_ai7()
Msg2MSAll(73,"<color=green>§éi tr­ëng ®¸m ph¶n ®å Nga My ®· bÞ tiªu ®iÖt h·y tiÕn vÒ phÝa tr­íc nµo. <color>")
	local x, y, world = GetNpcPos(nNpcIndex);


tbItem =
{
	{{szName="Thuèc",tbProp={1,2,0,5,0,0,0,0},nCount=100,},},
--	{{szName="S¸t thñ lÖnh",tbProp={6,1,4564,1,1,0},nCount=3,},},
	--{{szName="Bac",tbProp={4,1673,1,1,0},nCount=1,},},
	--{{szName="§å Phæ",tbProp={4,random(1497,1636),1,1,0},nCount=1,},},
}
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem,TitleStr, 1)
	if ( GetTaskTemp(150) == 1 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 100);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 2000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc §éc C« CÇu B¹i bÞ tiªu diÖt"));
	end
end

	end
	
