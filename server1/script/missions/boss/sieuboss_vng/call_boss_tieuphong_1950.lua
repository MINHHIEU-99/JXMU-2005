-------------------------------***Edit*By*Heart*Doldly***----------------------------------------
IncludeLib("TASKSYS");
Include("\\script\\missions\\boss\\sieuboss_vng\\heart_death_award.lua")
----------------------------------------------------------------------------
function BossTieuPhong_1950()
	local nW = "BiÖn Kinh"; local nX = 200; local nY = 213
	local nNpcIndex = AddNpcEx(1951, 150, 1, SubWorldID2Idx(37), 1604*32, 3418*32, 1, "Tieu Phong", 1)
		SetNpcParam(nNpcIndex, 1, 1951)
		SetNpcScript(nNpcIndex, "\\script\\missions\\boss\\sieuboss_vng\\heart_death_award.lua")
		SetNpcTimer(nNpcIndex, 60*60*18);
		str = ("Tr¨m n¨m HiÕm ThÊy Cao Thñ Thiªn H¹ §Ö NhÊt C§ Jx ViÖt §­îc Gäi Lµ <color=orange>Tiªu Phong<color> §· XuÊt HiÖn T¹i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h·y nhanh ch©n ®Õn thñ søc");
		AddGlobalNews(str);
		Msg2SubWorld(str);
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------