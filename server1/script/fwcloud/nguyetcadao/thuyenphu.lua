Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")
IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\translife.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("TASKSYS")

------Tung Huyen

function main()
--AddMSPlayer(73,1)
--	dofile("script/fwcloud/nguyetcadao/thuyenphu.lua");
	local nStep = check_count(nTienTrinh);
--	Msg2Player(nStep)
	local tbOpt = {}
	if (nStep == 1) then
	tinsert(tbOpt, "L™n thuy“n/join")
	end
	tinsert(tbOpt, "Mua Nguy÷t Ca L÷nh/buyNCL")
	tinsert(tbOpt, "Tho∏t/nothing")
	Say("Chuy’n thuy“n Æﬁnh m÷nh Æ’n Æ∂o kho b∏u Nguy÷t Ca ß∂o !", getn(tbOpt), tbOpt)	
end

function xoavong()
for i = 1501, 1565 do
	RemoveSkillState(i)
end
end

function buyNCL()
local nXu = CalcEquiproomItemCount(4,417,1,-1)
if nXu < 5 then
Say("Ng≠¨i kh´ng mang ÆÒ 5 ti“n ÆÂng.")
return
end
ConsumeEquiproomItem(5, 4,417,1,1)
AddItem(6,1,2908,1,0,0)
end

function join()
local nXu = CalcEquiproomItemCount(4,417,1,-1)
if nXu > 0 then
Say("Ra kh¨i d‘ g∆p c≠Ìp bi”n vui lﬂng Æ” ti“n ÆÂng Î nhµ !")
return
end

local nNCL = CalcEquiproomItemCount(6,1,2908,-1)
if nNCL < 1 then
Say("Ng≠¨i kh´ng mang Nguy÷t Ca L÷nh.")
return
end
ConsumeEquiproomItem(1, 6,1,2908,1)

SetTaskTemp(200,1);
--AddMSPlayer(73,1)
	PlayerFunLib:AddSkillState(1553,1,3,64800,1)
	SetRevPos(175,1)
	DisabledUseTownP(1)
	SetFightState(1)
	SetTaskTemp(150,1)	--id check
	SetCreateTeam(0);
	LeaveTeam()
	SetLogoutRV(1);	--khoi phuc trang thai
	SetPKFlag(0)	-- chuyen pk chien dau
	SetPunish(0);	-- khong len pk
	ForbidChangePK(1);	-- khong duoc doi pk
	SetCurCamp(0);	-- mau vang
	--ForbidEnmity( 1 )	-- khong duoc do sat
--AddMSPlayer(73,1)
	SetDeathScript("\\script\\fwcloud\\nguyetcadao\\player_death.lua")

ran=random(1,4)
if ran==1 then
NewWorld(984, 1507, 3244)
end
if ran==2 then
NewWorld(984, 1517, 3235)
end
if ran==3 then
NewWorld(984, 1517, 3223)
end
if ran==4 then
NewWorld(984, 1512, 3219)
end
end