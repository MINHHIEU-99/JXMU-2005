Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")
Include("\\script\\activitysys\\functionlib.lua")



function OnDeath(nNpcIndex)

	local nPlayerIndex	= NpcIdx2PIdx(nNpcIndex);
	if nPlayerIndex > 0 then
		
		local szDeadName	= GetName()
		local szKiller		=  lib:DoFunByPlayer(nPlayerIndex, GetName)
		--local nCount		= doFunByPlayer(nPlayerIndex, GetTask, tbMissionClass.TSK_Kills)
		szMsg		= format("<color=green>%s<color> ®· h¹ cháng ®Ýt <color=yellow>%s<color> trong ®Êu L«i §µi Lo¹n ChiÕn", szKiller, szDeadName)

		--doFunByPlayer(nPlayerIndex, SetTask, tbMissionClass.TSK_Kills, nCount + 1)
	--	doFunByPlayer(nPlayerIndex, Msg2Player, format("Sè ng­êi ®· ®¸nh b¹i: %d", nCount + 1))
	--	doFunByPlayer(nPlayerIndex, Msg2Player, szMsg)
		Msg2Player(szMsg)
		--doFunByPlayer(nPlayerIndex, TienXu)
	end
	local szNews = format("§¹i hiÖp <color=green>"..GetName().."<color=yellow> BÞ h¹ cháng ®Ýt trong <color=cyan>L«i §µi Lo¹n ChiÕn");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
--	tbMissionClass:GotoSignUpPlace()
	
	--local nPlayerCount = tbMissionClass:GetMSPlayerCount(0)
	
--	if nPlayerCount == 0 then
--		tbMissionClass:OnClose()
--	end
end

function TienXu()
	tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=5,},}, "test", 1);
end





