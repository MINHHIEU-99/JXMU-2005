function main()	
	local nPreservedPlayerIndex = PlayerIndex;
	local nMemCount = GetTeamSize();
	
	if (nMemCount == 0 ) then
		AddSkillState(450, 30, 1,64800)
		Msg2Player("<color=green>ch�c m�ng b�n nh�n ���c �i�m may m�n x2 so v�i s� �i�m may m�n hi�n t�i duy tr� trong 1h.");
		return 0
	end

	
	for i = 1, nMemCount do
		PlayerIndex = GetTeamMember( i );
		
		AddSkillState(450, 30, 1, 64800)
		Msg2Player("<color=green>ch�c m�ng b�n nh�n ���c �i�m may m�n x2 so v�i s� �i�m may m�n hi�n t�i duy tr� trong 1h.");
	end;
	
	PlayerIndex = nPreservedPlayerIndex;
	return 0
end;