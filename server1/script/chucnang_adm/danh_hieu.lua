------------------------------------------Danh Hi�u--------------------------------------------------------------------------------------------------
function DanhHieu()
    local tab_Content =
    {
    "V�ng s�ng Admin./vsadmin",
    "V� L�m Ki�t Xu�t./vlkx",
    "V� L�m Minh Ch� 1./vlmc1",
    "V� L�m Minh Ch� 2./vlmc2",
    "Ng� Long Cu�ng �ao./ngulongcd",
    "��i H�i Server./daihoisv",
    "Thi�n H� �� Nh�t Bang./thdnb",
    "Tuy�t Th� Cao Th�./tuyetthect",
    "M�nh Long Tranh B�./manhlongtb",
    "Th�i./no",
    "Tr� l�i"
    }
    Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Danh Hi�u !", getn(tab_Content), tab_Content);
    end
    ----------------------------------------------------------------------------------------------------------------------------
    function DanhHieuBuff()
    local tab_Content =
    {
    "V�ng s�ng Admin./vsadminBuff",
    "V� L�m Ki�t Xu�t./vlkxBuff",
    "V� L�m Minh Ch� 1./vlmc1Buff",
    "V� L�m Minh Ch� 2./vlmc2Buff",
    "Ng� Long Cu�ng �ao./ngulongcdBuff",
    "��i H�i Server./daihoisvBuff",
    "Thi�n H� �� Nh�t Bang./thdnbBuff",
    "Tuy�t Th� Cao Th�./tuyetthectBuff",
    "M�nh Long Tranh B�./manhlongtbBuff",
    "Th�i./no",
    "Tr� l�i"
    }
    Say("Xin m�i <color=yellow>"..GetName().."<color> ch�n Danh Hi�u !", getn(tab_Content), tab_Content);
    end
    ----------------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------------------------
    function vsadminBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 228---- ID Danh hi�u
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("Nh�n V�ng S�n Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
    end
    
    function vlkxBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 85 ---- ID Danh hi�u
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("Nh�n V�ng S�n Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
    end
    
    function vlmc2Buff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 3000 ---- ID Danh hi�u
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("Nh�n V�ng S�n Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
    end
    
    function vlmc1Buff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 188 ---- ID Danh hi�u
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("Nh�n V�ng S�n Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
    end
    
    function ngulongcdBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 165 ---- ID Danh hi�u
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("Nh�n V�ng S�n Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
    end
    
    function daihoisvBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 150 ---- ID Danh hi�u
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("Nh�n V�ng S�n Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
    end
    
    function thdnbBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 189 ---- ID Danh hi�u
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("Nh�n V�ng S�n Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
    end
    
    function tuyetthectBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 235 ---- ID Danh hi�u
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("Nh�n V�ng S�n Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
    end
    
    function manhlongtbBuff()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    n_title = 263 ---- ID Danh hi�u
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(n_title, 2, nTime)
    Title_ActiveTitle(n_title)
    SetTask(1122,n_title)
    Msg2Player("Nh�n V�ng S�n Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
    end
    ----------------------------------------------------------------------------------------------------------------------------
    function vsadmin()
    n_title = 228---- ID Danh hi�u
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
    n_title = 85 ---- ID Danh hi�u
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
    n_title = 3000 ---- ID Danh hi�u
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
    n_title = 188 ---- ID Danh hi�u
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
    n_title = 165 ---- ID Danh hi�u
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
    n_title = 150 ---- ID Danh hi�u
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
    n_title = 189 ---- ID Danh hi�u
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
    n_title = 235 ---- ID Danh hi�u
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
    n_title = 263 ---- ID Danh hi�u
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
        Msg2Player("Admin �� cho b�n tr�ng c�y l�i."); 
        PlayerIndex=gmidx 
        Msg2Player("Th�nh C�ng."); 
        --AskClientForNumber("DanhHieuFanCung_d",0,100000,"Nh�p S� L��ng:") 
        end
        function DanhHieuFanCung_d(num)
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        AddProp(-num)
        PlayerIndex=gmidx 
        Msg2Player("Nh�n �i�m Ti�m N�ng"); 
        end
        function DanhHieuFanCung2()
        
        AskClientForNumber("DanhHieuFanCung2_d",0,100000,"Nh�p S� L��ng:") 
        end
        function DanhHieuFanCung2_d(num)
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        AddMagicPoint(-num)
        PlayerIndex=gmidx 
        Msg2Player("Nh�n �i�m K� N�ng"); 
        end