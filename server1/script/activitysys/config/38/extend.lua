Include("\\script\\activitysys\\config\\38\\head.lua")
Include("\\script\\activitysys\\config\\38\\variables.lua")
Include("\\script\\activitysys\\config\\38\\gift_pos.lua")
Include("\\script\\global\\autoexec_head.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\config\\38\\award.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("script\\global\\mrt\\configserver\\configall.lua")

pActivity.nPak = curpack()

EVENT_LOG_TITLE = "SPRING FESTIVIAL"
function pActivity:InitAddNpc()
	self:AddPlutus()
	self:AddGiftNpc()
	self:AddAmbienceNpc()
end

function pActivity:UseNewYearGift()
	local AWARD_TABLE = tbAwardList["Gift_Item"]
	tbAwardTemplet:Give(AWARD_TABLE, 1, {EVENT_LOG_TITLE, "get gift award by item"})
	--mini game -  - 20120103
	local nStartTime = NewYearGhepPhao.StartDate
	local nEndTime = NewYearGhepPhao.EndDate
	local nCurrTime = tonumber(GetLocalDate("%Y%m%d"))
	if nCurrTime >= nStartTime and nCurrTime < nEndTime then
		local tbMiniGameAward = {
			{szName="M�t n� - Long Ch�u",tbProp={0,11,75,1,0,0},nCount=1,nRate=20,nExpiredTime=10080},
			{szName="M�t n� - ��u R�ng",tbProp={0,11,76,1,0,0},nCount=1,nRate=20,nExpiredTime=10080},
			{szName="M�t n� - Th�n R�ng",tbProp={0,11,77,1,0,0},nCount=1,nRate=20,nExpiredTime=10080},
			{szName="M�t n� - �u�i R�ng",tbProp={0,11,78,1,0,0},nCount=1,nRate=20,nExpiredTime=10080},
		}
		tbAwardTemplet:Give(tbMiniGameAward, 1, {EVENT_LOG_TITLE, "SuDungLeVatNamMoiNhanMatNa"})
	end
	
end

function pActivity:UseNewYearFireworks()
	local AWARD_TABLE = tbAwardList["Fireworks"]
	tbAwardTemplet:Give(AWARD_TABLE, 1, {EVENT_LOG_TITLE, "get gift award by item"})
	tbVngTransLog:Write("202301_event_tet/", 22, "SuDungPhaoHoaNamMoi", "N/A", 1)
	local nSkillId = 1175
	local _,nX32,nY32 = GetWorldPos()
	CastSkill(nSkillId, 1, nX32*32, nY32*32) -- ��������̻�����
end

function pActivity:CheckFireworksUseTime()
	local nStartTime = NewYearGhepPhao.StartDate
	local nEndTime = NewYearGhepPhao.EndDate
	local nCurrTime = tonumber(GetLocalDate("%Y%m%d"))
	
	if nCurrTime >= nStartTime and nCurrTime < nEndTime then
		return 1
	else
		Msg2Player(format("Th�i gian hi�n t�i kh�ng ��ng, xin h�y ��i ��n %3$d-%2$d-%1$d ��n %5$d-%4$d-%1$d h�y s� d�ng nh�!",2024,1,23,1,31))
	end
end

function pActivity:AddPlutus()
	local szNpcName = "��i Th�n T�i"
	local nNpcId = 1528
	local tbNpcPos = {
		{176,1256,2712},
		{176,1256,2713},
		{176,1256,2715},
		{176,1258,2719},
		{176,1259,2716},
		{176,1262,2721}}
			
	NpcFunLib:AddDialogNpc(szNpcName, nNpcId, tbNpcPos)
end

function pActivity:AddGiftNpc()
	local nMapIndex = SubWorldID2Idx(%GIFT_MAPID)
	if nMapIndex < 0 then
		return
	end
	local szNpcName = "L� V�t N�m M�i"
	local nNpcId = 1288
	for i=1, getn(%GIFT_POS) do
		local nX, nY = %GIFT_POS[i][1], %GIFT_POS[i][2]
		local nNpcIndex = AddNpc(nNpcId, 1, nMapIndex, nX*32, nY*32, 0, szNpcName);
		SetNpcScript(nNpcIndex, "\\script\\activitysys\\config\\38\\npc_gift.lua")
	end
end

function pActivity:AddAmbienceNpc()
	Include("\\script\\activitysys\\config\\38\\ambience_npc.lua")
	DynamicExecute("\\script\\activitysys\\ambience.lua", "tbAmbience:CreateNpc",tbAmbienceNpc)
end


function pActivity:ExpiredTime()
	return self:IsExpired() 
end

function pActivity:CheckGifeGetDaily()
	if self:CheckTaskDaily(%TSK_GET_NEWYEAR_GIFT_DAILY, %MAX_GET_NEWYEAR_GIFT_DAILY, "H�m nay ng��i �� thu th�p ��, ng�y mai h�y quay l�i nh�!", "<") == 1 then
		return 1
	else
		return 0
	end
end

function pActivity:GetNewYearGift()
	self:AddTaskDaily(%TSK_GET_NEWYEAR_GIFT_DAILY, 1)
end