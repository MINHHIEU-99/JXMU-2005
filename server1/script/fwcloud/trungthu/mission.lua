-------------------------------- THU VIEN TONG -------------------------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\missions\\fengling_ferry\\fld_head.lua");
Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua");
Include("\\script\\fwcloud\\trungthu\\head.lua")

------TungJX


function InitMission()	--- khoi dong su kien
end

function RunMission()
print("ok")
		mapid = 100
		boatidx = SubWorldID2Idx(mapid)
		if (boatidx < 0) then
			local SignMapId = SubWorldIdx2ID(SubWorld);
			print("ERROR !!!BoatMap1 Is Not In This Server!", mapid); 
			SubWorld = orgworld;
			return
		end
		SubWorld = boatidx
		ThoLauStart()
		local szNews = format("<color=green> Ng≠Íi Tuy’t ß∑ Xu t hi÷n Bæt CËc Tr” Em, H∑y ßi T◊m Vµ Ti™u Di÷t ßi M y M∏.<color>")
		LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		AddGlobalNews(szNews)
		-- StartMissionTimer(77,139,18*60)
		print("Run misssion Tho Lau")
	SubWorld = orgworld
end;

IDMS = 73

function ThoLauStart()
CloseMission(77);
OpenMission(77);
-- StartMissionTimer(77,140,18*10)
Start_ThoLau()
print("Tho Lau Start")
end

function EndMission()	--- stop su kien
--AddGlobalNews("sukienketthuc")
end;
