---------------Youtube PGaming---------------
IncludeLib("SETTING");
-----------------------------------------------------------
nTSK_USE_TIMES_LIMIT	 = 5757
nTSK_USE_COUNT_LIMIT	 = 5756
nUSE_COUNT_LIMIT	 = 5
-------------------------------
--function main()

	--local nDate = tonumber(GetLocalDate("%d"))
	--if (GetTask(nTSK_USE_TIMES_LIMIT) ~= nDate) then
	--	SetTask(nTSK_USE_TIMES_LIMIT, nDate)
	--	SetTask(nTSK_USE_COUNT_LIMIT, 0)
	--end
	
	--if (GetTask(nTSK_USE_COUNT_LIMIT) >= nUSE_COUNT_LIMIT) then
	--	Talk(1,"","Mçi Ngµy ChØ ®­îc sö dông 5 Tiªn Th¶o Lé")
	--	return 1
--	end
	--	AddSkillState(440, 1, 1, 64800);
	--	SetTask(nTSK_USE_COUNT_LIMIT, GetTask(nTSK_USE_COUNT_LIMIT) + 1)
--end

function main()
	if (GetSkillState(440) == 1) then
			Say("Thêi gian Tiªn Th¶o Lé ( 60 phót ) vÉn cßn hiÖu lùc nªn kh«ng thÓ sö dông tiÕp .", 0)
		return 1	
		else
			AddSkillState(440, 1, 1, 64800 * 1);
	end
end;