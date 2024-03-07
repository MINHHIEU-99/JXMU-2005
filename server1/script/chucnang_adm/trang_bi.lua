--------------------------------------------------------------------------------------------------------------
function TrangBiHiem()
    local tab_Content = {
        "Trang BÞ H¾c ThÇn/hacthan",
        "Trang BÞ Long T­¬ng/longtuong",
        "Tho¸t./no",
    }
    Say("Xin mêi chän !", getn(tab_Content), tab_Content);
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
        "Trang BÞ Hoµng Kim M«n Ph¸i./sethkmp",
        "Vò KhÝ HKMP./bachkim",
        "LÊy §å Xanh./laydoxanh",
        "LÊy §å TÝm./dotim1",
        "Bé An Bang./anbang",
        "[Cùc PhÈm] An Bang./anbang1",
        "[Hoµn Mü] An Bang./anbang2",
        "[Liªn §Êu] An Bang./anbang3",
        "Th«i./no",
        "Trë l¹i"
    }
    Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän trang bÞ mµ b¹n muèn !", getn(tab_Content), tab_Content)
    
    end
    --------------------------------------------------------------------------------------------------------------------------------
    tbDoXanh =
    {
    [1]=
    {
    szName = "D©y chuyÒn",
    tbEquip =
    {
    {"Toµn th¹ch h¹ng liªn",0,4,0},
    {"Lôc PhØ Thóy Hé Th©n phï ",0,4,1},
    }
    },
    [2]=
    {
    szName = "¸o gi¸p",
    tbEquip =
    {
    {"ThÊt B¶o Cµ Sa",0,2,0},
    {"Ch©n Vò Th¸nh Y",0,2,1},
    {"Thiªn NhÉn MËt Trang",0,2,2},
    {"Gi¸ng Sa Bµo",0,2,3},
    {"§­êng Nghª gi¸p",0,2,4},
    {"V¹n L­u Quy T«ng Y",0,2,5},
    {"TuyÒn Long bµo",0,2,6},
    {"Long Tiªu ®¹o Y",0,2,8},
    {"Cöu VÜ B¹ch Hå trang",0,2,9},
    {"TrÇm H­¬ng sam",0,2,10},
    {"TÝch LÞch Kim Phông gi¸p",0,2,11},
    {"V¹n Chóng TÒ T©m Y",0,2,12},
    {"L­u Tiªn QuÇn",0,2,13},
    }
    },
    [3]=
    {
    szName = "§ai l­ng",
    tbEquip =
    {
    {"Thiªn Tµm Yªu §¸i",0,6,0},
    {"B¹ch Kim Yªu §¸i",0,6,1},
    }
    },
    [4]=
    {
    szName = "Giµy",
    tbEquip =
    {
    {"Cöu TiÕt X­¬ng VÜ Ngoa",0,5,0},
    {"Thiªn Tµm Ngoa",0,5,1},
    {"Kim Lò hµi",0,5,2},
    {"Phi Phông Ngoa",0,5,3},
    }
    },
    [5]=
    {
    szName = "Bao tay",
    tbEquip =
    {
    {"Long Phông HuyÕt Ngäc Tr¹c",0,8,0},
    {"Thiªn Tµm Hé UyÓn",0,8,1},
    }
    },
    [6]=
    {
    szName = "Nãn",
    tbEquip =
    {
    {"Tú L« m·o",0,7,0},
    {"Ngò l·o qu¸n",0,7,1},
    {"Tu La Ph¸t kÕt",0,7,2},
    {"Th«ng Thiªn Ph¸t Qu¸n",0,7,3},
    {"YÓm NhËt kh«i",0,7,4},
    {"TrÝch Tinh hoµn",0,7,5},
    {"¤ Tµm M·o",0,7,6},
    {"Quan ¢m Ph¸t Qu¸n",0,7,7},
    {"¢m D­¬ng V« Cùc qu¸n",0,7,8},
    {"HuyÒn Tª DiÖn Tr¸o",0,7,9},
    {"Long HuyÕt §Çu hoµn",0,7,10},
    {"Long L©n Kh«i",0,7,11},
    {"Thanh Tinh Thoa",0,7,12},
    {"Kim Phông TriÓn SÝ ",0,7,13},
    }
    },
    [7]=
    {
    szName = "Vò khÝ c©n chiÕn",
    tbEquip =
    {
    {"HuyÒn ThiÕt KiÕm",0,0,0},
    {"§¹i Phong §ao",0,0,1},
    {"Kim C« Bæng",0,0,2},
    {"Ph¸ Thiªn KÝch",0,0,3},
    {"Ph¸ Thiªn chïy",0,0,4},
    {"Th«n NhËt Tr·m",0,0,5},
    }
    },
    [8]=
    {
    szName = "Ngäc béi",
    tbEquip =
    {
    {"Long Tiªn H­¬ng Nang",0,9,0},
    {"D­¬ng Chi B¹ch Ngäc",0,9,1},
    }
    },
    [9]=
    {
    szName = "Vò khÝ tÇm xa",
    tbEquip =
    {
    {"B¸ V­¬ng Tiªu",0,1,0},
    {"To¸i NguyÖt §ao",0,1,1},
    {"Khæng T­íc Linh",0,1,2},
    }
    },
    [10]=
    {
    szName = "NhÉn",
    tbEquip =
    {
    {"Toµn Th¹ch Giíi ChØ ",0,3,0},
    }
    },
    }
    function laydoxanh()
    local tbOpt = {}
    
    for i=1, getn(tbDoXanh) do
    tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
    end
    
    tinsert(tbOpt, {"Tho¸t."})
    CreateNewSayEx("<npc>Xin mêi lùa chän trang bÞ:", tbOpt)
    end
    function laydoxanh1(nType)
    local tbEquip = %tbDoXanh[nType]["tbEquip"]
    local tbOpt = {}
    for i=1, getn(tbEquip) do
    tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
    end
    
    tinsert(tbOpt, {"Tho¸t."})
    local szTitle = format("<npc>Xin mêi lùa chän trang bÞ:")
    CreateNewSayEx(szTitle, tbOpt)
    end
    function laydoxanh2(nIndex, nType)
    local tbOpt = {}
    tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
    tinsert(tbOpt, {"Méc", laydoxanh3, {nIndex, nType, 1}})
    tinsert(tbOpt, {"Thñy", laydoxanh3, {nIndex, nType, 2}})
    tinsert(tbOpt, {"Háa", laydoxanh3, {nIndex, nType, 3}})
    tinsert(tbOpt, {"Thæ ", laydoxanh3, {nIndex, nType, 4}})
    
    
    tinsert(tbOpt, {"Tho¸t."})
    local szTitle = format("<npc>Chän hÖ:")
    CreateNewSayEx(szTitle, tbOpt)
    end
    function laydoxanh3(nIndex, nType, nSeries)
    g_AskClientNumberEx(0, 60, "Sè l­îng:", {laydoxanh4, {nIndex, nType, nSeries}})
    end
    function laydoxanh4(nIndex, nType, nSeries, nCount)
    local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
    for i=1,nCount do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 70, 10) end
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy §å Xanh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))			
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
    "Vò KhÝ/weapon",
    "Y Phôc/shirt",
    "§Ønh M¹o/hat",
    "Hæ UyÓn/glove",
    "Yªu §¸i/belt",
    "Hµi Tö/shoe",
    "Th«i./no",
    "Trë l¹i"
    }
    Say(" Xin mêi chän  ? ", getn(tab_Content), tab_Content);
    end
    ------------------------------------------------------------------------------
    function weapon()
    local tab_Content = {
    "KiÕm/kiem",
    "§ao/dao",
    "Bæng/bong",
    "Th­¬ng/kick",
    "Chïy/chuy",
    "Song §ao/songdao",
    "Phi Tiªu/phitieu",
    "Phi §ao/phidao",
    "Tô TiÔn/tutien",
    "Tho¸t."
    }
    Say(" Muèn lÊy thªm c¸i g× nµo", getn(tab_Content), tab_Content);
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
    "ThÊt B¶o Cµ Sa/aothieulam",
    "Ch©n Vò Th¸nh Y/aovodang",
    "Thiªn NhÉn MËt Trang/aothiennhan",
    "Gi¸ng Sa Bµo/sabao",
    "§­êng Nghª Gi¸p/dng",
    "V¹n L­u Quy T«ng Y/aocaibang",
    "TuyÒn Long Bµo/longbao",
    "Long Tiªu §¹o Y/daoy",
    "Cöu VÜ B¹ch Hå Trang/hotrang",
    "TrÇm H­¬ng Sam/huongsam",
    "TÝch LÞch Kim Phông Gi¸p/kimphung",
    "V¹n Chóng TÒ T©m Y/tamy",
    "L­u Tiªn QuÇn/tienquan",
    "Tho¸t."
    }
    Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
    "Tú L« M·o/lomao",
    "Ngò L·o Qu¸n/laoquan",
    "Tu La Ph¸t KÕt/phatket",
    "Th«ng Thiªn Ph¸t Qu¸n/phatquan",
    "YÓm NhËt Kh«i/nhatkhoi",
    "TrÝch Tinh Hoµn/tinhhoan",
    "¤ Tµm M·o/tammao",
    "Quan ¢m Ph¸t Qu¸n/quanam",
    "¢m D­¬ng V« Cùc Qu¸n/amduong",
    "HuyÒn Tª DiÖn Tr¸o/dientrao",
    "Long HuyÕt §Çu Hoµn/longhuyet",
    "Long L©n Kh«i/lankhoi",
    "Thanh Tinh Thoa/tinhthoa",
    "Kim Phông TriÓn SÝ/triensi",
    "Tho¸t."
    }
    Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
    "Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
    "Thiªn Tµm Hé UyÓn/houyen",
    "Tho¸t."
    }
    Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
    "Thiªn Tµm Yªu §¸i/thientamyeu",
    "B¹ch Kim Yªu §¸i/bachkimyeudai",
    "Tho¸t."
    }
    Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
    