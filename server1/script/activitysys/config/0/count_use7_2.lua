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
tbCountUsed7_2.tbFileHeader = {"Name","Account","Sè L­îng","LÇn Cuèi"}
tbCountUsed7_2.tbTopListFileHeader = {"Name","Account","Sè L­îng","LÇn Cuèi"}
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
		Msg2Player("HiÖn T¹i Kh«ng Ph¶i Thêi Gian diÔn ra ho¹t ®éng Kh«ng ThÓ Sö Dông VËt PhÈm")
		return
	end
	if self:CheckTime() ~= 1 then
		-- Talk(1,"","HÖ Thèng §ang TiÕn Hµnh S¾p XÕp L¹i Danh S¸ch Vui Lßng Quay L¹i Sau")
		return
	end
	
	if not self.tbSubcribers then
		self:Init()
	end
	local strTime = GetLocalDate("%Y-%m-%d_%H:%M:%S")
	self.tbSubcribers[strName] = {strAccount, nCount,strTime}
		
	if self:Subcribers2File() == 1 then
		-- Msg2Player("Nép VËt PhÈm Thµnh C«ng")
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
	-- 	Talk(1,"","HÖ thèng ®ang tiÕn hµnh xÕp h¹ng, xin h·y quay l¹i sau")
	-- 	return
	-- end

	if not self.tbTopList or getn(self.tbTopList) <= 0 then
		CreateNewSayEx("HiÖn t¹i ch­a cã b¶ng xÕp h¹ng",{{"§ãng",OnCancel}})
		return
	end
	
	local strTittle = "<color=fire>Danh S¸ch 10 Ng­êi Cã Sè L­îng Sö Dông NhiÒu NhÊt<color>\n"
	strTittle = strTittle..format("<color=green>%-7s%-20s%-12s<color>\n","H¹ng","Tªn Nh©n VËt","TÝch Lòy")	
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
	CreateNewSayEx(strTittle,{{"§ãng",OnCancel}})
end
--================================================================================================================--
function tbCountUsed7_2:UpdateTopList()
	nVinhLacTranMapID = SubWorldID2Idx(99) 
	if nVinhLacTranMapID < 0 then	
		Talk(1,"","ChØ cã thÓ cËp nhËt t¹i VÜnh L¹c TrÊn")	
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

	tinsert(tbTemp, {"H¹ng 1","H¹ng 2","H¹ng 3","H¹ng 4","H¹ng 5","H¹ng 6","H¹ng 7","H¹ng 8","H¹ng 9","H¹ng 10"})
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