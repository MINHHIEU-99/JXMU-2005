function main()	
	local nPreservedPlayerIndex = PlayerIndex;
	local nMemCount = GetTeamSize();
	
	if (nMemCount == 0 ) then
		AddSkillState(450, 30, 1,64800)
		Msg2Player("<color=green>chóc mõng b¹n nhËn ®­îc ®iÓm may m¾n x2 so víi sè ®iÓm may m¾n hiÖn t¹i duy tr× trong 1h.");
		return 0
	end

	
	for i = 1, nMemCount do
		PlayerIndex = GetTeamMember( i );
		
		AddSkillState(450, 30, 1, 64800)
		Msg2Player("<color=green>chóc mõng b¹n nhËn ®­îc ®iÓm may m¾n x2 so víi sè ®iÓm may m¾n hiÖn t¹i duy tr× trong 1h.");
	end;
	
	PlayerIndex = nPreservedPlayerIndex;
	return 0
end;