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
Msg2MSAll(73,"<color=green>��i tr��ng ��m ph�n �� Nga My �� b� ti�u �i�t h�y ti�n v� ph�a tr��c n�o. <color>")
	local x, y, world = GetNpcPos(nNpcIndex);


tbItem =
{
	{{szName="Thu�c",tbProp={1,2,0,5,0,0,0,0},nCount=100,},},
--	{{szName="S�t th� l�nh",tbProp={6,1,4564,1,1,0},nCount=3,},},
	--{{szName="Bac",tbProp={4,1673,1,1,0},nCount=1,},},
	--{{szName="�� Ph�",tbProp={4,random(1497,1636),1,1,0},nCount=1,},},
}
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem,TitleStr, 1)
	if ( GetTaskTemp(150) == 1 ) then
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 100);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 2000000, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c ��c C� C�u B�i b� ti�u di�t"));
	end
end

	end
	
