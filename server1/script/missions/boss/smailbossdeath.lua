---------------------------------***Edit*By*Heart*Doldly***------------------------------------
IncludeLib("TASKSYS")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
----------------------------------------------------
KILLBOSSEXPAWARD = 5000000
KILLBOSSNEAREXPAWARD = 3000000

tbDropAwardsmail = {
	[1] = {
		{szName="Qu’ Hoa Tˆu",tbProp={6,1,125,1,0,0},nCount=1},
		{szName="Thi™n S¨n B∂o LÈ",tbProp={6,1,72,1,0,0},nCount=1},
		{szName="B∏ch Qu∂ LÈ",tbProp={6,1,73,1,0,0},nCount=1},
		{szName="Ti™n Th∂o LÈ ß∆c Bi÷t",tbProp={6,1,1181,1,0,0},nCount=1},
		{szName="Phi tËc hoµn l‘ bao",tbProp={6,1,2520,1,0,0},nCount=5},
		{szName="ßπi l˘c hoµn l‘ bao",tbProp={6,1,2517,1,0,0},nCount=5},
		{szName="PhÛc duy™n lÈ ti”u",tbProp={6,1,122,1,0,0},nCount=10},
		{szName="PhÛc duy™n lÈ trung",tbProp={6,1,123,1,0,0},nCount=10},
		{szName="PhÛc duy™n lÈ Æπi",tbProp={6,1,124,1,0,0},nCount=10},
	},
	[2] = {
		{szName = "B› K›p 90", tbProp={6,1,2426,1,0,0},nCount=1, nRate = 5},
		{szName="Lam ThÒy Tinh",tbProp={4,238,1,1,0,0},nCount=1, nRate = 20},
		{szName="Tˆ ThÒy Tinh",tbProp={4,239,1,1,0,0},nCount=1, nRate = 20},
		{szName="LÙc ThÒy Tinh",tbProp={4,240,1,1,0,0},nCount=1, nRate = 20},
		{szName="Tinh HÂng B∂o Thπch",tbProp={4,353,1,1,0,0},nCount=1, nRate = 20},
		{szName="V‚ l©m mÀt tﬁch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.5},
		{szName="T»y tÒy kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=1.5},
		{szName="Bµn Nh≠Óc T©m Kinh",tbProp={6,1,12,1,0,0},nCount=1},
		{szName="Thi’t La H∏n",tbProp={6,1,23,1,0,0},nCount=1},
	},
}

function OnDeath(nNpcIndex)
	local nTeamSize = GetTeamSize();
	local szName;
	if (nTeamSize > 1) then
		for i = 1, nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain) == 1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m TÊ ßÈi Gi’t BOSS hoµng kim"));
		end
	else
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m C∏ Nh©n Æ∑ bπi BOSS hoµng kim"));
	end

	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m ß¯ng Xung Quanh LÛc BOSS Hoµng Kim Bﬁ Ti™u Di÷t"));
	end
	
	local szNews = format("<color=green>ChÛc Mıng <color=yellow>%s<color> Tπi <color=yellow>%s<color> ß∑ Ti™u Di÷t Thµnh C´ng <color=yellow>%s<color> NhÀn ß≠Óc 5 Tri÷u Kinh Nghi÷m Ng≠Íi Xung Quanh NhÀn ß≠Óc 3 Tri÷u Kinh Nghi÷m<color>", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1,"","","\\script\\event\\msg2allworld.lua","battle_msg2allworld", szNews , "", "");
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,tbDropAwardsmail,format("killed_%s",GetNpcName(nNpcIndex)))
end

function OnTimer(npcindex, nTimeOut) 
	DelNpc(npcindex);
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------