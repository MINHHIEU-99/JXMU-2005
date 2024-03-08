--ZhuYingTai 18/5/2015
--Script mua ban dong
Include("\\script\\lib\\gb_taskfuncs.lua");	-- thu vien glbobal
Include("\\script\\lib\\awardtemplet.lua")
function main()
----dofile("script/global/server_bank.lua")
-- local nBuyPrice = gb_GetTask("Gi¸ mua",1)

if gb_GetTask("Gi¸ b¸n",1)  < 10000 then
-- gb_SetTask("Gi¸ mua",1, 95) 
gb_SetTask("Gi¸ b¸n",1,10000)
end
local nSellPrice = gb_GetTask("Gi¸ b¸n",1)
local szSell = GetWanMoney(gb_GetTask("Gi¸ b¸n",1))
local szBuy = GetWanMoney(ceil(nSellPrice*95/100))
local szMsg = format("Ng©n hµng server §­êng T¨ng xin th«ng b¸o tØ lÖ gi¸ mua vµo b¸n ra cña tiÒn ®ång hiÖn t¹i (®¬n vÞ: v¹n/1 tiÒn ®ång) nh­ sau: Mua vµo <color=green>%s<color>; B¸n ra <color=yellow>%s<color>. TØ lÖ nµy thay ®æi liªn tôc trong ngµy tïy theo l­îng ng­êi giao dich.",szBuy,szSell)
local szBuyString = format("Dïng 10 tiÒn ®ång ®æi lÊy %s /sell10coin",GetWanMoney(ceil(nSellPrice*95/100)*10))
local szSellString = format("Dïng %s  ®æi lÊy 10 tiÒn ®ång/buy10coin",GetWanMoney(nSellPrice*10))
Say(szMsg,3,szBuyString,szSellString,"Ta chØ tham kh¶o gi¸ th«i/no")
end
GameBank = {
nStatus = 0
}
function GameBank:Init()
-- gb_SetTask("Gi¸ ®ång mua vµo", 1,0)
end
function GetWanMoney(nMoney)
local nWan = floor(nMoney/10000)
local nLiang = mod(nMoney,10000)
if nWan > 0 then
	if nLiang == 0 then
		return format("%d v¹n",nWan)
	else
		return format("%d v¹n %d l­îng",nWan,nLiang)
	end
else
	return format("%d l­îng",nLiang)
end
end
function buy10coin()
local nSellPrice = gb_GetTask("Gi¸ b¸n",1)
local nBuyPrice = ceil(nSellPrice*95/100)
if GameBank.nStatus == 1 then
Say("HÖ thèng ®ang bËn vui lßng quay l¹i trong Ýt phót",0)
return
end

if GetCash() < nSellPrice*10 then
	Say("Cã tiÒn kh«ng vËy ®¹i hiÖp?",0)
	return
end
GameBank.nStatus = 1
Pay(nSellPrice*10)
ITEM_FRUIT_CAKES = {
{szName = "TiÒn ®ång",tbProp={4,417,1,0,0,0},nCount=10,nBindState=-2}
}
tbAwardTemplet:GiveAwardByList(ITEM_FRUIT_CAKES, "Mua tien dong")
-- AddStackItem(10,4,417,1,1,0,0)
nSellPrice = ceil(nSellPrice*10050/10000)
WriteLog(format("Nh©n vËt %s mua ®ång gi¸ %d",GetName(),nBuyPrice))
gb_SetTask("Gi¸ b¸n",1,(nSellPrice))
-- gb_SetTask("Gi¸ mua",1,ceil(nSellPrice*95/100))
-- gb_SetTask("Gi¸ mua",1,ceil(nBuyPrice*110/100))
GameBank.nStatus = 0
end
function sell10coin()

local nSellPrice = gb_GetTask("Gi¸ b¸n",1)
local nBuyPrice = ceil(nSellPrice*95/100)
if GameBank.nStatus == 1 then
Say("HÖ thèng ®ang bËn vui lßng quay l¹i trong Ýt phót",0)
return
end
if CalcEquiproomItemCount(4, 417, 1, -1) < 10 then
Say("TiÒn ®ång ng­êi rít ®©u mÊt råi? Ta cã thÊy ®©u",0)
return
end
if ConsumeEquiproomItem(10, 4, 417, 1, -1) ~= 1 then
Say("Cã lçi x¶y ra vui lßng liªn hÖ GM",0)
return
WriteLog("Khong the xoa tien dong khi doi o gamebank")
end

-- if GetCash() < nPrice*1000
	-- Say("Cã tiÒn kh«ng vËy ®¹i hiÖp?",0)
	-- return
-- end
GameBank.nStatus = 1
Earn(nBuyPrice*10)
-- AddStackItem(100,4,417,1,1,0,0)
nSellPrice = ceil(nSellPrice*9990/10000)
if nSellPrice < 10000 then
nSellPrice = 10000
end
WriteLog(format("Nh©n vËt %s b¸n ®ång gi¸ %d",GetName(),nBuyPrice))
gb_SetTask("Gi¸ b¸n",1,nSellPrice)
-- gb_SetTask("Gi¸ mua",1,(nSellPrice*95/100))
GameBank.nStatus = 0
end