IncludeLib("TIMER")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\lib\\objbuffer_head.lua") 
pPlayerHandle = {}
PASSWORD = "vaidairoi2016"
FAILMSG = "Phiªn b¶n ng­¬i ch¹y ®· qu¸ cò. Vui lßng tho¸t hÕt game ch¹y l¹i Autoupdate. Chóc b¹n ch¬i game vui vÎ."
SERVERNAME = "Vâ L©m BÝ Sö"
-- SUCCESSMSG = "KiÓm tra phiªn b¶n thµnh c«ng. Chóc c¸c b¹n ch¬i game vui vÎ."
nVersion=99--version check
--Started by ZhuYingTai 14/3/2016
tbHWID = {}
tbszName = {}
tbBlockHWID = {}
function pPlayerHandle:ProcessProtocol(szName,szString)
	-- print("Da nhan dc packet ve sv")
	-- if szPassword ~= PASSWORD then
	-- return
	-- end
	-- Msg2Player("Chuoi nhan ve "..szString)
	-- local nPlayerIndex = SearchPlayer(szName)
	-- if nPlayerIndex <= 0 then
		-- return
	-- end
	-- if not szString or type(szString)~="string" or strlen(szString) ~=35 then
		-- WriteLog(format("Nhan vat %s dang nhap that bai do sai thong so HWID",szName))
		-- CallPlayerFunction(nPlayerIndex, self.GMKickOut, self)-- tat script
		-- return
	-- end
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, szName)
	ObjBuffer:PushObject(handle, szString)
	RemoteExecute("\\script\\anti\\check_client.lua", "ReceiveHWID", handle)
	OB_Release(handle)
	if CheckBlockHWID(szString) == 1 then
		WriteLog(format("Tai khoan %s nhan vat %s bÞ kick do bi block Mac %s",GetAccount(),GetName(),szString))
		OfflineLive(PlayerIndex);
		KickOutSelf()
		return
	end
	-- tbHWID[szString] = tbHWID[szString] or 0
	-- if tbHWID[szString] + 1 > 3 then-- nhieu nhan vat
		-- OfflineLive(PlayerIndex);
		-- KickOutSelf()
		-- return
	-- end
	
	-- CallPlayerFunction(nPlayerIndex, self.StopTimerScript, self)-- tat script
	-- tbHWID[szString] = tbHWID[szString] + 1
	-- tbszName[GetName()] = szString
	-- Msg2Player("Ch¬i game ®iÒu ®é tr¸nh ¶nh h­ëng ®Õn søc kháe. Auto cã trong th­ môc game ch­ vÞ cã thÓ sö dông.")
	WriteLog(format("Tai khoan %s nhan vat %s dang nhap thanh cong IP %s Mac %s",GetAccount(),GetName(),GetIP(),szString))
	-- Msg2Player("Chuoi nhan ve "..szString)
end

function pPlayerHandle:GMKickOut()
	-- print("Kiem chung that bai")
	OfflineLive(PlayerIndex);
	KickOutSelf()
end

function pPlayerHandle:StopTimerScript()
SetTask(2989,0)
TM_StopTimer(115)
Msg2Player("<color=green>Chµo mõng c¸c b¹n ®Õn víi Th¸i S¬n thuéc Vâ l©m bÝ sö - M¸y chñ ®­îc x©y dùng dùa trªn ý kiÕn ®ãng gãp gÇn 600 ng­êi ch¬i t©m huyÕt nhÊt")
end
function OnReceiveFromS3Relay(szName,nResult)
pPlayerHandle:OnReceiveFromCenter(szName,nResult)
end

function pPlayerHandle:OnReceiveFromCenter(szName,nResult)
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex <= 0 then
		return
	end
	if nResult == 1 then
		CallPlayerFunction(nPlayerIndex, self.StopTimerScript, self)-- tat script
	else
		CallPlayerFunction(nPlayerIndex, self.GMKickOut, self)-- tat script
		return
	end
end

function CheckBlockHWID(szString)
	-- print(szString)
	-- print(getn(tbBlockHWID))
	for _,v in tbBlockHWID do
		-- print(v)
		if szString == v then
			return 1
		end
	end
end

function InsertHWID(szName)
	-- local szName = GetName()
	-- if not tbszName[szName] then return end
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex <= 0 then
		return
	end
	PlayerIndex = nPlayerIndex
	print("hhh"..szName)
	
	local szString = GetInfo()
	tbBlockHWID[getn(tbBlockHWID)+1] = szString
	tbVngLib_File:Table2File("zhuyingtai/blockhd/", "blockhd1.txt", "a", {szString})
	-- OfflineLive(PlayerIndex); 
	-- KickOutSelf()
end

function LoadBlockHWID()
	-- tbBlockHWID = {}
	local szSubcribers ="\\zhuyingtai\\blockhd\\blockhd1.txt"
	if (TabFile_Load(szSubcribers, szSubcribers) == 0) then
		print("Khong load duoc file blockhd! xin kiem tra lai")
		return 0
	end
	local nRow = TabFile_GetRowCount(szSubcribers)
	-- print("So ma may"..nRow)
	for i=2,nRow  do
		local szHWID = tostring(TabFile_GetCell(szSubcribers,i,"BlockHWID"))
		if not szHWID or szHWID =="" then
			print("Load Xong File")
			break
		end
		tbBlockHWID[getn(tbBlockHWID)+1] = szHWID
	end
	TabFile_UnLoad(szSubcribers)
	-- print("so luong "..getn(tbBlockHWID))
end

function RemoveHWID(szName)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, szName)
	RemoteExecute("\\script\\anti\\check_client.lua", "OnRemoveHWID", handle)
	OB_Release(handle)
end
 

function OnTimer()
WriteLog(format("Tai khoan %s nhan vat %s bÞ kick do dung sai patch hoac bi delay gui du lieu",GetAccount(),GetName()))
OfflineLive(PlayerIndex); 
KickOutSelf()
end

--LoadBlockHWID()
