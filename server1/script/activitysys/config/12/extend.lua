Include("\\script\\activitysys\\config\\12\\head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\12\\variables.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")

pActivity.nPak = curpack()
MAX_TASK_COUNT = 2
pActivity.tbTaskList = {}
pActivity.nAutoId = 0
pActivity.nTaskCount = 0
pActivity.tbWinners = {}



function pActivity:GiveTask()

	local szName = GetName()

	if self.nTaskCount >= MAX_TASK_COUNT then
		return Talk(1, "", "Ng��i �i chuy�n h�ng nhi�u qu�, xin ��i hi�p h�y ch� ��i.")
	end

	for k,v in self.tbTaskList do
		if v.szPlayerName == szName then
			return Talk(1, "", "Ng��i �� ti�p nh�n nhi�m v�, kh�ng ���c nh�n ti�p.")
		end
	end

	for k,v in self.tbWinners do
		if k == szName then
			return Talk(1, "", "Ph�n th��ng l�n tr��c ng��i v�n ch�a nh�n.")
		end
	end

	if self.pCompose:Compose() == 0 then
		return
	end

	local pTask = {}
	pTask.nId = self:NewId()
	pTask.szPlayerName = szName
	pTask.nState = 0
	local nMapId = GetWorldPos()
	local szNpcName = format("Ti�u xa Cao C�p c�a %s", szName)

	DynamicExecute("\\script\\activitysys\\config\\12\\carriage.lua", "add_carriage", nMapId, pTask.nId, szNpcName, GetCurCamp())
	self:AddEscortTask(pTask.nId, pTask)

	return
end

function pActivity:NewId()
	self.nAutoId = self.nAutoId + 1
	return self.nAutoId
end

function pActivity:AddEscortTask(nTaskId, pTask)
	self.tbTaskList[nTaskId] = pTask
	self.nTaskCount = self.nTaskCount + 1
end

function pActivity:DelEscortTask(nTaskId)
	self.tbTaskList[nTaskId] = nil
	self.nTaskCount = self.nTaskCount - 1
end

function pActivity:TaskFailed(nTaskId, nNpcIndex)
	local pTask = self.tbTaskList[nTaskId]
	if not pTask then
		return
	end
	local szName = pTask.szPlayerName
	local  nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex > 0 then
		CallPlayerFunction(nPlayerIndex, Msg2Player, "Nhi�m v� c�a ng��i �� th�t b�i.")
	end
	self:DelEscortTask(nTaskId)
end

function pActivity:TaskFinish(nTaskId, nNpcIndex)
	local pTask = self.tbTaskList[nTaskId]
	if not pTask then
		return
	end
	local szName = pTask.szPlayerName
	local  nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex > 0 then
		CallPlayerFunction(nPlayerIndex, Msg2Player, "Nhi�m v� ho�n th�nh, ng��i c� th� tr� v� nh�n ph�n th��ng.")
	end
	self:AddWinner(szName)
	self:DelEscortTask(nTaskId)
end

function pActivity:AddWinner(szName)
	self.tbWinners[szName] = 1
end

function pActivity:DelWinner()
	local szName = GetName()
	self.tbWinners[szName] = nil
end

function pActivity:IsWinner()
	local szName = GetName()
	--return self.tbWinners[szName] == 1
	if self.tbWinners[szName] ~= 1 then
		Talk(1, "", "��i hi�p v�n ch�a giao h�ng cho ta, nhanh �i chuy�n h�ng ��n ��y �i.")
		return
	end

	return 1
end

function pActivity:CheckCamp(nCamp, szFailMsg)

	nLevel = lib:NumberParamTrans(nCamp)

	if GetCurCamp() ~= nCamp then
		return 1
	elseif szFailMsg then
		lib:ShowMessage(szFailMsg)
	end

end

function pActivity:ServerStart()
	local tbNpcId = {1607, 1608, 1609}

	for i=1,getn(%MOSTER_POS) do
		local nIndex = random(1, 3)
		NpcFunLib:AddFightNpc({szName="Gi�c C�",nNpcId=tbNpcId[nIndex],nLevel=60,bNoRevive=0},{%MOSTER_POS[i]})
	end

end


function pActivity:GiveAward()
	local tbAward = {
		[1]={nExp_tl=30e6},
	}
	tbAwardTemplet:Give(tbAward, 1, {%EVENT_LOG_TITLE, "Nh�n ph�n th��ng t� Th��ng Bu�n"})
	if (GetTask(1309) == 0) then
	-- tbAwardTemplet:GiveAwardByList({tbProp={6,1,4666,1,0,0},nCount =1,nExpiredTime=720,nBindState = -2}, "��t ���c ph�n th��ng")
	SetTask(1309,1)
	end
end

local tbFormula = {
	nWidth = 0,
	nHeight = 0,
	szComposeTitle = "H� Ti�u L�nh",
	szFailMsg = "Ng��i kh�ng c� H� Ti�u L�nh"
}

tbFormula.tbMaterial = {
	{
	szName="H� Ti�u L�nh",
	tbProp={6,1,4203},
	nCount=1,
	--pBindLimit = function(tbItem, nItemIndex)
	--	if GetItemBindState(nItemIndex) == 0 then
	--		return 1
	--	end
	--end
	},
}

pActivity.pCompose = tbActivityCompose:new(tbFormula, "Giao H� Ti�u L�nh")


