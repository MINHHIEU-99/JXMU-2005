-------------------------------- THU VIEN TONG -------------------------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")
Include("\\script\\missions\\fengling_ferry\\fld_head.lua");
Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua");

------Tung Huyen


function InitMission()	--- khoi dong su kien

	local szNews = format("<pic=7> <color=green> NguyÖt Ca §¶o ®· tíi giê b¸o danh h·y mau tíi bÕn c¶ng T©y S¬n Th«n ®Ó lªn thuyÒn s­ kiÖn sÏ b¾t ®Çu sau 5 phót.<color>")
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	AddGlobalNews(szNews)

	StartMissionTimer(73,133,18*60)
	print("run time nguyet ca dao")
end;

function RunMission()
		mapid = 984

		boatidx = SubWorldID2Idx(mapid)
		if (boatidx < 0) then
			local SignMapId = SubWorldIdx2ID(SubWorld);
			print("ERROR !!!BoatMap1 Is Not In This Server!", mapid); 
			SubWorld = orgworld;
			return
		end
		SubWorld = boatidx
ClearMapNpc(984)
CloseMission(73)
CloseMission(74)
CloseMission(75)
OpenMission(73)
--add_count(nTienTrinh)
start_ncd()
	SubWorld = orgworld
end;

IDMS = 73

function nguyetcadaostart()
CloseMission(73);
OpenMission(73)
--AddGlobalNews("su kien bat dau")
print("Nguyet Ca Dao Start")
end

function EndMission()	--- stop su kien
--AddGlobalNews("sukienketthuc")
end;
