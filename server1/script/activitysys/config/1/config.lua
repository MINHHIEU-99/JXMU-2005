Include("\\script\\activitysys\\g_activity.lua") 
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua") 


--  --  --  - côc bé thay ®æi l­îng ®Þnh nghÜa b¾t ®Çu --  --  --  --  - 
--  --  --  - côc bé thay ®æi l­îng ®Þnh nghÜa kÕt thóc --  --  --  --  - 

local tbConfig = {} 
tbConfig[1] = --   mét chi tiÕt 
{ 
nId = 1, 
szMessageType = "nil", 
szName = "Test", 
nStartDate = nil, 
nEndDate = nil, 
tbMessageParam = {nil}, 
tbCondition = 
{ 
{"lib:CheckItemInBag", {"return {szName = \" nång t×nh X¶o Kh¾c Lùc \",tbProp = {6,1,445,1,0,0},}",1,"Tµi liÖu ch­a ®ñ "} }, 
}, 
tbActition = 
{ 
{"lib:ConsumeEquiproomItem", {"return {szName = \" nång t×nh X¶o Kh¾c Lùc \",tbProp = {6,1,445,1,0,0},}",1} }, 
}, 
} 
G_ACTIVITY:RegisteActivityDetailConfig(1, tbConfig) 
