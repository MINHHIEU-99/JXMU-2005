Include("\\script\\global\\mrt\\configserver\\configall.lua")
Include("\\script\\activitysys\\activity.lua")
pActivity = ActivityClass:new()
pActivity.nId = 1002
pActivity.szName = EventNgoiSaoTuyet.Name
pActivity.nStartDate = EventNgoiSaoTuyet.StartDate
pActivity.nEndDate = EventNgoiSaoTuyet.isEnable
pActivity.szDescription = "Ch�o m�ng phi�n b�n m�i - Phong V�n T�i Kh�i"
pActivity.nGroupId = nil
pActivity.nVersion = nil
