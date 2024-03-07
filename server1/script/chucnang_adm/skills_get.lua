---------------------------------------------------------------------
function nhanskill()
    local tbSay = {}
    tinsert(tbSay,"Vµo Ph¸i Häc full Skill/choose_faction")
    tinsert(tbSay,"Vµo Ph¸i Hoa S¬n/PhaiHoaSon")
    tinsert(tbSay,"NhËn Skill 180/nhanskill180")
    tinsert(tbSay,"Kü N¨ng 120/kynang120")
    tinsert(tbSay,"Kü N¨ng 90/kynang90")
    tinsert(tbSay,"NhËn Skill/addskill")
    tinsert(tbSay,"Xãa Skill/delskill")
    tinsert(tbSay,"Tho¸t/no")
    tinsert(tbSay,"Trë l¹i")
    Say("Xin mêi <color=yellow>"..GetName().."<color> chän Skill  !", getn(tbSay), tbSay)
    end
    --------------------------------------------------------------------------------------------------------
    function nhanskill180()
    local nFaction = GetLastFactionNumber() + 1
        if nFaction == 0 then
            Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ Sö Dông MËt TÞch ThÊt TruyÒn")
            return 1;
        else
            for i=1,11 do
                if (nFaction == i) then
                    if (HaveMagic(SKILL_180[i]) == -1) then
                        AddMagic(SKILL_180[i],20)
                        SetTask(KyNangThatTruyen,1)
                        Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc §­îc Kü N¨ng ThÊt TruyÒn<bclr><bclr=red> "..GetSkillName(SKILL_180[i]), 0)
                    else
                        Talk(1,"","<bclr=violet>"..myplayersex().." §· Häc Kü N¨ng Nµy Kh«ng ThÓ Häc N÷a")
                        return 1;
                    end
                end
            end
        end
    end
    -------------------------------------------------------------------------------------------------------------------------------
    function kynang90()
    AddItem(6,1,2426,0,0,0,0)
    AddItem(6,1,2424,0,0,0,0)
    AddItem(6,1,2426,0,0,0,0)
    AddItem(6,1,2424,0,0,0,0)
    AddItem(6,1,2426,0,0,0,0)
    AddItem(6,1,2424,0,0,0,0)
    end
    function kynang120()
    AddItem(6,1,2425,0,0,0,0)
    AddItem(6,1,1125,0,0,0,0)
    end
    ------------------------------------------------------
    function addskill()
    if check_faction() == 1 then
        Talk(1, "", "Ch­a gia nhËp m«n ph¸i kh«ng thÓ nhËn Skill ®­îc.")
        return
    end
    mp = GetFaction()
    if GetLevel() >= 150 then	
    if GetTask(5007) == 0 then
    if mp == "shaolin" then
    AddMagic(1055,20)
    AddMagic(1056,20)
    AddMagic(1057,20)
    AddMagic(318,20)
    AddMagic(319,20)
    AddMagic(321,20)
    AddMagic(709,20)
    AddMagic(1220,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña ThiÕu L©m. ")
    elseif mp == "tianwang" then
    AddMagic(1058,20)
    AddMagic(1059,20)
    AddMagic(1060,20)
    AddMagic(322,20)
    AddMagic(325,20)
    AddMagic(323,20)
    AddMagic(708,20)
    AddMagic(1221,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn V­¬ng. ")
    elseif mp == "tangmen" then
    AddMagic(1069,20)
    AddMagic(1070,20)
    AddMagic(1071,20)
    AddMagic(1110,20)
    AddMagic(302,20)
    AddMagic(342,20)
    AddMagic(339,20)
    AddMagic(351,0)
    AddMagic(710,20)
    AddMagic(1223,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña §­êng M«n. ")
    elseif mp == "wudu" then
    AddMagic(1066,20)
    AddMagic(1067,20)
    AddMagic(353,20)
    AddMagic(355,20)
    AddMagic(390,0)
    AddMagic(711,20)
    AddMagic(1222,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Ngò §éc.")
    elseif mp == "emei" then
    AddMagic(1061,20)
    AddMagic(1062,20)
    AddMagic(1114,20)
    AddMagic(328,20)
    AddMagic(380,20)
    AddMagic(332,0)
    AddMagic(712,20)
    AddMagic(1224,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Nga My.")
    elseif mp == "cuiyan" then
    AddMagic(1063,20)
    AddMagic(1065,20)
    AddMagic(336,20)
    AddMagic(337,20)
    AddMagic(713,20)
    AddMagic(1225,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thóy Yªn.")
    elseif mp == "gaibang" then
    AddMagic(1073,20)
    AddMagic(1074,20)
    AddMagic(359,20)
    AddMagic(357,20)
    AddMagic(714,20)
    AddMagic(1227,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña C¸i Bang.")
    elseif mp == "tianren" then
    AddMagic(1075,20)
    AddMagic(1076,20)
    AddMagic(362,20)
    AddMagic(361,20)
    AddMagic(391,0)
    AddMagic(715,20)
    AddMagic(1226,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Thiªn NhÉn.")
    elseif mp == "wudang" then
    AddMagic(1078,20)
    AddMagic(1079,20)
    AddMagic(365,20)
    AddMagic(368,20)
    AddMagic(716,20)
    AddMagic(1228,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü cña Vâ §ang.")
    elseif mp == "kunlun" then
    AddMagic(1080,20)
    AddMagic(1081,20)
    AddMagic(372,20)
    AddMagic(375,20)
    AddMagic(394,0)
    AddMagic(717,20)
    AddMagic(1229,20)
    Talk(1,"","Chóc mõng b¹n ®· häc ®­îc tuyÖt kü 150 cña C«n L«n.")
    end
    else
    Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
    end
    else
    Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
    end
    end
    ------------------------------------------------------------------------------------------------------------------------
    function delskill()
    if check_faction() == 1 then
        Talk(1, "", "Ch­a tíi cÊp 150 ch­a thÓ xãa Skill ®­îc...!")
        return
    end
    mp = GetFaction()
    if GetLevel() >= 150 then	
    if GetTask(5007) == 0 then
    if mp == "shaolin" then
    DelMagic(1055,20)
    DelMagic(1056,20)
    DelMagic(1057,20)
    DelMagic(318,20)
    DelMagic(319,20)
    DelMagic(321,20)
    DelMagic(709,20)
    DelMagic(1220,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa  thµnh c«ng tuyÖt kü cña ThiÕu L©m. ")
    elseif mp == "tianwang" then
    DelMagic(1058,20)
    DelMagic(1059,20)
    DelMagic(1060,20)
    DelMagic(322,20)
    DelMagic(325,20)
    DelMagic(323,20)
    DelMagic(708,20)
    DelMagic(1221,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Thiªn V­¬ng. ")
    elseif mp == "tangmen" then
    DelMagic(1069,20)
    DelMagic(1070,20)
    DelMagic(1071,20)
    DelMagic(1110,20)
    DelMagic(302,20)
    DelMagic(342,20)
    DelMagic(339,20)
    DelMagic(710,20)
    DelMagic(1223,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña §­êng M«n. ")
    elseif mp == "wudu" then
    DelMagic(1066,20)
    DelMagic(1067,20)
    DelMagic(353,20)
    DelMagic(355,20)
    DelMagic(711,20)
    DelMagic(1222,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Ngò §éc.")
    
    elseif mp == "emei" then
    DelMagic(1061,20)
    DelMagic(1062,20)
    DelMagic(1114,20)
    DelMagic(328,20)
    DelMagic(380,20)
    DelMagic(712,20)
    DelMagic(1224,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Nga My.")
    
    elseif mp == "cuiyan" then
    DelMagic(1063,20)
    DelMagic(1065,20)
    DelMagic(336,20)
    DelMagic(337,20)
    DelMagic(713,20)
    DelMagic(1225,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Thóy Yªn.")
    
    elseif mp == "gaibang" then
    DelMagic(1073,20)
    DelMagic(1074,20)
    DelMagic(359,20)
    DelMagic(357,20)
    DelMagic(714,20)
    DelMagic(1227,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña C¸i Bang.")
    elseif mp == "tianren" then
    DelMagic(1075,20)
    DelMagic(1076,20)
    DelMagic(362,20)
    DelMagic(361,20)
    DelMagic(715,20)
    DelMagic(1226,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Thiªn NhÉn.")
    elseif mp == "wudang" then
    DelMagic(1078,20)
    DelMagic(1079,20)
    DelMagic(365,20)
    DelMagic(368,20)
    DelMagic(716,20)
    DelMagic(1228,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü cña Vâ §ang.")
    elseif mp == "kunlun" then
    DelMagic(1080,20)
    DelMagic(1081,20)
    DelMagic(372,20)
    DelMagic(375,20)
    DelMagic(717,20)
    DelMagic(1229,20)
    Talk(1,"","Chóc mõng b¹n ®· xãa thµnh c«ng tuyÖt kü 150 cña C«n L«n.")
    end
    else
    Talk(1, "", "Ng­¬i ®· nhËn råi kh«ng thÓ nhËn n÷a.")
    end
    else
    Talk(1, "", "LuyÖn ®Õn cÊp 150 råi h·y ®Õn t×m ta")
    end
    end
    
    function PhaiHoaSon()
        if GetCurCamp() == 0 then
            SetFaction("huashan")
            SetLastFactionNumber(10)
            SetTask(11,10*256)
            SetCamp(3) SetCurCamp(3)
            SetRank(89) SetSeries(2)
            KickOutSelf() addskill()
        else
            Talk(1,"","Ng­¬i §· Gia NhËp Ph¸i Råi")
        end
    end
    
    function addskill()
    AddMagic(1347)
    AddMagic(1372)
    AddMagic(1349)
    AddMagic(1350)
    AddMagic(1374)
    AddMagic(1375)
    AddMagic(1351)
    AddMagic(1376)
    AddMagic(1354)
    AddMagic(1378)
    AddMagic(1355)
    AddMagic(1379)
    AddMagic(1358)
    AddMagic(1360)
    AddMagic(1380)
    AddMagic(1364,20)
    AddMagic(1382,20)
    AddMagic(1365,20)
    AddMagic(1370,20)
    AddMagic(1368,20)
    AddMagic(1384,20) 
    end
    function tangdiemnhanh()
		Say("ThÝch Minh: Ng­¬i muèn t¨ng ®iÓm kü n¨ng nµo?", 4,
			"T¨ng Søc M¹nh/add_prop_str",
			"T¨ng Th©n Ph¸p/add_prop_dex",
			"T¨ng Sinh KhÝ /add_prop_vit",
			"T¨ng Néi C«ng/add_prop_eng")
	end
	
	function add_prop_str()
		AskClientForNumber("enter_str_num", 0, GetProp(), "Xin h·y nhËp ®iÓm sè søc m¹nh: ");
	end
	
	function add_prop_dex()
		AskClientForNumber("enter_dex_num", 0, GetProp(), "Xin h·y nhËp ®iÓm sè th©n ph¸p: ");
	end
	
	function add_prop_vit()
		AskClientForNumber("enter_vit_num", 0, GetProp(), "Xin h·y nhËp ®iÓm sè ngo¹i c«ng:");
	end
	
	function add_prop_eng()
		AskClientForNumber("enter_eng_num", 0, GetProp(), "Xin h·y nhËp ®iÓm sè néi c«ng: ");
	end
	
	function enter_str_num(n_key)
		if (n_key < 0 or n_key > GetProp()) then
			return
		end
		AddStrg(n_key);
	end
	
	function enter_dex_num(n_key)
		if (n_key < 0 or n_key > GetProp()) then
			return
		end
		AddDex(n_key);
	end
	
	function enter_vit_num(n_key)
		if (n_key < 0 or n_key > GetProp()) then
			return
		end
		AddVit(n_key);
	end
	
	function enter_eng_num(n_key)
		if (n_key < 0 or n_key > GetProp()) then
			return
		end
		AddEng(n_key);
	end