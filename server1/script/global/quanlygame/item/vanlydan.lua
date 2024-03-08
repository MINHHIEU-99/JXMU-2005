--Event cau ca bang hoi
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\quanlygame\\sukien\\cauca\\head.lua")
IncludeLib("ITEM")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")



function main(nItemIdx)
dofile("script/global/quanlygame/item/vanlydan.lua")
SetTask(5210,100)
SetTask(5209,100)
Say("<color=green>Chóc mõng ®¹i hiÖp nhËn ®­îc t¨ng giíi h¹n sè lÇn sö dông trÊn ph¸i linh ®¬n linh d­îc.\n<color=pink>L­u ý mçi nh©n vËt chØ nªn sö dông 1 viªn duy nhÊt sö dông nhiÒu kh«ng ®­îc céng dån.")	
end

