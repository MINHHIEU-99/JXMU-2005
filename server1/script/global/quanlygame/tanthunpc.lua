----Script -- By-Tung-------
Include("\\script\\global\\·��_���.lua")
Include("\\script\\global\\judgeoffline_limit.lua");
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

function main()
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
local tab_Content = {
"Nghe 1 b�i nh�c./doinhac1",
"Tho�t./no"
	}
Say("<color=cyan>DJ T�a T�<color>\nCh�o m�ng b�n ��n v�i V� L�m Truy�n K�", getn(tab_Content), tab_Content);       
end;

local _OnBreak = function()

	Msg2Player("G�y nh�c")
end



function doinhac1()
tbProgressBar:OpenByConfig(4, %_doinhac, {}, %_OnBreak)
end

local _doinhac = function()
local nhac = random(1,10)
if nhac == 1 then
PlayMusic("\\Music\\1.mp3")
end
if nhac == 2 then
PlayMusic("\\Music\\2.mp3")
end
if nhac == 3 then
PlayMusic("\\Music\\3.mp3")
end
if nhac == 4 then
PlayMusic("\\Music\\4.mp3")
end
if nhac == 5 then
PlayMusic("\\Music\\5.mp3")
end
if nhac == 6 then
PlayMusic("\\Music\\6.mp3")
end
if nhac == 7 then
PlayMusic("\\Music\\7.mp3")
end
if nhac == 8 then
PlayMusic("\\Music\\8.mp3")
end
if nhac == 9 then
PlayMusic("\\Music\\9.mp3")
end
if nhac == 10 then
PlayMusic("\\Music\\10.mp3")
end
end



function OnTimer(nNpcIndex,nTimeOut)
SetNpcTimer(nNpcIndex,10*18)
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 50);
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.DJTask, PlayerFunLib, 1, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c BOSS ho�ng kim b� ti�u di�t"));
	end

	local tab_Chat = {
		"<color=white>U�ng b�t canh n�y s� qu�n �i mu�n phi�n.",
		"<color=white>Canh c�a ta c� ngon kh�ng.",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])


end

function PlayerFunLib:DJTask()
if GetLevel() < 60 then
AddOwnExp(3000)

end

end

