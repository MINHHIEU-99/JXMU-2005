Include("\\script\\activitysys\\g_activity.lua") 
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua") 


--  --  --  - c�c b� thay ��i l��ng ��nh ngh�a b�t ��u --  --  --  --  - 
--  --  --  - c�c b� thay ��i l��ng ��nh ngh�a k�t th�c --  --  --  --  - 

local tbConfig = {} 
tbConfig[1] = --   m�t chi ti�t 
{ 
nId = 1, 
szMessageType = "nil", 
szName = "Test", 
nStartDate = nil, 
nEndDate = nil, 
tbMessageParam = {nil}, 
tbCondition = 
{ 
{"lib:CheckItemInBag", {"return {szName = \" n�ng t�nh X�o Kh�c L�c \",tbProp = {6,1,445,1,0,0},}",1,"T�i li�u ch�a �� "} }, 
}, 
tbActition = 
{ 
{"lib:ConsumeEquiproomItem", {"return {szName = \" n�ng t�nh X�o Kh�c L�c \",tbProp = {6,1,445,1,0,0},}",1} }, 
}, 
} 
G_ACTIVITY:RegisteActivityDetailConfig(1, tbConfig) 
