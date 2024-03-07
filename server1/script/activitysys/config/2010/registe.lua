---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2010\\head.lua")
Include("\\script\\activitysys\\config\\2010\\config.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
if mrtG_ACTIVITY.isEnable ~= 0 then
    pActivity.tbConfig = tbConfig
    pActivity:InitTaskGroup()
    G_ACTIVITY:AddActivity(pActivity) 
end
