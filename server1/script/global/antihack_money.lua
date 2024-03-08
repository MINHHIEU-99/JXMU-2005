Include("\\script\\tong\\tong_header.lua");
IncludeLib("TONG")
Include("\\script\\lib\\timerlist.lua")

tbAntiTimer = tbAntiTimer or {}
tbAntiTimer.nStatus = 0
tbAntiTimer.nIsPutting = 0
function tbAntiTimer:OnTime()
-- if self.nStatus == 1 or tbAntiTimer.nIsPutting == 1 then 
-- return 1
-- end
-- self.nStatus = 1
-- print("AntiHack Money")
-- local nTongID = TONG_GetFirstTong()
	-- while (nTongID > 0) do
		-- local nCurMoney = TONG_GetMoney(nTongID)
		-- local nPureMoney = TONG_GetTaskValue(nTongID,TONGTSK_AntiHackMoney)
		-- if nPureMoney < 0 then 
			-- nPureMoney = 0
			-- TONG_ApplySetTaskValue(nTongID,TONGTSK_AntiHackMoney,0)
		-- end
		-- if nCurMoney > nPureMoney then
			-- TONG_ApplySetMoney(nTongID,nPureMoney)
			-- WriteLog("Thang LON bang "..TONG_GetName(nTongID).."no hack "..(nCurMoney -nPureMoney ).." tien van")
		-- elseif nCurMoney < nPureMoney then
			-- TONG_ApplySetTaskValue(nTongID,TONGTSK_AntiHackMoney,nCurMoney)
		-- end
		-- nTongID = TONG_GetNextTong(nTongID);
	-- end
	-- self.nStatus = 0
	RemoteExecute("\\script\\tong\\tong_antihack.lua", "Check_Tong_OnTimer", 0)
	----------code dung cho multi GS
	if SubWorldID2Idx(54) > 0 then-- kiem tra xem co phai map nam nhac tran ko?
		return 1
	elseif SubWorldID2Idx(78) > 0 or SubWorldID2Idx(1) > 0 or SubWorldID2Idx(37) > 0 or SubWorldID2Idx(176) > 0 or SubWorldID2Idx(80) > 0 or SubWorldID2Idx(162) > 0 or SubWorldID2Idx(11) > 0 then
		return 0
	end
	----------------------
		return 1
end

function Init()
-- if SubWorldID2Idx(54) < 0 then-- kiem tra xem co phai map nam nhac tran ko?
	-- return
-- end
tbAntiTimer.TimerID = TimerList:AddTimer(tbAntiTimer, 6); --1 phut se chay 1 lan
end

Init()

