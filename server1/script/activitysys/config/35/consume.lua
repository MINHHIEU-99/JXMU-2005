Include("\\script\\activitysys\\config\\35\\head.lua")
Include("\\script\\activitysys\\config\\35\\variables.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\config\\35\\produce.lua")

pActivity.nPak = curpack()
pActivity.nTreeCount = 0
pActivity.MAXTREECOUNT = 5000

function pActivity:UseSUDUNGMAMBACNGUQUA()
	tbAwardTemplet:Give(tbAwardList["SUDUNGMAMBACNGUQUA"], 1, {EVENT_LOG_TITLE, tbAwardLog["SUDUNGMAMBACNGUQUA"]})
	tbAwardTemplet:Give(tbAwardList["SUDUNGMAMBACNGUQUA_BAOLIXI"], 1, {EVENT_LOG_TITLE, tbAwardLog["SUDUNGMAMBACNGUQUA_BAOLIXI"]})
	
	self:AddTask(%TSK_USED_SUDUNGMAMBACNGUQUA, 1)
	local nCount = self:GetTask(%TSK_USED_SUDUNGMAMBACNGUQUA)
	if tbAwardLog["SUDUNGMAMBACNGUQUA_USED"][nCount] then
		tbLog:PlayerActionLog(EVENT_LOG_TITLE,tbAwardLog["SUDUNGMAMBACNGUQUA_USED"][nCount])
		tbVngTransLog:Write("jxmu_event_tet/", 22, tbAwardLog["SUDUNGMAMBACNGUQUA_USED"][nCount], "N/A", 1)
	end
end

function pActivity:UseSUDUNGMAMNGUQUA()
	local tbTranslog = {strFolder = "202401_event_tet/", nPromID = 22, nResult = 1}
	tbAwardTemplet:Give(tbAwardList["SUDUNGMAMNGUQUA"], 1, {EVENT_LOG_TITLE, tbAwardLog["SUDUNGMAMNGUQUA"], tbTranslog})
	tbAwardTemplet:Give(tbAwardList["SUDUNGMAMNGUQUA_BAOLIXI"], 1, {EVENT_LOG_TITLE, tbAwardLog["SUDUNGMAMNGUQUA_BAOLIXI"]})
	
	self:AddTask(%TSK_USED_SUDUNGMAMNGUQUA, 1)
	local nCount = self:GetTask(%TSK_USED_SUDUNGMAMNGUQUA)
	if tbAwardList["SUDUNGMAMNGUQUA_USED"][nCount] then
		tbAwardTemplet:Give(tbAwardList["SUDUNGMAMNGUQUA_USED"][nCount], 1, {EVENT_LOG_TITLE, tbAwardLog["SUDUNGMAMNGUQUA_USED"][nCount]})
		tbVngTransLog:Write("jxmu_event_tet/", 22, "TL"..tbAwardLog["SUDUNGMAMNGUQUA_USED"][nCount], "N/A", 1)
	end
end

function pActivity:CheckUseZhongzi()
--	print(format("CheckUseZhongzi  &&&& nTreeCount = %d MAXCOUNT = %d",self.nTreeCount, self.MAXTREECOUNT))
	if self.nTreeCount < self.MAXTREECOUNT then
		return 1
	else
		Msg2Player("��i hi�p h�y ngh� ng�i m�t l�t r�i h�y ti�p t�c tr�ng C�y B�ch Qu� nh�")
	end
end

function pActivity:UseZhongzi()
	local nX32, nY32, nMapIndex =  GetPos()
	DynamicExecute("\\script\\activitysys\\config\\35\\tree.lua", "Tree:Create", GetName(), nMapIndex, nX32, nY32)
	tbLog:PlayerActionLog(EVENT_LOG_TITLE, "SuDungHatGiong")
	
--	print(format("UseZhongzi &&&& nTreeCount = %d",self.nTreeCount))
	self.nTreeCount = self.nTreeCount + 1
--	print(format("UseZhongzi  &&&& nTreeCount = %d",self.nTreeCount))
end


function pActivity:DestoryTree()
--	print(format("DestoryTree &&&& nTreeCount = %d",self.nTreeCount))
	self.nTreeCount = self.nTreeCount - 1
--	print(format("DestoryTree  &&&& nTreeCount = %d",self.nTreeCount))
end

function pActivity:SetTreeCount(nCount)
	self.nTreeCount = nCount
--	print(format("SetTreeCount  &&&& nTreeCount = %d", self.nTreeCount))
end

function pActivity:CheckComposeRedEvelopLimit(nCount)
	local nTaskVal = PlayerFunLib:GetTaskDailyCount(2918)	
	if (nTaskVal + nCount) > 2 then
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ch� c� th� ��i <color=yellow>%d <color>Bao L� X� �� n�a.", 2 - nTaskVal))
		return nil
	end
	local nNowDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nNowDate < 202401050000 or nNowDate >= 202401262400 then
		Talk(1, "", "Xin th� l�i, hi�n t�i kh�ng ph�i l� th�i gian ��i th��ng.")
		return nil
	end
	return 1
end

function pActivity:ComposeRedEvelop(strLog, nCount)
	local nUsedCount = PlayerFunLib:GetTaskDailyCount(2918)
	local nCurCount = nCount
	if nUsedCount + nCurCount > 2 then
		nCurCount = 2 - nUsedCount
	end
	local tbAward = {szName="Bao l� x� ��",tbProp={6,1,30169,1,0,0}, nCount = nCurCount*5,nExpiredTime=20240127, nBindState = -2,}
	PlayerFunLib:AddTaskDaily(2918,nCurCount)
	tbAwardTemplet:Give(tbAward, 1, {EVENT_LOG_TITLE, strLog})
end

function pActivity:CheckTimeGetFreeExp()
	local nNowDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nNowDate < 202311160000 or nNowDate >= 202401172400 then
		Talk(1, "", "Xin th� l�i, hi�n t�i kh�ng ph�i l� th�i gian nh�n th��ng")
		return nil
	end
	return 1
end

function pActivity:CheckComposeDragonMask(nCount)
	local nTaskVal = PlayerFunLib:GetTaskDailyCount(2919)	
	if (nTaskVal + nCount) > 5 then
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ch� c� th� ��i <color=yellow>%d <color>l�n n�a.", 5 - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:ComposeDragonMask(nCount)
	local nUsedCount = PlayerFunLib:GetTaskDailyCount(2919)
	local nCurCount = nCount
	if nUsedCount + nCurCount > 5 then
		nCurCount = 5 - nUsedCount
	end
	local tbAward = {nExp=10000000*nCurCount,}
	PlayerFunLib:AddTaskDaily(2919,nCurCount)
	tbAwardTemplet:Give(tbAward, 1, {EVENT_LOG_TITLE, "DoiMatNaRongNhanKinhNghiem"})
	for i = 1, nCurCount do
		tbVngTransLog:Write("202401_event_tet/", 22, "DoiMatNaRongNhanKinhNghiem", "10000000 �i�m kinh nghi�m", 1)
	end
end