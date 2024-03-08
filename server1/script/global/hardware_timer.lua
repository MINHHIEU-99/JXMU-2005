Include("\\script\\global\\hardwareid.lua")
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\string.lua")
tbHDTimer = {}
function tbHDTimer:OnTime()--function chay moi 8s. Ung voi 8GS thu tu 1s,2s,3s

if SubWorldID2Idx(78) > 0 or SubWorldID2Idx(1) > 0 or SubWorldID2Idx(37) > 0 or SubWorldID2Idx(176) > 0 or SubWorldID2Idx(80) > 0 or SubWorldID2Idx(162) > 0 or SubWorldID2Idx(11) > 0 then
	TimerList:DelTimer(self.TimerID);
	return
end
if getn(tbWaittingAccount.Tab) <= 0 then--
print("chay ontime cu"..tonumber(date("%S")))
return 1
end
print("chay ontime moi"..tonumber(date("%S")))
local hddfile1 = "\\dulieu\\hdd\\hdd.dat"
if IniFile_Load(hddfile1, hddfile1) == 0 then--
print("Khong load duoc file")
end
local szAccount,nIndex,tbStr
local nOldPIx = PlayerIndex
for i=1,getn(tbWaittingAccount.Tab) do
	nIndex = tbWaittingAccount.Tab[i][1]
	szAccount = tbWaittingAccount.Tab[i][2] 
	-- print(szAccount..nIndex)
	PlayerIndex = nIndex
	if GetAccount() == szAccount then
		-- if strlen(szAccount) > 16 then--
			-- szAccount =strsub(szAccount,1,16)
		-- end
		local szHWUID = IniFile_GetData(hddfile1, "HWID", szAccount) 
		if not szHWUID or type(szHWUID)~="string" or strlen(szHWUID) ~=35 then--khong lay duoc ma HDD thi ko lam gi ca. Ung voi Task 3306 =0 3307 = 0 neu chua 1 lan lay duoc ma o cung
			
		else
			local nHW = String2Id(szHWUID)-- doi string sang number
			print("Set xong task"..nHW)
			SetTask(3206,floor(nHW/100000))
			SetTask(3207,mod(nHW,100000))
			print("Set xong task")
		end
		print(szHWUID)
	end
end
tbWaittingAccount:Clear()
PlayerIndex = nOldPIx
IniFile_UnLoad(hddfile1)
	return 1
end
	----------------------
function tbHDTimer:OnServerStart()
tbHDTimer.TimerID = TimerList:AddTimer(tbHDTimer, 18*10); --1 phut se chay 1 lan
end
--tbHDTimer:OnServerStart()