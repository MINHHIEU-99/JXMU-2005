Include("\\script\\activitysys\\config\\1007\\head.lua")
Include("\\script\\activitysys\\config\\1007\\config.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
pActivity.tbConfig = tbConfig
pActivity:InitTaskGroup()
if eventThang10.isEnable~= 0 then    --Khoi tao Task
    G_ACTIVITY:AddActivity(pActivity)
end
