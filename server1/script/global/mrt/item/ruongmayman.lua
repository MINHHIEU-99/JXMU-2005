Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
-----------------------------------------------------
--------------------------------------------------------



function main()
dofile("\\script\\global\\mrt\\item\\ruongmayman.lua")
if CalcFreeItemCellCount() < 5 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
	local tbVnNewItemDropAward = {
	[1] = {
--{szName="Hu©n Ch­¬ng ChiÕn C«ng",tbProp={6,1,4050,1,1},nCount=1},
	},
	[2] = {
	{szName="M¶nh HKMP",tbProp={6,1,4914,1,0},nCount=1,nRate=5},
	{szName="M¶nh §éng S¸t",tbProp={6,1,4916,1,0},nCount=1,nRate=10},
	{szName="M¶nh An Bang",tbProp={6,1,4917,1,0},nCount=1,nRate=10},
	{szName="M¶nh §Þnh Quèc",tbProp={6,1,4915,1,0},nCount=1,nRate=13.3},
	{szName="M¶nh Hång ¶nh",tbProp={6,1,4918,1,0},nCount=1,nRate=13.3},
	{szName="M¶nh Nhu T×nh",tbProp={6,1,4919,1,0},nCount=1,nRate=13.3},
	{szName="M¶nh HiÖp Cèt ",tbProp={6,1,4920,1,0},nCount=1,nRate=13.3},
	},
	}
	tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"PhÇn th­ëng")	
	
	

end




