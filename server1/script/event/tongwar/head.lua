Include("\\script\\event\\tongwar\\headinfo.lua")
Include("\\script\\event\\tongwar\\tongwar_signup.lua")
Include("\\script\\task\\random\\treasure_head.lua");
Include("\\script\\tong\\tong_header.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\dailogsys\\dailogsay.lua")
IL("TONG");
_TONGWAR_CITYOWNER = {}


--如果为nil或0，返回1，否则返回0
function FALSE(value)
	if (value == 0 or value == nil or value == "") then
		return 1
	else
		return nil
	end
end

--创建7城主的临时联盟
function tongwar_create()
	if (getn(_TONGWAR_CITYOWNER) ~= 0 and _TONGWAR_CITYOWNER[1][3] == get_tongwar_season()) then
		return
	end
	local nseason = get_tongwar_season();
	local n_lid = LG_GetFirstLeague(TONGWAR_LGTYPE)
--	if (FALSE(n_lid)) then
--		return
--	end
	for i = 1, 7 do
		_TONGWAR_CITYOWNER[i] = {}
		_TONGWAR_CITYOWNER[i][1] = TONGWAR_CITY[i]
		_TONGWAR_CITYOWNER[i][2] = tongwar_getmember(TONGWAR_CITY[i])
		_TONGWAR_CITYOWNER[1][3] = nseason;
	end
end

--获得某个城市的联盟 返回table
function tongwar_getmember(s_lname)
	local tb_member = {}
	local n_lid = LG_GetLeagueObj(TONGWAR_LGTYPE, s_lname)
	local n_count = LG_GetMemberCount(n_lid)
	for i = 0, (n_count - 1) do
		local tongname, n_job = LG_GetMemberInfo(n_lid, i)
		tb_member[getn(tb_member) + 1] = {tongname, n_job}
	end
	return tb_member
end

--比赛结束后，给7城主按积分及静积分排名次
_TONGWAR_ARRRANK = {};
_TONGWAR_ROLELADDER = {};
function tongwar_bigger(lg1, lg2)
	if (lg1[2] == lg2[2]) then
		return lg1[3] > lg2[3];
	end;
	return lg1[2] > lg2[2];
end;

function tongwar_cityrank()
--对战绩作排序
	for i = 1, 7 do
		_TONGWAR_ARRRANK[i] = {};
		_TONGWAR_ARRRANK[i][1] = _TONGWAR_CITYOWNER[i][1];
		_TONGWAR_ARRRANK[i][2] = LG_GetLeagueTask(TONGWAR_LGTYPE, _TONGWAR_CITYOWNER[i][1], TONGWAR_LGTASK_RESULT);
		_TONGWAR_ARRRANK[i][3] = LG_GetLeagueTask(TONGWAR_LGTYPE, _TONGWAR_CITYOWNER[i][1], TONGWAR_LGTASK_POINT);
		_TONGWAR_ARRRANK[i][4] = LG_GetLeagueTask(TONGWAR_LGTYPE, _TONGWAR_CITYOWNER[i][1], TONGWAR_LGTASK_TONGID);
	end;
	sort(_TONGWAR_ARRRANK, tongwar_bigger);
	for i = 1, 7 do
		LG_ApplySetLeagueTask(TONGWAR_LGTYPE, _TONGWAR_ARRRANK[i][1], TONGWAR_LGTASK_RANK, i, "", "");
	end;
--	gb_SetTask("TONGWAR_STATION", 1, _TONGWAR_ARRRANK[1][4]);
end;

function get_tongwar_phase()
	return gb_GetTask("TONGWAR_STATION", 2);
end;

function tongWar_SelectCity(strCityName, strCityTongName)
	if tongWar_CanSelectCity() ~= 1 then
		return
	end
	if get_tongwar_phase() ~= 1 then
		return
	end
	
	nseason = get_tongwar_season()
	if (FALSE(LG_GetLeagueObj(TONGWAR_LGTYPE, strCityName))) then
		local nLeagueID = LG_CreateLeagueObj()
		LG_SetLeagueInfo(nLeagueID, TONGWAR_LGTYPE, strCityName)
		LG_ApplyAddLeague(nLeagueID, "", "")
		LG_FreeLeagueObj(nLeagueID)
		LG_ApplySetLeagueTask(TONGWAR_LGTYPE, strCityName, TONGWAR_LGTASK_SEASON, nseason);
		
		if (not FALSE(strCityTongName))then
				nMemberID = LGM_CreateMemberObj()
				--设置社团成员的信息(角色名、职位、社团类型、社团名称)
				LGM_SetMemberInfo(nMemberID, strCityTongName, 1, TONGWAR_LGTYPE, strCityName)
				LGM_ApplyAddMember(nMemberID, "", "")
				LGM_FreeMemberObj(nMemberID)
				LG_ApplySetMemberTask(TONGWAR_LGTYPE, strCityName, strCityTongName, TONGWAR_LGMTASK_JOB, 1)
		end
		
		
	end
end

function tongWar_CanSelectCity()
	local szTongName = GetTongName();
	
	if szTongName == nil or szTongName == "" then
		return
	end
	
	if (GetTongFigure() ~= TONG_MASTER) then --判断是否是帮主
		return
	end
	--如果已经有战队了肯定不用选城市
	if not FALSE(LG_GetLeagueObjByRole(TONGWAR_LGTYPE, szTongName)	) then 
		return
	end
	local tb = {}
	for i = 1, 7 do
		if GetCityOwner(i) == szTongName then --没战队且是占城帮会
			return 1
		end
	end
end

function tongWar_ShowSelectCityMenu()
	local szTongName = GetTongName();
	
	if szTongName == nil or szTongName == "" then
		return
	end
	
	if (GetTongFigure() ~= TONG_MASTER) then --判断是否是帮主
		return
	end
	local tb = {}
	for i = 1, 7 do
		local strCityName = GetCityAreaName(i)
		local strCityTongName = GetCityOwner(i)
		tb[strCityTongName] = tb[strCityTongName] or {}
		tinsert(tb[strCityTongName], strCityName)
	end
	local tbCity = tb[szTongName]
	if tbCity then
		local szTitle = "Ch鋘 th祅h th� mu鑞 i di謓 tham d� thi u, n誹 nh� qu� bang chi誱 nhi襲 h琻 m閠 th祅h th� ch� 頲 i di謓 1 th祅h th� tham gia  nh蕋 bang"
		local tbOpt = {}
		for i=1, getn(tbCity) do
			
			tinsert(tbOpt, {tbCity[i], tongWar_SelectCity, { tbCity[i], szTongName}})
		end
		CreateNewSayEx(szTitle, tbOpt)
	end
	
end

function tongWar_AddSelectCityOpt(tbOpt)
	
	if tongWar_CanSelectCity() then
		tinsert(tbOpt, 2, "Ch鋘 th祅h th� mu鑞 i di謓 tham d� thi u/tongWar_ShowSelectCityMenu")
	end
	
end

function tongWar_Start()
	tongwar_create()
	if (getn(_TONGWAR_CITYOWNER) == 0) then
		CreateTaskSay({"<dec><npc>V� L﹎ Minh Ch� hi謚 l謓h: c竎 bang h閕 chi誱 th祅h � th蕋 i th祅h th� v� bang li猲 minh c� th� v祇 khu v鵦 d祅h ri猲g tranh t礽 v韎 nhau,  ph﹏ nh xem bang n祇 s� tr� th祅h V� L﹎ е Nh蕋 Bang. е nh蕋 bang s� nh薾 頲 ph莕 thng h藆 h� v� danh hi謚 cao qu�!","K誸 th骳 i tho筰/OnCancel"});
		return 
	end;
	
	tongwar_clear_rlpoint();
	
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	local szContent = {"<dec><npc>Cu閏 tranh t礽 V� L﹎ е Nh蕋 Bang s緋 s鯽 b総 u. Hi謓 t筰, bang ch� c竎 bang chi誱 th祅h c� th� li猲 minh v韎 c竎 bang kh玭g chi誱 th祅h  h頿 s鴆 thi u. M閠 khi cu閏 tranh t礽 ch輓h th鴆 di詎 ra th� bang h閕  b竜 danh kh玭g th� thay i li猲 minh."};
	if (get_tongwar_phase() == 1) then	--组队
		
		
		tongWar_AddSelectCityOpt(szContent)
		
		
		tinsert(szContent, "уng minh gia nh藀 li猲 minh bang h閕/tongwar_onjoin");
		tinsert(szContent, "Bang h閕 chi誱 th祅h � c竎 th祅h th� /tongwar_cityowner");
		
	elseif (get_tongwar_phase() == 2) then	-- 比赛期间
		
		tinsert(szContent, "Ta mu鑞 tham gia thi u/tongwar_want2signup");
		tinsert(szContent, "Xem th祅h t輈h li猲 minh bang h閕 chi誱 th祅h/tongwar_rank");
		tinsert(szContent, "Bang h閕 chi誱 th祅h � c竎 th祅h th� /tongwar_cityowner");
		
	elseif (get_tongwar_phase() == 3) then	--奖励时间
		
		if (getn(_TONGWAR_ARRRANK) == 0) then
			tongwar_cityrank();
		end;
		tinsert(szContent,"Nh薾 danh hi謚 V� L﹎ е Nh蕋 Bang/tongwar_title_talk");
		tinsert(szContent, "Nh薾 ph莕 thng ho箃 ng V� L﹎ е Nh蕋 Bang/tongwar_aword_talk");
		tinsert(szContent, "Xem b秐g x誴 h筺g bang h閕 chi誱 th祅h/tongwar_query");
		tinsert(szContent, "Bang h閕 chi誱 th祅h � c竎 th祅h th� /tongwar_cityowner");
	end;
							
	tinsert(szContent, "Ho箃 ng 'V� L﹎ е Nh蕋 Bang'/tongwar_detail");
	tinsert(szContent, "K誸 th骳 i tho筰/OnCancel");
	
	CreateTaskSay(szContent);
end

function tongwar_title_talk() --领取天下第一帮的称号
	if (GetByte(GetTask(TONGWAR_RLTASK_AWARD),1) == get_tongwar_season()) then --帮主称号永久绑定
		Msg2Player("B筺  nh薾 danh hi謚 <color=red>V� L﹎ е Nh蕋 Bang<color> r錳.")
		CreateTaskSay({"<dec><npc>Х nh薾 danh hi謚 <color=red>V� L﹎ е Nh蕋 Bang<color> r錳.", "K誸 th骳 i tho筰/OnCancel"});
		return
	end;        
	
	local szTongName = GetTong();
	if (FALSE(szTongName)) then
		CreateTaskSay({"<dec><npc>Kh玭g  甶襲 ki謓 nh薾 danh hi謚 <color=red>V� L﹎ е Nh蕋 Bang<color>.", "K誸 th骳 i tho筰/OnCancel"});
		return
	end;           
	
	local nLeagueID = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, szTongName);
	if (FALSE(nLeagueID)) then
		CreateTaskSay({"<dec><npc>Kh玭g  甶襲 ki謓 nh薾 danh hi謚 <color=red>V� L﹎ е Nh蕋 Bang<color>.", "K誸 th骳 i tho筰/OnCancel"});
		return
	end;
	
	local szLeagueName = LG_GetLeagueInfo(nLeagueID);
	
	if (szLeagueName ~= _TONGWAR_ARRRANK[1][1] or FALSE(tongwar_check_ownerright())) then
		CreateTaskSay({"<dec><npc>Ch� c� th祅h vi猲 bang chi誱 th祅h x誴 h筺g u m韎 c� th� nh薾 danh hi謚 n祔.", "K誸 th骳 i tho筰/OnCancel"});
		return
	end;
	
	tongwar_title_award(szLeagueName);
end;

function tongwar_title_award(szlgname)
	SetTask(TONGWAR_RLTASK_AWARD, SetByte(GetTask(TONGWAR_RLTASK_AWARD), 1, get_tongwar_season()));
	if (GetTongMaster() == GetName() and LG_GetLeagueTask(TONGWAR_LGTYPE, szlgname, TONGWAR_LGTASK_MSTITLE) < 1) then
		Msg2Player("Nh薾 頲 danh hi謚 <color=green>V� L﹎ Minh Ch�<color>");
		CreateTaskSay({"<dec><npc>Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 <color=yellow>V� L﹎ Minh Ch�<color>.", "K誸 th骳 i tho筰/OnCancel"});
		tongwar_addtitle(105);--帮主光环
		tongwar_award_log("Nh薾 頲 danh hi謚 V� L﹎ Minh Ch�");
		LG_ApplyAppendLeagueTask(TONGWAR_LGTYPE, szlgname, TONGWAR_LGTASK_MSTITLE, 1);
	else
		Msg2Player("Nh薾 頲 danh hi謚 <color=green>V� L﹎ е Nh蕋 Bang<color>");
		CreateTaskSay({"<dec><npc>Ch骳 m鮪g b筺  nh薾 頲 danh hi謚 <color=yellow>V� L﹎ е Nh蕋 Bang<color>.", "K誸 th骳 i tho筰/OnCancel"});
		tongwar_addtitle(106);--帮众光环
		tongwar_award_log("Nh薾 danh hi謚 V� L﹎ е Nh蕋 Bang");
	end;
end;

function tongwar_addtitle(n_title)
	local nDate	= tonumber(GetLocalDate("%m%d"));
	local nDay	= mod(nDate,100)
	local nMon	= floor(nDate/100)
	nMon	= nMon + floor((nDay + 30)/30);
	nDay = mod((nDay + 30),30);
	local nTime	= mod(FormatTime2Number(GetCurServerTime()+30*24*60*60), 100000000)--nMon * 1000000 + nDay * 10000	-- 

	Title_AddTitle(n_title, 2, nTime);
	Title_ActiveTitle(n_title);
	SetTask(1122, n_title)
end;

function tongwar_query()
	local szmsg = "<dec><npc>Tr薾 chung k誸 V� L﹎ е Nh蕋 Bang  k誸 th骳, k誸 qu� nh� sau: \n"
	for i = 1, 7 do
		szmsg = format("%s - H筺g <color=red>%d<color>: <color=yellow>T鎛g 甶觤 bang chi誱 th祅h %s: %d  觤 thi u: %d<color>  <enter>",
												szmsg, i, _TONGWAR_ARRRANK[i][1], _TONGWAR_ARRRANK[i][2], _TONGWAR_ARRRANK[i][3]);
	end;
	CreateTaskSay({szmsg, "K誸 th骳 i tho筰/OnCancel"});
end;

function OnCancel()
end

function tongwar_cityowner()
	local tb_Opp = {"<dec><npc>Bang h閕 chi誱 th蕋 i th祅h th�  ph﹏ nh, h穣 l鵤 ch鋘 th祅h th� mu鑞 xem th玭g tin:"};
	tb_Opp[getn(tb_Opp) + 1] = "H玬 nay i th� l� li猲 minh bang n祇/tongwar_enemy";
	for i=1,7 do
		tb_Opp[getn(tb_Opp) + 1] = format("Bang h閕 chi誱 th祅h %s/#tongwar_cityowner_qur(%d)",
																			TONGWAR_CITY[i],i);
	end
	tb_Opp[getn(tb_Opp) + 1] = "Tr� l筰/tongWar_Start";

	CreateTaskSay(tb_Opp);
end

function tongwar_cityowner_qur(nSel)
	local cityname = _TONGWAR_CITYOWNER[nSel][1];
	local tb_citymember = _TONGWAR_CITYOWNER[nSel][2];
	local n_lid = LG_GetLeagueObj(TONGWAR_LGTYPE, cityname);
	
	if (FALSE(n_lid)) then
		local szmsg = format("<dec><npc>Th祅h %s kh玭g c� li猲 minh bang h閕 tham gia cu閏 tranh t礽 'V� L﹎ е Nh蕋 Bang'.", cityname);
		CreateTaskSay({szmsg, "Tr� l筰/tongwar_cityowner", "H駓 b� /OnCancel"});
		return
	end;
	
	local n_count = LG_GetMemberCount(n_lid);
	if (getn(tb_citymember) ~= n_count) then	--成员在TempTable中，访问时如果确认
																						--成员数不是最新，则刷新下
		_TONGWAR_CITYOWNER[nSel][2] = tongwar_getmember(TONGWAR_CITY[nSel])
		tb_citymember = _TONGWAR_CITYOWNER[nSel][2]
	end
	
	local cityowner = ""
	local citymember = ""
	for i = 1, getn(tb_citymember) do
		if (tb_citymember[i][2] == 1) then
			cityowner = tb_citymember[i][1]
		else
			citymember = format("%s\n    <color=yellow>%s<color>", 
														citymember, tb_citymember[i][1]);
		end
	end
	local szmsg = "";
	if (cityowner == "") then
		szmsg = format("<dec><npc>Th祅h %s kh玭g c� li猲 minh bang h閕 tham gia cu閏 tranh t礽 'V� L﹎ е Nh蕋 Bang'.", cityname);
		CreateTaskSay({szmsg, "Tr� l筰/tongwar_cityowner", "H駓 b� /OnCancel"});
		return 
	elseif (citymember == "") then
		szmsg = format("<dec><npc>Bang h閕 chi誱 th祅h %s l�: <color=red>%s<color>, c� li猲 minh l�:  \n  <Kh玭g c�>", 
															cityname, cityowner);
	else
		szmsg = format("<dec><npc>Bang chi誱 th祅h %s l�: <color=red>%s<color>, c� li猲 minh l�: %s", 
															cityname, cityowner, citymember);
	end
	
	local nResult = LG_GetLeagueTask(n_lid, TONGWAR_LGTASK_RESULT);	--总积分
	local nPoint = LG_GetLeagueTask(n_lid, TONGWAR_LGTASK_POINT);		--净积分
	szmsg = format("%s\n    T鎛g 甶觤 li猲 minh: <color=yellow>%d<color><enter>    T鎛g 甶觤 t 頲 l�: <color=yellow>%d<color>", szmsg, nResult, nPoint);
	CreateTaskSay({szmsg, "Tr� l筰/tongwar_cityowner", "H駓 b� /OnCancel"});
end

function tongwar_onjoin()
	if (FALSE(tongwar_check_ownerright(1))) then
		CreateTaskSay({"<dec><npc>Ch� c� <color=red>bang ch� bang chi誱 th祅h<color> m韎 c� th� l藀 li猲 minh bang h閕.",
										 "K誸 th骳 i tho筰/OnCancel"});
		return
	end;
	CreateTaskSay({"<dec><npc>Bang ch� c馻  bang chi誱 th祅h c� th� t� i v韎 bang ch� c馻 bang kh玭g chi誱 th祅h  li猲 minh v韎 nhau, c� mu鑞 l藀 li猲 minh hay kh玭g?",
					 				"Xin cho ph衟 gia nh藀 li猲 minh bang h閕/tongwar_want2join",
					  			"K誸 th骳 i tho筰/OnCancel"});
end

--判断是不是占城帮的帮主
function tongwar_check_ownerright(bmaster)
	local tongname = GetTongName();
	if (bmaster) then
		-- LLG_ALLINONE_TODO_20070802
		if (GetTongFigure() ~= TONG_MASTER) then --判断是否是帮主
			return nil
		end;
	end;
	local n_lid = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)
	if (not FALSE(n_lid)) then
		local leaguename = LG_GetLeagueInfo(n_lid)
		if (LG_GetMemberTask(TONGWAR_LGTYPE, leaguename, tongname, TONGWAR_LGMTASK_JOB) == 1) then
			return n_lid
		end
	end

	return nil
end

function tongwar_want2join()
	if (GetTeamSize() <= 1) then
		CreateTaskSay({"<dec><npc>Th藅 ng ti誧, t� i tr鑞g kh玭g th� k誸 n筽 li猲 minh!",
										 "K誸 th骳 i tho筰/OnCancel"});
		return
	end;
	
	if (IsCaptain() ~= 1) then
		CreateTaskSay({"<dec><npc>Ch� c� <color=red>trng nh鉳<color> m韎 c� th� k誸 n筽 bang ch� c馻 bang h閕 kh竎 l祄 li猲 minh.", "K誸 th骳 i tho筰/OnCancel"});
		return
	end;
	
	local tb_teammember = tongwar_check_team();
	if (tb_teammember == nil) then
		return
	end
	
	local szmsg = format("C� mu鑞 k誸 n筽 %d bang di y v祇 li猲 minh kh玭g?",getn(tb_teammember))
	for i=1,getn(tb_teammember) do
		szmsg = format("%s\n<color=yellow>%s<color>",szmsg,tb_teammember[i]);
	end
	CreateTaskSay({szmsg, "Mu鑞/tongwar_sure2join", "Kh玭g c莕!/OnCancel"});
end

function tongwar_sure2join()
	local tb_teammember, tb_rolename, teamtongid = tongwar_check_team();
	if (tb_teammember == nil) then
		return
	end
	local tongname, mytongid = GetTongName();
	local n_lid = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)
	if (FALSE(n_lid)) then
		return
	end
	local str_lgname = LG_GetLeagueInfo(n_lid)
	local ncityid = TONGWAR_CITYID[str_lgname];
	if (FALSE(ncityid)) then
		print(format("Error!!! CityName(leaguename) Wrong!!%s",str_lgname))
		return
	end;
	for i = 1, getn(tb_teammember) do
		--队友帮会名，队友名，战队名，队长名，队长帮会ID
		--local szParam = tb_teammember[i].." "..tb_rolename[i].." "..str_lgname.." "..GetName()
		local szParam = tostring(teamtongid[i]).." "..tb_rolename[i].." "..ncityid.." "..GetName().." "..mytongid;
		LG_ApplyDoScript(0, "", tb_teammember[i], "\\script\\event\\tongwar\\event.lua", "tongwar_add", szParam , "", "")
	end
end

--检查组对队友是否符合加入联盟的条件
--符合 返回 tab1(帮会名),tab2(帮主名),tab3(帮会id)
--不满足 返回 nil
function tongwar_check_team()
	local teammember = {};
	local tongmaster = {};
	local teamtongid = {};
	local str_capname = GetName();
	local str_captong = GetTongName();
	local teamsize = GetTeamSize();
	local n_capidx = PlayerIndex;
	for i = 2 , teamsize do
		PlayerIndex = GetTeamMember(i);
		local membername = GetName();
		local tongname, tongid = GetTongName();
		local szmsg = "";
		
		if (FALSE(tongid)) then
			PlayerIndex = n_capidx;
			szmsg = format("<dec><npc>Th祅h vi猲 %s trong nh鉳 kh玭g ph秈 l� th祅h vi猲 bang h閕, kh玭g th� gia nh藀 li猲 minh.",
											 membername);
			CreateTaskSay({szmsg, "K誸 th骳 i tho筰/OnCancel"});
			return
		end;
		
		if (GetTongFigure() ~= TONG_MASTER) then
			PlayerIndex = n_capidx;
			szmsg = format("<dec><npc>цi phng kh玭g ph秈 l� bang ch�, kh玭g th� k誸 n筽 li猲 minh.",
											 tongname, membername, tongname);
			CreateTaskSay({szmsg, "K誸 th骳 i tho筰/OnCancel"});
			return
		end
		
		--避免重复加入队员
		if (not FALSE(LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname))) then
			if (LG_GetLeagueObjByRole(TONGWAR_LGTYPE, str_captong) == LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)) then
				szmsg = format("<dec><npc>Bang h閕 c馻 %s l� %s  gia nh藀 li猲 minh r錳.",
													membername, tongname);
			else
		 		szmsg = format("<dec><npc>Bang h閕 c馻 %s l� %s  gia nh藀 li猲 minh kh竎, kh玭g th� gia nh藀 li猲 minh v韎 bang h閕 c馻 b筺!",
													membername, tongname);
			end;
		 	PlayerIndex = n_capidx;
		 	CreateTaskSay({szmsg, "K誸 th骳 i tho筰/OnCancel"});
		 	return 
		end
		teammember[i-1] = tongname;
		tongmaster[i-1] = membername;
		teamtongid[i-1] = tongid;
	end
	PlayerIndex = n_capidx
	return teammember, tongmaster, teamtongid
end

function tongwar_calendar()
	local str = "<dec><npc>"
	for i = 1, getn(TONGWAR_CALENDAR) do
		str = format("%s\n%s",str,TONGWAR_CALENDAR[i]);
	end
	CreateTaskSay({str, "K誸 th骳 i tho筰/OnCancel"});
end

function tongwar_detail()
--VLDNB 11 - фi c﹗ th玭g b竜 - Modified by DinhHQ - 20120507
	CreateTaskSay({format("<dec><npc>T� <color=green>%s <color>n <color=green>%s<color>, ngo筰 tr� ng祔 <color=green>18/05/2012<color>, m鏸 ng祔 l� 1 tr薾 u (m鏸 t鑙 c馻 ng祔 thi u  c� th阨 gian chu萵 b� t� <color=green>08: 00~08: 29<color>, th阨 gian thi u l� <color=green>08:30~09:30<color>), trong m鏸 ng祔 c� 3 tr薾 thi u c飊g gi�, ng th阨 s� c� m閠 bang h閕 c� lt kh玭g u. M鏸 bang h閕  chi誱 l躰h th祅h th� c飊g v韎 li猲 minh s� c飊g v韎 <color=green>6<color> th祅h th� kh竎 thi u li猲 minh.","16/05/2012", "23/05/2012"), 
		"Tra l辌h u c竎 bang h閕 chi課 th祅h/tongwar_calendar", "Tr� l筰/tongWar_Start", "Ta bi誸 r錳!/OnCancel"});
end;

function tongwar_join()
	
end;

function tongwar_enemy()
	local szmsg = ""
	local szTongName = GetTongName();
	if ("" == szTongName) then
		CreateTaskSay({"<dec><npc>Ch璦 gia nh藀 bang h閕 th� kh玭g th� tham gia thi u.", "Tr� v�/tongwar_cityowner", "K誸 th骳 i tho筰/OnCancel"});
		return
	end;
	local HostLeagueID = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, szTongName);
	if (0 == HostLeagueID) then
		CreateTaskSay({"<dec><npc>Bang h閕 c馻 b筺 kh玭g gia nh藀 b蕋 k� li猲 minh n祇, kh玭g c� quy襫 tham gia thi u!", "Tr� v�/tongwar_cityowner", "Ta bi誸 r錳!/OnCancel"});
		return
	end;
	
	local szHostcityName = LG_GetLeagueInfo(HostLeagueID);
	local szHostTongNames = tongwar_getnamestr(HostLeagueID);
	--Change schedule VLDNB 11 - Modified by DinhHQ - 20120507
	local nDate = tonumber(GetLocalDate("%d"));
	if (nDate ~= 16 and nDate ~= 17 and nDate ~= 19 and nDate ~= 20 and nDate ~= 21 and nDate ~= 22 and nDate ~= 23) then
		szmsg = format("<dec><npc>H玬 nay l� ng祔 %d, kh玭g c� thi u.", nDate);
		CreateTaskSay({szmsg, "Tr� v�/tongwar_cityowner", "Ta bi誸 r錳!/OnCancel"});
		return
	end;
	
	local szGuestCityName = tongwar_getenemycity(szHostcityName, nDate);
	if (nil == szGuestCityName) then
		szmsg = format("<dec><npc>H玬 nay %s kh玭g thi u.",szHostcityName);
		CreateTaskSay({szmsg, "Tr� v�/tongwar_cityowner", "Ta bi誸 r錳!/OnCancel"});
		return
	end;
	
	local GuestLeagueID = LG_GetLeagueObj(TONGWAR_LGTYPE, szGuestCityName);
	local szGuestTongNames = ""
	if not FALSE(GuestLeagueID) then 
		szGuestTongNames = tongwar_getnamestr(GuestLeagueID);
	end
	szmsg = format("<dec><npc>Li猲 minh c馻 ta (bang chi誱 th祅h %s): %s <enter>    цi th� h玬 nay (bang chi誱 th祅h %s):  %s", 
										szHostcityName, szHostTongNames,
										szGuestCityName, szGuestTongNames);
	CreateTaskSay({szmsg, "Tr� v�/tongwar_cityowner", "Ta bi誸 r錳!/OnCancel"});
end;

--Change schedule VLDNB 11 - Modified by DinhHQ - 20120507
TAB_CITYNAME = {"Tng Dng", "Bi謓 Kinh", "Phng Tng", "Dng Ch﹗", "L﹎ An", "Th祅h Й", "Чi L�"};
TAB_CALENDAR = {
	[16] = {5, 4, 0, 2, 1, 7, 6},
	[17] = {4, 3, 2, 1, 7, 0, 5},
	[19] = {3, 0, 1, 7, 6, 5, 4},
	[20] = {2, 1, 7, 6, 0, 4, 3},
	[21] = {0, 7, 6, 5, 4, 3, 2},
	[22] = {7, 6, 5, 0, 3, 2, 1},
	[23] = {6, 5, 4, 3, 2, 1, 0}
};

function tongwar_getenemycity(szCityName, nDate)
	local i;
	local nCount = getn(TAB_CITYNAME);
	local nPos = 0;
	for i = 1, nCount do
		if (szCityName == TAB_CITYNAME[i]) then
			nPos = i;
			break;
		end;
	end;
	
	if (0 == nPos) then
		return nil;
	end;

	local nEnemyCityIdx = TAB_CALENDAR[nDate][nPos];
	if (nEnemyCityIdx == 0) then
		return nil;
	end;
	return TAB_CITYNAME[nEnemyCityIdx];
end;

function tongwar_querycityrecord(szCityName)
	local LeagueID = LG_GetLeagueObj(TONGWAR_LGTYPE, szCityName);
	local nResult = LG_GetLeagueTask(LeagueID, TONGWAR_LGTASK_RESULT);
	local nPoint = LG_GetLeagueTask(LeagueID, TONGWAR_LGTASK_POINT);
	local szmsg = format("<dec><npc>T鎛g 甶觤 li猲 minh bang h閕 chi誱 th祅h %s: <color=yellow>%d<color><enter>            T鎛g 甶觤 chi課 u t 頲: <color=yellow>%d<color>",
												 szCityName, nResult, nPoint);
	CreateTaskSay({szmsg, "Tr� v�/tongwar_rank", "Ta bi誸 r錳!/OnCancel"});
end;

function tongwar_getnamestr(LeagueID)	--得到一个城市占领帮会名字的列表；
	local nCount = LG_GetMemberCount(LeagueID);
	local szLeagueName = LG_GetLeagueInfo(LeagueID);
	local i;
	local szNames = "";
	local szTongName = "";
	local nMemberTask = 0;
	for i = 0, nCount - 1 do
		szTongName = LG_GetMemberInfo(LeagueID, i);
		if (LG_GetMemberTask(TONGWAR_LGTYPE, szLeagueName, szTongName, TONGWAR_LGMTASK_JOB) == 1) then
			szNames = "<enter>    <color=red>"..szTongName.."<color>"..szNames;
		else
			szNames = szNames.."<enter>    <color=red>"..szTongName.."<color>";
		end;
	end;
	return szNames;
end;


function tongwar_rank()
	local szTongName = GetTongName();
	if ("" == szTongName) then
		CreateTaskSay({"<dec><npc>Ch璦 gia nh藀 bang h閕, kh玭g th� tham gia thi u.", 
											"K誸 th骳 i tho筰/OnCancel"});
		return
	end;
	
	local HostLeagueID = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, szTongName);
	if (FALSE(HostLeagueID)) then
		CreateTaskSay({"<dec><npc>Bang h閕 c馻 b筺 kh玭g gia nh藀 b蕋 k� li猲 minh n祇, kh玭g th� tham gia thi u!", 
											"K誸 th骳 i tho筰/OnCancel"});
		return
	end;
	
	local szHostcityName = LG_GetLeagueInfo(HostLeagueID);
	local nResult = LG_GetLeagueTask(HostLeagueID, TONGWAR_LGTASK_RESULT);	--总积分
	local nPoint = LG_GetLeagueTask(HostLeagueID, TONGWAR_LGTASK_POINT);		--净积分
	local nPlayerRecord = GetTask(TONGWAR_RLTASK_TOTALPOINT);
	local tab_auerycity = {};
	tab_auerycity[1] = format("<dec><npc>T鎛g 甶觤 li猲 minh %s: <color=yellow>%d<color><enter>            T鎛g 甶觤 chi課 u t 頲: <color=yellow>%d<color><enter>            觤 chi課 u c� nh﹏: <color=yellow>%d<color><enter>Xem th祅h th輈h li猲 minh kh竎",
										szHostcityName, nResult, nPoint, nPlayerRecord);
	
	for i = 1, getn(TAB_CITYNAME) do
		local cityname = TAB_CITYNAME[i];
		if (szHostcityName ~= cityname) then
			tab_auerycity[getn(tab_auerycity) + 1] = format("Xem th祅h t輈h li猲 minh %s/#tongwar_querycityrecord([[%s]])", cityname, cityname);
		end;
	end;
	tab_auerycity[getn(tab_auerycity) + 1] ="Tr� v�/tongWar_Start"
	tab_auerycity[getn(tab_auerycity) + 1] ="K誸 th骳 i tho筰/OnCancel"
	
	CreateTaskSay(tab_auerycity);
end;

function tongwar_aword_talk()	--这个后期来作
	if (FALSE(tongwar_check_ownerright(1))) then
		CreateTaskSay({"<dec><npc>Ch� c� bang ch� bang chi誱 th祅h m韎 c� th� nh薾 thng", "Ta bi誸 r錳!/OnCancel"});
		return
	end;
	
	local tongname = GetTongName()
	local n_lid = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)
	local leaguename = LG_GetLeagueInfo(n_lid)
	
	local nRank = LG_GetLeagueTask(TONGWAR_LGTYPE, leaguename, TONGWAR_LGTASK_RANK);
	if (nRank > 7 or nRank < 1) then
		print("rank wrong")
		return
	end;
	
	local szDescribe = "";
	local arr_Remain = {};
	local isFinished = 1;
	for i = 1, getn(TAB_AWORD_GOOD) do
		arr_Remain[i] = TAB_AWORD_GOOD[i][2][nRank] - LG_GetLeagueTask(TONGWAR_LGTYPE, leaguename, LG_TASK_AWORD[i]);
		if (arr_Remain[i] > 0) then 
			szDescribe = format("%s<enter>%s: <color=yellow>%d<color>",
						szDescribe, TAB_AWORD_GOOD[i][1].szName,arr_Remain[i])
			isFinished = 0; 
		end;
	end;
	if (isFinished == 1) then
		CreateTaskSay({"<dec><npc>Х nh薾 h誸 ph莕 thng r錳", "K誸 th骳 i tho筰/OnCancel"});
		return
	end;
	
	
	local tab_AwordItem = {};
	tab_AwordItem = tongwar_getaworditem(nRank, arr_Remain); --生成奖励物品的选项
	if (getn(tab_AwordItem) == 0) then
		--Describe(WULINMENG_NPC.."联盟", 1, "我知道了/OnCancel");
		print("tab_AwordItem wrong!")
		return
	end;
	tinsert(tab_AwordItem, 1, format("<dec><npc>Ph莕 thng V� L﹎ е Nh蕋 Bang c遪 c� %s<enter>. Trc khi nh薾 c莕 ph秈 <color=red>d鋘 d裵 h祅h trang<color>, ngi mu鑞 nh薾 ph莕 thng n祇?",szDescribe))
	CreateTaskSay(tab_AwordItem);
end

--
function tongwar_awordtalk_descript(szDescribe, nRemain, szItemName)
	if (nRemain > 0) then
		szDescribe = szDescribe.."<color=yellow>"..nRemain.."<color>"..szItemName;
	end;
	return szDescribe;
end;

function tongwar_getaworditem(nRank, arr_Remain)	--生成选择奖励选项
	local tab_AwordItem = {};
	
	for i = 1,getn(arr_Remain) do
		if (arr_Remain[i] > 0) then
			tinsert(tab_AwordItem, format("Nh薾 %s",TAB_AWORD_GOOD[i][1].szName)..format("/#tongwar_aword(%d, %d)",i,nRank));
		end;
	end
	tinsert(tab_AwordItem, "Ta bi誸 r錳!/OnCancel");
	return tab_AwordItem;
end;

function tongwar_aword(nItemType, nRank)
	if (GetTaskTemp(PL_TEMPTASK_SECURITY) == 1) then--防止刷
		return
	end;
	SetTaskTemp(PL_TEMPTASK_SECURITY, 1);
	
	if (FALSE(tongwar_check_ownerright())) then
		SetTaskTemp(PL_TEMPTASK_SECURITY, 0)
		CreateTaskSay({"<dec><npc>Ch� c� bang ch� bang chi誱 th祅h m韎 c� th� nh薾 thng!", "Ta bi誸 r錳!/OnCancel"});
		return
	end;
	
	if (nRank < 1 or nRank > 7) then --排名检查
		SetTaskTemp(PL_TEMPTASK_SECURITY, 0)
		return
	end;
	
	local tongname = GetTongName()
	local n_lid = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)
	local leaguename = LG_GetLeagueInfo(n_lid)
	local nTotal = TAB_AWORD_GOOD[nItemType][2][nRank];
	local nAwordedCount = LG_GetLeagueTask(TONGWAR_LGTYPE, leaguename, LG_TASK_AWORD[nItemType]); --已经奖励的数量
	local nRemainCount = nTotal - nAwordedCount;

	local nFreeItemCount = CalcFreeItemCellCount();--包裹空隙检查
	local nMaxAwordCount = 60;
	if (nItemType == 2 or nItemType == 3) then
		nMaxAwordCount = 10;
	end;
	local nGiveCount = nRemainCount;
	if (nRemainCount > nMaxAwordCount) then
		nGiveCount = nMaxAwordCount;
	end;
	
	if (nFreeItemCount < nGiveCount and nFreeItemCount < nRemainCount) then
		SetTaskTemp(PL_TEMPTASK_SECURITY, 0);
		CreateTaskSay({"<dec><npc>H祅h trang kh玭g  ch� tr鑞g!", "Ta bi誸 r錳!/OnCancel"});
		return
	end;

	local nResult = LG_ApplyAppendLeagueTask(TONGWAR_LGTYPE, leaguename, LG_TASK_AWORD[nItemType], nGiveCount, "", "");
	local str = "";
	if (nResult == 1) then
		str = format("Bang %s - bang ch� %s nh薾 %d %s",tongname,GetName(),nGiveCount,TAB_AWORD_GOOD[nItemType][1].szName);
		tongwar_award_log(str);
		Msg2Player(str);
		
		local nItemID;
		local nowdate = tonumber(GetLocalDate("%y%m%d"))
		tbAwardTemplet:GiveAwardByList(TAB_AWORD_GOOD[nItemType][1],"TongWar_Award",nGiveCount);
--		for i = 1, nGiveCount do
--			nItemID = AddItem(TAB_AWORD_GOOD[nItemType][1][1], TAB_AWORD_GOOD[nItemType][1][2], TAB_AWORD_GOOD[nItemType][1][3], 0, 0, 0, 0);
--			if (nItemType == 1) then
--				SetSpecItemParam(nItemID, 1, nowdate)
--				SyncItem(nItemID)
--			elseif (nItemType == 3) then
--				local nExp = 20e8;
--				SetSpecItemParam(nItemID, 1, mod(nExp, 1e8))
--				SetSpecItemParam(nItemID, 2, nExp / 1e8)
--				SyncItem(nItemID)
--			end;
--			
--		end;
		Msg2Player(format(" v� %d %s",(nRemainCount - nGiveCount),TAB_AWORD_GOOD[nItemType][1].szName));
		SetTaskTemp(PL_TEMPTASK_SECURITY, 0);
		return
	end;
	CreateTaskSay({"<dec><npc>Nh薾 ph莕 thng th蕋 b筰, h穣 th� l筰 l莕 n鱝!", "Ta bi誸 r錳!/OnCancel"});
	tongwar_award_log(str.."Kh玭g th祅h c玭g! Xin h穣 th� l筰!")
	SetTaskTemp(PL_TEMPTASK_SECURITY, 0);
end;

--写入奖励日志
function tongwar_award_log(str)
	WriteLog("[TONGWAR_AWARD]"..date("%y-%m-%d,%H:%M").."\t"..GetAccount().."\t"..GetName().."\t"..str)
end

--返回当前赛季阶段，1-报名，2-比赛，3-奖励
function tongwar_checkinphase()
	local nphase = gb_GetTask("TONGWAR_STATION", 2);
	return nphase;
end

--返回但前赛季ID
function get_tongwar_season()
	local nseason = gb_GetTask("TONGWAR_STATION", 3);
	return nseason;
end;

--清除上一赛季个人积分
function tongwar_clear_rlpoint()
	local nmyseason = GetByte(GetTask(TONGWAR_RLTASK_AWARD), 4);
	local ncurseaon = get_tongwar_season();
	if (nmyseason ~= ncurseaon) then
		SetTask(TONGWAR_RLTASK_AWARD, SetByte(GetTask(TONGWAR_RLTASK_AWARD), 4, ncurseaon));
		SetTask(TONGWAR_RLTASK_TOTALPOINT, 0);
	end;
end;
