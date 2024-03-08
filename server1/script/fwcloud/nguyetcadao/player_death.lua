-------------Lanh Tho Chien Dev By TungHuyen-----------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")
-----------------------tunghuyen


function OnDeath(nPlayerIndex)
	SetTaskTemp(150,0)
	SetTaskTemp(200,0)
	local nTienTrinh = check_count(nTienTrinh);
	local nDie = GetMSPlayerCount(73,1)
	DelMSPlayer(73,1)
	Msg2MSAll(73," <color=green> Sè ng­êi cßn l¹i trªn ®¶o : <color>" .. nDie - 1 )
print("Acc "..GetMSPlayerCount(73,1))
print("tien trinh "..nTienTrinh)
	if (GetMSPlayerCount(73,1) == 1 and nTienTrinh == 3) or (GetMSPlayerCount(73,1) == 1 and nTienTrinh == 2) then
	 Msg2SubWorld("R­¬ng b¸u ®· xuÊt hiÖn xin mêi ng­êi cã c«ng lùc cao nhÊt tiÕn tíi më r­¬ng...!")
	add_ruong()
	end
	local nXu = CalcEquiproomItemCount(4,417,1,-1)
	tbItem =
	{
	{{szName="Thuèc",tbProp={1,2,0,5,0,0,0,0},nCount=1,},},
	{{szName="Xu",tbProp={4,417,1,1,1,0},nCount=nXu + 1,},},
	--{{szName="Bac",tbProp={4,1673,1,1,0},nCount=1,},},
	--{{szName="§å Phæ",tbProp={4,random(1497,1636),1,1,0},nCount=1,},},
	}
	ConsumeEquiproomItem(nXu + 1, 4,417,1,1)
	tbDropTemplet:GiveAwardByList(nPlayerIndex, -1, tbItem,TitleStr, 1)

	SetDeathScript("")
	RestoreOwnFeature()
	ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 0)
	SetFightState(0)
	local ncamp = GetCamp()
	SetCurCamp(ncamp)
	LeaveTeam()
	SetPunish(1);	-- khong len pk
	SetPKFlag(0)	-- chuyen pk chien dau
	ForbidChangePK(0);	-- khong duoc doi pk
	ForbidEnmity( 0 )	-- khong duoc do sat
	SetTaskTemp(150,0)
	RemoveSkillState(1553)
	DisabledUseTownP(0)
	AddOwnExp(5000000)
end

NPC_Clickdb = {
	{1826,80,4,984,1571,2804,0,"B¶o R­¬ng NguyÖt Ca §¶o",0,"\\script\\fwcloud\\nguyetcadao\\ruongthanbi.lua","main", 0},    

}

function add_ruong()
	call_npc(NPC_Clickdb)
end

function call_npc(tbnpc) 
		for i = 1 , getn(tbnpc) do 
			Mid = SubWorldID2Idx(tbnpc[i][4]); 
			if (Mid >= 0 ) then 
				TabValue5 = tbnpc[i][5] * 32; 
				TabValue6 = tbnpc[i][6] * 32; 
				local nNpcIdx = AddNpc(tbnpc[i][1],tbnpc[i][2],Mid,TabValue5,TabValue6,tbnpc[i][7],tbnpc[i][8]); 
				SetNpcScript(nNpcIdx, tbnpc[i][10]); 
                                                                                                              AddTimer(1800* 18, "OnTimeout", nNpcIdx);

			end; 
	end; 
end

