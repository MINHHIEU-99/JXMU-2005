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
dofile("\\script\\global\\mrt\\item\\ruonghiepcot.lua")
if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end	
				if ConsumeEquiproomItem(1, 6,1, 4922,-1)>0 then
						tbAwardTemplet:GiveAwardByList({{szName="",tbProp={0,random(186,189)},nCount=1,nQuality=1},}, "test", 1);
				end
		return 1
end