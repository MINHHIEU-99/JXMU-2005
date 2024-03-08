IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("TASKSYS");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")



local _Limit = function(nNpcIdx)
	
	return nGetSeedLevel
end
	
local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	
	DelNpc(nNpcIdx)

	local tkctItem ={
	--	{szName="TÈy Tñy Kinh", tbProp={6,1,22,1,0,0}, nCount = 1},
	--	{szName="Vâ L©m MËt TÞch", tbProp={6,1,26,1}, nCount = 1},
		--{szName="ThiÕt La H¸n LÔ Bao", tbProp={6,1,1665,1,0,0}, nCount = 2},
		{szName="qua hk",tbProp={6,1,907,1,0,0},nCount=1,nExpiredTime=30*24*60},
		--{szName="NEN", tbProp={6,1,4399,1,0,0}, nCount = 2},
		--{szName="nhu tinh", tbProp={6,1,1251,1,0,0}, nCount = 1},
		--{szName="hiÖp cèt", tbProp={6,1,1250,1,0,0}, nCount = 1},
		--{szName="nen", tbProp={6,1,4400,1,0,0}, nCount = 2},
		--{szName="dac xa", tbProp={6,1,1375,1,0,0}, nCount = 2},
		{szName="Thñy Tinh",tbProp={4,238,1,1,0,0,0},nCount=1},
		{szName="Thñy Tinh",tbProp={4,239,1,1,0,0,0},nCount=1},
		{szName="Thñy Tinh",tbProp={4,240,1,1,0,0,0},nCount=1},
		{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1,0,0,0},nCount=6},
	}
	tbAwardTemplet:GiveAwardByList(tkctItem, "");

Msg2SubWorld("Cao thñ <color=cyan>"..GetName().." <color> <color=green>më r­¬ng b¸u NguyÖt Ca §¶o nhËn ®­îc v« sè vËt phÈm quý gi¸.<color>")	
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
	Msg2Player("Vui lßng ®øng yªn.")
end

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	tbProgressBar:OpenByConfig(5, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;


function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
