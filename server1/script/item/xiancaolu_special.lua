--��Ч�ɲ�¶
--8Сʱ����˫��
IncludeLib("SETTING"); --����SETTING�ű�ָ���

--function main()
--	if (GetNpcExpRate() <= 100) then
		AddSkillState(440, 1, 1, 64800 * 8);
--	else
--		Say("Th�t ��ng ti�c, t�m th�i kh�ng s?d�ng ���c Ti�n Th�o L?��c bi�t.", 0)
--		return 1;
--	end;
--	return 0;
--end;

function main()
	if (GetSkillState(440) == 1) then
			Say("Hieu luc Tien Thao Lo Dac Biet van con , nen khong su dung duoc them .", 0)
		return 1	
		else
			AddSkillState(440, 1, 1, 64800 * 8);
	end
end;