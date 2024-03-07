	-- T�ng kim
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
            
            OutputMsg(format("Th�i gian c�a H l�   %d \t th�i gian c�a nHour l� :%d...==================\n============\n=========\n====================================", h, nHour));

            TaskTime(h, m);
            OutputMsg(format("=================Ho�t ��ng TONGKIM B�t ��u v�o l�c :  %d:%d...=================", h, m));
            OutputMsg( format( "[%s]  Ho�t ��ng TONGKIM B�t ��u", date( "%d- %m- %Y %H gi� %M ph�t %S Gi�y" ) ) )
            TaskCountLimit(0);
		end
	end
	function TaskContent()
	
	-- Battle_StartNewRound( 1, 1 );	-- GM ch� l�nh, kh�i ��ng t�ng kim s� c�p
	
	-- Battle_StartNewRound( 1, 2 );	-- GM ch� l�nh, kh�i ��ng t�ng kim trung c�p
	
	-- Battle_StartNewRound( 1, 3 );	-- GM ch� l�nh, kh�i ��ng t�ng kim cao c�p
	
	local nWeekday = tonumber(date("%w"))    
	if
		nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and
			(CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil)
	 then
		return -- V�o ng�y T2 h�ng tu�n, ��ng c�a chi�n tr��ng T�ng Kim (cao c�p) thay th� cho chi�n tr��ng Thi�n T�
	end
	-- Battle_StartNewRound( 1, 2 );	-- GM ch� l�nh, kh�i ��ng t�ng kim trung c�p
	Battle_StartNewRound( 1, 3 );	-- GM ch� l�nh, kh�i ��ng t�ng kim cao c�p
	local szMsg =
		(format("[%s] <color=yellow>(Ho�t ��ng T�ng Kim ��i chi�n ) [[T��ng D��ng - chu ti�n ]] m� c�a b�o danh<color>, h�y nhanh ch�n ��n NPC t�ng kim � th�n h�nh ph�  (Map t�ng kim ) �� tham gia, th�i gian ghi danh l� 10 ph�t.",
		date( "%d- %m- %Y %H gi� %M ph�t %S Gi�y" )
	))
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
	
	-- zMsg2SubWorld  = "<color=yellow>Chi�n tr��ng T�ng - Kim<color> <color=0xa9ffe0>S� c�p, Trung c�p, Cao c�p �� ��n gi� b�o danh, c�c nh�n s� giang h� nhanh ch�n tham gia ��u qu�n, Th�i gian b�o danh l� 9 ph�t."
	-- zAddLocalCountNews = "Chi�n tr��ng T�ng Kim �� b�t ��u b�o danh, c�c nh�n s� giang h� mau ��n khu v�c b�o danh �� tham gia chi�n tr��ng."
	-- GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	-- GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))
	
	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


	
