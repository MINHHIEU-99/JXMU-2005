Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\global\\autoexec_head.lua")
-------------------------------------------------
tbTop10 = {}
tbTop10.tbSubcribers = {}
tbTop10.tbTopList = {}
tbTop10.tbAwardCheck = {0,0,0,0,0,0,0,0,0,0}
tbTop10.nAwardedCount = 0
tbTop10.nIDX_Account = 1
tbTop10.nIDX_TotalCount = 2
tbTop10.nIDX_LastUpdate = 3
tbTop10.tbFileHeader = {"Name","Account","S� L��ng","L�n N�p Cu�i"}
tbTop10.tbTopListFileHeader = {"Name","Account","S� L��ng","L�n N�p Cu�i"}
tbTop10.tbSubcribersPattern = {"*w","*w","*n","*w"}
tbTop10.tbToplistPattern = {"*w","*w","*n","*w"}
tbTop10.strFilePath = "vng_data/sukien_quockhanh/"
tbTop10.strFileName = "subcribers.txt"
tbTop10.strTopListFileName = "toplist.txt"
tbTop10.nRegisterCount = 0
tbTop10.nSort_Time = 0005
--===========================================================================================================================--
tbTop10.tbPhase = {
	[1] = {202304010000, 202305301030}, 
	-- [2] = {202108310900, 202108312400}, 
}

tbTop10.nStartDate = 202304010000
tbTop10.nEndDate = 202305301030

tbTop10.nStartTopDate = 202304010000
tbTop10.nEndTopDate = 202305301030
function tbTop10:Init()
	self.tbSubcribers = {}
	self.nRegisterCount = 0
end

function tbTop10:CheckTime()
	local nTime = tonumber(date("%Y%m%d%H%M"))
	if (nTime >= self.nStartTopDate and nTime < self.nEndTopDate) then
		return 1
	end
	return 0
end

function tbTop10:GetPhase()
	local nTime = tonumber(date("%Y%m%d%H%M"))
	for i = 1, getn(self.tbPhase) do
		if nTime >= self.tbPhase[i][1] and nTime <= self.tbPhase[i][2] then
			return i
		end
	end
	return 0
end

function tbTop10:IsActive()
	local nTime = tonumber(date("%Y%m%d%H%M"))
	if nTime < self.nStartDate or nTime > self.nEndDate then
		return 0
	end
	return 1
end

function tbTop10:CheckTimeTop()
	local nTime = tonumber(date("%Y%m%d%H%M"))
	if nTime < self.nStartTopDate or nTime > self.nEndTopDate then
		return 0
	end
	return 1
end
--=================================================================================================================================================================================--
function tbTop10:GiveItem(strName, strAccount, nCount)
	local nPhase = self:GetPhase()
	if nPhase ~= 1 then
		Msg2Player("Hi�n T�i Kh�ng Ph�i Th�i Gian �ua TOP Kh�ng Th� S� D�ng V�t Ph�m")
		return
	end
	if self:CheckTime() ~= 1 then
		-- Talk(1,"","H� Th�ng �ang Ti�n H�nh S�p X�p L�i Danh S�ch Vui L�ng Quay L�i Sau")
		return
	end
	
	if not self.tbSubcribers then
		self:Init()
	end
	local strTime = GetLocalDate("%Y-%m-%d_%H:%M:%S")
	self.tbSubcribers[strName] = {strAccount, nCount,strTime}
		
	if self:Subcribers2File() == 1 then
		-- Msg2Player("N�p V�t Ph�m Th�nh C�ng")
		WriteLog(date("%Y%m%d%H%M%S").."\t".."sukien_quockhanh".."\t"..GetAccount().."\t"..GetName().."\t".."SoLuongNop: "..nCount)
	end
end

function tbTop10:Subcribers2File()
	local tbTemp = {}
	tinsert(tbTemp, self.tbFileHeader)
	for key, val in self.tbSubcribers do
		tinsert(tbTemp, {key, val[self.nIDX_Account], val[self.nIDX_TotalCount], val[self.nIDX_LastUpdate]})
	end
	tbVngLib_File:Table2File(self.strFilePath,self.strFileName,"w",tbTemp)	
	return 1
end
--================================================================================================================================--
function tbTop10:ShowTopList()
	-- if self:CheckTime() == 1 then
	-- 	Talk(1,"","H� th�ng �ang ti�n h�nh x�p h�ng, xin h�y quay l�i sau")
	-- 	return
	-- end

	if not self.tbTopList or getn(self.tbTopList) <= 0 then
		CreateNewSayEx("Hi�n t�i ch�a c� b�ng x�p h�ng",{{"��ng",OnCancel}})
		return
	end
	
	local strTittle = "<color=fire>Danh S�ch 10 Ng��i C� S� L��ng N�p Nhi�u Nh�t<color>\n"
	strTittle = strTittle..format("<color=green>%-7s%-20s%-12s<color>\n","H�ng","T�n Nh�n V�t","T�ch L�y")	
	for nRank = 1, getn(self.tbTopList) do
		strName = self.tbTopList[nRank][1]			
		local strTotalCount  = self.tbTopList[nRank][3]	
		local strLastUpdate = self.tbTopList[nRank][4]	
		if strName == GetName() then
			strTittle = strTittle..format("<color=cyan>%-7s%-20s%-12s<color>\n", nRank, strName, strTotalCount, strLastUpdate)
		else
			strTittle = strTittle..format("<color=yellow>%-7s%-20s%-12s<color>\n", nRank, strName, strTotalCount, strLastUpdate)
		end
	end
	CreateNewSayEx(strTittle,{{"��ng",OnCancel}})
end
--================================================================================================================--
function tbTop10:UpdateTopList()
	nVinhLacTranMapID = SubWorldID2Idx(99) 
	if nVinhLacTranMapID < 0 then	
		Talk(1,"","Ch� c� th� c�p nh�t t�i V�nh L�c Tr�n")	
		return
	end
	
	self.tbTopList = {}
	local tbTemp = {}

	
	for key, val in self.tbSubcribers do		
		tinsert(tbTemp, {key, val[self.nIDX_Account], val[self.nIDX_TotalCount], val[self.nIDX_LastUpdate]})
	end

	sort(tbTemp, function (a, b) return(a[3] > b[3]) end)


	local nCount = 0
 	if getn(tbTemp) > 10 then
 		nCount = 10
 	else
 		nCount = getn(tbTemp)
 	end
	for i = 1, nCount do
		self.tbTopList[i] = tbTemp[i]
	end

	self:TopList2File()
end

function tbTop10:TopList2File()
	local tbTemp = {}
	tinsert(tbTemp, self.tbTopListFileHeader)
	for key, val in self.tbTopList do
		tinsert(tbTemp, val)
	end
	tbVngLib_File:Table2File(self.strFilePath, self.strTopListFileName,"w",tbTemp)	
	return 1
end
--==================================================================================================================================================--
function tbTop10:GetCurRank(strName, strAccount)
	local j = 10
	if getn(self.tbTopList) < j then
		j = getn(self.tbTopList)
	end
	for i =1, j do
		local name = self.tbTopList[i][1]
		local acc = self.tbTopList[i][2]
		if strName == name and strAccount == acc then
			return i
		end
	end
	return -1
end
--======================================================================================================================================================================--
function tbTop10:GiveAward(nRank)
	if not self.tbAwardCheck then
		self.tbAwardCheck =  {0,0,0,0,0,0,0,0,0,0}
	end
	self.tbAwardCheck[nRank] = 1
	local tbTemp = {}

	tinsert(tbTemp, {"H�ng 1","H�ng 2","H�ng 3","H�ng 4","H�ng 5","H�ng 6","H�ng 7","H�ng 8","H�ng 9","H�ng 10"})
	tinsert(tbTemp, self.tbAwardCheck)		
	tbVngLib_File:Table2File(self.strFilePath,"rankawarded.txt","w",tbTemp)	
end

function tbTop10:CheckCanGetAward(nRank)
	if not self.tbAwardCheck or not self.tbAwardCheck[nRank] or self.tbAwardCheck[nRank] == 1 then
		return 1
	end
	return 0
end
--======================================================================================================================================================--
function LoadFromFile()
	if not tbTop10.tbSubcribers then
		tbTop10.tbSubcribers = {}
	end

	local tb = tbVngLib_File:TableFromFile(tbTop10.strFilePath, tbTop10.strFileName, tbTop10.tbSubcribersPattern)
	if not tb then
		tbTop10.tbSubcribers = nil
		return
	end

	local nLength = 0
	for i = 1, getn(tb) do		
		if tb[i][1] then
			nLength = nLength + 1
			tbTop10.tbSubcribers[tb[i][1]] = {tb[i][2], tb[i][3], tb[i][4]}			
		end
	end
	tbTop10.nRegisterCount = nLength


	tbTop10:TopListFromFile()
		
	local tb = tbVngLib_File:TableFromFile(tbTop10.strFilePath,"rankawarded.txt",{"*n","*n","*n","*n","*n","*n","*n","*n","*n","*n"})
	if not tb then
		tbTop10.tbAwardCheck = {0,0,0,0,0,0,0,0,0,0}
	else
		tbTop10.tbAwardCheck = tb[1]
	end	
end

function tbTop10:TopListFromFile()
	if not self.tbTopList then
		self.tbTopList = {}
	end

	local tb = tbVngLib_File:TableFromFile(tbTop10.strFilePath, tbTop10.strTopListFileName, self.tbToplistPattern)
	if not tb then
		tbTop10.tbTopList = nil
		return
	end

	for i = 1, getn(tb) do
		self.tbTopList[i] = tb[i]
	end
end

if tbTop10:IsActive() == 1 then
	local a = AutoFunctions:Add(LoadFromFile)
end
--=====================================================================================================================================================================================================--