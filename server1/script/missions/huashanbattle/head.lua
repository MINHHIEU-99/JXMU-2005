	IncludeLib("TONG")
tbClass = {
nCount = 10,
tbTong = {},
}
tbHuaShanHWUID = {

}
MAX_PLAYER_PER_PC  = 1
Include("\\script\\global\\hardwareid.lua")
Include("\\script\\maps\\newworldscript_default.lua")
function tbClass:Init()
	
	local nTongID = TONG_GetFirstTong()
	local szTong 
	while (nTongID > 0) do
		local szTong = TONG_GetName(nTongID)
		-- nTongID = TONG_GetNextTong(nTongID)
		if not self.tbTong[szTong] then
			self.tbTong[szTong] = self.nCount
		end
		self.nCount = self.nCount + 1
		nTongID = TONG_GetNextTong(nTongID)
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
		-- SetDeathScript("\\script\\maps\\ondeath.lua")
		SetProtectTime(18*3) -- script viet hoa By http://tranhba.com  ba gi�y b�o v� th�i gian 
		AddSkillState(963, 1, 0, 18*3) 
		SetFightState(1); 
		-- SetPunish(0)-- huy chet bi tru kinh nghiem
		-- SetPKFlag(1)	--��ɱģʽ
		-- ForbidChangePK(1);	--��ֹ����PKģʽ
		-- SetTaskTemp(200, 1)		--��ֹ������Ӫ
		-- SetLogoutRV(1);		--����������Ϊһ��������
		-- DisabledStall(1)	--��ֹ��̯
		-- ForbitTrade(1);		--��ֹ����
		-- DisabledUseTownP(1)	--��������׼��ϯ�ͱ����õ���ʹ�ûسǷ�
		-- ForbitStamina(1)	--��ֹ����
		-- SetCreateTeam(0); 
		return 1
end
function OnLeaveBattle()
		-- SetDeathScript("")
		-- TM_StopTimer(116);
		-- SetTmpCamp(0);
		-- SetCreateTeam(1); 
		SetFightState(0); 
		-- SetCurCamp(GetCamp())-- trang thai sat thu
		-- SetPunish(1)-- huy chet bi tru kinh nghiem
		-- SetPKFlag(0)	--��ɱģʽ
		-- ForbidChangePK(0);	--��ֹ����PKģʽ
		-- SetTaskTemp(200, 0)		--��ֹ������Ӫ
		-- DisabledStall(0)	--��ֹ��̯
		-- ForbitTrade(0);		--��ֹ����
		-- DisabledUseTownP(0)	--��������׼��ϯ�ͱ����õ���ʹ�ûسǷ�
		-- ForbitStamina(0)	--��ֹ����
end
function CheckHuaShanPC()
	local szHWUID = GetAccountHDD(GetAccount())

	-- local W,X,Y = GetWorldPos(); 
	local nMapId = GetWorldPos();
	if nMapId ~= 333 then
		return
	end
	print("HD ID lay ve"..szHWUID)
	if szHWUID == "00" then
		Say("B�n vui l�ng tho�t h�n c�a s� game r�i ��ng nh�p l�i. Xin l�i v� s� c� b�t ti�n n�y.")
		NewWorld(53,200*8,200*16)
		return 1
	end
	if  tbHuaShanHWUID[szHWUID] then
		Say(format("Xin l�i h� th�ng ghi nh�n m�y t�nh c�a b�n �� c� nh�n v�t <color=green>%s<color> �� tham gia t�nh n�ng n�y. Vui l�ng ki�m tra l�i",tbHuaShanHWUID[szHWUID]),0)
		NewWorld(53,200*8,200*16)
		return 1
	end
	tbHuaShanHWUID[szHWUID] = GetName()
	-- Msg2Player("HD ID lay ve"..szHWUID)
	-- tbHuaShanHWUID[szHWUID] = tbHuaShanHWUID[szHWUID] or 0
	-- Msg2Player("So nhan vat o Hoa Son"..tbHuaShanHWUID[szHWUID])
	-- if tbHuaShanHWUID[szHWUID] >= MAX_PLAYER_PER_PC then
		-- tbHuaShanHWUID[szHWUID] = tbHuaShanHWUID[szHWUID] - 1
		-- Say("M�t m�y t�nh ch� ���c 1 acc tham gia t�nh n�ng n�y. Vui l�ng th� l�i sau")
		-- NewWorld(53,200*8,200*16)
		-- return 1
	-- end
	-- tbHuaShanHWUID[szHWUID] = tbHuaShanHWUID[szHWUID] + 1-- thanh cong
	
end
function OnNewWorld(szParam)
	if GetLevel() < 50 or GetCamp() == 0 or GetCurCamp() == 0 then
		Say("C�p �� qu� th�p nh� ng��i m� c�ng mu�n tham gia hay sao? V� nh� luy�n t�p th�m �i")
		NewWorld(53,200*8,200*16)
		return
	end
	-- TM_SetTimer( 15 * 18,118,1,0);-- script check hoa son
	
	-- if TM_HasTimer() then 
		
	-- end
	-- local szHD = tbLadderPlayer:GetHWUID(GetName())
	
		SetFightState(0); 
		SetPunish(0)-- huy chet bi tru kinh nghiem
		SetPKFlag(1)	--��ɱģʽ
		ForbidChangePK(1);	--��ֹ����PKģʽ
		SetTaskTemp(200, 1)		--��ֹ������Ӫ
		SetLogoutRV(1);		--����������Ϊһ��������
		-- DisabledStall(1)	--��ֹ��̯
		-- ForbitTrade(1);		--��ֹ����
		DisabledUseTownP(1)	--��������׼��ϯ�ͱ����õ���ʹ�ûسǷ�
		-- ForbitStamina(1)	--��ֹ����
		SetCreateTeam(0); 
	local szTong = GetTong()
	if not szTong or szTong == "" then
		SetCurCamp(4)
	else
		SetTmpCamp(tbClass:GetTongCamp(szTong))
	end
	OnNewWorldDefault(szParam)
end
function OnLeaveWorld(szParam)

		-- local szHWUID  = tbLadderPlayer:GetHWUID(GetName())
		-- tbHuaShanHWUID[szHWUID]  = tbHuaShanHWUID[szHWUID] - 1
		
		-- SetDeathScript("")
		-- TM_StopTimer(116);
		SetTmpCamp(0);
		SetCurCamp(GetCamp())-- trang thai sat thu
		SetPunish(1)-- huy chet bi tru kinh nghiem
		SetPKFlag(0)	--��ɱģʽ
		ForbidChangePK(0);	--��ֹ����PKģʽ
		SetTaskTemp(200, 0)		--��ֹ������Ӫ
		-- DisabledStall(0)	--��ֹ��̯
		-- ForbitTrade(0);		--��ֹ����
		DisabledUseTownP(0)	--��������׼��ϯ�ͱ����õ���ʹ�ûسǷ�
		OnLeaveWorldDefault(szParam)
		local szHWUID = GetAccountHDD(GetAccount())
		
		-- print("Co script timer 118 gia tri "..TM_HasTimer(118))
		-- if TM_HasTimer(118) ~= 1 then-- dang chay script timer dong nghia nhan vat chua dc add vao tab hoa son nen ko remove
			-- print("So nhan vat o Hoa Son"..tbHuaShanHWUID[szHWUID])
			-- tbHuaShanHWUID[szHWUID] = nil
		-- end
		-- print(szHWUID)
		-- ForbitStamina(0)	--��ֹ����
		-- SetFightState(0); 
end