--------------------------------------------------------------------
-- Ê¹ÓÃÉçÍÅ½á¹¹À´¼ÇÂ¼³ÇÊÐµÄÐÅÏ¢ (¼ÇÂ¼ÔÚÉçÍÅµÄÈÎÎñ±äÁ¿ÉÏ)
-- Ã¿¸ö³ÇÊÐ²ÉÓÃÒ»¸öÉçÍÅ×éÖ¯(League)
-- Êý¾Ý×éÖ¯£º
--	.ÉçÍÅÀàÐÍ(LeagueType)£ºÈ«¾ÖÎ¨Ò»±êÊ¶£¬×¢Òâ²»ÒªÖØÓÃ
--	.ÉçÍÅÃû³Æ(LeagueName)£º³ÇÊÐID(×Ö·û´®)
--	.ÉçÍÅ³ÉÔ±(LeagueMember)£ºÒ»¸ö£¬ÈÎÒâ£¬Ä¿Ç°²»ÐèÒªµÄÊý¾Ý
--------------------------------------------------------------------

IncludeLib("LEAGUE")

LEAGUETYPE_CITYINFO			= 4	-- ÉçÍÅID(³ÇÊÐÐÅÏ¢)£¬È«¾ÖÎ¨Ò»µÄ±êÊ¶
CITYINFO_LEAGUEJOB			= 1 -- Ö°Î»£¬ËæÒâ£¬²»ÐèÒªµÄÊý¾Ý
CITYINFO_LEAGUETASK_BONUS	= 1	-- ³ÇÊÐÐÅÏ¢µÄ½±Àø¼ÇÂ¼(ÈÎÎñ±äÁ¿)
CITYINFO_LEAGUETASK_GIFT	= 2	-- ³ÇÊÐÐÅÏ¢µÄ½±Àø¼ÇÂ¼(ÈÎÎñ±äÁ¿)
CITYINFO_LEAGUETASK_DATE	= 3	-- ³ÇÊÐÐÅÏ¢µÄ½±Àø¼ÇÂ¼(ÈÎÎñ±äÁ¿)

CITYINFO_GLBVALUEID = {840, 841, 842, 843, 844, 845, 846}
---------------------------------------------------------------
function cityID2LeagueName(nCityID)
	return tostring(nCityID)
end

function debug_print(str)
	print(str)
end

------------------
-- ´´½¨³ÇÊÐÐÅÏ¢¼ÇÂ¼
function buildCityInfoLeague(nCityID)
	local strLeagueName = cityID2LeagueName(nCityID)
	local leagueObj = LG_GetLeagueObj(LEAGUETYPE_CITYINFO, strLeagueName)
	if (leagueObj == 0) then
		-- ´Ë³ÇÊÐµÄ¼ÇÂ¼²»´æÔÚ£¬´´½¨Ö®
		leagueObj = LG_CreateLeagueObj()
		local memberObj = LGM_CreateMemberObj()

		LG_SetLeagueInfo(leagueObj, LEAGUETYPE_CITYINFO, strLeagueName)
		LGM_SetMemberInfo(memberObj, strLeagueName, LEAGUEJOB_MASTER, LEAGUETYPE_CITYINFO, strLeagueName)
		LG_AddMemberToObj(leagueObj, memberObj)

		LG_ApplyAddLeague(leagueObj, "\\script\\misc\\league_cityinfo.lua", "OnBuildCityLeague")
	end
end

-- »Øµ÷
function OnBuildCityLeague(nLeagueType, szLeagueName, szMemberName, bSucceed)
	if (bSucceed == 0) then
		debug_print("CityLeague Build Fail: "..szLeagueName)
	end
	print("CityLeague Build OK: "..szLeagueName)
	print("\n*********************************************************************** Chiu Trach Nhiem San Xuat va Phat Hanh ********************************************************************************")
print("#") 
print("#")                                                                                                                                                                                     
print("#            JJJJJJJJJJJ     XXXXXXX       XXXXXXX     MMMMMMMM               MMMMMMMM     UUUUUUUU     UUUUUUUU                  VVVVVVVV           VVVVVVVV     NNNNNNNN        NNNNNNNN")
print("#            J:::::::::J     X:::::X       X:::::X     M:::::::M             M:::::::M     U::::::U     U::::::U                  V::::::V           V::::::V     N:::::::N       N::::::N")
print("#            J:::::::::J     X:::::X       X:::::X     M::::::::M           M::::::::M     U::::::U     U::::::U                  V::::::V           V::::::V     N::::::::N      N::::::N")
print("#            JJ:::::::JJ     X::::::X     X::::::X     M:::::::::M         M:::::::::M     UU:::::U     U:::::UU                  V::::::V           V::::::V     N:::::::::N     N::::::N")
print("#              J:::::J       XXX:::::X   X:::::XXX     M::::::::::M       M::::::::::M      U:::::U     U:::::U                    V:::::V           V:::::V      N::::::::::N    N::::::N")
print("#              J:::::J          X:::::X X:::::X        M:::::::::::M     M:::::::::::M      U:::::D     D:::::U                     V:::::V         V:::::V       N:::::::::::N   N::::::N")
print("#              J:::::J           X:::::X:::::X         M:::::::M::::M   M::::M:::::::M      U:::::D     D:::::U                      V:::::V       V:::::V        N:::::::N::::N  N::::::N")
print("#              J:::::j            X:::::::::X          M::::::M M::::M M::::M M::::::M      U:::::D     D:::::U                       V:::::V     V:::::V         N::::::N N::::N N::::::N")
print("#              J:::::J            X:::::::::X          M::::::M  M::::M::::M  M::::::M      U:::::D     D:::::U                        V:::::V   V:::::V          N::::::N  N::::N:::::::N")
print("#  JJJJJJJ     J:::::J           X:::::X:::::X         M::::::M   M:::::::M   M::::::M      U:::::D     D:::::U                         V:::::V V:::::V           N::::::N   N:::::::::::N")
print("#  J:::::J     J:::::J          X:::::X X:::::X        M::::::M    M:::::M    M::::::M      U:::::D     D:::::U                          V:::::V:::::V            N::::::N    N::::::::::N")
print("#  J::::::J   J::::::J       XXX:::::X   X:::::XXX     M::::::M     MMMMM     M::::::M      U::::::U   U::::::U                           V:::::::::V             N::::::N     N:::::::::N")
print("#  J:::::::JJJ:::::::J       X::::::X     X::::::X     M::::::M               M::::::M      U:::::::UUU:::::::U                            V:::::::V              N::::::N      N::::::::N")
print("#   JJ:::::::::::::JJ        X:::::X       X:::::X     M::::::M               M::::::M       UU:::::::::::::UU        ......                V:::::V               N::::::N       N:::::::N")
print("#     JJ:::::::::JJ          X:::::X       X:::::X     M::::::M               M::::::M         UU:::::::::UU          .::::.                 V:::V                N::::::N        N::::::N")
print("#       JJJJJJJJJ            XXXXXXX       XXXXXXX     MMMMMMMM               MMMMMMMM           UUUUUUUUU            ......                  VVV                 NNNNNNNN         NNNNNNN")
print("#")                                                                                                                                                                                     
print("#")                                                                                                                                                                                     
print("*****************************************************************************************************************JXMU.VN***********************************************************************\n")																													   

end

-- ÒòÈÎÎñ±äÁ¿µÄ²Ù×÷£¬ÐëÏòRelayÉêÇë£¬Relay·µ»Øºó²Å»áÐÞ¸Ä³É¹¦
-- Òò´ËÎª·ÀÖ¹gameserver³öÏÖäÌµÄÏÖÏó£¬¶Ô´Ë²Ù×÷ÉèÖÃ×´Ì¬Ëø
-- cityinfo_option_lock = {0, 0, 0, 0, 0, 0, 0};
function OnSetCityLeagueTask(nLeagueType, szLeagueName, szMemberName, bSucceed)

	-- cityinfo_option_lock[tonumber(szLeagueName)] = 0
	SetGlbValue(CITYINFO_GLBVALUEID[tonumber(szLeagueName)], 0)
end

-----------------------------------------------------------------------------
-- ´Ëº¯Êý½«ÔÚautoexecÉÏµ÷ÓÃ
function buildAllCityInfoLeague()
	for i = 1 , 7 do
		buildCityInfoLeague(i)
		SetGlbValue(CITYINFO_GLBVALUEID[i], 0)
	end
	debug_print("CityLeague Build...")
end

-- ÉèÖÃµÃ³ÇÊÐ½±ÀøµÄÊ±¼ä(¸ñÊ½£º20051018) - ÄêÔÂÈÕ
function set_citybonus_date(nCityID, nDate)
	local strLeagueName = cityID2LeagueName(nCityID)
	local leagueObj = LG_GetLeagueObj(LEAGUETYPE_CITYINFO, strLeagueName)
	if (leagueObj == 0) then
		-- ´Ë³ÇÊÐµÄ¼ÇÂ¼²»´æÔÚ£¬´´½¨Ö®
		debug_print("CityInfoLeague Not Found: "..nCityID)
		return 0
	end
	
	-- ÉÏËø£¬ÔÚ»Øµ÷ÖÐÇå³ý
	--cityinfo_option_lock[nCityID] = 1 
	SetGlbValue(CITYINFO_GLBVALUEID[nCityID], 1)
	
	LG_ApplySetLeagueTask(LEAGUETYPE_CITYINFO, strLeagueName, CITYINFO_LEAGUETASK_BONUS, nDate,
							"\\script\\misc\\league_cityinfo.lua", "OnSetCityLeagueTask")	
end

-- »ñÈ¡ÉÏ´ÎµÃ·þÎñÆ÷Ö÷³ÇÊÐ½±ÀøµÄÊ±¼ä(¸ñÊ½£º51018) - ÄêÔÂÈÕ
function get_maincitybonus_date(nCityID)
	local nDate = 0;
	
	if (GetGlbValue(CITYINFO_GLBVALUEID[nCityID]) == 1) then
		debug_print("Chó ý: VÉn ch­a chÊp hµnh mÖmh lÖnh"..nCityID)
		nDate = get_maincity_deadline(nCityID);--tonumber(date("%y%m%d"))
	else
		debug_print("GetDate ok!")
		local strLeagueName = cityID2LeagueName(nCityID)
		nDate = LG_GetLeagueTask(LEAGUETYPE_CITYINFO, strLeagueName, CITYINFO_LEAGUETASK_DATE)
	end
	
	return nDate
end

-- »ñÈ¡ÉÏ´ÎµÃ³ÇÊÐ½±ÀøµÄÊ±¼ä(¸ñÊ½£º20051018) - ÄêÔÂÈÕ
function get_citybonus_date(nCityID)
	local nDate = 0;
	
	if (GetGlbValue(CITYINFO_GLBVALUEID[nCityID]) == 1) then
		debug_print("Chó ý: VÉn ch­a chÊp hµnh mÖmh lÖnh"..nCityID)
		nDate = tonumber(date("%Y%m%d"))
	else
		debug_print("GetDate ok!")
		local strLeagueName = cityID2LeagueName(nCityID)
		nDate = LG_GetLeagueTask(LEAGUETYPE_CITYINFO, strLeagueName, CITYINFO_LEAGUETASK_BONUS)
	end
	
	return nDate
end


function get_citybonus_task(nCityID, nTsk)
	local nValue = 0;
	
	if (GetGlbValue(CITYINFO_GLBVALUEID[nCityID]) == 1) then
		debug_print("Chó ý: VÉn ch­a chÊp hµnh mÖmh lÖnh"..nCityID)
		nValue = 100;	--½±ÀøµÄ×î´óÖµ
	else
		debug_print("GetDate ok!")
		local strLeagueName = cityID2LeagueName(nCityID);
		nValue = LG_GetLeagueTask(LEAGUETYPE_CITYINFO, strLeagueName, nTsk);
	end;
	return nValue;
end;

function set_citybonus_task(nCityID, nTsk, nValue)
	local strLeagueName = cityID2LeagueName(nCityID)
	local leagueObj = LG_GetLeagueObj(LEAGUETYPE_CITYINFO, strLeagueName)
	if (leagueObj == 0) then
		-- ´Ë³ÇÊÐµÄ¼ÇÂ¼²»´æÔÚ£¬´´½¨Ö®
		debug_print("CityInfoLeague Not Found: "..nCityID)
		return 0
	end
	
	-- ÉÏËø£¬ÔÚ»Øµ÷ÖÐÇå³ý
	--cityinfo_option_lock[nCityID] = 1 
	SetGlbValue(CITYINFO_GLBVALUEID[nCityID], 1)
	
	LG_ApplySetLeagueTask(LEAGUETYPE_CITYINFO, strLeagueName, nTsk, nValue,
							"\\script\\misc\\league_cityinfo.lua", "OnSetCityLeagueTask")	
end;