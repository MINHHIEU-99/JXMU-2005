Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
pActivity = ActivityClass:new()
pActivity.nId = 40
pActivity.szName = "20-10 Activity"
pActivity.nStartDate = EventGhepHoaHong.StartDate
pActivity.nEndDate = EventGhepHoaHong.EndDate
pActivity.szDescription = "nil"
pActivity.nGroupId = 3
pActivity.nVersion = 4
