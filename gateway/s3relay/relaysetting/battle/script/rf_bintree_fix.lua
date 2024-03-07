-- ¶þ²æÊ÷¹Ì¶¨Õ½ÒÛÁ÷³Ì
-- Fanghao Wu
-- 2004.12.15

Include( "\\RelaySetting\\battle\\script\\rf_header.lua" );

-- S3Relayµ÷ÓÃ½Ó¿Ú£¬Æô¶¯ÐÂÕ½¾Ö
function battle_StartNewRound( nBattleID, nBattleLevel )
	local bDBSuccess, nLatestIssueID, nRoundCount, nRoundID, nMapPatternID, nBattleMapID, nWorldMapID, strMapName, nRuleID, nBattleResult;
	
	local arynMapPatternID, arynFollowingRoundID, arynRuleID;
	
	bDBSuccess, nLatestIssueID, nRoundCount, nRoundID, nMapPatternID, strMapName, nRuleID, nBattleResult = battle_GetLatestRoundInfo( nBattleID, nBattleLevel );
	
	if( bDBSuccess ~= 1 ) then
		bDBSuccess, nLatestIssueID, nRoundCount = battle_GetLatestIssueInfo( nBattleID, nBattleLevel );
		if( bDBSuccess ~= 1 ) then	-- µÚÒ»ÆÚÕ½ÒÛ
			nLatestIssueID = 1;
			nRoundCount = 1;
			nRoundID = 1;
		else						-- Êý¾Ý¶ªÊ§»ò´íÎóÈÝ´í´¦Àí£º¸ù¾Ýµ±Ç°¾ÖÊýÑ¡¶¨Õ½¾Ö
			nRoundID = 2 ^ ( nRoundCount - 1);
			if (nRoundID >= 15) then	--³ö´íÇ¿ÖÆÉèÎª2
				nRoundID = 2;
			end;
		end
	else
		arynMapPatternID, arynFollowingRoundID = Battle_GetRoundInfo( nBattleID, nRoundID );
		nFollowingRoundCount = getn( arynFollowingRoundID );
		if( nFollowingRoundCount > 1 ) then
			if( nBattleResult == 1 ) then		-- ËÎÊ¤
				nRoundID = arynFollowingRoundID[1];
			else								-- ½ðÊ¤
				nRoundID = arynFollowingRoundID[2];
			end
			nRoundCount = nRoundCount + 1;
		elseif( nFollowingRoundCount == 1 ) then
			nRoundID = arynFollowingRoundID[1];
			nRoundCount = nRoundCount + 1;
		else
			nLatestIssueID = nLatestIssueID + 1;
			nRoundCount = 1;
			nRoundID = 1;
		end
	end
	
	arynMapPatternID, arynFollowingRoundID = Battle_GetRoundInfo( nBattleID, nRoundID );
	nMapPatternID = arynMapPatternID[ Random( getn( arynMapPatternID ) ) + 1 ];
	nBattleMapID, arynRuleID = Battle_GetMapPatternInfo( nBattleID, nMapPatternID );
	nWorldMapID, arystrMapName = Battle_GetBattleMapInfo( nBattleID, nBattleMapID, nBattleLevel );
	strMapName = arystrMapName[ Random( getn( arystrMapName ) ) + 1 ];
	-- nRuleID = arynRuleID[ Random( getn( arynRuleID ) ) + 1 ]; -- random theo tõng thÕ lo¹i , 
	local tbRule = {
		-- 3, 		-- Bao Ve Nguyen Soai
		7, 		-- Cuu Sat
	}
	nRuleID = tbRule[random(1, getn(tbRule))]
	battle_SaveRoundInfo( nBattleID, nBattleLevel, nLatestIssueID, nRoundCount, nRoundID, nMapPatternID, strMapName, nRuleID, 0 );
	
	battle_Msg_NewRound( nBattleID, nBattleLevel, nLatestIssueID, nRoundCount, nRoundID, nMapPatternID, nBattleMapID, nWorldMapID, strMapName, nRuleID );
	
	return nLatestIssueID, nRoundCount, nRoundID, nMapPatternID, strMapName, nRuleID;
end

-- S3Relayµ÷ÓÃ½Ó¿Ú£¬±£´æÕ½¾Ö½á¹û
function battle_SaveRoundResult( nBattleID, nBattleLevel, nIssueID, nRoundCount, nBattleResult )
	local bDBSuccess, nRoundID, nMapPatternID, strMapName, nRuleID;
	local strMsg;
	bDBSuccess, nRoundID, nMapPatternID, strMapName, nRuleID = battle_GetSpecRoundInfo( nBattleID, nBattleLevel, nIssueID, nRoundCount );
	if( bDBSuccess == 1 ) then
		battle_SaveRoundInfo( nBattleID, nBattleLevel, nIssueID, nRoundCount, nRoundID, nMapPatternID, strMapName, nRuleID, nBattleResult );
		battle_Msg_RoundResult( nBattleID, nBattleLevel, nIssueID, nRoundCount, nRoundID, nBattleResult );
	else
		local strErrorMsg = "[ERROR] Failed to Get Specified BattleRound Info form Database!!  Saving Result Error!!!";
		battle_Msg_RoundResult( nBattleID, nBattleLevel, nIssueID, nRoundCount, -1, nBattleResult, strErrorMsg );
	end
end