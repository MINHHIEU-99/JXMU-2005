
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")


TASKHOLO = 5345
TASKBANHKEM = 5346
TASKMUTNHO = 5347
TASKMUTTO = 5348


function main(sel)
dofile("script/global/quanlygame/sukien/quoctethieunhi/keoholo.lua");
if GetLevel() < 10 then
	Say("Ng­êi ch¬i ch­a ®¹t cÊp 10 kh«ng thÓ sö dông event.", 0);
		return 1;
          end
		  		local checkexp = GetExpPercent()
if checkexp < 0 then
Say("HiÖn t¹i ®iÓm kinh nghiÖm bÞ ©m chØ cã thÓ sö dông bµn nh­îc råi h·y tiÕp tôc.")
return 1
end
	--local nDate = tonumber(GetLocalDate("%Y%m%d"));
	--if nDate >= 20190517 then
		--Say("Event ®· hÕt, kh«ng thÓ sö dông.", 0);
		--return 1;
	--end;
	local nTask = GetTask(5345)
	if nTask >= 300 then
		 Say("hahaha.300 lµ ®ñ råi.")
		return 1
	end
SetTask(5345,GetTask(5345)+1)
StackExp(500000)
end
