
Include("\\script\\lib\\awardtemplet.lua")



TASKHOACUC = 5319


function main(sel)
if GetLevel() < 40 then
		Say("Ng­êi ch¬i ch­a ®¹t cÊp 40 kh«ng thÓ sö dông event.", 0);
		return 1;
                        end
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate >= 20190331 then
		Say("Ho¹t ®éng ®· kÕt thóc, kh«ng thÓ sö dông.", 0);
		return 1;
	end;
	local nTask = GetTask(TASKHOACUC)
	if nTask > 300 then
		 Say("B¹n ®· sö dông ®ñ mèc 300 Hoa Cóc Cùc PhÈm kh«ng thÓ tiÕp tôc !")
		return 1
	end
	 SetTask(TASKHOACUC,GetTask(TASKHOACUC)+1)
AddOwnExp(200000)
Msg2Player("B¹n sö dông 1 <color=yellow>Hoa Cóc Cùc PhÈm.");
end

