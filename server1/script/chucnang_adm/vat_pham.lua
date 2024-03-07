----------------------------------------------------------------------------
function shoe()
    local tab_Content = {
    "Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
    "Thiªn Tµm Ngoa/thientam",
    "Kim Lò Hµi/kimlu",
    "Phi Phông Ngoa/phiphung",
    "Tho¸t."
    }
    Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
    end;
    --------------------------
    function cuutien()
    AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function thientam()
    AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function kimlu()
    AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function phiphung()
    AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    ---------------------------------------------------------------
    function khoangth()
    local tab_Content = {
    "HuyÒn tinh/huytin",
    "Kho¸ng th¹ch/kdb",
    "S¸t thñ gi¶n 80./stg80",
    "S¸t thñ gi¶n 90./stg90",
    "Thñy tinh/thuyti",
    "Phóc duyªn/phucd",
    "Tho¸t./no",
    "Trë l¹i."
    }
    Say(" Ng­¬i muèn lÊy g× nµo? ", getn(tab_Content), tab_Content);
    end;
    -----------------------------------------------------------------------------
    function huytin() 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    AddItem(6,1,147,10,0,0,0) 
    end
    
    function kdb()
    AddItem(6,1,149,1,0,0,0) 
    AddItem(6,1,150,1,0,0,0) 
    AddItem(6,1,150,1,1,0,0) 
    AddItem(6,1,150,1,2,0,0) 
    AddItem(6,1,150,1,3,0,0) 
    AddItem(6,1,150,1,4,0,0) 
    
    AddItem(6,1,151,1,0,0,0) 
    AddItem(6,1,152,1,0,0,0) 
    AddItem(6,1,152,1,1,0,0) 
    AddItem(6,1,152,1,2,0,0)
    AddItem(6,1,152,1,3,0,0)
    AddItem(6,1,152,1,4,0,0)
    
    AddItem(6,1,153,1,0,0,0) 
    AddItem(6,1,154,1,0,0,0)
    AddItem(6,1,154,1,1,0,0) 
    AddItem(6,1,154,1,2,0,0) 
    AddItem(6,1,154,1,3,0,0) 
    AddItem(6,1,154,1,4,0,0) 
    end
    
    
    function stg80()
    AddItem(6,1,400,80,0,0,0) 
    AddItem(6,1,400,80,1,0,0) 
    AddItem(6,1,400,80,2,0,0) 
    AddItem(6,1,400,80,3,0,0) 
    AddItem(6,1,400,80,4,0,0) 
    end
    
    function stg90()
    AddItem(6,1,400,90,0,0,0) 
    AddItem(6,1,400,90,1,0,0) 
    AddItem(6,1,400,90,2,0,0) 
    AddItem(6,1,400,90,3,0,0) 
    AddItem(6,1,400,90,4,0,0) 
    end
    
    function thuyti()
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    AddEventItem(239) 
    end
    
    function phucd()
    AddItem(6,1,122,1,0,0,0)
    AddItem(6,1,123,1,0,0,0) 
    AddItem(6,1,124,1,0,0,0)
    end
    local tbFreeItem = {
        {szName="Håi Thiªn T¸i T¹o CÈm Nang.", tbProp={6,1,1781,1,0,0}, tbParam={60}},
        {szName="Cµn Kh«n Song TuyÖt Béi.", tbProp={6,1,2219,0,0,0}},
        {szName="Nh¹c V­¬ng KiÕm.", tbProp={6,1,2340,0,0,0}},
        {szName="Qu¶ Huy Hoµng Cao CÊp.", tbProp={6,1,1075,1,0,0}},
        {szName="ThËp Toµn §¹i Bæ.", tbProp={6,1,1399,1,0,0}},
        {szName="Viªm §ª §å B¶o.", tbProp={6,1,2805,1,0,0}},
        {szName="Tèng Kim BÝ B¶o.", tbProp={6,1,2741,1,0,0}},
        {szName="§¹i Lùc Hoµn LÔ Hép.", tbProp={6,1,2517,1,0,0}},
        {szName="H·n HuyÕt Long C©u.", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
    }
    
    function show_item()
    local tbOpt = {}
    local nCount = getn(%tbFreeItem)
    local szOption = ""
    for i=1, nCount-1 do
    szOption = format("NhËn %s", %tbFreeItem[i].szName)
    tinsert(tbOpt, {szOption, get_item, {i}})
    end
    szOption = format("NhËn %s", %tbFreeItem[nCount].szName)
    tinsert(tbOpt, {szOption, get_single_item, {nCount}})
    tinsert(tbOpt, {"NhËn cùc phÈm giíi chØ...", get_normal_item})
    tinsert(tbOpt, {"Trë vª.", main})
    tinsert(tbOpt, {"Tho¸t."})
    CreateNewSayEx("<npc>H·y chän vËt phÈm!", tbOpt)
    end
    
    function get_item(nIndex)
    local nMaxCount = CalcFreeItemCellCount()
    g_AskClientNumberEx(0, nMaxCount, "Xin mêi ®­a vµo nhËn lÊy", {get_item_back, {nIndex}})
    end
    
    function get_item_back(nIndex, nCount)
    if nCount <= 0 then
    return
    end
    
    if CalcFreeItemCellCount() < nCount then
    Talk(1, "", format("CÇn Ýt nhÊt <color=yellow>%d<color> tói kh«ng gian...", nCount))
    return
    end
    
    local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
    tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
    end
    
    function get_single_item(nIndex)
    local tbItem = %tbFreeItem[nIndex]
    if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
    Talk(1, "", format("CÇn Ýt nhÊt 1 %dx%d µÄ±³°ü¿O¼ä", tbItem.nWidth, tbItem.nHeigth))
    return
    end
    local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
    tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
    end
    -----------------------------------------------------------------------------
    function get_normal_item()
    local i = random(1,15)
        if (i == 1) then
            AddGoldItem(0,4120)
        elseif (i == 2) then
            AddGoldItem(0,4121)
        elseif (i == 3) then
            AddGoldItem(0,4122)
        elseif (i == 4) then
            AddGoldItem(0,4123)
        elseif (i == 5) then
            AddGoldItem(0,4124)
        elseif (i == 6) then
            AddGoldItem(0,4125)
        elseif (i == 7) then
            AddGoldItem(0,4126)
        elseif (i == 8) then
            AddGoldItem(0,4127)
        elseif (i == 9) then
            AddGoldItem(0,4128)
        elseif (i == 10) then
            AddGoldItem(0,4129)
        elseif (i == 11) then
            AddGoldItem(0,4130)
        elseif (i == 12) then
            AddGoldItem(0,4131)
        elseif (i == 13) then
            AddGoldItem(0,4132)
        elseif (i == 14) then
            AddGoldItem(0,4133)
        elseif (i == 15) then
            AddGoldItem(0,4134)
        end
    end