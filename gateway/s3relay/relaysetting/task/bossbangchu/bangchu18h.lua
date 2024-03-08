Include("\\script\\mission\\boss\\bigboss.lua")

function TaskShedule()
	-- ��ַ��������
	TaskName( "MAKE BIG BOSS 19��45" );
	TaskInterval( 1440 );
	TaskTime( 18, 30 );
	TaskCountLimit( 0 );
	-- ���������Ϣ
	OutputMsg( "MAKE BIG BOSS AT :  19:45" );
	OutputMsg( format("GOLD BOSS COUNT :  %d", BigBoss.gold_boss_count) );
end

function TaskContent()
	local nHour = tonumber(date("%H"))
	local nWeek	= tonumber(date("%w"))
	local nDate
	if (GetProductRegion() ~= "vn") or nWeek == 1 or nWeek == 2 or nWeek == 3 or nWeek == 4 or nWeek == 0 then
		return 0;
	end;
	
	BigBoss.isBigBossDead = 0;
	OutputMsg( format("GOLD BOSS COUNT :  %d", BigBoss.gold_boss_count) );
	if (BigBoss.gold_boss_count == 0) then
		local bossname = "Boss Bang Ch�";
		local series = random(0, 4);
		local bossid = BigBoss.BIG_BOSS_SER[series];
		local bosslvl = 95;
	
		local nPosIdx = random(1,getn(BigBoss.BIG_BOSS_POS));
		local nPosIdx2 = random(1,getn(BigBoss.BIG_BOSS_POS[nPosIdx][2]));
		local worldname = BigBoss.BIG_BOSS_POS[nPosIdx][3];
		local world = BigBoss.BIG_BOSS_POS[nPosIdx][1];
		local posx = BigBoss.BIG_BOSS_POS[nPosIdx][2][nPosIdx2][1];
		local posy = BigBoss.BIG_BOSS_POS[nPosIdx][2][nPosIdx2][2];
		local str = format("Giang h� truy�n r�ng<color=yellow>%s<color> xu�t hi�n t�i <color=yellow>%s<color> ! C�c nh�n s� vo l�m s� c� 1 tr�n chi�n ��m m�u !", bossname, worldname);
		
		GlobalExecute(format("dwf \\script\\missions\\boss\\call_big_boss.lua BigBoss:Make_Big_Boss(%d, %d, %d, %d, %d, %d, [[%s]], [[%s]] )",bossid, bosslvl, series, world, posx, posy, bossname, str ));
		OutputMsg("Create Boss "..bossname..","..bossid..","..bosslvl..","..world..","..posx..","..posy..","..series..date("----%Y%m%d%H%M"))
	else
		
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end