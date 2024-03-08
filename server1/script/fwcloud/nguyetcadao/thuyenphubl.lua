Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")
IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\translife.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("TASKSYS")

------Tung Huyen

function main()

	dofile("script/fwcloud/nguyetcadao/thuyenphubl.lua");
	xoavong()
	local tbOpt = {}
	tinsert(tbOpt, "Lªn thuyÒn/join")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("ChuyÕn thuyÒn ®Şnh mÖnh ®Õn ®¶o kho b¸u NguyÖt Ca §¶o !", getn(tbOpt), tbOpt)	
end

function xoavong()
for i = 1501, 1565 do
	RemoveSkillState(i)
end
end

function join()
local nXu = CalcEquiproomItemCount(4,417,1,-1)
if nXu > 0 then
Say("Ra kh¬i dÔ gÆp c­íp biÓn vui lßng ®Ó tiÒn ®ång ë nhµ !")
return
end
	SetFightState(0)
NewWorld(984, 1512, 3219)
end