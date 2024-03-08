	IncludeLib("TONG")
tbClass = {
nCount = 10,
tbTong = {},
}
Include("\\script\\maps\\newworldscript_default.lua")
function tbClass:Init()
	
	local nTongID = TONG_GetFirstTong()
	local szTong 
	while (nTongID > 0) do
		local szName = TONG_GetName(nTongID)
		szTong = TONG_GetNextTong(nTongID)
		if not self.tbTong[szTong] then
			self.tbTong[szTong] = self.nCount
		end
		self.nCount = self.nCount + 1
	end
end
tbClass:Init()
function tbClass:GetTongCamp(szTong)
	local nCamp = self.tbTong[szTong]
	if not nCamp then
		self.tbTong[szTong] = self.nCount
		nCamp = self.nCount
		self.nCount = self.nCount + 1
	end
	return nCamp
end
function OnGoToBattle()
	local szTong = GetTong()
	if not szTong or szTong == "" then
		-- Say("Ng��i v� gia c� nh� ng��i th� sao c� th� v�o khu v�c n�y? Nhanh ch�ng t�m m�t bang h�i cho m�nh �i.")
		-- NewWorld(53,200*8,200*16)
		SetCurCamp(4)
		-- return 0
	else
		-- Msg2Player("Camp"..tbClass:GetTongCamp(szTong))
		SetTmpCamp(tbClass:GetTongCamp(szTong))
	end
		SetDeathScript("\\script\\maps\\ondeath.lua")
		SetProtectTime(18*3) -- script viet hoa By http://tranhba.com  ba gi�y b�o v� th�i gian 
		AddSkillState(963, 1, 0, 18*3) 
		SetFightState(1); 
		-- SetCurCamp(4)-- trang thai sat thu
		SetPunish(0)-- huy chet bi tru kinh nghiem
		SetPKFlag(1)	--��ɱģʽ
		ForbidChangePK(1);	--��ֹ����PKģʽ
		SetTaskTemp(200, 1)		--��ֹ������Ӫ
		SetLogoutRV(1);		--����������Ϊһ��������
		DisabledStall(1)	--��ֹ��̯
		ForbitTrade(1);		--��ֹ����
		DisabledUseTownP(1)	--��������׼��ϯ�ͱ����õ���ʹ�ûسǷ�
		ForbitStamina(1)	--��ֹ����
		SetCreateTeam(0); 
		return 1
end
function OnLeaveBattle()
		SetDeathScript("")
		TM_StopTimer(116);
		SetTmpCamp(0);
		SetCreateTeam(1); 
		SetFightState(0); 
		SetCurCamp(GetCamp())-- trang thai sat thu
		SetPunish(1)-- huy chet bi tru kinh nghiem
		SetPKFlag(0)	--��ɱģʽ
		ForbidChangePK(0);	--��ֹ����PKģʽ
		SetTaskTemp(200, 0)		--��ֹ������Ӫ
		DisabledStall(0)	--��ֹ��̯
		ForbitTrade(0);		--��ֹ����
		DisabledUseTownP(0)	--��������׼��ϯ�ͱ����õ���ʹ�ûسǷ�
		ForbitStamina(0)	--��ֹ����
end
function OnNewWorld(szParam)
	-- if GetLevel() < 50 or GetCamp() == 0 or GetCurCamp() == 0 then
		-- Say("C�p �� qu� th�p nh� ng��i m� c�ng mu�n tham gia hay sao? V� nh� luy�n t�p th�m �i")
		-- NewWorld(53,200*8,200*16)
		-- return
	-- end
	OnNewWorldDefault(szParam)
end
function OnLeaveWorld(szParam)
		OnLeaveWorldDefault(szParam)
		SetDeathScript("")
		TM_StopTimer(116);
		SetTmpCamp(0);
		SetCurCamp(GetCamp())-- trang thai sat thu
		SetPunish(1)-- huy chet bi tru kinh nghiem
		SetPKFlag(0)	--��ɱģʽ
		ForbidChangePK(0);	--��ֹ����PKģʽ
		SetTaskTemp(200, 0)		--��ֹ������Ӫ
		DisabledStall(0)	--��ֹ��̯
		ForbitTrade(0);		--��ֹ����
		DisabledUseTownP(0)	--��������׼��ϯ�ͱ����õ���ʹ�ûسǷ�
		ForbitStamina(0)	--��ֹ����
		SetFightState(0); 
end