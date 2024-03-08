IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("TASKSYS");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")



local _Limit = function(nNpcIdx)
	
	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	
	DelNpc(nNpcIdx)

	local tkctItem ={
	--	{szName="T�y T�y Kinh", tbProp={6,1,22,1,0,0}, nCount = 1},
	--	{szName="V� L�m M�t T�ch", tbProp={6,1,26,1}, nCount = 1},
		--{szName="Thi�t La H�n L� Bao", tbProp={6,1,1665,1,0,0}, nCount = 2},
		{szName="qua hk",tbProp={6,1,907,1,0,0},nCount=1,nExpiredTime=30*24*60},
		--{szName="NEN", tbProp={6,1,4399,1,0,0}, nCount = 2},
		--{szName="nhu tinh", tbProp={6,1,1251,1,0,0}, nCount = 1},
		--{szName="hi�p c�t", tbProp={6,1,1250,1,0,0}, nCount = 1},
		--{szName="nen", tbProp={6,1,4400,1,0,0}, nCount = 2},
		--{szName="dac xa", tbProp={6,1,1375,1,0,0}, nCount = 2},
		{szName="Th�y Tinh",tbProp={4,238,1,1,0,0,0},nCount=1},
		{szName="Th�y Tinh",tbProp={4,239,1,1,0,0,0},nCount=1},
		{szName="Th�y Tinh",tbProp={4,240,1,1,0,0,0},nCount=1},
		{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0,0},nCount=6},
	}
	tbAwardTemplet:GiveAwardByList(tkctItem, "");

Msg2SubWorld("Cao th� <color=cyan>"..GetName().." <color> <color=green>m� r��ng b�u Nguy�t Ca ��o nh�n ���c v� s� v�t ph�m qu� gi�.<color>")	
	SetFightState(0)
	SetDeathScript("")
	RestoreOwnFeature()
	ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 0)
	SetFightState(0)
	local ncamp = GetCamp()
	SetCurCamp(ncamp)
	DisabledUseTownP(0)
	LeaveTeam()
	SetPunish(1);	-- khong len pk
	SetPKFlag(0)	-- chuyen pk chien dau
	ForbidChangePK(0);	-- khong duoc doi pk
	ForbidEnmity( 0 )	-- khong duoc do sat
	SetTaskTemp(150,0)
	SetTaskTemp(200,0)
	AddOwnExp(10000000)
RemoveSkillState(1553)
	local nW, nX, nY = RevID2WXY(GetPlayerRev()); 
	NewWorld(nW, nX/32, nY/32); 

StopMissionTimer(74,135)
CloseMission(73)
CloseMission(74)
CloseMission(75)
end


local _OnBreak = function()
	Msg2Player("Vui l�ng ��ng y�n.")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	tbProgressBar:OpenByConfig(5, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
