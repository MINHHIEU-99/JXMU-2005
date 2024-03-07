--------------------------------------------------------------------------------------------------------------
function TrangBiHiem()
    local tab_Content = {
        "Trang B� H�c Th�n/hacthan",
        "Trang B� Long T��ng/longtuong",
        "Tho�t./no",
    }
    Say("Xin m�i ch�n !", getn(tab_Content), tab_Content);
    end
    
    function hacthan()
    for i = 4013,4017 do
    AddGoldItem(0,i)
    end
    end
    
    function longtuong()
    for i = 4018,4026 do
    AddGoldItem(0,i)
    end
    end
    ----------------------------------------------------------------------------------------------
    function hkmpdoxanh()
    local tab_Content = {
        "Trang B� Ho�ng Kim M�n Ph�i./sethkmp",
        "V� Kh� HKMP./bachkim",
        "L�y �� Xanh./laydoxanh",
        "L�y �� T�m./dotim1",
        "B� An Bang./anbang",
        "[C�c Ph�m] An Bang./anbang1",
        "[Ho�n M�] An Bang./anbang2",
        "[Li�n ��u] An Bang./anbang3",
        "Th�i./no",
        "Tr� l�i"
    }
    Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n trang b� m� b�n mu�n !", getn(tab_Content), tab_Content)
    
    end
    --------------------------------------------------------------------------------------------------------------------------------
    tbDoXanh =
    {
    [1]=
    {
    szName = "D�y chuy�n",
    tbEquip =
    {
    {"To�n th�ch h�ng li�n",0,4,0},
    {"L�c Ph� Th�y H� Th�n ph� ",0,4,1},
    }
    },
    [2]=
    {
    szName = "�o gi�p",
    tbEquip =
    {
    {"Th�t B�o C� Sa",0,2,0},
    {"Ch�n V� Th�nh Y",0,2,1},
    {"Thi�n Nh�n M�t Trang",0,2,2},
    {"Gi�ng Sa B�o",0,2,3},
    {"���ng Ngh� gi�p",0,2,4},
    {"V�n L�u Quy T�ng Y",0,2,5},
    {"Tuy�n Long b�o",0,2,6},
    {"Long Ti�u ��o Y",0,2,8},
    {"C�u V� B�ch H� trang",0,2,9},
    {"Tr�m H��ng sam",0,2,10},
    {"T�ch L�ch Kim Ph�ng gi�p",0,2,11},
    {"V�n Ch�ng T� T�m Y",0,2,12},
    {"L�u Ti�n Qu�n",0,2,13},
    }
    },
    [3]=
    {
    szName = "�ai l�ng",
    tbEquip =
    {
    {"Thi�n T�m Y�u ��i",0,6,0},
    {"B�ch Kim Y�u ��i",0,6,1},
    }
    },
    [4]=
    {
    szName = "Gi�y",
    tbEquip =
    {
    {"C�u Ti�t X��ng V� Ngoa",0,5,0},
    {"Thi�n T�m Ngoa",0,5,1},
    {"Kim L� h�i",0,5,2},
    {"Phi Ph�ng Ngoa",0,5,3},
    }
    },
    [5]=
    {
    szName = "Bao tay",
    tbEquip =
    {
    {"Long Ph�ng Huy�t Ng�c Tr�c",0,8,0},
    {"Thi�n T�m H� Uy�n",0,8,1},
    }
    },
    [6]=
    {
    szName = "N�n",
    tbEquip =
    {
    {"T� L� m�o",0,7,0},
    {"Ng� l�o qu�n",0,7,1},
    {"Tu La Ph�t k�t",0,7,2},
    {"Th�ng Thi�n Ph�t Qu�n",0,7,3},
    {"Y�m Nh�t kh�i",0,7,4},
    {"Tr�ch Tinh ho�n",0,7,5},
    {"� T�m M�o",0,7,6},
    {"Quan �m Ph�t Qu�n",0,7,7},
    {"�m D��ng V� C�c qu�n",0,7,8},
    {"Huy�n T� Di�n Tr�o",0,7,9},
    {"Long Huy�t ��u ho�n",0,7,10},
    {"Long L�n Kh�i",0,7,11},
    {"Thanh Tinh Thoa",0,7,12},
    {"Kim Ph�ng Tri�n S� ",0,7,13},
    }
    },
    [7]=
    {
    szName = "V� kh� c�n chi�n",
    tbEquip =
    {
    {"Huy�n Thi�t Ki�m",0,0,0},
    {"��i Phong �ao",0,0,1},
    {"Kim C� B�ng",0,0,2},
    {"Ph� Thi�n K�ch",0,0,3},
    {"Ph� Thi�n ch�y",0,0,4},
    {"Th�n Nh�t Tr�m",0,0,5},
    }
    },
    [8]=
    {
    szName = "Ng�c b�i",
    tbEquip =
    {
    {"Long Ti�n H��ng Nang",0,9,0},
    {"D��ng Chi B�ch Ng�c",0,9,1},
    }
    },
    [9]=
    {
    szName = "V� kh� t�m xa",
    tbEquip =
    {
    {"B� V��ng Ti�u",0,1,0},
    {"To�i Nguy�t �ao",0,1,1},
    {"Kh�ng T��c Linh",0,1,2},
    }
    },
    [10]=
    {
    szName = "Nh�n",
    tbEquip =
    {
    {"To�n Th�ch Gi�i Ch� ",0,3,0},
    }
    },
    }
    function laydoxanh()
    local tbOpt = {}
    
    for i=1, getn(tbDoXanh) do
    tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
    end
    
    tinsert(tbOpt, {"Tho�t."})
    CreateNewSayEx("<npc>Xin m�i l�a ch�n trang b�:", tbOpt)
    end
    function laydoxanh1(nType)
    local tbEquip = %tbDoXanh[nType]["tbEquip"]
    local tbOpt = {}
    for i=1, getn(tbEquip) do
    tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
    end
    
    tinsert(tbOpt, {"Tho�t."})
    local szTitle = format("<npc>Xin m�i l�a ch�n trang b�:")
    CreateNewSayEx(szTitle, tbOpt)
    end
    function laydoxanh2(nIndex, nType)
    local tbOpt = {}
    tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
    tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType, 1}})
    tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType, 2}})
    tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType, 3}})
    tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType, 4}})
    
    
    tinsert(tbOpt, {"Tho�t."})
    local szTitle = format("<npc>Ch�n h�:")
    CreateNewSayEx(szTitle, tbOpt)
    end
    function laydoxanh3(nIndex, nType, nSeries)
    g_AskClientNumberEx(0, 60, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
    end
    function laydoxanh4(nIndex, nType, nSeries, nCount)
    local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
    for i=1,nCount do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 70, 10) end
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y �� Xanh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))			
    end
    -----------------------------------------------------------------------------------------------------------------------------------------------
    function anbang()
    for i=216,219 do
    AddGoldItem(0, i)
    end
    end
    
    function anbang1()
    for i=408,411  do
    AddGoldItem(0, i)
    end
    end
    
    function anbang2()
    for i=210,213  do
    AddGoldItem(0, i)
    end
    end
    
    function anbang3()
    for i=394,397  do
    AddGoldItem(0, i)
    end
    end
    -----------------------------------------------------------------------------------------
    function dotim1()
    local	tab_Content = {
    "V� Kh�/weapon",
    "Y Ph�c/shirt",
    "��nh M�o/hat",
    "H� Uy�n/glove",
    "Y�u ��i/belt",
    "H�i T�/shoe",
    "Th�i./no",
    "Tr� l�i"
    }
    Say(" Xin m�i ch�n  ? ", getn(tab_Content), tab_Content);
    end
    ------------------------------------------------------------------------------
    function weapon()
    local tab_Content = {
    "Ki�m/kiem",
    "�ao/dao",
    "B�ng/bong",
    "Th��ng/kick",
    "Ch�y/chuy",
    "Song �ao/songdao",
    "Phi Ti�u/phitieu",
    "Phi �ao/phidao",
    "T� Ti�n/tutien",
    "Tho�t."
    }
    Say(" Mu�n l�y th�m c�i g� n�o", getn(tab_Content), tab_Content);
    end;
    --------------------------------------------------------------------------------
    function kiem()
    AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1) 
    end
    
    function dao()
    AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1) 
    end
    
    function bong()
    AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1) 
    end
    
    function kick()
    AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1) 
    end
    
    function chuy()
    AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1) 
    end
    
    function songdao()
    AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1) 
    end
    
    function phitieu()
    AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1) 
    end
    
    function phidao()
    AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1) 
    end
    
    function tutien()
    AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1) 
    end
    -------------------------------------------------------------------
    function shirt()
    local tab_Content = {
    "Th�t B�o C� Sa/aothieulam",
    "Ch�n V� Th�nh Y/aovodang",
    "Thi�n Nh�n M�t Trang/aothiennhan",
    "Gi�ng Sa B�o/sabao",
    "���ng Ngh� Gi�p/dng",
    "V�n L�u Quy T�ng Y/aocaibang",
    "Tuy�n Long B�o/longbao",
    "Long Ti�u ��o Y/daoy",
    "C�u V� B�ch H� Trang/hotrang",
    "Tr�m H��ng Sam/huongsam",
    "T�ch L�ch Kim Ph�ng Gi�p/kimphung",
    "V�n Ch�ng T� T�m Y/tamy",
    "L�u Ti�n Qu�n/tienquan",
    "Tho�t."
    }
    Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
    end;
    ---------------------------------
    function aothieulam()
    AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function aovodang()
    AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function aothiennhan()
    AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function sabao()
    AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function dng()
    AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function aocaibang()
    AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function longbao()
    AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function daoy()
    AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function hotrang()
    AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function huongsam()
    AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function kimphung()
    AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function tamy()
    AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function tienquan()
    AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    --------------------------------------------------------------------
    function hat()
    local tab_Content = {
    "T� L� M�o/lomao",
    "Ng� L�o Qu�n/laoquan",
    "Tu La Ph�t K�t/phatket",
    "Th�ng Thi�n Ph�t Qu�n/phatquan",
    "Y�m Nh�t Kh�i/nhatkhoi",
    "Tr�ch Tinh Ho�n/tinhhoan",
    "� T�m M�o/tammao",
    "Quan �m Ph�t Qu�n/quanam",
    "�m D��ng V� C�c Qu�n/amduong",
    "Huy�n T� Di�n Tr�o/dientrao",
    "Long Huy�t ��u Ho�n/longhuyet",
    "Long L�n Kh�i/lankhoi",
    "Thanh Tinh Thoa/tinhthoa",
    "Kim Ph�ng Tri�n S�/triensi",
    "Tho�t."
    }
    Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
    end;
    --------------------------
    function lomao()
    AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function laoquan()
    AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function phatket()
    AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function phatquan()
    AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function nhatkhoi()
    AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function tinhhoan()
    AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function tammao()
    AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function quanam()
    AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function amduong()
    AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function dientrao()
    AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function longhuyet()
    AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function lankhoi()
    AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function tinhthoa()
    AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function triensi()
    AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    ---------------------------------------------------------------
    function glove()
    local tab_Content = {
    "Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
    "Thi�n T�m H� Uy�n/houyen",
    "Tho�t."
    }
    Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
    end;
    ----------------------
    function ngoctrac()
    AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function houyen()
    AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    -------------------------------------------------------------------
    function belt()
    local tab_Content = {
    "Thi�n T�m Y�u ��i/thientamyeu",
    "B�ch Kim Y�u ��i/bachkimyeudai",
    "Tho�t."
    }
    Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
    end;
    -----------------------
    function thientamyeu()
    AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    
    function bachkimyeudai()
    AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
    AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
    end
    