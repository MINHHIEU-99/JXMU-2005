boss_parserby = {
	{1146,78,1580,3238,"\\script\\missions\\boss\\boss_kiemtien.lua","KiÕm Tiªn Lý B¹ch"},
	{1146,37,1707,3118,"\\script\\missions\\boss\\boss_kiemtien.lua","KiÕm Tiªn Lý B¹ch"},
}

function add_allnpc_boss()
	boss_bossbynpc(boss_parserby)
end

function boss_bossbynpc(Tab)
	for i = 1 , getn(Tab) do 
		SId = SubWorldID2Idx(Tab[i][2]);
		if (SId >= 0) then
			npcindex = AddNpc(Tab[i][1],1,SId,Tab[i][3]*32,Tab[i][4]*32,1,Tab[i][6]);
			SetNpcScript(npcindex, Tab[i][5]);
		end;
	end	
end;