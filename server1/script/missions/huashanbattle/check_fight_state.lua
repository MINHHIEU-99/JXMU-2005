Include("\\script\\missions\\huashanbattle\\head.lua")
Include("\\script\\lib\\timerlist.lua")
tbFighStateTimer = tbFighStateTimer or {}
function tbFighStateTimer:OnTime()
	print("Dang chay vip_map timer")
	local nOldSubWorld = SubWorld
	local nOldPlayerIdx = PlayerIndex
	local tbPlayerList,nWidx,nX,nY
	nWidx = SubWorldID2Idx(333);
	if nWidx>= 0 then
		SubWorld = nWidx
		local tbPlayerList = GetMapPlayerList()
		print("So luong nguoi trong hoa son "..getn(tbPlayerList))
		for i=1,getn(tbPlayerList) do 
			PlayerIndex = i
			if GetFightState() == 0 then
				_,nX,nY = GetWorldPos()
				if nX >= 1335 and nY <=3179  then
					OnGoToBattle()
				end
			end
		end
	end
	SubWorld = nOldSubWorld
	PlayerIndex = nOldPlayerIdx
	return 1
end
function OnFightStateServerStart()
tbFighStateTimer.TimerID = TimerList:AddTimer(tbFighStateTimer, 18*15); --30s se chay 1 lan
end
--OnFightStateServerStart()