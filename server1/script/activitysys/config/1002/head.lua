Include("\\script\\global\\mrt\\configserver\\configall.lua")
Include("\\script\\activitysys\\activity.lua")
pActivity = ActivityClass:new()
pActivity.nId = 1002
pActivity.szName = EventNgoiSaoTuyet.Name
pActivity.nStartDate = EventNgoiSaoTuyet.StartDate
pActivity.nEndDate = EventNgoiSaoTuyet.isEnable
pActivity.szDescription = "Chµo mõng phiªn b¶n míi - Phong V©n T¸i Khëi"
pActivity.nGroupId = nil
pActivity.nVersion = nil
