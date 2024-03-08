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
		{szName="Qu� Hoa T�u",tbProp={6,1,125,1,0,0},nCount=1},
		{szName="Thi�n S�n B�o L�",tbProp={6,1,72,1,0,0},nCount=1},
		{szName="B�ch Qu� L�",tbProp={6,1,73,1,0,0},nCount=1},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1},
		{szName="Phi t�c ho�n l� bao",tbProp={6,1,2520,1,0,0},nCount=5},
		{szName="��i l�c ho�n l� bao",tbProp={6,1,2517,1,0,0},nCount=5},
		{szName="Ph�c duy�n l� ti�u",tbProp={6,1,122,1,0,0},nCount=10},
		{szName="Ph�c duy�n l� trung",tbProp={6,1,123,1,0,0},nCount=10},
		{szName="Ph�c duy�n l� ��i",tbProp={6,1,124,1,0,0},nCount=10},
	},
	[2] = {
		{szName = "B� K�p 90", tbProp={6,1,2426,1,0,0},nCount=1, nRate = 5},
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nCount=1, nRate = 20},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nCount=1, nRate = 20},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nCount=1, nRate = 20},
		{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nCount=1, nRate = 20},
		{szName="V� l�m m�t t�ch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.5},
		{szName="T�y t�y kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=1.5},
		{szName="B�n Nh��c T�m Kinh",tbProp={6,1,12,1,0,0},nCount=1},
		{szName="Thi�t La H�n",tbProp={6,1,23,1,0,0},nCount=1},
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
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m T� ��i Gi�t BOSS ho�ng kim"));
		end
	else
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m C� Nh�n �� b�i BOSS ho�ng kim"));
	end

	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng Xung Quanh L�c BOSS Ho�ng Kim B� Ti�u Di�t"));
	end
	
	local szNews = format("<color=green>Ch�c M�ng <color=yellow>%s<color> T�i <color=yellow>%s<color> �� Ti�u Di�t Th�nh C�ng <color=yellow>%s<color> Nh�n ���c 5 Tri�u Kinh Nghi�m Ng��i Xung Quanh Nh�n ���c 3 Tri�u Kinh Nghi�m<color>", szName, SubWorldName(SubWorld),GetNpcName(nNpcIndex));
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1,"","","\\script\\event\\msg2allworld.lua","battle_msg2allworld", szNews , "", "");
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,tbDropAwardsmail,format("killed_%s",GetNpcName(nNpcIndex)))
end

function OnTimer(npcindex, nTimeOut) 
	DelNpc(npcindex);
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------