--�η���Ӫ��Trap�㴥���Ľű�
IncludeLib("BATTLE");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\seizegrain\\head.lua")

function main()
	--������ڱ����׶�ʱ,��Ҳ����ߵ��Է��������ȥ�����ԻὫ����ӵ���Ӫ��
	if(GetCurCamp() == 2) then
		if (BT_GetData(PL_PARAM3) > 0) then
			Msg2Player("B�n �ang v�n chuy�n Bao l��ng, kh�ng th� quay v� H�u doanh?")
			file = GetMissionS(2)
			x,y = bt_getadata(file)
			SetPos(floor(x/32), floor(y/32))
		else
			SetPos(GetMissionV(MS_HOMEIN_X2), GetMissionV(MS_HOMEIN_Y2))
			SetFightState(0)
			BT_SetData( PL_LASTDEATHTIME, GetGameTime() )
		end
	elseif (GetCurCamp() == 1) then
		Msg2Player("Ph�a tr��c s�n c�c ch�p tr�ng, ch�c ch�n c� ph�c binh! B�n kh�ng n�n t� ti�n x�ng l�n!")
		SetFightState(1)
		SetPunish(0);
	AddSkillState(963, 1, 0, 18*3)
		ForbidEnmity( 1 )
	
		--SetPKFlag(1)
	end;
end;

