-- Include("\\script\\global\\ladder_player.lua")
-- Include("\\script\\missions\\huashanbattle\\head.lua")
IncludeLib("FILESYS");
IncludeLib("TIMER")
-- IncludeLib("FILESYS");
 tbBlackList = {

}
-- tbPlayerListHDD = {
--["test01"] = ["HDDID"]
--
-- }
tbWaittingAccount = {

}
tbWaittingAccount.Tab = {}
function tbWaittingAccount:Clear()
tbWaittingAccount.Tab = {}
end
function AddWaittingAccount(nIndex,szAccount)
print("Csads "..szAccount)
tinsert(tbWaittingAccount.Tab,1,{nIndex,szAccount})
-- tbWaittingAccount[szAccount] = 1
end

function GetAccountHDD(szAccount)
-- local szMsg = GetStringTask(9)..GetStringTask(10)
-- print("Cac "..szMsg)
 return format("%d%d",GetTask(3206),GetTask(3207))
-- return GetStringTask(9)..GetStringTask(10)
end

function GetBlockHDDList()
tbBlackList = nil
tbBlackList = {}
local szSubcribers ="\\dulieu\\hdd\\blockhdd.txt"
if TabFile_Load(szSubcribers, szSubcribers) == 0 then--
print("Khong load duoc file")
end
local nRow = TabFile_GetRowCount(szSubcribers)
for i=2,nRow  do
	
	tbBlackList[TabFile_GetCell(szSubcribers,i,"szName")] = 1
	tbBlackList[TabFile_GetCell(szSubcribers,i,"HWUID")] = 1
end
TabFile_UnLoad(szSubcribers)
end
function CheckBlockPlayer(szName,szHWUID)
	if tbBlackList[szName] or tbBlackList[szHWUID] then
		return 1
	end
	return 0
end
function RemovePlayerHDD(szAccount)
tbPlayerListHDD[szAccount] = nil
end
function RemoveBlockPlayer(szAccount,szHWUID)
tbBlackList[szAccount] = nil
tbBlackList[szHWUID] = nil
end

function AddBlockPlayer(szAccount,szHWUID)
tbBlackList[szAccount] = 1
-- local szHWUID = tbLadderPlayer:GetHWUID(szName)
tbBlackList[szHWUID] = 1

-- tbVngLib_File:Table2File("dulieu/hdd/", "blockhdd.txt", "a", {szAccount,szHWUID})	-- viet them vao dong cuoi cung
end
function KickOffBlockHDD()
OfflineLive(PlayerIndex); 
KickOutSelf()
end
--GetBlockHDDList()