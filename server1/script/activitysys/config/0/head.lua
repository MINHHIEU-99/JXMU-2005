Include("script\\global\\mrt\\configserver\\configall.lua")
Include("\\script\\activitysys\\activity.lua")
pActivity = ActivityClass:new()
pActivity.nId = 0
pActivity.szName = "VoLamChuyenSinh"
pActivity.nStartDate = JXMU.StartDate
pActivity.nEndDate = JXMU.EndDate
pActivity.szDescription = "JXMU"
pActivity.nGroupId = 8
pActivity.nVersion = 2
