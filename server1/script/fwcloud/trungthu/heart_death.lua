Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")

KILLBOSSEXPAWARD = 1000000000
KILLBOSSNEAREXPAWARD = 500000000
-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------
local tbItemNewBossDropAward={
	{{szName="Hµnh Hi÷p L÷nh",tbProp={6,1,random(4429,4438),1,0,0},nCount=1,nRate=100},},
	--{{szName="Ti“n ßÂng",tbProp={4,417,1,1,0,0},nCount=1000},},
	
	
}


function OnDeath(nNpcIndex)
	tenboss=GetNpcName(nNpcIndex)
	if (PlayerIndex == nil or PlayerIndex == 0) then
		return
	end
----------------------------------------------------------------------
	local nTeamSize = GetTeamSize();
	local szName;
         if (nTeamSize > 1) then
		for i = 1, nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain) == 1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m TÊ ßÈi Gi’t BOSS hoµng kim"));
			--tbAwardTemplet:GiveAwardByList({tbProp={6,1,2566,1,0,0},nCount=50},"MÂi C©u")
			tbAwardTemplet:GiveAwardByList({tbProp={4,2573,1,1,0,0},nCount= 13},"Xu Ti™u Duy÷t Boss")
		end
	else
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ∂ bπi BOSS hoµng kim"));
		--tbAwardTemplet:GiveAwardByList({tbProp={4,2573,1,1,0,0},nCount=5},"Xu Ti™u Duy÷t Boss")
	end
-----------------------------------------------------------------------------------------	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph«n th≠Îng","Kinh nghi÷m Æ¯ng g«n lÛc BOSS hoµng kim bﬁ ti™u di÷t"));
	end
	szNews = format("ßπi hi÷p <color=yellow>"..GetName().."<color> tπi <color=yellow>C∏c Thµnh<color> Æ∑ Æ∏nh bπi <color=yellow>Ng≠Íi Tuy’t V« C¯u ß≠Óc Long Nhi<color>. Xin chÛc mıng");
	AddGlobalNews(szNews);
	Msg2SubWorld(szNews);
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbItemNewBossDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
end

function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end
