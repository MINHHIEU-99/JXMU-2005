--Include("\\script\\activitysys\\playerfunlib.lua")
--function main()
--	PlayerFunLib:AddSkillState(1518,2,3,5005200,1)--18*60*60=46656000 30Ìì
--	PlayerFunLib:AddSkillState(1518,2,3,5005200,1)--18*60*60=46656000 30Ìì
--	WriteLog(date("%Y%m%d %H%M%S").."\t".."Sö dông Cµn Kh«n Song TuyÖt Béi".."\t".. GetAccount().."\t"..GetName())
--end

IncludeLib("SETTING"); --ÔØÈëSETTING½Å±¾Ö¸Áî¿â

function main1()
Say("bao tri item")
return 1
end

function main()
	if GetSkillState(1519) == 1 then 
		Say("C¸c h¹ vÉn thêi gian tõ hiÖu øng N÷ Nhi Hång, kh«ngthÓ dïng nhiÒu b×nh cïng lóc xin h·y chê ®îi cho ®Õn hÕt t¸c dông.!", 0, "Ta biÕt råi!/OnCancel")
		return 1
	else
		AddSkillState(1519, 1, 1, 18*60*60*3, 1);
		return 0
	end
end

function OnCancel() return end