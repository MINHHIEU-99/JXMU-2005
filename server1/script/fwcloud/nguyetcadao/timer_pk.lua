IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
IncludeLib("LEAGUE");
Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")
--Include("\\script\\global\\skills_table.lua")
--Include("\\script\\task\\lv120skill\\head.lua")
--Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
--Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\missions\\basemission\\lib.lua")
--Include("\\script\\misc\\eventsys\\type\\map.lua")
Include("\\script\\lib\\awardtemplet.lua")

GccPos = 		{{50297,89761},};





function GetNearstPos(X,Y, PosTab)
	PosCount = getn(PosTab);
	PosId = 0;
	MaxDist = 999999999;

	BeyondCount = 0;---gi do

	for i = 1, PosCount do 
		Dist = sqrt( (X-PosTab[i][1]) * (X-PosTab[i][1]) + (Y - PosTab[i][2]) * (Y - PosTab[i][2]))
		if (Dist >= 800) then 
			BeyondCount = BeyondCount + 1;
		end;
		if (i == 1) then 
			PosId = 1
			MaxDist = Dist
		elseif (MaxDist > Dist) then 
			PosId = i
			MaxDist = Dist
		end
	end;

	if (BeyondCount >= PosCount) then
		return 0
	else
		return PosId;
	end;
end

function vongbo()

	w,x,y=GetWorldPos()
	
	--PosId = GetNearstPos(x*32,y*32, GccPos);
	if  (w == 984 ) then 
		--Say("Bπn kh´ng Æ≠Óc ph–p rÍi kh·i l´i Æµi")
		SetPos(random(1568,1572),random(2800,2806))
		return 1
	end;
	
end

function Start_PK()
	local PlayerIndexOld = PlayerIndex
	for i=1, 500 do
		PlayerIndex = i
		if (GetTaskTemp(150) == 1 )  then
	SetPKFlag(2)
	SetCurCamp(4);
	ChangeOwnFeature(0,0,1875)
	ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 1)
	mautrogiup2()
	vongbo()
	SetProtectTime(18*15) 
	AddSkillState(963, 1, 0, 18*15) 
		end
	end
	PlayerIndex = PlayerIndexOld
end

function ThuHep()
	local PlayerIndexOld = PlayerIndex
	for i=1, 500 do
		PlayerIndex = i
		if (GetTaskTemp(150) == 1 )  then
	--SetPKFlag(1)
	--SetCurCamp(4);
	--ChangeOwnFeature(0,0,1875)
	--ForbitSyncName(PIdx2NpcIdx(PlayerIndex), 1)
	--mautrogiup2()
	vongbo()
	SetProtectTime(18*15) 
	AddSkillState(963, 1, 0, 18*15) 
		end
	end
	PlayerIndex = PlayerIndexOld
print("thu vong bo");
end


function mautrogiup2()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
	return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0,0);
	end
end

nWait = 0

function OnTimer()

local nStep = check_count(nTienTrinh)
nWait = nWait + 1

if nStep == 2 then
	if nWait == 1 or nWait == 2 then
	--Msg2SubWorld("CuÈc tÿ th› Nguy÷t Ca ß∂o sœ bæt Æ«u sau " .. 3 - nWait .." phÛt.")
	Msg2MSAll(73,"1111 CuÈc tÿ th› Nguy÷t Ca ß∂o sœ bæt Æ«u sau " .. 3 - nWait .." phÛt.")
	end
	if nWait == 3 then
	Msg2MSAll(73," <color=green> CuÈc tÿ th› ch›nh th¯c bæt Æ«u...<color>")
	Start_PK()
	end
	if nWait == 8 then
	ThuHep()
	add_count(nTienTrinh)
	Msg2MSAll(73," <color=green>Ti’n hµnh thu h—p vﬂng bo...<color>")
	nWait = 0
	StopMissionTimer(75,134)
	end
end
print (nWait)
end

