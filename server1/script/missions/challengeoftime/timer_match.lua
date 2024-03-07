
Include("\\script\\missions\\challengeoftime\\include.lua")
Include("\\script\\missions\\challengeoftime\\npc.lua")

function cancel_match()
	-- Msg2SubWorld(date("[%H:%M:%S]") .. "a")
end

function start_match()
	SetMissionV(VARV_STATE, 2);

	local player_count = GetMSPlayerCount(MISSION_MATCH);
	if (player_count == 0) then
		cancel_match()
	else
		start_close_timer();

		broadcast("NhiÖm vô 'Th¸ch thøc Thêi gian' ®· chİnh thøc b¾t ®Çu, anh hïng c¸c n¬i ®ang ra søc tranh tµi");

		SetMissionV(VARV_NPC_BATCH, 1)
		SetMissionV(VARV_MISSION_RESULT, 0);
		SetMissionV(VARV_PLAYER_USE_INDEX, 0);
		SetMissionV(VARV_NPC_USE_INDEX, 0);
		
		-- Gäi Boss TiÓu NhiÕp Thİ TrÇn
		--local nBossBatch = random(5, 15)
		--SetMissionV(VARV_XIAONIESHICHEN_BATCH, nBossBatch)
		--WriteLog(format("TiÓu NhiÕp Thİ TrÇn xuÊt hiÖn thÎ ¶i lµ %d",nBossBatch))
		
		save_player_info();
    	
		world = SubWorldIdx2ID(SubWorld);
		ClearMapNpc(world);
		ClearMapTrap(world); 
		ClearMapObj(world);

		create_batch_npc(1);
	end
	
	SetMissionV(VARV_PLAYER_COUNT, player_count);
end

function close_match_timer()
	StopMissionTimer(MISSION_MATCH, TIMER_MATCH);
end

function OnTimer()
	close_match_timer();
	start_match();
	local index = 0;
	local player = 0;
	index, player = GetNextPlayer(MISSION_MATCH, index, 0);

	if (player > 0) then
	start_board_timer();
	end
end
