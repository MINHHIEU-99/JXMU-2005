
function LayMenuQueskey()			
    local szTitle = "V� L�m h�n hoan ch�o ��n c�c v� anh h�ng b�n h�u ��n v�i server.";
    local tbOpt = 
    {
    {"L�y 1 Queskey Ko HSD",LayQuekeyKoHan},
    {"L�y 10 Queskey Ko HSD",Lay100QuekeyKoHan},
    {"L�y 100 Queskey Ko HSD",Lay1000QuekeyKoHan},
    {"L�y 1 Queskey HSD 7 Ng�y",LayQuekeyCoHan},
    {"L�y 10 Queskey HSD 7 Ng�y",Lay100QuekeyCoHan},
    {"L�y 100 Queskey HSD 7 Ng�y",Lay1000QuekeyCoHan},
    {"Tho�t",OnCancel},
    }
    CreateNewSayEx(szTitle, tbOpt)
    end
    
    function LayQuekeyCoHan()
    AskClientForNumber("LayQuekeyCoHan1",1,10000000,"ID Item")
    end
    function LayQuekeyCoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=1,nExpiredTime=10080},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay100QuekeyCoHan()
    AskClientForNumber("Lay100QuekeyCoHan1",1,10000000,"ID Item")
    end
    function Lay100QuekeyCoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=10,nExpiredTime=10080,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay1000QuekeyCoHan()
    AskClientForNumber("Lay1000QuekeyCoHan1",1,10000000,"ID Item")
    end
    function Lay1000QuekeyCoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=100,nExpiredTime=10080,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    
    function LayQuekeyKoHan()
    AskClientForNumber("LayQuekeyKoHan1",1,10000000,"ID Item")
    end
    function LayQuekeyKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=1,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay100QuekeyKoHan()
    AskClientForNumber("Lay100QuekeyKoHan1",1,10000000,"ID Item")
    end
    function Lay100QuekeyKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=10,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function Lay1000QuekeyKoHan()
    AskClientForNumber("Lay1000QuekeyKoHan1",1,10000000,"ID Item")
    end
    function Lay1000QuekeyKoHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={4,num,1,1},nCount=100,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] l�y "..num.." item  QuestKey",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end