
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")


TASKHOLO = 5345
TASKBANHKEM = 5346
TASKMUTNHO = 5347
TASKMUTTO = 5348


function main(sel)
dofile("script/global/quanlygame/sukien/quoctethieunhi/keoholo.lua");
if GetLevel() < 10 then
	Say("Ng��i ch�i ch�a ��t c�p 10 kh�ng th� s� d�ng event.", 0);
		return 1;
          end
		  		local checkexp = GetExpPercent()
if checkexp < 0 then
Say("Hi�n t�i �i�m kinh nghi�m b� �m ch� c� th� s� d�ng b�n nh��c r�i h�y ti�p t�c.")
return 1
end
	--local nDate = tonumber(GetLocalDate("%Y%m%d"));
	--if nDate >= 20190517 then
		--Say("Event �� h�t, kh�ng th� s� d�ng.", 0);
		--return 1;
	--end;
	local nTask = GetTask(5345)
	if nTask >= 300 then
		 Say("hahaha.300 l� �� r�i.")
		return 1
	end
SetTask(5345,GetTask(5345)+1)
StackExp(500000)
end
