

IncludeLib("SETTING"); --����SETTING�ű�ָ���

TLL_TASK = 3921
TLL_LIMIT= 1


function main()
if (GetTeamSize() > 0) then
			Msg2Player("<color=green>Kh�ng th� s� d�ng cho t� ��i xin h�y r�i nh�m.");
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
		--Say(format("M�t ng�y ch� c� th� s� d�ng 1 n�n vui v�", TLL_LIMIT), 0)
		--return 1;
	--end

	if GetSkillState(982) == 1 then 
		Say("C�c h� v�n th�i gian t� hi�u �ng N�n H�nh Ph�c, kh�ng th� d�ng c�ng l�c v�i n�n vui v�  xin h�y ch� ��i cho ��n l�c h�t t�c d�ng.!", 0, "Ta bi�t r�i!/OnCancel")
		return 1
	else
		nUseTimes = nUseTimes + 1;
		SetBitTask(TLL_TASK, 0, 1,  nUseTimes);
		SetBitTask(TLL_TASK, 1, 24, nLastUseDate);
		AddSkillState(981, 1, 1, 64800, 1);
					Msg2Player("<color=green>ch�c m�ng b�n s� d�ng th�nh c�ng n�n vui v�.");
		return 0
	end
end

function OnCancel() return end