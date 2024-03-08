Include("\\script\\fwcloud\\trungthu\\head.lua")


function OnTimer()
tb_TrungThu["nWait"] = tb_TrungThu["nWait"] + 1

if ( tb_TrungThu["nWait"] == 5) then
AddAllThoLau()
end
if ( tb_TrungThu["nWait"] == 10) then
AddAllThoLau()
end
if ( tb_TrungThu["nWait"] == 15) then
AddAllThoLau()
end
if ( tb_TrungThu["nWait"] == 20) then
AddAllThoLau()
end
if ( tb_TrungThu["nWait"] == 25) then
AddAllThoLau()
end

if tb_TrungThu["nWait"] >= 26 then
StopMissionTimer(77,139)
CloseMission(77);
end
print(tb_TrungThu["nWait"])
end