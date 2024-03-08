-- ��ɽ��̨�Ի�
--Include("\\script\\global\\quanlygame\\thuonghoatdong.lua");
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\missions\\huashanqunzhan\\high_grade\\ready\\readyclass.lua")
Include("\\script\\missions\\huashanqunzhan\\mid_grade\\ready\\readyclass.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
IncludeLib("LEAGUE")
IncludeLib("TIMER")


function huashanqunzhan_SignUpMain(nStep)
	local tbSay = nil
	local nPlayerLevel = GetLevel()
	
	local tbReadyMission = nil
	if nPlayerLevel < 90 then
		tbReadyMission = nil
	elseif nPlayerLevel >= 90 then
		tbReadyMission = huashanqunzhan_tbReady_H
	end
	
	local nState = tbReadyMission and tbReadyMission:CheckMathState() or nil
	if nStep == 1 then
		if nState == 1 then
			tbSay = 
			{
				format("<dec><npc>L�i ��i Lo�n Chi�n b�t ��u b�o danh ��i hi�p c� ��ng � tham gia kh�ng?"),
				 "B�o danh tham gia/#huashanqunzhan_SignUpMain(2)",
			}
		elseif nState == 0 or nState == -1 then
			local tbWorld = 
			{

				{"Tr�n ��u","Ch�a T�i Gi�","B�t ��u"},
			}
			local szMsg = nState == 0 and "Tr�n ��u v�n ch�a b�t ��u." or "Tr�n ��u �ang ���c ti�n h�nh."
			tbSay = 
			{
				"<dec><npc>"..szMsg.."Th�i gian thi ��u nh� sau:<enter>"..huashanqunzhan_drawtable(tbWorld),
			}
		elseif nState == -2 then
			local tbMacthMission	= tbReadyMission.tbRef
		
			local szWinerName		= tbMacthMission:GetMissionS(tbMacthMission.tbMissionS.WINER_INDEX)
			local szMsg				= (szWinerName and szWinerName ~= "")  and format("Ng��i chi�n th�ng: <color=yellow>%s<color>", szWinerName) or "Tr�n n�y kh�ng c� Ng��i chi�n th�ng"
			
			tbSay = 
			{
				format("<dec><npc>L�i ��i Lo�n Chi�n �� ph�n th�ng b�i, %s", szMsg),
				
			}
		elseif nState == nil then
			tbSay = 
			{
				"<dec><npc>Ng��i ch�i c�p tr�n 50 �� n�p th� m�i c� th� tham gia ��u Tr��ng. C�p t� 50 ��n 119 c� th� tham gia ��u Tr��ng  trung c�p; c�p 120 tr� l�n c� th� tham gia ��u Tr��ng  cao c�p. Ng��i ch�a �� ��ng c�p �� tham gia.",
			}
		end		
	elseif nStep == 2 then
		if GetCash() < tbReadyMission.nMoney then
			return Say(format("Ph� b�o danh l� %d l��ng, ng�n l��ng tr�n ng��i kh�ng ��.", tbReadyMission.nMoney), 0)
		end
		
		
		if tbReadyMission == nil then
			return Say("��ng c�p ch�a �� 50, kh�ng th� tham gia b�o danh.", 0)
		else
			return huashanqunzhan_SignUpStep(tbReadyMission)
		end
	end
	
	if  huashanqunzhan_CheckGetAward(tbReadyMission.tbRef) then
		tinsert(tbSay,2,"Ph�n th��ng cho ng��i chi�n th�ng./huashanqunzhan_GetAward")
	end
	
	tinsert(tbSay, "K�t th�c ��i tho�i/OnCancel")
	CreateTaskSay(tbSay)
end


function huashanqunzhan_SignUpStep(tbMission)
	local nState = tbMission:CheckMathState()
	if nState == 1 then
	tbMission:GotoReadyPlace()
	local szNews = format("��i hi�p <color=green>"..GetName().."<color=yellow> �� v�o L�i ��i Lo�n Chi�n");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	mautrogiup()
	elseif nState == 0 then
		Say("Tr�n ��u v�n ch�a b�t ��u.", 0)
	elseif nState == -1 then
		Say("Tr�n ��u �ang ti�n h�nh, xin ��i ��n tr�n sau.", 0)
	elseif nState == -2 then
		
		local tbMacthMission	= tbMission.tbRef
		local szWinerName		= tbMacthMission:GetMissionS(tbMacthMission.tbMissionS.WINER_INDEX)
		local szMsg				= szWinerName and format("Ng��i chi�n th�ng: <color=yellow>%s<color>", szWinerName) or "Tr�n n�y kh�ng c� Ng��i chi�n th�ng"
		local tbSay = 
		{
			format("<dec><npc>Tr�n L�i ��i �� ph�n th�ng b�i, %s", szMsg),
			"K�t th�c ��i tho�i/OnCancel"
		}
		CreateTaskSay(tbSay)
	end
end

function mautrogiup()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
	return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0,0);
	end
end

function huashanqunzhan_GetAward()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=yellow>Ch�c m�ng ��i cao th� <color=green>%s<enter><color=yellow> <pic=26><pic=125>�� nh�n  <color=pink><%s><color=yellow><enter>Ph�n th��ng <color=green>< �� Nh�t ��u Tr��ng ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
	local tbAward =
	{

		--{szName="Ti�n th� l�",tbProp={6,1,1765,1,0,0},nCount=1, CallBack= _Message},
		--{szName="qu� hoa t�u",tbProp={6,1,125,1,0,0},nCount=1, CallBack= _Message},
		--{szName="qu� hoa t�u",tbProp={6,1,125,1,0,0},nCount=4, },
				--{szName="Ti�n",tbProp={4,417,1,1,0,0},nCount=1, },
			--	{szName="Ti�n",tbProp={4,417,1,1,0,0},nCount=99, CallBack= _Message, },

				--{szName="thi�t la h�n l� bao",tbProp={6,1,1665,1,0,0},nCount=1, CallBack= _Message},
				{szName="TTL db",tbProp={6,1,1765,1,0,0},nCount=1, CallBack= _Message},

		--{szName="huy�t ng�c",tbProp={6,1,4455,1,0,0},nCount=9,},

	}
	local nCount = GetTask(huashanqunzhan.TSK_Winer)
	
	tinsert(tbAward, { nJxb = 10 * nCount})
	--tbAwardTemplet:GiveAwardByList({{szName="R��ng lo�i 2",tbProp={6,1,4489,1,0,0},nCount=5,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "mat na ngu hanh",tbProp={0,11,883,1,0,0},nCount=1,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="V� h�n chu t��c",tbProp={6,1,4465,1,1},nCount=100,},}, "test", 1);	
--tbAwardTemplet:GiveAwardByList({{szName="M�t th�",tbProp={6,1,1477,1,1},nCount=3,},}, "test", 1);	
--tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,1326,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,1327,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,1328,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "M�nh",tbProp={4,1329,1,1,0},nCount=1,},}, "test", 1);
	tbAwardTemplet:GiveAwardByList(tbAward, "L�i ��i Sinh T�")
	SetTask(huashanqunzhan.TSK_Winer, 0)
--SetTask(5110,GetTask(5110)+20)
--Msg2Player("<color=green>Ch�c m�ng ��i hi�p nh�n ���c<color=pink> 20 �i�m n�ng ��ng.")	
StackExp(10000000);
--Earn(150000)
PlayerFunLib:AddSkillState(1551,1,3,1555200,1)
PlayerFunLib:AddSkillState(1552,1,3,1555200,1)
PlayerFunLib:AddSkillState(1564,1,3,1555200,1)

vongsangtop1()
end





function huashanqunzhan_CheckGetAward(tbMission)
	local nState = tbMission:GetMissionState()
	local nPlayerMathId = GetTask(tbMission.TSK_MatchId)
	local nMathId = tbMission:GetMissionV(tbMission.tbMissionV.MATCH_ID)
	if nPlayerMathId == nMathId and nState == 2 and GetTask(tbMission.TSK_Winer) > 0 then
		
		return 1
	end
	return nil
end

function OnCancel()
	
end

function vongsangtop1()
n_title = 374 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 1*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
end


function huashanqunzhan_drawtable(tbWord)
	local nLen = 0
	local str = ""
	for _, tb2 in tbWord do
		for _, sz in tb2 do
			if sz and nLen < strlen(sz) then
				nLen = strlen(sz)
			end
		end
	end
	for _, tb2 in tbWord do
		local str_space
		for j, sz in tb2 do
			if sz ~= "-" or ( sz == "-" and j==1 )then
				str = str.."|"
			else
				str = str.."-"
			end
			 str_space = sz == "-" and "-" or " "
			str = str..strfill_center(sz,nLen, str_space)
		end
		str = str.."|"
	
		str = str.."<enter>"
	end
	return str
end


function OnTimer()
local nHour = tonumber(GetLocalDate("%H%M"))
if nHour < 2159 or nHour > 2210 then
return
end
huashanqunzhan_SignUpMain(2)
end