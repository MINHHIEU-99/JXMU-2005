
------------------------------ngua---------------------------
function SieuQuangLuaChon_xanh()
    AskClientForNumber("SieuQuangLuaChon_xanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function SieuQuangLuaChon_xanh_d(num)
    local Index = AddItem(0,10,13,10,0,0,0)  ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
    function XichLongCauLuaChon_xanh()
    AskClientForNumber("XichLongCauLuaChon_xanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function XichLongCauLuaChon_xanh_d(num)
    local Index = AddItem(0,10,9,10,0,0,0)  ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
    function PhienVuLuaChon_xanh()
    AskClientForNumber("PhienVuLuaChon_xanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function PhienVuLuaChon_xanh_d(num)
    local Index = AddItem(0,10,7,10,0,0,0)  ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
    function HanHuyetLuaChon_xanh()
    AskClientForNumber("HanHuyetLuaChon_xanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function HanHuyetLuaChon_xanh_d(num)
    local Index = AddItem(0,10,18,10,0,0,0)  ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
    function PhiVanLuaChon()
    AskClientForNumber("PhiVanLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function PhiVanLuaChon_d(num)
    local Index = AddGoldItem(0,3940) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    function XichLongCauLuaChon()
    AskClientForNumber("XichLongCauLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function XichLongCauLuaChon_d(num)
    local Index = AddGoldItem(0,3941) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    function SuTuLuaChon()
    AskClientForNumber("SuTuLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function SuTuLuaChon_d(num)
    local Index = AddGoldItem(0,3942) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
    function BachHoLuaChon()
    AskClientForNumber("BachHoLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function BachHoLuaChon_d(num)
    local Index = AddGoldItem(0,3943) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    function DuongSaLuaChon()
    AskClientForNumber("DuongSaLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function DuongSaLuaChon_d(num)
    local Index = AddGoldItem(0,3944) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    function NguPhongLuaChon1()
    AskClientForNumber("NguPhongLuaChon_d1",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function NguPhongLuaChon_d1(num)
    local Index = AddGoldItem(0,3945) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    function HanHuyetLuaChon()
    AskClientForNumber("HanHuyetLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function HanHuyetLuaChon_d(num)
    local Index = AddGoldItem(0,3946) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    function HongMaoLuaChon()
    AskClientForNumber("HongMaoLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function HongMaoLuaChon_d(num)
    local Index = AddGoldItem(0,3948) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    function BachHoLyLuaChon()
    AskClientForNumber("BachHoLyLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function BachHoLyLuaChon_d(num)
    local Index = AddGoldItem(0,3947) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
function LayMenuNgua()			
    local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
    local tbOpt = 
    {
    {"LÊy 1 Ngua Ko HSD",LayNguaKoHan},
    {"LÊy 1 Ngua HSD 1 Ngµy",LayNguaHSD1},
    {"LÊy 1 Ngua HSD 3 Ngµy",LayNguaHSD3},
    {"LÊy 1 Ngua HSD 7 Ngµy",LayNguaHSD7},
    {"LÊy 1 Ngua HSD 15 Ngµy",LayNguaHSD15},
    {"LÊy 1 Ngua HSD 30 Ngµy",LayNguaHSD30},
    {"Tho¸t",OnCancel},
    }
    CreateNewSayEx(szTitle, tbOpt)
    end
    
    function LayNguaKoHan()
    AskClientForNumber("LayNguaKoHan1",1,10000000,"ID Item")
    end
    function LayNguaKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function LayNguaHSD1()
    AskClientForNumber("LayNguaHSD11",1,10000000,"ID Item")
    end
    function LayNguaHSD11(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function LayNguaHSD3()
    AskClientForNumber("LayNguaHSD31",1,10000000,"ID Item")
    end
    function LayNguaHSD31(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440*3,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function LayNguaHSD7()
    AskClientForNumber("LayNguaHSD71",1,10000000,"ID Item")
    end
    function LayNguaHSD71(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440*7,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function LayNguaHSD15()
    AskClientForNumber("LayNguaHSD151",1,10000000,"ID Item")
    end
    function LayNguaHSD151(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440*15,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    
    function LayNguaHSD30()
    AskClientForNumber("LayNguaHSD301",1,10000000,"ID Item")
    end
    function LayNguaHSD301(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,10,num,10,0},nCount=1,nExpiredTime=1440*30,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Ngùa",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
function Ngua()
    local tab_Content =
    {
    "Ngùa nhãm 1./vip1",
    "Ngùa nhãm 2./vip2",
    "Ngùa nhãm 3./vip3",
    "Ngùa nhãm 4./vip4",
    "Ngùa nhãm 5./vip5",
    "S­ tö hoµng kim./sutu",
    "Tho¸t./no",
    "Trë l¹i"
    }
    Say("Xin mêi <color=yellow>"..GetName().."<color> chän Ngùa mµ b¹n muèn", getn(tab_Content), tab_Content);
    end
    
    function vip1()
    AddItem(0,10,6,10,0,0,0)
    AddItem(0,10,7,10,0,0,0)
    AddItem(0,10,8,10,0,0,0)
    AddItem(0,10,9,10,0,0,0)
    AddItem(0,10,10,10,0,0,0)
    
    end
    function vip2()
    AddItem(0,10,11,10,0,0,0)
    AddItem(0,10,12,10,0,0,0)
    AddItem(0,10,13,10,0,0,0)
    AddItem(0,10,14,10,0,0,0)
    AddItem(0,10,15,10,0,0,0)
    
    end
    function vip3()
    AddItem(0,10,16,10,0,0,0)
    AddItem(0,10,17,10,0,0,0)
    AddItem(0,10,18,10,0,0,0)
    AddItem(0,10,19,10,0,0,0)
    AddItem(0,10,20,10,0,0,0)
    
    end
    function vip4()
    AddItem(0,10,21,10,0,0,0)
    AddItem(0,10,22,10,0,0,0)
    AddItem(0,10,23,10,0,0,0)
    AddItem(0,10,24,10,0,0,0)
    AddItem(0,10,25,10,0,0,0)
    end
    
    function vip5()
    for i=3963,3966 do
    AddGoldItem(0, i)
    end
    end
    
    function sutu()
    AddGoldItem(0, 3967)
    end