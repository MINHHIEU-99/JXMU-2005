--Include("\\script\\missions\\fengling_ferry\\fld_head.lua");
--Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua");
boatMAPS = {984, 984};
function fenglingdu_main()
		mapid = 984

		boatidx = SubWorldID2Idx(mapid)
		if (boatidx < 0) then
			local SignMapId = SubWorldIdx2ID(SubWorld);
			print("ERROR !!!BoatMap1 Is Not In This Server!", mapid); 
			SubWorld = orgworld;
			return
		end
		SubWorld = boatidx
		CloseMission(73);
		OpenMission(73)
		--SetMissionV(MS_STATE, 1)
	--end
	SubWorld = orgworld
end