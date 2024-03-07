Include("\\script\\activitysys\\config\\38\\head.lua")
Include("\\script\\activitysys\\config\\38\\config.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
pActivity.tbConfig = tbConfig
pActivity:InitTaskGroup()
if NewYearGhepPhao.isEnable ~= 0 then
    G_ACTIVITY:AddActivity(pActivity)
end
