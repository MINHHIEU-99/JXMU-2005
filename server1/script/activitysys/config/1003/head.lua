Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
pActivity = ActivityClass:new()
pActivity.nId = 1003
pActivity.szName = VuLanBaoHieu.Name
pActivity.nStartDate = VuLanBaoHieu.StartDate
pActivity.nEndDate = VuLanBaoHieu.EndDate
pActivity.szDescription = "Vu Lan B∏o Hi’u"
pActivity.nGroupId = nil
pActivity.nVersion = nil
