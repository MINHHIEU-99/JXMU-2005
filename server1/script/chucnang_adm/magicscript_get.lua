

function LayMenuMagic()			
    local szTitle = "V� L�m h�n hoan ch�o ��n c�c v� anh h�ng b�n h�u ��n v�i server.";
    local tbOpt = 
    {
    {"L�y 1 Magic Ko HSD",LayMaGicKoHan},
    {"L�y 10 Magic Ko HSD",Lay100MaGicKoHan},
    {"L�y 100 Magic Ko HSD",Lay1000MaGicKoHan},
    {"L�y 1000 Magic Ko HSD",Lay10000MaGicKoHan},
    
    {"L�y 1 Magic HSD 7 Ng�y",LayMaGicCoHan},
    {"L�y 10 Magic HSD 7 Ng�y",Lay100MaGicCoHan},
    {"L�y 100 Magic HSD 7 Ng�y",Lay1000MaGicyCoHan},
    {"L�y 100 Magic HSD 30 Ng�y",Lay1000MaGicCoHan30},
    {"Tho�t",OnCancel},
    }
    CreateNewSayEx(szTitle, tbOpt)
    end
    
    
    function LayMaGicKoHan()
    AskClientForNumber("LayMaGicKoHan1",1,10000000,"ID Item")
    end
    function LayMaGicKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=1,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay100MaGicKoHan()
    AskClientForNumber("Lay100MaGicKoHan1",1,10000000,"ID Item")
    end
    function Lay100MaGicKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=10,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay1000MaGicKoHan()
    AskClientForNumber("Lay1000MaGicKoHan1",1,10000000,"ID Item")
    end
    function Lay1000MaGicKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=100,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay10000MaGicKoHan()
    AskClientForNumber("Lay10000MaGicKoHan1",1,10000000,"ID Item")
    end
    function Lay10000MaGicKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=1000,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    
    function LayMaGicCoHan()
    AskClientForNumber("LayMaGicCoHan1",1,10000000,"ID Item")
    end
    function LayMaGicCoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay100MaGicCoHan()
    AskClientForNumber("Lay100MaGicCoHan1",1,10000000,"ID Item")
    end
    function Lay100MaGicCoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=10,nExpiredTime=10080,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay1000MaGicyCoHan()
    AskClientForNumber("Lay1000MaGicyCoHan1",1,10000000,"ID Item")
    end
    function Lay1000MaGicyCoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=100,nExpiredTime=10080,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay1000MaGicCoHan30()
    AskClientForNumber("Lay1000MaGicCoHan301",1,10000000,"ID Item")
    end
    function Lay1000MaGicCoHan301(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=100,nExpiredTime=43200,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    
    