

IncludeLib("SETTING"); --ÔØÈëSETTING½Å±¾Ö¸Áî¿â

TLL_TASK = 3921
TLL_LIMIT= 1


function main()
if (GetTeamSize() > 0) then
			Msg2Player("<color=green>Kh«ng thÓ sö dông cho tæ ®éi xin h·y rêi nhãm.");
		return 1;
	end

	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(TLL_TASK, 0, 8) 
	local nLastUseDate = GetBitTask(TLL_TASK, 1, 24) 
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	--if (nUseTimes >= TLL_LIMIT) then
		--Say(format("Mét ngµy chØ cã thÓ sö dông 1 nÕn vui vÎ", TLL_LIMIT), 0)
		--return 1;
	--end

	if GetSkillState(982) == 1 then 
		Say("C¸c h¹ vÉn thêi gian tõ hiÖu øng NÕn H¹nh Phóc, kh«ng thÓ dïng cïng lóc víi nÕn vui vÎ  xin h·y chê ®îi cho ®Õn lóc hÕt t¸c dông.!", 0, "Ta biÕt råi!/OnCancel")
		return 1
	else
		nUseTimes = nUseTimes + 1;
		SetBitTask(TLL_TASK, 0, 1,  nUseTimes);
		SetBitTask(TLL_TASK, 1, 24, nLastUseDate);
		AddSkillState(981, 1, 1, 64800, 1);
					Msg2Player("<color=green>chóc mõng b¹n sö dông thµnh c«ng nÕn vui vÎ.");
		return 0
	end
end

function OnCancel() return end