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
local szTitle =  "S� d�ng nh�n ���c v�ng s�ng si�u ��p"

local tbOpt = 
{
{"Mua V�ng 1", muavong1},
{"Mua V�ng 2", muavong2},
{"Mua V�ng 3", muavong3},
{"Mua V�ng 4", muavong4},
{"Mua V�ng 5", muavong5},
{"Mua V�ng 6", muavong6},

{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end

function muavong1()  --1 ngay la 1555200
if GetTask(2626) == 6  or  GetTask(2626) == 5 or GetTask(2626) == 4 or GetTask(2626) == 3 or GetTask(2626) == 2 then
	Talk(1,"","Kh�ng th� mua ch�ng ch�o c�c hi�u �ng v�ng s�ng") 
	return 
	end
if 	GetSkillState(1534) >= 1 then
	Talk(1,"","Max") 
	return 
	end 
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 50) then 
	Talk(1,"","C�n c� 50 xu �� mua v�ng n�y") 
	return 
	end 
	ConsumeEquiproomItem(50,4,417,1,1)
	Talk(1,"","Mua th�nh c�ng th�t tuy�t v�i.") 
	PlayerFunLib:AddSkillState(1541,1,3,1555200*150,1)
	    ConsumeEquiproomItem(1,6,1,4566,1)
 SetTask(2626,1)
end

function muavong2()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then 
	Talk(1,"","C�n c� 100 xu �� mua v�ng n�y") 
	return 
	end 
if GetTask(2626) == 6  or GetTask(2626) == 5 or GetTask(2626) == 4 or GetTask(2626) == 3 or GetTask(2626) == 2 then
	Talk(1,"","Kh�ng th� mua ch�ng ch�o c�c hi�u �ng v�ng s�ng") 
	return 
	end
	
if 	GetSkillState(1541) > 0 then
	ConsumeEquiproomItem(100,4,417,1,1)
	Talk(1,"","Mua th�nh c�ng th�t tuy�t v�i.")
	RemoveSkillState(1541)
	PlayerFunLib:AddSkillState(1532,1,3,1555200*150,1)
SetTask(2626,2)
	 ConsumeEquiproomItem(1,6,1,4566,1)
	 
	else
		Talk(1,"","Ph�i mua v�ng s� 1 m�i c� th� n�ng c�p v�ng s� 2 n�y") 
	return 
	end 
end

function muavong3()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 200) then 
	Talk(1,"","C�n c� 200 xu �� mua v�ng n�y") 
	return 
	end 
if GetTask(2626) == 6  or GetTask(2626) == 5 or GetTask(2626) == 4 or GetTask(2626) == 3 or GetTask(2626) == 1 then
	Talk(1,"","Kh�ng th� mua ch�ng ch�o c�c hi�u �ng v�ng s�ng") 
	return 
	end
if 	GetSkillState(1532) > 0 then
	ConsumeEquiproomItem(200,4,417,1,1)
	Talk(1,"","Mua th�nh c�ng th�t tuy�t v�i.")
	RemoveSkillState(1532)
	PlayerFunLib:AddSkillState(1534,1,3,1555200*150,1)
	PlayerFunLib:AddSkillState(1541,1,3,1555200*150,1)

		    ConsumeEquiproomItem(1,6,1,4566,1)
SetTask(2626,3)
	else
		Talk(1,"","Ph�i mua v�ng s� 2 m�i c� th� n�ng c�p v�ng s� 3 n�y") 
	return 
	end 
end

function muavong4()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 300) then 
	Talk(1,"","C�n c� 300 xu �� mua v�ng n�y") 
	return 
	end 
	if GetTask(2626) == 6  or GetTask(2626) == 5 or GetTask(2626) == 4 or GetTask(2626) == 1 or GetTask(2626) == 2 then
	Talk(1,"","Kh�ng th� mua ch�ng ch�o c�c hi�u �ng v�ng s�ng") 
	return 
	end
if 	GetSkillState(1534) > 0 then
	ConsumeEquiproomItem(300,4,417,1,1)
	Talk(1,"","Mua th�nh c�ng th�t tuy�t v�i.")
	RemoveSkillState(1534)
		RemoveSkillState(1541)

	PlayerFunLib:AddSkillState(1558,1,3,1555200*150,1)
				PlayerFunLib:AddSkillState(1559,1,3,1555200*150,1)
	PlayerFunLib:AddSkillState(1544,1,3,1555200*150,1)

		    ConsumeEquiproomItem(1,6,1,4566,1)
SetTask(2626,4)
	else
		Talk(1,"","Ph�i mua v�ng s� 3 m�i c� th� n�ng c�p v�ng s� 4 n�y") 
	return 
	end 
end

function muavong5()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 400) then 
	Talk(1,"","C�n c� 400 xu �� mua v�ng n�y") 
	return 
	end 
	if  GetTask(2626) == 6  or GetTask(2626) == 5 or GetTask(2626) == 3 or GetTask(2626) == 1 or GetTask(2626) == 2 then
	Talk(1,"","Kh�ng th� mua ch�ng ch�o c�c hi�u �ng v�ng s�ng") 
	return 
	end
if 	GetSkillState(1558) > 0 then
	ConsumeEquiproomItem(400,4,417,1,1)
	Talk(1,"","Mua th�nh c�ng th�t tuy�t v�i.")
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
		Talk(1,"","Ph�i mua v�ng s� 4 m�i c� th� n�ng c�p v�ng s� 5 n�y") 
	return 
	end 
end


function muavong6()  --1 ngay la 1555200
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then 
	Talk(1,"","C�n c� 100 xu �� mua v�ng n�y") 
	return 
	end 
	if GetTask(2626) == 6  or GetTask(2626) == 3 or GetTask(2626) == 1 or GetTask(2626) == 2  or GetTask(2626) == 4 then
	Talk(1,"","Kh�ng th� mua ch�ng ch�o c�c hi�u �ng v�ng s�ng") 
	return 
	end
if 	GetSkillState(1562) > 0 or GetSkillState(1568) > 0  then
	ConsumeEquiproomItem(100,4,417,1,1)
	Talk(1,"","Mua th�nh c�ng th�t tuy�t v�i.")
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
		Talk(1,"","Ph�i mua v�ng s� 5 m�i c� th� n�ng c�p v�ng s� 6 n�y") 
	return 
	end 
end

