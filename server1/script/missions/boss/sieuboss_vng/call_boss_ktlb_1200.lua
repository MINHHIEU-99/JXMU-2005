
IncludeLib("TASKSYS");
Include("\\script\\missions\\boss\\sieuboss_1200\\heart_death_1200.lua")
--------------------------------------------------------------------
function BossLyBach_1200()
	local nW = "Bi�n Kinh"; local nX = 197; local nY = 203
	local nNpcIndex = AddNpcEx(1946, 150, 1, SubWorldID2Idx(37), 1577*32, 3250*32, 1, "Ki�m Ti�n L� B�ch", 1)
	SetNpcParam(nNpcIndex, 1, 1946)
	SetNpcScript(nNpcIndex, "\\script\\missions\\boss\\sieuboss_1200\\heart_death_1200.lua")
	SetNpcTimer(nNpcIndex, 30*60*18);
	str = ("Tr�m n�m Hi�m Th�y Th�n Ti�n H� Ph�m <color=orange>Ki�m Ti�n L� B�ch<color> �� Xu�t Hi�n T�i <color=green>"..nW.."<color> <color=yellow>"..nX.."/"..nY.."<color> h�y nhanh ch�n ��n th� s�c");
	AddGlobalNews(str);
	Msg2SubWorld(str);
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------