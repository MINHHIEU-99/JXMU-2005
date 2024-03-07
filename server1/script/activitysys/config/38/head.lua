Include("script\\global\\mrt\\configserver\\configall.lua")

Include("\\script\\activitysys\\activity.lua")
pActivity = ActivityClass:new()
pActivity.nId = 38
pActivity.szName = NewYearGhepPhao.Name
pActivity.nStartDate = NewYearGhepPhao.StartDate
pActivity.nEndDate = NewYearGhepPhao.EndDate
pActivity.szDescription = "nil"
pActivity.nGroupId = 5
pActivity.nVersion = 3
