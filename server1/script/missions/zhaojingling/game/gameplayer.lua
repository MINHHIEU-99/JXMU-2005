Include("\\script\\missions\\zhaojingling\\head.lua")

GamePlayer = {} 

GamePlayer.tbGameItem = 
{ 
[1] = {6, 1, 2794, 1, 0, 0}, 
[2] = {6, 1, 2795, 1, 0, 0}, 
[3] = {6, 1, 2796, 1, 0, 0}, 
[4] = {6, 1, 2797, 1, 0, 0}, 
[5] = {6, 1, 2798, 1, 0, 0}, 
[6] = {6, 1, 2799, 1, 0, 0}, 
} 

GamePlayer.nCamp = 4 -- script viet hoa By http://tranhba.com  nh� ch�i ti�n v�o tranh t�i sau ��ch t�m th�i tr�n doanh 

function GamePlayer:OnEnterMap() 
CallPlayerFunction(PlayerIndex, setentermapstate) 
AddTaskA(TSK_PLAYTIMES, TSK_DAYKEY, 1) -- script viet hoa By http://tranhba.com  ng�y �� tranh t�i s� l�n th�m 1 
SetTask(TSK_COUNT_ONETIME, 0) -- script viet hoa By http://tranhba.com  t�m ���c kh�i l�i m�c nh�n thanh linh 
SetTask(TSK_RANK, 0) -- script viet hoa By http://tranhba.com  ��ng h�ng thanh linh 
SetCurCamp(self.nCamp) 
SetFightState(1) 
SetPKFlag(1) 
SetMoveSpeed(18) 
AddStatData("minigame_joinnumber") 
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "huangchengsixunlianying")
end 

function GamePlayer:OnLeaveMap() 
CallPlayerFunction(PlayerIndex, setleavemapstate) 
local nTmpCamp = GetCamp() 
SetCurCamp(nTmpCamp) 
SetFightState(0) 
SetPKFlag(0) 
SetMoveSpeed(-1) 
self:ClearGameItem() 
	local tbGame = DynamicExecute("\\script\\missions\\zhaojingling\\game\\game.lua", "getglobal", "Game")
if tbGame.nGameState == 1 then 
SetTask(TSK_RANK, 0) 
end 
end 

function GamePlayer:OnDeath() 

end 

function GamePlayer:ClearGameItem() 
for i=1, getn(self.tbGameItem) do 
local nCount = CalcItemCount(-1, self.tbGameItem[i][1], self.tbGameItem[i][2], self.tbGameItem[i][3], self.tbGameItem[i][4]) 
ConsumeItem(-1, nCount, self.tbGameItem[i][1], self.tbGameItem[i][2], self.tbGameItem[i][3], self.tbGameItem[i][4]) 
end 
end 
