Include("\\script\\activitysys\\config\\26\\head.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\task_addplayerexp.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\config\\26\\give_toplist.lua")
Include("\\script\\activitysys\\config\\26\\variables.lua")
Include("\\script\\activitysys\\npcdailog.lua") -- th�m v�o file �� ch� c�n ghi name npc l� activitiysys t� k�ch ho�t npc
-----------------------------------------------------------------
function pActivity:CheckTongKim()
	local nTime = tonumber(date("%H%M"))
	if (nTime >= 2100 and nTime < 2205) then
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4921,1,0,0},nCount = 20,nBindState = -2,nExpiredTime = 2880}, "��t ���c ph�n th��ng")
	end
end
function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {53,1627,3182,},
		[2] = {99,1625,3202,},
		[3] = {20,3543,6223,},
		[4] = {153,1627,3232,},
	}
	local tbNpc = {
			szName = "T�ng Qu�n S� Ki�n", 
			nLevel = 95,
			nNpcId = 1932,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function pActivity:ShowItemThuong()
	Say("<color=yellow>"..GetName().." �� S� D�ng <color=red>"..GetTask(%TSK_GIVE_ITEM_QUADACTHUONG).."<color> Qu� Qu�c Kh�nh Th��ng")
end
function pActivity:ShowItemDacBiet()
	Say("<color=yellow>"..GetName().." �� S� D�ng <color=red>"..GetTask(%TSK_GIVE_ITEM_QUADACBIET).."<color> Qu� Qu�c Kh�nh ��c Bi�t")
end
function pActivity:ShowReset()
	Say("<color=yellow>"..GetName().." �� Reset <color=red>"..GetTask(%TSK_GIVE_ITEM_RESET).."<color> l�n")
end
----------------------------------------------------Moc Thuong 10000-------------------------------------------------------------------------------------------------------------------
function pActivity:GetAwardThuong_10000()
	if (tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_T10000) == 0) then
		if (GetTask(%TSK_GIVE_ITEM_QUADACTHUONG) >= 10000) then
			tbAwardTemplet:GiveAwardByList(%tbAward[3],"Nh�n Th��ng M�c 10000 Qu� Qu�c Kh�nh Th��ng")
			tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_T10000, 1)
			Msg2Player("Ch�c M�ng <color=yellow>"..GetName().."<color> �� Nh�n Th��ng Qu� Qu�c Kh�nh Th��ng M�c 10000 Th�nh C�ng")
		else
			local szTitle = "<color=yellow>"..GetName().." Ch�a S� D�ng �� <color=red>"..GetTask(%TSK_GIVE_ITEM_QUADACTHUONG).."/10000<color> Qu� Qu�c Kh�nh Th��ng\n"
			Say(szTitle)
		end
	else
		Say("<color=red>"..GetName().." �� Nh�n Th��ng M�c N�y R�i")
	end
end
----------------------------------------------------------Dac Biet 5000-------------------------------------------------------------------------------------------------------------------------------------------
function pActivity:GetAwardDacBiet_5000()
	if (tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_DB5000) == 0) then
		if (GetTask(%TSK_GIVE_ITEM_QUADACBIET) >= 5000) then
			tbAwardTemplet:GiveAwardByList(%tbAward[4],"Nh�n Th��ng M�c 5000 Qu�c Kh�nh ��c Bi�t")
			tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_DB5000, 1)
			Msg2Player("Ch�c M�ng <color=yellow>"..GetName().."<color> �� Nh�n Th��ng Qu�c Kh�nh ��c Bi�t M�c 5000 Th�nh C�ng")
		else
			local szTitle = "<color=yellow>"..GetName().." Ch�a S� D�ng �� <color=red>"..GetTask(%TSK_GIVE_ITEM_QUADACBIET).."/5000<color> Qu�c Kh�nh ��c Bi�t\n"
			Say(szTitle)
		end
	else
		Say("<color=red>"..GetName().." �� Nh�n Th��ng M�c N�y R�i")
	end
end
-----------------------------------------------------------------Dac Biet 10000-------------------------------------------------------------------------------------------------------------------------------------
function pActivity:GetAwardDacBiet_10000()
	if (tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_DB10000) == 0) then
		if (GetTask(%TSK_GIVE_ITEM_QUADACBIET) >= 10000) then
			tbAwardTemplet:GiveAwardByList(%tbAward[5],"Nh�n Th��ng M�c 10000 Qu�c Kh�nh ��c Bi�t")
			tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_DB10000, 1)
			Msg2Player("Ch�c M�ng <color=yellow>"..GetName().."<color> �� Nh�n Th��ng Qu�c Kh�nh ��c Bi�t M�c 10000 Th�nh C�ng")
		else
			local szTitle = "<color=yellow>"..GetName().." Ch�a S� D�ng �� <color=red>"..GetTask(%TSK_GIVE_ITEM_QUADACBIET).."/10000<color> Qu�c Kh�nh ��c Bi�t\n"
			Say(szTitle)
		end
	else
		Say("<color=red>"..GetName().." �� Nh�n Th��ng M�c N�y R�i")
	end
end
-------------------------------------------------------------------Dac Biet 15000------------------------------------------------------------------------------------------------------------------------------------
function pActivity:GetAwardDacBiet_15000()
	if (tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_DB15000) == 0) then
		if (GetTask(%TSK_GIVE_ITEM_QUADACBIET) >= 15000) then
			tbAwardTemplet:GiveAwardByList(%tbAward[6],"Nh�n Th��ng M�c 15000 Qu�c Kh�nh ��c Bi�t")
			tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_DB15000, 1)
			Msg2Player("Ch�c M�ng <color=yellow>"..GetName().."<color> �� Nh�n Th��ng Qu�c Kh�nh ��c Bi�t M�c 15000 Th�nh C�ng")
		else
			local szTitle = "<color=yellow>"..GetName().." Ch�a S� D�ng �� <color=red>"..GetTask(%TSK_GIVE_ITEM_QUADACBIET).."/15000<color> Qu�c Kh�nh ��c Bi�t\n"
			Say(szTitle)
		end
	else
		Say("<color=red>"..GetName().." �� Nh�n Th��ng M�c N�y R�i")
	end
end
---------------------------------------------------------------------Dac Biet 35000--------------------------------------------------------------------------------------------------------------------------------
function pActivity:GetAwardDacBiet_35000()
	if (tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_DB35000) == 0) then
		if (GetTask(%TSK_GIVE_ITEM_QUADACBIET) >= 35000) then
			tbAwardTemplet:GiveAwardByList(%tbAward[7],"Nh�n Th��ng M�c 35000 Qu�c Kh�nh ��c Bi�t")
			tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_DB35000, 1)
			Msg2Player("Ch�c M�ng <color=yellow>"..GetName().."<color> �� Nh�n Th��ng Qu�c Kh�nh ��c Bi�t M�c 35000 Th�nh C�ng")
		else
			local szTitle = "<color=yellow>"..GetName().." Ch�a S� D�ng �� <color=red>"..GetTask(%TSK_GIVE_ITEM_QUADACBIET).."/35000<color> Qu�c Kh�nh ��c Bi�t\n"
			Say(szTitle)
		end
	else
		Say("<color=red>"..GetName().." �� Nh�n Th��ng M�c N�y R�i")
	end
end


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function pActivity:UseQuocKhanhThuong()
local nUserCount = GetTask(%TSK_GIVE_ITEM_QUADACTHUONG)
	if (nUserCount < 10000) then
		SetTask(%TSK_GIVE_ITEM_QUADACTHUONG,nUserCount+1) tbAwardTemplet:GiveAwardByList(%tbAward[1],"Ph�n Th��ng S� D�ng Qu� Qu�c Kh�nh Th��ng")
	else
		Talk(1,"","M�i Nh�n V�t Ch� S� D�ng 10000 Qu� Qu�c Kh�nh Th��ng")
		return 1
	end
	return 1
end
------------------------------------------------------------------------------------------------------------------
function pActivity:UserQuocKhanhDacBiet()
--local nLastCount = GetTask(%TSK_GIVE_ITEM_TICHLUY)
local nUserCount = GetTask(%TSK_GIVE_ITEM_QUADACBIET)
	local nCurCount = GetTask(%TSK_GIVE_ITEM_TICHLUY)
	SetTask(%TSK_GIVE_ITEM_TICHLUY, nUserCount+1)
	%tbTop10:GiveItem(GetName(), GetAccount(), nUserCount)
	SetTask(%TSK_GIVE_ITEM_QUADACBIET,nUserCount+1) tbAwardTemplet:GiveAwardByList(%tbAward[2],"Ph�n Th��ng S� D�ng Qu�c Kh�nh ��c Bi�t")
end
-----------------------------------------------------------------------------------------------------------------
function pActivity:LeBaoQuocKhanh()
	local tbAward = {
		{szName="Ch�o",tbProp={6,1,4923,1,0,0},nCount = 1, nRate = 20, nExpiredTime=%DATE_END},
		{szName="M�ng",tbProp={6,1,4924,1,0,0},nCount = 1, nRate = 20, nExpiredTime=%DATE_END},
		{szName="Ng�y",tbProp={6,1,4925,1,0,0},nCount = 1, nRate = 20, nExpiredTime=%DATE_END},
		{szName="Qu�c",tbProp={6,1,4926,1,0,0},nCount = 1, nRate = 20, nExpiredTime=%DATE_END},
		{szName="Kh�nh",tbProp={6,1,4927,1,0,0},nCount = 1, nRate = 20, nExpiredTime=%DATE_END},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"L� bao qu�c kh�nh")
end
---------------------------------------------------------------------------------------------------------------
function pActivity:ResetEvent()
local nUserCount = GetTask(%TSK_GIVE_ITEM_QUADACTHUONG)
local nUserRSCount = GetTask(%TSK_GIVE_ITEM_RESET)
if (CalcEquiproomItemCount(4, 417, 1, -1) < 1000) then
	Say("B�n ch�a �� 1000 Ti�n ��ng !") 
return
end 
	if (nUserRSCount < 3) then
	if (tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_T10000) == 1) then
	if (nUserCount >= 10000) then
	if (ConsumeEquiproomItem(1000, 4,417, 1, -1) == 1) then
		SetTask(%TSK_GIVE_ITEM_QUADACTHUONG,0)
		SetTask(%TSK_GIVE_ITEM_RESET,nUserRSCount+1)
		tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_MOC_T10000, 0)
		Say("<color=red>"..GetName().." B�n �� reset th�nh c�ng!")
	end
	else
		Talk(1,"","M�i Nh�n V�t Ch� S� D�ng 10000 Qu� Qu�c Kh�nh Th��ng")
	end
	else
		Say("<color=red>"..GetName().." Ch�a Nh�n Th��ng M�c 10000 Qu� Qu�c Kh�nh Th��ng")
	end
	else
		Say("<color=red>"..GetName().." ch� ���c reset t�i �a 3 l�n!")
	end
end
--------------------------------------------------------------------------------------------------------------------------------
function pActivity:ShowTopList()
	%tbTop10:ShowTopList()
end

function pActivity:UpdateTopList()
	%tbTop10:UpdateTopList()
end

function pActivity:CheckDateTime()
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(%TSK_GIVE_DATE_AWARDS) ~= nDate) then
		SetTask(%TSK_GIVE_DATE_AWARDS, nDate)
		--SetTask(%TSK_GIVE_NANGDONG_AWARDS,0)
		tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_DAY, 0)
	end
	return 1
end

function pActivity:GiveItemCheckTime()
	if %tbTop10:CheckTime() == 1 then
		Talk(1,"","H� th�ng �ang ti�n h�nh x�p h�ng, xin h�y quay l�i sau")		
		return nil
	end
	return 1
end



---------------------------------------------------------------------------------Ph�n Th��ng Top 10------------------------------------------------------------------------------------------------------			
function pActivity:GetTopListAward()
	if %tbTop10:CheckTime() == 1 then
		Talk(1,"","H� th�ng �ang ti�n h�nh x�p h�ng, xin h�y quay l�i sau")		
		return nil
	end
	local nRank = %tbTop10:GetCurRank(GetName(), GetAccount())
	local szTitle = "<color=fire>Ph�n Th��ng Top S� Ki�n To�n Server<color>\n"
	if %tbTop10:CheckTimeTop() ~= 1 then
		Talk(1,"","Hi�n t�i kh�ng ph�i th�i gian nh�n Top, xin h�y quay l�i sau")		
		return nil
	end
	if (nRank >= 1 and nRank <= 10) then

		if tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_TOP) ~= 1 then
				szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n ", nRank)
		for i = 1, getn(%tbAwardRank[nRank]) do
		szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[nRank][i].nCount, %tbAwardRank[nRank][i].szName)
		end
		tbAwardTemplet:GiveAwardByList(%tbAwardRank[nRank],"Ph�n Th��ng Top") %tbTop10:GiveAward(nRank)
		tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_ITEM_ACTIVITY_AWARD_TOP,1)
		else
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------\n---------------B�n �� nh�n th��ng-------------<color>\n", nRank)
		for i = 1, getn(%tbAwardRank[nRank]) do
		szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[nRank][i].nCount, %tbAwardRank[nRank][i].szName)
		end
		end
		CreateNewSayEx(szTitle,{{"H�y B�"}})
	else
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","1")
		for i = 1, getn(%tbAwardRank[1]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[1][i].nCount, %tbAwardRank[1][i].szName)
		end
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","2")
		for i = 1, getn(%tbAwardRank[2]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[2][i].nCount, %tbAwardRank[2][i].szName)
		end
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","3")
		for i = 1, getn(%tbAwardRank[3]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[3][i].nCount, %tbAwardRank[3][i].szName)
		end
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","4")
		for i = 1, getn(%tbAwardRank[4]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[4][i].nCount, %tbAwardRank[4][i].szName)
		end
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","5")
		for i = 1, getn(%tbAwardRank[5]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[5][i].nCount, %tbAwardRank[5][i].szName)
		end
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","6")
		for i = 1, getn(%tbAwardRank[6]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[6][i].nCount, %tbAwardRank[6][i].szName)
		end
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","7")
		for i = 1, getn(%tbAwardRank[7]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[7][i].nCount, %tbAwardRank[7][i].szName)
		end
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","8")
		for i = 1, getn(%tbAwardRank[8]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[8][i].nCount, %tbAwardRank[8][i].szName)
		end
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","9")
		for i = 1, getn(%tbAwardRank[9]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[9][i].nCount, %tbAwardRank[9][i].szName)
		end
		szTitle = szTitle..format("<color=yellow>--------------------Top %s--------------------<color>\n","10")
		for i = 1, getn(%tbAwardRank[10]) do
			szTitle = szTitle..format("\t\t\t\t\t\t\t\t\t\t<bclr=blue>%s %s<bclr>\n", %tbAwardRank[10][i].nCount, %tbAwardRank[10][i].szName)
		end
		CreateNewSayEx(szTitle,{{"H�y B�"}})
	end
end



