Include("\\script\\global\\judgeoffline_limit.lua");
Include("\\script\\missions\\basemission\\lib.lua")

	function main()	
	local nPreservedPlayerIndex = PlayerIndex;
	local nMemCount = GetTeamSize();
		if GetSkillState(440) == 1 then 
					Msg2Player("<color=green>cC�c h� v�n th�i gian t� hi�u �ng Ti�n th�o l�, kh�ng th� d�ng");
		return 1
		end
	if (nMemCount == 0 ) then
		AddSkillState(982, 1, 1, 64800);
			Msg2Player("<color=green>ch�c m�ng b�n nh�n ���c �i�m kinh nghi�m x2 so v�i s� �i�m hi�n t�i duy tr� trong 1h.");
		return 0
	end

	
	for i = 1, nMemCount do
		PlayerIndex = GetTeamMember( i );	
	if GetSkillState(981) == 1 then 
			local str = "<color=green>Th�nh vi�n <color=yellow>"..GetName().."<color> trong t� ��i b�n �ang s� d�ng n�n vui v� n�n kh�ng th� s� d�ng chung n�n h�nh ph�c.c�c th�nh vi�n kh�c ���c x2.<color>."
			Msg2Team(str)
		return
else		
		AddSkillState(982, 1, 1, 64800);
		Msg2Player("<color=green>ch�c m�ng b�n nh�n ���c �i�m kinh nghi�m x2 so v�i s� �i�m hi�n t�i duy tr� trong 1h.");
	end
	end
	
	PlayerIndex = nPreservedPlayerIndex;
	return 0
end;