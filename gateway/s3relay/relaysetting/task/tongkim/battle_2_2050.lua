-----------------------------***Edit*By*Heart*Doldly***----------------------------------------------
function TaskShedule()
	TaskName( "Tong Kim Quoc Chien" );
	TaskInterval( 1440 );
	TaskTime( 20, 50 );
	TaskCountLimit( 0 );
	OutputMsg( "                *** THAM GIA QUOC CHIEN TONG KIM VAO LUC 21h:00 THU 2 HANG TUAN ***                  ")
end

function TaskContent()
	local nWeekday = tonumber(date("%w"));
	if nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and (CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil) then
		if CW_GetOccupant(4) == CW_GetOccupant(7) then
			local szMsg  = format("Chi�u c�o thi�n h� \"%s\" ��ng th�i chi�m ���c L�m An c�ng Bi�n Kinh, bang ch� c� th� tr�c ti�p l�n ng�i thi�n t�", CW_GetOccupant(4));
			local szNews = format("dw AddLocalCountNews([[%s]], 2)", szMsg);
			GlobalExecute(szNews);
			
			for i = 0,10 do
				NW_SetTask(i, 0);
			end
			NW_Abdicate();
			NW_SetTask(0, 1);
			return
		end
		
		local szMsg  = format("Ti�n tuy�n m�t b�o, N��c T�ng \"%s\" ��� \"%s\"thi�n t� �o�t ng�i �� m�, xin m�i c�c v� t��ng s� ��n t�ng kim �� ghi danh tham chi�n!", CW_GetOccupant(7), CW_GetOccupant(4));
		local szNews = format("dw AddLocalCountNews([[%s]], 2)", szMsg);
		GlobalExecute(szNews);
		Battle_StartNewRound( 2, 3 );
	end
	
end

function GameSvrConnected(dwGameSvrIP)
end

function GameSvrReady(dwGameSvrIP)
end