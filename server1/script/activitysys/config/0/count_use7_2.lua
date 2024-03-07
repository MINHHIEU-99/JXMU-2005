Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\global\\autoexec_head.lua")
-------------------------------------------------
tbCountUsed7_2 = {}
tbCountUsed7_2.tbSubcribers = {}
tbCountUsed7_2.tbTopList = {}
tbCountUsed7_2.tbAwardCheck = {0,0,0,0,0,0,0,0,0,0}
tbCountUsed7_2.nAwardedCount = 0
tbCountUsed7_2.nIDX_Account = 1
tbCountUsed7_2.nIDX_TotalCount = 2
tbCountUsed7_2.nIDX_LastUpdate = 3
tbCountUsed7_2.tbFileHeader = {"Name","Account","S� L��ng","L�n Cu�i"}
tbCountUsed7_2.tbTopListFileHeader = {"Name","Account","S� L��ng","L�n Cu�i"}
tbCountUsed7_2.tbSubcribersPattern = {"*w","*w","*n","*w"}
tbCountUsed7_2.tbToplistPattern = {"*w","*w","*n","*w"}
tbCountUsed7_2.strFilePath = "vng_data/hoatdong_kimbaoruong/"
tbCountUsed7_2.strFileName = "used7_2.txt"
tbCountUsed7_2.strTopListFileName = "toplist7_2.txt"
tbCountUsed7_2.nRegisterCount = 0
tbCountUsed7_2.nSort_Time = 0005
--===========================================================================================================================--
tbCountUsed7_2.tbPhase = {
	[1] = {202304010000, 203005301030}, 
	-- [2] = {202108310900, 202108312400}, 
}

tbCountUsed7_2.nStartDate = 202304010000
tbCountUsed7_2.nEndDate = 203005301030

tbCountUsed7_2.nStartTopDate = 202304010000
tbCountUsed7_2.nEndTopDate = 203005301030
function tbCountUsed7_2:Init()
	self.tbSubcribers = {}
	self.nRegisterCount = 0
end

function tbCountUsed7_2:CheckTime()
	local nTime = tonumber(date("%Y%m%d%H%M"))
	if (nTime >= self.nStartTopDate and nTime < self.nEndTopDate) then
		return 1
	end
	return 0
end

function tbCountUsed7_2:GetPhase()
	local nTime = tonumber(date("%Y%m%d%H%M"))
	for i = 1, getn(self.tbPhase) do
		if nTime >= self.tbPhase[i][1] and nTime <= self.tbPhase[i][2] then
			return i
		end
	end
	return 0
end

function tbCountUsed7_2:IsActive()
	local nTime = tonumber(date("%Y%m%d%H%M"))
	if nTime < self.nStartDate or nTime > self.nEndDate then
		return 0
	end
	return 1
end

function tbCountUsed7_2:CheckTimeTop()
	local nTime = tonumber(date("%Y%m%d%H%M"))
	if nTime < self.nStartTopDate or nTime > self.nEndTopDate then
		return 0
	end
	return 1
end
--=================================================================================================================================================================================--
function tbCountUsed7_2:GiveItem(strName, strAccount, nCount)
	local nPhase = self:GetPhase()
	if nPhase ~= 1 then
		Msg2Player("Hi�n T�i Kh�ng Ph�i Th�i Gian di�n ra ho�t ��ng Kh�ng Th� S� D�ng V�t Ph�m")
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
		WriteLog(date("%Y%m%d%H%M%S").."\t".."sukien_quockhanh".."\t"..GetAccount().."\t"..GetName().."\t".."Count: "..nCount)
	end
end

function tbCountUsed7_2:Subcribers2File()
	local tbTemp = {}
	tinsert(tbTemp, self.tbFileHeader)
	for key, val in self.tbSubcribers do
		tinsert(tbTemp, {key, val[self.nIDX_Account], val[self.nIDX_TotalCount], val[self.nIDX_LastUpdate]})
	end
	tbVngLib_File:Table2File(self.strFilePath,self.strFileName,"w",tbTemp)	
	return 1
end
--================================================================================================================================--
function tbCountUsed7_2:ShowTopList()
	-- if self:CheckTime() == 1 then
	-- 	Talk(1,"","H� th�ng �ang ti�n h�nh x�p h�ng, xin h�y quay l�i sau")
	-- 	return
	-- end

	if not self.tbTopList or getn(self.tbTopList) <= 0 then
		CreateNewSayEx("Hi�n t�i ch�a c� b�ng x�p h�ng",{{"��ng",OnCancel}})
		return
	end
	
	local strTittle = "<color=fire>Danh S�ch 10 Ng��i C� S� L��ng S� D�ng Nhi�u Nh�t<color>\n"
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
function tbCountUsed7_2:UpdateTopList()
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

function tbCountUsed7_2:TopList2File()
	local tbTemp = {}
	tinsert(tbTemp, self.tbTopListFileHeader)
	for key, val in self.tbTopList do
		tinsert(tbTemp, val)
	end
	tbVngLib_File:Table2File(self.strFilePath, self.strTopListFileName,"w",tbTemp)	
	return 1
end
--==================================================================================================================================================--
function tbCountUsed7_2:GetCurRank(strName, strAccount)
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
function tbCountUsed7_2:GiveAward(nRank)
	if not self.tbAwardCheck then
		self.tbAwardCheck =  {0,0,0,0,0,0,0,0,0,0}
	end
	self.tbAwardCheck[nRank] = 1
	local tbTemp = {}

	tinsert(tbTemp, {"H�ng 1","H�ng 2","H�ng 3","H�ng 4","H�ng 5","H�ng 6","H�ng 7","H�ng 8","H�ng 9","H�ng 10"})
	tinsert(tbTemp, self.tbAwardCheck)		
	tbVngLib_File:Table2File(self.strFilePath,"rankawarded.txt","w",tbTemp)	
end

function tbCountUsed7_2:CheckCanGetAward(nRank)
	if not self.tbAwardCheck or not self.tbAwardCheck[nRank] or self.tbAwardCheck[nRank] == 1 then
		return 1
	end
	return 0
end
--======================================================================================================================================================--
function LoadFromFile()
	if not tbCountUsed7_2.tbSubcribers then
		tbCountUsed7_2.tbSubcribers = {}
	end

	local tb = tbVngLib_File:TableFromFile(tbCountUsed7_2.strFilePath, tbCountUsed7_2.strFileName, tbCountUsed7_2.tbSubcribersPattern)
	if not tb then
		tbCountUsed7_2.tbSubcribers = nil
		return
	end

	local nLength = 0
	for i = 1, getn(tb) do		
		if tb[i][1] then
			nLength = nLength + 1
			tbCountUsed7_2.tbSubcribers[tb[i][1]] = {tb[i][2], tb[i][3], tb[i][4]}			
		end
	end
	tbCountUsed7_2.nRegisterCount = nLength


	tbCountUsed7_2:TopListFromFile()
		
	local tb = tbVngLib_File:TableFromFile(tbCountUsed7_2.strFilePath,"rankawarded.txt",{"*n","*n","*n","*n","*n","*n","*n","*n","*n","*n"})
	if not tb then
		tbCountUsed7_2.tbAwardCheck = {0,0,0,0,0,0,0,0,0,0}
	else
		tbCountUsed7_2.tbAwardCheck = tb[1]
	end	
end

function tbCountUsed7_2:TopListFromFile()
	if not self.tbTopList then
		self.tbTopList = {}
	end

	local tb = tbVngLib_File:TableFromFile(tbCountUsed7_2.strFilePath, tbCountUsed7_2.strTopListFileName, self.tbToplistPattern)
	if not tb then
		tbCountUsed7_2.tbTopList = nil
		return
	end

	for i = 1, getn(tb) do
		self.tbTopList[i] = tb[i]
	end
end

if tbCountUsed7_2:IsActive() == 1 then
	local a = AutoFunctions:Add(LoadFromFile)
end
--=====================================================================================================================================================================================================--