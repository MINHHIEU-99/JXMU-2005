Include("\\script\\activitysys\\config\\44\\head.lua")
Include("\\script\\activitysys\\config\\44\\config.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
if (EventSocola2014.isEnable ~= 0) then
    pActivity.tbConfig = tbConfig
    pActivity:InitTaskGroup()
    G_ACTIVITY:AddActivity(pActivity)
end
