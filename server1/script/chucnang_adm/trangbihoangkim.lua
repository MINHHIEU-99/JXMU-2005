

function TueThanhDuyenQuan()
    AskClientForNumber("TueThanhDuyenQuan_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function TueThanhDuyenQuan_d(num)
    local Index = AddGoldItem(0,208) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    local Index = AddGoldItem(0,209) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    ----------------------------------------------------------------------
    function CanKhonHoangDe()
    AskClientForNumber("CanKhonHoangDe_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function CanKhonHoangDe_d(num)
    local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    local Index = AddGoldItem(0,530) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    local Index = AddGoldItem(0,531) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t Nh�n th��ng Nh�n C�n Kh�n \n");
    end
    
    
    ----------------------------------------------------------------------
    function ManhSuTheoNgay()
    AskClientForNumber("ManhSuTheoNgay_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function ManhSuTheoNgay_d(num) 
    for i=5995,6003 do
    local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    end
    
    ----------------------------------------------------------------------
    
    function VuLietTheoNgay()
    AskClientForNumber("VuLietTheoNgay_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function VuLietTheoNgay_d(num) 
    for i=5981,5985 do
    local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    end
    ----------------------------------------------------------------------
    function HacThanTheoNgay()
    AskClientForNumber("HacThanTheoNgay_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function HacThanTheoNgay_d(num) 
    for i=4013,4017 do
    local Index = AddGoldItem(0,i) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    end
    ----------------------------------------------------------------------
    function HacThanMoiTheoNgay()
    AskClientForNumber("HacThanMoiTheoNgay_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
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
    AskClientForNumber("VoCucDaiThanh_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function VoCucDaiThanh_d(num)
    local Index = AddGoldItem(0,5980) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
    ----------------------------------------------------------------------
    function CanKhonLuaChon()
    AskClientForNumber("CanKhonLuaChon_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function CanKhonLuaChon_d(num)
    local Index = AddGoldItem(0,4134) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    ----------------------------------------------------------------------
    function CanKhonLuaChonMax()
    AskClientForNumber("CanKhonLuaChonMax_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function CanKhonLuaChonMax_d(num)
    for i=1,5 do
    local Index = AddGoldItem(0,5986) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    end

    
function LayMenuHKMP()			
    local szTitle = "V� L�m h�n hoan ch�o ��n c�c v� anh h�ng b�n h�u ��n v�i server.";
    local tbOpt = 
    {
    {"L�y 1 HKMP Kh�ng HSD",HKMPKoHan},
    {"L�y 1 HKMP HSD 1 Ng�y",HKMP1Ngay},
    {"L�y 1 HKMP HSD 3 Ng�y",HKMP3Ngay},
    {"L�y 1 HKMP HSD 7 Ng�y",HKMP7Ngay},
    {"L�y 1 HKMP HSD 15 Ng�y",HKMP15Ngay},
    {"L�y 1 HKMP HSD 30 Ng�y",HKMP30Ngay},
    {"L�y 1 HKMP HSD 60 Ng�y",HKMP60Ngay},
    {"Tho�t",OnCancel},
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
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  Ho�ng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP1Ngay()
    AskClientForNumber("HKMP1Ngay1",1,10000,"ID")
    end
    function HKMP1Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=1440},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  Ho�ng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    
    function HKMP3Ngay()
    AskClientForNumber("HKMP3Ngay1",1,10000,"ID")
    end
    function HKMP3Ngay1(num)
    for i=1,6 do
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=4320},}, "test", 1);
    end
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  Ho�ng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP7Ngay()
    AskClientForNumber("HKMP7Ngay1",1,10000,"ID")
    end
    function HKMP7Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  Ho�ng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP15Ngay()
    AskClientForNumber("HKMP15Ngay1",1,10000,"ID")
    end
    function HKMP15Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  Ho�ng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP30Ngay()
    AskClientForNumber("HKMP30Ngay1",1,10000,"ID")
    end
    function HKMP30Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=43200},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  Ho�ng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function HKMP60Ngay()
    AskClientForNumber("HKMP60Ngay1",1,10000,"ID")
    end
    function HKMP60Ngay1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,num},nCount=1,nQuality=1,nExpiredTime=43200*2},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  Ho�ng Kim",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end