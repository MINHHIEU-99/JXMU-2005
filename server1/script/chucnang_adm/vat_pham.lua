----------------------------------------------------------------------------
function shoe()
    local tab_Content = {
    "C�u Ti�t X��ng V� Ngoa/cuutien",
    "Thi�n T�m Ngoa/thientam",
    "Kim L� H�i/kimlu",
    "Phi Ph�ng Ngoa/phiphung",
    "Tho�t."
    }
    Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
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
    "Huy�n tinh/huytin",
    "Kho�ng th�ch/kdb",
    "S�t th� gi�n 80./stg80",
    "S�t th� gi�n 90./stg90",
    "Th�y tinh/thuyti",
    "Ph�c duy�n/phucd",
    "Tho�t./no",
    "Tr� l�i."
    }
    Say(" Ng��i mu�n l�y g� n�o? ", getn(tab_Content), tab_Content);
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
        {szName="H�i Thi�n T�i T�o C�m Nang.", tbProp={6,1,1781,1,0,0}, tbParam={60}},
        {szName="C�n Kh�n Song Tuy�t B�i.", tbProp={6,1,2219,0,0,0}},
        {szName="Nh�c V��ng Ki�m.", tbProp={6,1,2340,0,0,0}},
        {szName="Qu� Huy Ho�ng Cao C�p.", tbProp={6,1,1075,1,0,0}},
        {szName="Th�p To�n ��i B�.", tbProp={6,1,1399,1,0,0}},
        {szName="Vi�m �� �� B�o.", tbProp={6,1,2805,1,0,0}},
        {szName="T�ng Kim B� B�o.", tbProp={6,1,2741,1,0,0}},
        {szName="��i L�c Ho�n L� H�p.", tbProp={6,1,2517,1,0,0}},
        {szName="H�n Huy�t Long C�u.", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
    }
    
    function show_item()
    local tbOpt = {}
    local nCount = getn(%tbFreeItem)
    local szOption = ""
    for i=1, nCount-1 do
    szOption = format("Nh�n %s", %tbFreeItem[i].szName)
    tinsert(tbOpt, {szOption, get_item, {i}})
    end
    szOption = format("Nh�n %s", %tbFreeItem[nCount].szName)
    tinsert(tbOpt, {szOption, get_single_item, {nCount}})
    tinsert(tbOpt, {"Nh�n c�c ph�m gi�i ch�...", get_normal_item})
    tinsert(tbOpt, {"Tr� v�.", main})
    tinsert(tbOpt, {"Tho�t."})
    CreateNewSayEx("<npc>H�y ch�n v�t ph�m!", tbOpt)
    end
    
    function get_item(nIndex)
    local nMaxCount = CalcFreeItemCellCount()
    g_AskClientNumberEx(0, nMaxCount, "Xin m�i ��a v�o nh�n l�y", {get_item_back, {nIndex}})
    end
    
    function get_item_back(nIndex, nCount)
    if nCount <= 0 then
    return
    end
    
    if CalcFreeItemCellCount() < nCount then
    Talk(1, "", format("C�n �t nh�t <color=yellow>%d<color> t�i kh�ng gian...", nCount))
    return
    end
    
    local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
    tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
    end
    
    function get_single_item(nIndex)
    local tbItem = %tbFreeItem[nIndex]
    if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
    Talk(1, "", format("C�n �t nh�t 1 %dx%d �ı����O��", tbItem.nWidth, tbItem.nHeigth))
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