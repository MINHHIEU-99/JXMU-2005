IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")

nWait = 0
function OnTimer()
nWait = nWait + 1
if nWait == 1 or nWait == 2 or nWait == 3 or nWait == 4 or nWait == 5  or nWait == 6  or nWait == 7 or nWait == 8 or nWait == 9 then
Msg2MSAll(73,"S� ki�n Nguy�t Ca ��o s� b�t ��u sau " .. 10 - nWait .." ph�t.")
else
Msg2MSAll(73," <color=green> S� ki�n Nguy�t Ca ��o b�t ��u v�i " .. GetMSPlayerCount(73,1) .. " ng��i tham gia.<color>")
print("NCD bat dau")
StopMissionTimer(73,133)
add_ai1()
nWait = 0
add_count(nTienTrinh)
end
Msg2SubWorld(nWait)
end

