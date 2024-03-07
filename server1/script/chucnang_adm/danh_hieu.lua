------------------------------------------Danh HiÖu--------------------------------------------------------------------------------------------------
function DanhHieu()
    local tab_Content =
    {
    "Vßng s¸ng Admin./vsadmin",
    "Vâ L©m KiÖt XuÊt./vlkx",
    "Vâ L©m Minh Chñ 1./vlmc1",
    "Vâ L©m Minh Chñ 2./vlmc2",
    "Ngù Long Cuång §ao./ngulongcd",
    "§¹i Héi Server./daihoisv",
    "Thiªn H¹ §Ö NhÊt Bang./thdnb",
    "TuyÖt ThÕ Cao Thñ./tuyetthect",
    "M·nh Long Tranh B¸./manhlongtb",
    "Th«i./no",
    "Trë l¹i"
    }
    Say("Xin mêi <color=yellow>"..GetName().."<color> chän Danh HiÖu !", getn(tab_Content), tab_Content);
    end
    ----------------------------------------------------------------------------------------------------------------------------
    function DanhHieuBuff()
    local tab_Content =
    {
    "Vßng s¸ng Admin./vsadminBuff",
    "Vâ L©m KiÖt XuÊt./vlkxBuff",
    "Vâ L©m Minh Chñ 1./vlmc1Buff",
    "Vâ L©m Minh Chñ 2./vlmc2Buff",
    "Ngù Long Cuång §ao./ngulongcdBuff",
    "§¹i Héi Server./daihoisvBuff",
    "Thiªn H¹ §Ö NhÊt Bang./thdnbBuff",
    "TuyÖt ThÕ Cao Thñ./tuyetthectBuff",
    "M·nh Long Tranh B¸./manhlongtbBuff",
    "Th«i./no",
    "Trë l¹i"
    }
    Say("Xin mêi <color=yellow>"..GetName().."<color> chän Danh HiÖu !", getn(tab_Content), tab_Content);
    end
    ----------------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------------
    function vsadminBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 228---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
    end
    
    function vlkxBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 85 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
    end
    
    function vlmc2Buff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 3000 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
    end
    
    function vlmc1Buff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 188 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
    end
    
    function ngulongcdBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 165 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
    end
    
    function daihoisvBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 150 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
    end
    
    function thdnbBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 189 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
    end
    
    function tuyetthectBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 235 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
    end
    
    function manhlongtbBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 263 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("NhËn Vßng S¸n Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("NhËn Vßng S¸ng Thµnh C«ng"); 
    end
    ----------------------------------------------------------------------------------------------------------------------------
    function vsadmin()
    n_title = 228---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    end
    
    function vlkx()
    n_title = 85 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    end
    
    function vlmc2()
    n_title = 3000 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    end
    
    function vlmc1()
    n_title = 188 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    end
    
    function ngulongcd()
    n_title = 165 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    end
    
    function daihoisv()
    n_title = 150 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    end
    
    function thdnb()
    n_title = 189 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    end
    
    function tuyetthect()
    n_title = 235 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    end
    
    function manhlongtb()
    n_title = 263 ---- ID Danh hiÖu
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    end
    function DanhHieuFanCung()
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        SetTask(1560,0)
        SetTask(1561,0)
        Msg2Player("Admin ®· cho b¹n trång c©y l¹i."); 
        PlayerIndex=gmidx 
        Msg2Player("Thµnh C«ng."); 
        --AskClientForNumber("DanhHieuFanCung_d",0,100000,"NhËp Sè L­îng:") 
        end
        function DanhHieuFanCung_d(num)
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        AddProp(-num)
        PlayerIndex=gmidx 
        Msg2Player("NhËn §iÓm TiÒm N¨ng"); 
        end
        function DanhHieuFanCung2()
        
        AskClientForNumber("DanhHieuFanCung2_d",0,100000,"NhËp Sè L­îng:") 
        end
        function DanhHieuFanCung2_d(num)
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        AddMagicPoint(-num)
        PlayerIndex=gmidx 
        Msg2Player("NhËn §iÓm Kü N¨ng"); 
        end