--ZhuYingTai 18/5/2015
--Script mua ban dong
Include("\\script\\lib\\gb_taskfuncs.lua");	-- thu vien glbobal
Include("\\script\\lib\\awardtemplet.lua")
function main()
----dofile("script/global/server_bank.lua")
-- local nBuyPrice = gb_GetTask("Gi� mua",1)

if gb_GetTask("Gi� b�n",1)  < 10000 then
-- gb_SetTask("Gi� mua",1, 95) 
gb_SetTask("Gi� b�n",1,10000)
end
local nSellPrice = gb_GetTask("Gi� b�n",1)
local szSell = GetWanMoney(gb_GetTask("Gi� b�n",1))
local szBuy = GetWanMoney(ceil(nSellPrice*95/100))
local szMsg = format("Ng�n h�ng server ���ng T�ng xin th�ng b�o t� l� gi� mua v�o b�n ra c�a ti�n ��ng hi�n t�i (��n v�: v�n/1 ti�n ��ng) nh� sau: Mua v�o <color=green>%s<color>; B�n ra <color=yellow>%s<color>. T� l� n�y thay ��i li�n t�c trong ng�y t�y theo l��ng ng��i giao dich.",szBuy,szSell)
local szBuyString = format("D�ng 10 ti�n ��ng ��i l�y %s /sell10coin",GetWanMoney(ceil(nSellPrice*95/100)*10))
local szSellString = format("D�ng %s  ��i l�y 10 ti�n ��ng/buy10coin",GetWanMoney(nSellPrice*10))
Say(szMsg,3,szBuyString,szSellString,"Ta ch� tham kh�o gi� th�i/no")
end
GameBank = {
nStatus = 0
}
function GameBank:Init()
-- gb_SetTask("Gi� ��ng mua v�o", 1,0)
end
function GetWanMoney(nMoney)
local nWan = floor(nMoney/10000)
local nLiang = mod(nMoney,10000)
if nWan > 0 then
	if nLiang == 0 then
		return format("%d v�n",nWan)
	else
		return format("%d v�n %d l��ng",nWan,nLiang)
	end
else
	return format("%d l��ng",nLiang)
end
end
function buy10coin()
local nSellPrice = gb_GetTask("Gi� b�n",1)
local nBuyPrice = ceil(nSellPrice*95/100)
if GameBank.nStatus == 1 then
Say("H� th�ng �ang b�n vui l�ng quay l�i trong �t ph�t",0)
return
end

if GetCash() < nSellPrice*10 then
	Say("C� ti�n kh�ng v�y ��i hi�p?",0)
	return
end
GameBank.nStatus = 1
Pay(nSellPrice*10)
ITEM_FRUIT_CAKES = {
{szName = "Ti�n ��ng",tbProp={4,417,1,0,0,0},nCount=10,nBindState=-2}
}
tbAwardTemplet:GiveAwardByList(ITEM_FRUIT_CAKES, "Mua tien dong")
-- AddStackItem(10,4,417,1,1,0,0)
nSellPrice = ceil(nSellPrice*10050/10000)
WriteLog(format("Nh�n v�t %s mua ��ng gi� %d",GetName(),nBuyPrice))
gb_SetTask("Gi� b�n",1,(nSellPrice))
-- gb_SetTask("Gi� mua",1,ceil(nSellPrice*95/100))
-- gb_SetTask("Gi� mua",1,ceil(nBuyPrice*110/100))
GameBank.nStatus = 0
end
function sell10coin()

local nSellPrice = gb_GetTask("Gi� b�n",1)
local nBuyPrice = ceil(nSellPrice*95/100)
if GameBank.nStatus == 1 then
Say("H� th�ng �ang b�n vui l�ng quay l�i trong �t ph�t",0)
return
end
if CalcEquiproomItemCount(4, 417, 1, -1) < 10 then
Say("Ti�n ��ng ng��i r�t ��u m�t r�i? Ta c� th�y ��u",0)
return
end
if ConsumeEquiproomItem(10, 4, 417, 1, -1) ~= 1 then
Say("C� l�i x�y ra vui l�ng li�n h� GM",0)
return
WriteLog("Khong the xoa tien dong khi doi o gamebank")
end

-- if GetCash() < nPrice*1000
	-- Say("C� ti�n kh�ng v�y ��i hi�p?",0)
	-- return
-- end
GameBank.nStatus = 1
Earn(nBuyPrice*10)
-- AddStackItem(100,4,417,1,1,0,0)
nSellPrice = ceil(nSellPrice*9990/10000)
if nSellPrice < 10000 then
nSellPrice = 10000
end
WriteLog(format("Nh�n v�t %s b�n ��ng gi� %d",GetName(),nBuyPrice))
gb_SetTask("Gi� b�n",1,nSellPrice)
-- gb_SetTask("Gi� mua",1,(nSellPrice*95/100))
GameBank.nStatus = 0
end