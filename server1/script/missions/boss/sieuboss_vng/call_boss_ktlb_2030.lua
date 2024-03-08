-------------------------------***Edit*By*Heart*Doldly***----------------------------------------
IncludeLib("TASKSYS");
Include("\\script\\missions\\boss\\sieuboss_2030\\heart_death_2030.lua")
--------------------------------------------------------------------
function BossLyBach_2030()
	local nW = "ChiÕn Long §éng"; local nX = 183; local nY = 191
	local nNpcIndex = AddNpcEx(1946, 150, 1, SubWorldID2Idx(959),  1459*32, 3073*32, 1, "KiÕm Tiªn Lý B¹ch", 1)
SetNpcParam(nNpcIndex, 1, 1946)
SetNpcScript(nNpcIndex, "\\script\\missions\\boss\\sieuboss_2030\\heart_death_2030.lua")
	SetNpcTimer(nNpcIndex, 120*60*18);
	str = ("Tr¨m n¨m HiÕm ThÊy ThÇn Tiªn H¹ Phµm <color=orange>KiÕm Tiªn Lý B¹ch<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------