Include("\\script\\activitysys\\config\\1000\\head.lua")
Include("\\script\\activitysys\\config\\1000\\config.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
pActivity.tbConfig = tbConfig
pActivity:InitTaskGroup()
if mrtG_ACTIVITY.isEnable ~= 0 then
    G_ACTIVITY:AddActivity(pActivity)
end