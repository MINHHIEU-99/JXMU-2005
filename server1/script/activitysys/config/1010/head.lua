Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
pActivity = ActivityClass:new()
pActivity.nId = 1010
pActivity.szName = eventThang6.Name
pActivity.nStartDate = eventThang6.StartDate;--YY-mm-DD-HH-MM
pActivity.nEndDate =  eventThang6.EndDate;
pActivity.szDescription = "Sinh Nh�t V� L�m Truy�n K�"
pActivity.nGroupId = nil
pActivity.nVersion = nil
