

function TueThanhDuyenQuan()
    AskClientForNumber("TueThanhDuyenQuan_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function TueThanhDuyenQuan_d(num)
    local Index = AddGoldItem(0,208) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    local Index = AddGoldItem(0,209) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    ----------------------------------------------------------------------
    function CanKhonHoangDe()
    AskClientForNumber("CanKhonHoangDe_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function CanKhonHoangDe_d(num)
    local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    local Index = AddGoldItem(0,530) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    local Index = AddGoldItem(0,531) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t NhËn th­ëng NhÉn Cµn Kh«n \n");
    end
    
    
    ----------------------------------------------------------------------
    function ManhSuTheoNgay()
    AskClientForNumber("ManhSuTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function ManhSuTheoNgay_d(num) 
    for i=5995,6003 do
    local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    end
    
    ----------------------------------------------------------------------
    
    function VuLietTheoNgay()
    AskClientForNumber("VuLietTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function VuLietTheoNgay_d(num) 
    for i=5981,5985 do
    local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    end
    ----------------------------------------------------------------------
    function HacThanTheoNgay()
    AskClientForNumber("HacThanTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function HacThanTheoNgay_d(num) 
    for i=4013,4017 do
    local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    end
    ----------------------------------------------------------------------
    function HacThanMoiTheoNgay()
    AskClientForNumber("HacThanMoiTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function HacThanMoiTheoNgay_d(num)
    if num==100 then
        for i=5988,5992 do
        local Index = AddGoldItem(0,i)
        end 
    else
        for i=5988,5992 do
        local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
        end
    end
    end
    ----
    ------------------------------------------------------------------
    function VoCucDaiThanh()
    AskClientForNumber("VoCucDaiThanh_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function VoCucDaiThanh_d(num)
    local Index = AddGoldItem(0,5980) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
    ----------------------------------------------------------------------
    function CanKhonLuaChon()
    AskClientForNumber("CanKhonLuaChon_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function CanKhonLuaChon_d(num)
    local Index = AddGoldItem(0,4134) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    ----------------------------------------------------------------------
    function CanKhonLuaChonMax()
    AskClientForNumber("CanKhonLuaChonMax_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function CanKhonLuaChonMax_d(num)
    for i=1,5 do
    local Index = AddGoldItem(0,5986) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    end

    
function LayMenuHKMP()			
    local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
    local tbOpt = 
    {
    {"LÊy 1 HKMP Kh«ng HSD",HKMPKoHan},
    {"LÊy 1 HKMP HSD 1 Ngµy",HKMP1Ngay},
    {"LÊy 1 HKMP HSD 3 Ngµy",HKMP3Ngay},
    {"LÊy 1 HKMP HSD 7 Ngµy",HKMP7Ngay},
    {"LÊy 1 HKMP HSD 15 Ngµy",HKMP15Ngay},
    {"LÊy 1 HKMP HSD 30 Ngµy",HKMP30Ngay},
    {"LÊy 1 HKMP HSD 60 Ngµy",HKMP60Ngay},
    {"Tho¸t",OnCancel},
    }
    CreateNewSayEx(szTitle, tbOpt)
    end
    
    
    function HKMPKoHan()
    AskClientForNumber("HKMPKoHan1",1,10000,"ID")
    end
    function HKMPKoHan1(num)
    for i=1,20 do
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1},}, "test", 1);
    end
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP1Ngay()
    AskClientForNumber("HKMP1Ngay1",1,10000,"ID")
    end
    function HKMP1Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=1440},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    
    function HKMP3Ngay()
    AskClientForNumber("HKMP3Ngay1",1,10000,"ID")
    end
    function HKMP3Ngay1(num)
    for i=1,6 do
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=4320},}, "test", 1);
    end
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP7Ngay()
    AskClientForNumber("HKMP7Ngay1",1,10000,"ID")
    end
    function HKMP7Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP15Ngay()
    AskClientForNumber("HKMP15Ngay1",1,10000,"ID")
    end
    function HKMP15Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP30Ngay()
    AskClientForNumber("HKMP30Ngay1",1,10000,"ID")
    end
    function HKMP30Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=43200},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP60Ngay()
    AskClientForNumber("HKMP60Ngay1",1,10000,"ID")
    end
    function HKMP60Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=43200*2},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  Hoµng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end