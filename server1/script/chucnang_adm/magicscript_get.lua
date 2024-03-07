

function LayMenuMagic()			
    local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
    local tbOpt = 
    {
    {"LÊy 1 Magic Ko HSD",LayMaGicKoHan},
    {"LÊy 10 Magic Ko HSD",Lay100MaGicKoHan},
    {"LÊy 100 Magic Ko HSD",Lay1000MaGicKoHan},
    {"LÊy 1000 Magic Ko HSD",Lay10000MaGicKoHan},
    
    {"LÊy 1 Magic HSD 7 Ngµy",LayMaGicCoHan},
    {"LÊy 10 Magic HSD 7 Ngµy",Lay100MaGicCoHan},
    {"LÊy 100 Magic HSD 7 Ngµy",Lay1000MaGicyCoHan},
    {"LÊy 100 Magic HSD 30 Ngµy",Lay1000MaGicCoHan30},
    {"Tho¸t",OnCancel},
    }
    CreateNewSayEx(szTitle, tbOpt)
    end
    
    
    function LayMaGicKoHan()
    AskClientForNumber("LayMaGicKoHan1",1,10000000,"ID Item")
    end
    function LayMaGicKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=1,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay100MaGicKoHan()
    AskClientForNumber("Lay100MaGicKoHan1",1,10000000,"ID Item")
    end
    function Lay100MaGicKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=10,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay1000MaGicKoHan()
    AskClientForNumber("Lay1000MaGicKoHan1",1,10000000,"ID Item")
    end
    function Lay1000MaGicKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=100,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay10000MaGicKoHan()
    AskClientForNumber("Lay10000MaGicKoHan1",1,10000000,"ID Item")
    end
    function Lay10000MaGicKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=1000,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    
    function LayMaGicCoHan()
    AskClientForNumber("LayMaGicCoHan1",1,10000000,"ID Item")
    end
    function LayMaGicCoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay100MaGicCoHan()
    AskClientForNumber("Lay100MaGicCoHan1",1,10000000,"ID Item")
    end
    function Lay100MaGicCoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=10,nExpiredTime=10080,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay1000MaGicyCoHan()
    AskClientForNumber("Lay1000MaGicyCoHan1",1,10000000,"ID Item")
    end
    function Lay1000MaGicyCoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=100,nExpiredTime=10080,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay1000MaGicCoHan30()
    AskClientForNumber("Lay1000MaGicCoHan301",1,10000000,"ID Item")
    end
    function Lay1000MaGicCoHan301(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={6,1,num,1,0},nCount=100,nExpiredTime=43200,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  MaGic",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    
    