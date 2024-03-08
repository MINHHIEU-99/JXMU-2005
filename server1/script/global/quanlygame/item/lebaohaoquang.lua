-------------------------------------------------Script*By* nguyenkhai-----------------------------------------
IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\translife.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("TASKSYS")

function main(nItemIdx)  --task 
dofile("script/global/quanlygame/item/lebaohaoquang.lua")
local szTitle =  "Sö dông nhËn ®­îc vßng s¸ng siªu ®Ñp"

local tbOpt = 
{
{"Mua Vßng 1", muavong1},
{"Mua Vßng 2", muavong2},
{"Mua Vßng 3", muavong3},
{"Mua Vßng 4", muavong4},
{"Mua Vßng 5", muavong5},
{"Mua Vßng 6", muavong6},

{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end

function muavong1()  --1 ngay la 1555200
if GetTask(2626) == 6  or  GetTask(2626) == 5 or GetTask(2626) == 4 or GetTask(2626) == 3 or GetTask(2626) == 2 then
	Talk(1,"","Kh«ng thÓ mua chßng chÐo c¸c hiÖu øng vßng s¸ng") 
	return 
	end
if 	GetSkillState(1534) >= 1 then
	Talk(1,"","Max") 
	return 
	end 
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 50) then 
	Talk(1,"","CÇn cã 50 xu ®Ó mua vßng nµy") 
	return 
	end 
	ConsumeEquiproomItem(50,4,417,1,1)
	Talk(1,"","Mua thµnh c«ng thËt tuyÖt vêi.") 
	PlayerFunLib:AddSkillState(1541,1,3,1555200*150,1)
	    ConsumeEquiproomItem(1,6,1,4566,1)
 SetTask(2626,1)
end

function muavong2()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then 
	Talk(1,"","CÇn cã 100 xu ®Ó mua vßng nµy") 
	return 
	end 
if GetTask(2626) == 6  or GetTask(2626) == 5 or GetTask(2626) == 4 or GetTask(2626) == 3 or GetTask(2626) == 2 then
	Talk(1,"","Kh«ng thÓ mua chßng chÐo c¸c hiÖu øng vßng s¸ng") 
	return 
	end
	
if 	GetSkillState(1541) > 0 then
	ConsumeEquiproomItem(100,4,417,1,1)
	Talk(1,"","Mua thµnh c«ng thËt tuyÖt vêi.")
	RemoveSkillState(1541)
	PlayerFunLib:AddSkillState(1532,1,3,1555200*150,1)
SetTask(2626,2)
	 ConsumeEquiproomItem(1,6,1,4566,1)
	 
	else
		Talk(1,"","Ph¶i mua vßng sè 1 míi cã thÓ n©ng cÊp vßng sè 2 nµy") 
	return 
	end 
end

function muavong3()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 200) then 
	Talk(1,"","CÇn cã 200 xu ®Ó mua vßng nµy") 
	return 
	end 
if GetTask(2626) == 6  or GetTask(2626) == 5 or GetTask(2626) == 4 or GetTask(2626) == 3 or GetTask(2626) == 1 then
	Talk(1,"","Kh«ng thÓ mua chßng chÐo c¸c hiÖu øng vßng s¸ng") 
	return 
	end
if 	GetSkillState(1532) > 0 then
	ConsumeEquiproomItem(200,4,417,1,1)
	Talk(1,"","Mua thµnh c«ng thËt tuyÖt vêi.")
	RemoveSkillState(1532)
	PlayerFunLib:AddSkillState(1534,1,3,1555200*150,1)
	PlayerFunLib:AddSkillState(1541,1,3,1555200*150,1)

		    ConsumeEquiproomItem(1,6,1,4566,1)
SetTask(2626,3)
	else
		Talk(1,"","Ph¶i mua vßng sè 2 míi cã thÓ n©ng cÊp vßng sè 3 nµy") 
	return 
	end 
end

function muavong4()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 300) then 
	Talk(1,"","CÇn cã 300 xu ®Ó mua vßng nµy") 
	return 
	end 
	if GetTask(2626) == 6  or GetTask(2626) == 5 or GetTask(2626) == 4 or GetTask(2626) == 1 or GetTask(2626) == 2 then
	Talk(1,"","Kh«ng thÓ mua chßng chÐo c¸c hiÖu øng vßng s¸ng") 
	return 
	end
if 	GetSkillState(1534) > 0 then
	ConsumeEquiproomItem(300,4,417,1,1)
	Talk(1,"","Mua thµnh c«ng thËt tuyÖt vêi.")
	RemoveSkillState(1534)
		RemoveSkillState(1541)

	PlayerFunLib:AddSkillState(1558,1,3,1555200*150,1)
				PlayerFunLib:AddSkillState(1559,1,3,1555200*150,1)
	PlayerFunLib:AddSkillState(1544,1,3,1555200*150,1)

		    ConsumeEquiproomItem(1,6,1,4566,1)
SetTask(2626,4)
	else
		Talk(1,"","Ph¶i mua vßng sè 3 míi cã thÓ n©ng cÊp vßng sè 4 nµy") 
	return 
	end 
end

function muavong5()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 400) then 
	Talk(1,"","CÇn cã 400 xu ®Ó mua vßng nµy") 
	return 
	end 
	if  GetTask(2626) == 6  or GetTask(2626) == 5 or GetTask(2626) == 3 or GetTask(2626) == 1 or GetTask(2626) == 2 then
	Talk(1,"","Kh«ng thÓ mua chßng chÐo c¸c hiÖu øng vßng s¸ng") 
	return 
	end
if 	GetSkillState(1558) > 0 then
	ConsumeEquiproomItem(400,4,417,1,1)
	Talk(1,"","Mua thµnh c«ng thËt tuyÖt vêi.")
	RemoveSkillState(1558)
		RemoveSkillState(1559)
		RemoveSkillState(1544)
	PlayerFunLib:AddSkillState(1568,1,3,1555200*150,1)
	PlayerFunLib:AddSkillState(1569,1,3,1555200*150,1)
	PlayerFunLib:AddSkillState(1562,1,3,1555200*150,1)
	PlayerFunLib:AddSkillState(1563,1,3,1555200*150,1)
		PlayerFunLib:AddSkillState(1548,1,3,1555200*150,1)
		    ConsumeEquiproomItem(1,6,1,4566,1)
SetTask(2626,5)
	else
		Talk(1,"","Ph¶i mua vßng sè 4 míi cã thÓ n©ng cÊp vßng sè 5 nµy") 
	return 
	end 
end


function muavong6()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then 
	Talk(1,"","CÇn cã 100 xu ®Ó mua vßng nµy") 
	return 
	end 
	if GetTask(2626) == 6  or GetTask(2626) == 3 or GetTask(2626) == 1 or GetTask(2626) == 2  or GetTask(2626) == 4 then
	Talk(1,"","Kh«ng thÓ mua chßng chÐo c¸c hiÖu øng vßng s¸ng") 
	return 
	end
if 	GetSkillState(1562) > 0 or GetSkillState(1568) > 0  then
	ConsumeEquiproomItem(100,4,417,1,1)
	Talk(1,"","Mua thµnh c«ng thËt tuyÖt vêi.")
	RemoveSkillState(1558)
		RemoveSkillState(1559)
		RemoveSkillState(1544)
	--PlayerFunLib:AddSkillState(1568,1,3,1555200*150,1)
--	PlayerFunLib:AddSkillState(1569,1,3,1555200*150,1)
--	PlayerFunLib:AddSkillState(1562,1,3,1555200*150,1)
--	PlayerFunLib:AddSkillState(1563,1,3,1555200*150,1)
		--PlayerFunLib:AddSkillState(1548,1,3,1555200*150,1)
			PlayerFunLib:AddSkillState(1562,1,3,1555200*150,1)  --212  --6
	PlayerFunLib:AddSkillState(1563,1,3,1555200*150,1) --213 --18
			PlayerFunLib:AddSkillState(1548,1,3,1555200*150,1)  --246--23
		PlayerFunLib:AddSkillState(1557,1,3,1555200*150,1)  --251  33
		    ConsumeEquiproomItem(1,6,1,4566,1)
SetTask(2626,6)
	else
		Talk(1,"","Ph¶i mua vßng sè 5 míi cã thÓ n©ng cÊp vßng sè 6 nµy") 
	return 
	end 
end

