Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
pActivity = ActivityClass:new()
pActivity.nId = 1007
pActivity.szName = eventThang10.Name
pActivity.nStartDate = eventThang10.StartDate;--YY-MM-DD-HH-MM
pActivity.nEndDate =  eventThang10.EndDate; --Doi 20111127
pActivity.szDescription = "Phô N÷ ViÖt Nam"
pActivity.nGroupId = nil
pActivity.nVersion = nil
