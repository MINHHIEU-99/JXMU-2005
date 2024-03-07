Include("\\script\\global\\mrt\\configserver\\configall.lua")
Include("\\script\\activitysys\\activity.lua")
pActivity = ActivityClass:new()
pActivity.nId = 1008
pActivity.szName = eventTinhNhan.Name
pActivity.nStartDate = eventTinhNhan.StartDate;--YY-MM-DD-HH-MM
pActivity.nEndDate =  eventTinhNhan.EndDate; --Doi 20111127
pActivity.szDescription = "Event t×nh nh©n 2024"
pActivity.nGroupId = nil
pActivity.nVersion = nil
