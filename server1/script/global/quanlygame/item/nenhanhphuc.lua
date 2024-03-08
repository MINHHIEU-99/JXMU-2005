Include("\\script\\global\\judgeoffline_limit.lua");
Include("\\script\\missions\\basemission\\lib.lua")

	function main()	
	local nPreservedPlayerIndex = PlayerIndex;
	local nMemCount = GetTeamSize();
		if GetSkillState(440) == 1 then 
					Msg2Player("<color=green>cC¸c h¹ vÉn thêi gian tõ hiÖu øng Tiªn th¶o lé, kh«ng thÓ dïng");
		return 1
		end
	if (nMemCount == 0 ) then
		AddSkillState(982, 1, 1, 64800);
			Msg2Player("<color=green>chóc mõng b¹n nhËn ®­îc ®iÓm kinh nghiÖm x2 so víi sè ®iÓm hiÖn t¹i duy tr× trong 1h.");
		return 0
	end

	
	for i = 1, nMemCount do
		PlayerIndex = GetTeamMember( i );	
	if GetSkillState(981) == 1 then 
			local str = "<color=green>Thµnh viªn <color=yellow>"..GetName().."<color> trong tæ ®éi b¹n ®ang sö dông nÕn vui vÎ nªn kh«ng thÓ sö dông chung nÕn hµnh phóc.c¸c thµnh viªn kh¸c ®­îc x2.<color>."
			Msg2Team(str)
		return
else		
		AddSkillState(982, 1, 1, 64800);
		Msg2Player("<color=green>chóc mõng b¹n nhËn ®­îc ®iÓm kinh nghiÖm x2 so víi sè ®iÓm hiÖn t¹i duy tr× trong 1h.");
	end
	end
	
	PlayerIndex = nPreservedPlayerIndex;
	return 0
end;