Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

function main() 
local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<#><npc> ng��i ngh� r�i �i th�ng ca ��o sao ?" 
tbDailog:AddOptEntry("X�c nh�n ", leave_sure) 
tbDailog:Show() 
end 

function leave_sure() 
NewWorld(80, 1616, 3182) 
end