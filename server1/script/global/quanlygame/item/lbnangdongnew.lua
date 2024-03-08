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
dofile("script/global/quanlygame/item/lbnangdongnew.lua")
--if GetAccount() ~= "adminvltruyenky" then
--Say("§ang cËp nhËt l¹i")
--return 1
--end
	local G,D,P,nLevel = GetItemProp(nItemIdx);
	if (G ~= 6) then
		return 1;
	end
	if P == 4498 then 
SetTask(5110,GetTask(5110)+10)
Msg2Player("<color=green>Chóc mõng ®¹i hiÖp nhËn ®­îc<color=pink> 10 ®iÓm n¨ng ®éng.")	
end
	if P == 4499 then 
SetTask(5110,GetTask(5110)+20)
Msg2Player("<color=green>Chóc mõng ®¹i hiÖp nhËn ®­îc<color=pink> 20 ®iÓm n¨ng ®éng.")	
end
	if P == 4500 then 
SetTask(5110,GetTask(5110)+30)
Msg2Player("<color=green>Chóc mõng ®¹i hiÖp nhËn ®­îc<color=pink> 30 ®iÓm n¨ng ®éng.")	
end
	if P == 4501 then 
SetTask(5110,GetTask(5110)+50)
Msg2Player("<color=green>Chóc mõng ®¹i hiÖp nhËn ®­îc<color=pink> 50 ®iÓm n¨ng ®éng.")	
end
	if P == 4502 then 
SetTask(5110,GetTask(5110)+100)
Msg2Player("<color=green>Chóc mõng ®¹i hiÖp nhËn ®­îc<color=pink> 100 ®iÓm n¨ng ®éng.")	
end
end

