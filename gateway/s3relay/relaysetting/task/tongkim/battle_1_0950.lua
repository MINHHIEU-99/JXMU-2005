	-- Tèng kim
	INTERVAL_TIME = 120	
	Include("\\script\\gb_modulefuncs.lua")
	function GetNextTime()	
		local hour = tonumber(date("%H"));
		if (hour == 24) then
			hour = 0;
		elseif(hour == 1) or (hour == 3) or (hour == 5) or (hour == 7) or (hour == 9) or (hour == 11) or (hour == 13) or (hour == 15) or (hour == 17) or (hour == 19) or (hour == 21) or (hour == 23)  then
			hour = hour + 1;
		end
		return hour, 50;
	end

	
	
	function TaskShedule()
		local h, m = GetNextTime();
		local nHour = tonumber(date("%H"))
		if h == nHour then
                TaskName("TONGKIM");	
            
            TaskInterval(INTERVAL_TIME);
            
            OutputMsg(format("Thêi gian cña H lµ   %d \t thêi gian cña nHour lµ :%d...==================\n============\n=========\n====================================", h, nHour));

            TaskTime(h, m);
            OutputMsg(format("=================Ho¹t §éng TONGKIM B¾t §Çu vµo lóc :  %d:%d...=================", h, m));
            OutputMsg( format( "[%s]  Ho¹t §éng TONGKIM B¾t §Çu", date( "%d- %m- %Y %H giê %M phót %S Gi©y" ) ) )
            TaskCountLimit(0);
		end
	end
	function TaskContent()
	
	-- Battle_StartNewRound( 1, 1 );	-- GM chØ lÖnh, khëi ®éng tèng kim s¬ cÊp
	
	-- Battle_StartNewRound( 1, 2 );	-- GM chØ lÖnh, khëi ®éng tèng kim trung cÊp
	
	-- Battle_StartNewRound( 1, 3 );	-- GM chØ lÖnh, khëi ®éng tèng kim cao cÊp
	
	local nWeekday = tonumber(date("%w"))    
	if
		nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and
			(CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil)
	 then
		return -- Vµo ngµy T2 hµng tuÇn, ®ãng cöa chiÕn tr­êng Tèng Kim (cao cÊp) thay thÕ cho chiÕn tr­êng Thiªn Tö
	end
	-- Battle_StartNewRound( 1, 2 );	-- GM chØ lÖnh, khëi ®éng tèng kim trung cÊp
	Battle_StartNewRound( 1, 3 );	-- GM chØ lÖnh, khëi ®éng tèng kim cao cÊp
	local szMsg =
		(format("[%s] <color=yellow>(Ho¹t §éng Tèng Kim ®¹i chiÕn ) [[T­¬ng D­¬ng - chu tiªn ]] më c÷a b¸o danh<color>, h·y nhanh ch©n ®Õn NPC tèng kim ë thÇn hµnh phï  (Map tèng kim ) ®Ó tham gia, thêi gian ghi danh lµ 10 phót.",
		date( "%d- %m- %Y %H giê %M phót %S Gi©y" )
	))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
	
	-- zMsg2SubWorld  = "<color=yellow>ChiÕn tr­êng Tèng - Kim<color> <color=0xa9ffe0>S¬ cÊp, Trung cÊp, Cao cÊp ®· ®Õn giê b¸o danh, c¸c nh©n sÜ giang hå nhanh ch©n tham gia ®Çu qu©n, Thêi gian b¸o danh lµ 9 phót."
	-- zAddLocalCountNews = "ChiÕn tr­êng Tèng Kim ®· b¾t ®Çu b¸o danh, c¸c nh©n sÜ giang hå mau ®Õn khu vùc b¸o danh ®Ó tham gia chiÕn tr­êng."
	-- GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	-- GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))
	
	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


	
