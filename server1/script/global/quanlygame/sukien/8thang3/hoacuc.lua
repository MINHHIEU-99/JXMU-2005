
Include("\\script\\lib\\awardtemplet.lua")



TASKHOACUC = 5319


function main(sel)
if GetLevel() < 40 then
		Say("Ng��i ch�i ch�a ��t c�p 40 kh�ng th� s� d�ng event.", 0);
		return 1;
                        end
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate >= 20190331 then
		Say("Ho�t ��ng �� k�t th�c, kh�ng th� s� d�ng.", 0);
		return 1;
	end;
	local nTask = GetTask(TASKHOACUC)
	if nTask > 300 then
		 Say("B�n �� s� d�ng �� m�c 300 Hoa C�c C�c Ph�m kh�ng th� ti�p t�c !")
		return 1
	end
	 SetTask(TASKHOACUC,GetTask(TASKHOACUC)+1)
AddOwnExp(200000)
Msg2Player("B�n s� d�ng 1 <color=yellow>Hoa C�c C�c Ph�m.");
end

