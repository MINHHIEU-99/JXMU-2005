Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
pActivity = ActivityClass:new()
pActivity.nId = 1009
pActivity.szName = eventMiNi.Name
pActivity.nStartDate = eventMiNi.StartDate;--YY-mm-DD-HH-MM
pActivity.nEndDate =  eventMiNi.EndDate;
pActivity.szDescription = "Gi∂i ph„ng Mi“n Nam 30-04"
pActivity.nGroupId = nil
pActivity.nVersion = nil
