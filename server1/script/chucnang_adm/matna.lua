----------------------------------------------------------------------
function MatNaTheoNgay()
    AskClientForNumber("MatNaTheoNgay_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function MatNaTheoNgay_d(num)
    local Index = AddItem(0,11,446,1,0,0) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    function MatNaTheoNgay3()
    AskClientForNumber("MatNaTheoNgay3_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function MatNaTheoNgay3_d(num)
    local Index = AddItem(0,11,817,1,0,0) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    function NhanMatNa1Skill()
    AskClientForNumber("NhanMatNa1Skill_d",1,100,"NhËp Sè Ngµy Muèn LÊy") 
    end
    function NhanMatNa1Skill_d(num)
    local Index = AddItem(0,11,647,1,0,0) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end

    function MatNaTheoNgay()
        tbAwardTemplet:GiveAwardByList({{szName="Mat na",tbProp={0,11,853,1,1,0},nCount=1},}, "test", 1);
        end


        
function LayMenuMatNa()			
    local szTitle = "Vâ L©m h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
    local tbOpt = 
    {
    {"LÊy 1 MÆt N¹ Ko HSD",LayMatNaHan},
    {"LÊy 1 MÆt N¹ HSD 1 Ngµy",LayMatNaHSD1},
    {"LÊy 1 MÆt N¹ HSD 3 Ngµy",LayMatNaHSD3},
    {"LÊy 1 MÆt N¹ HSD 7 Ngµy",LayMatNaHSD7},
    {"LÊy 1 MÆt N¹ HSD 15 Ngµy",LayMatNaHSD15},
    {"LÊy 1 MÆt N¹ HSD 30 Ngµy",LayMatNaHSD30},
    {"Tho¸t",OnCancel},
    }
    CreateNewSayEx(szTitle, tbOpt)
    end
    
    
    function LayMatNaHan()
    AskClientForNumber("LayMatNaHan1",1,10000000,"ID Item")
    end
    function LayMatNaHan1(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function LayMatNaHSD1()
    AskClientForNumber("LayMatNaHSD11",1,10000000,"ID Item")
    end
    function LayMatNaHSD11(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function LayMatNaHSD3()
    AskClientForNumber("LayMatNaHSD31",1,10000000,"ID Item")
    end
    function LayMatNaHSD31(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440*3,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function LayMatNaHSD7()
    AskClientForNumber("LayMatNaHSD71",1,10000000,"ID Item")
    end
    function LayMatNaHSD71(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440*7,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    function LayMatNaHSD15()
    AskClientForNumber("LayMatNaHSD151",1,10000000,"ID Item")
    end
    function LayMatNaHSD151(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440*15,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
function LayMatNaHSD30()
    AskClientForNumber("LayMatNaHSD301",1,10000000,"ID Item")
    end
    function LayMatNaHSD301(num)
    tbAwardTemplet:GiveAwardByList({{szName="Item",tbProp={0,11,num,1,0},nCount=1,nExpiredTime=1440*30,},}, "test", 1);
     logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..num.." item  mÆt n¹ ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    
    