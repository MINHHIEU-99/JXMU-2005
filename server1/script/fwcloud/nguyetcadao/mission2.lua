-------------------------------- THU VIEN TONG -------------------------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")

------Tung Huyen
tbKandy = {}
tbKandy.szFile = "\\dulieu\\nguyetcadao.dat"
server_loadfile(tbKandy.szFile)

function InitMission()
end

function InitMission11()	--- khoi dong su kien
end;

function RunMission()

end;

function EndMission()	--- stop su kien
end;
