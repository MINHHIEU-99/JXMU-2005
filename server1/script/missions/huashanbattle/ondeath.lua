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
		-- Say("Ng­êi v« gia c­ nh­ ng­¬i th× sao cã thÓ vµo khu vùc nµy? Nhanh chãng t×m mét bang héi cho m×nh ®i.")
		-- NewWorld(53,200*8,200*16)
		SetCurCamp(4)
		-- return 0
	else
		-- Msg2Player("Camp"..tbClass:GetTongCamp(szTong))
		SetTmpCamp(tbClass:GetTongCamp(szTong))
	end
		SetDeathScript("\\script\\maps\\ondeath.lua")
		SetProtectTime(18*3) -- script viet hoa By http://tranhba.com  ba gi©y b¶o vÖ thêi gian 
		AddSkillState(963, 1, 0, 18*3) 
		SetFightState(1); 
		-- SetCurCamp(4)-- trang thai sat thu
		SetPunish(0)-- huy chet bi tru kinh nghiem
		SetPKFlag(1)	--ÍÀÉ±Ä£Ê½
		ForbidChangePK(1);	--½ûÖ¹¸ü»»PKÄ£Ê½
		SetTaskTemp(200, 1)		--½ûÖ¹¸ü»»ÕóÓª
		SetLogoutRV(1);		--¶ÏÏßÓëËÀÍöÎªÒ»¸öÖØÉúµã
		DisabledStall(1)	--½ûÖ¹°ÚÌ¯
		ForbitTrade(1);		--½ûÖ¹½»Ò×
		DisabledUseTownP(1)	--ÏŞÖÆÆäÔÚ×¼±¸Ï¯ºÍ±ÈÈüÓÃµØÄÚÊ¹ÓÃ»Ø³Ç·û
		ForbitStamina(1)	--½ûÖ¹»ØÌå
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
		SetPKFlag(0)	--ÍÀÉ±Ä£Ê½
		ForbidChangePK(0);	--½ûÖ¹¸ü»»PKÄ£Ê½
		SetTaskTemp(200, 0)		--½ûÖ¹¸ü»»ÕóÓª
		DisabledStall(0)	--½ûÖ¹°ÚÌ¯
		ForbitTrade(0);		--½ûÖ¹½»Ò×
		DisabledUseTownP(0)	--ÏŞÖÆÆäÔÚ×¼±¸Ï¯ºÍ±ÈÈüÓÃµØÄÚÊ¹ÓÃ»Ø³Ç·û
		ForbitStamina(0)	--½ûÖ¹»ØÌå
end
function OnNewWorld(szParam)
	-- if GetLevel() < 50 or GetCamp() == 0 or GetCurCamp() == 0 then
		-- Say("CÊp ®é qu¸ thÊp nh­ ng­¬i mµ còng muèn tham gia hay sao? VÒ nhµ luyÖn tËp thªm ®i")
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
		SetPKFlag(0)	--ÍÀÉ±Ä£Ê½
		ForbidChangePK(0);	--½ûÖ¹¸ü»»PKÄ£Ê½
		SetTaskTemp(200, 0)		--½ûÖ¹¸ü»»ÕóÓª
		DisabledStall(0)	--½ûÖ¹°ÚÌ¯
		ForbitTrade(0);		--½ûÖ¹½»Ò×
		DisabledUseTownP(0)	--ÏŞÖÆÆäÔÚ×¼±¸Ï¯ºÍ±ÈÈüÓÃµØÄÚÊ¹ÓÃ»Ø³Ç·û
		ForbitStamina(0)	--½ûÖ¹»ØÌå
		SetFightState(0); 
end