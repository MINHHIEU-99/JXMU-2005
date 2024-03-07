------------------------------------------------------------------------------------------------------------------------------
function DellTask()
    AskClientForNumber("DellTask1",0,5999,"NhËp Sè Task")
    end
    function DellTask1(num)
    gmidx=PlayerIndex
    PlayerIndex=GetTaskTemp(200)
    Msg2Player("Qu¶n lý <color=pink>GM<color> §· Xãa Task Thµnh C«ng")
    SetTask(num, 0)
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Xãa Task Thµnh C«ng")
    end
    -------
    function HoTroTanThuMoi()
        local tbAward = {
        --	{szName="NhÊt Kû Cµn Kh«n Phï", tbProp={6,1,2126,1,0,0},nCount = 30,nExpiredTime=10*24*60},
        --	{szName="Long Dam", tbProp={0,5943},nCount = 1,nExpiredTime=30*24*60,nQuality=1,nBindState = -2},
        --	{szName="NhÉn Kim Quang", tbProp={0,3771},nCount = 2,nExpiredTime=30*24*60,nQuality=1,nBindState = -2},
        --	{szName="Han Huyet", tbProp={0,5214},nCount = 1,nExpiredTime=30*24*60,nQuality=1,nBindState = -2},
        --	{szName="Phi Phong 2", tbProp={0,3468},nCount = 1,nQuality=1,nBindState = -2},
        --	{szName="TÈy tuû kinh", tbProp={6,1,22,1,0,0},nCount = 15,nExpiredTime=7*24*60,nBindState = -2},
        --	{szName="Vâ l©m mËt tÞch", tbProp={6,1,26,1,0,0},nCount = 15,nExpiredTime=7*24*60,nBindState = -2},
    ----	{szName="R­¬ng vò khÝ HKMP Max", tbProp={6,1,4402,1,0,0},nCount = 1,nBindState = -2},
    --	{szName="LÏ Bao MÆt N¹ Tèng Kim", tbProp={6,1,4443,1,0,0},nCount = 1,nBindState = -2},
        --	{szName="tran phai linh duoc", tbProp={6,1,1705,1,0,0},nCount = 60},
        --	{szName="tran phai linh duoc", tbProp={6,1,1704,1,0,0},nCount = 60},
        --	{szName="tin vat mon phai", tbProp={6,1,1670,1,0,0},nCount = 2},
        --	{szName="Tu Luyen Chau", tbProp={6,1,1827,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},
            --{szName="Huy HiÖu Sao Vµng", tbProp={6,1,4378,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
        --	{szName="B¶o r­¬ng giíi h¹n lùa chän ", tbProp={6,1,4374,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},
    --		{szName="Tói tÝch lòy Tèng Kim", tbProp={6,1,4361,1,0,0},nCount = 10,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="B«n Tiªu", tbProp={0,10,6,10,0,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},
        --	{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*60,nBindState = -2},
        --	{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="Phong V©n Phæ Phßng hoµn", tbProp={6,1,191,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="Phong V©n B¨ng Phßng hoµn", tbProp={6,1,192,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="Chuyªn dïng cho Phong V©n L«i phßng hoµn", tbProp={6,1,193,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="Chuyªn dïng cho Phong V©n Háa phßng hoµn", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
            --{szName="Chuyªn dïng cho Phong V©n §éc phßng hoµn", tbProp={6,1,195,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
    --	{szName="KÝch C«ng Trî Lùc Hoµn", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="¢m D­¬ng Ho¹t HuyÕt §¬n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},		
        }
        
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng GiftCode")
    
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> NhËn Hç Trî  Live Stream Thµnh C«ng")
    end
    
    function HoTroTanThuMoi2()
        local tbAward = {
        --	{szName="NhÊt Kû Cµn Kh«n Phï (7 Ngµy)", tbProp={6,1,4364,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
            {szName="le bao mat na", tbProp={6,1,4443,1,0,0},nCount = 1,nExpiredTime=7*24*60},
    --		{szName="vlmt", tbProp={6,1,26,1,0,0},nCount = 15,nExpiredTime=7*24*60,nBindState = -2},
        --	{szName="vlmt", tbProp={0,3772},nCount = 2,nExpiredTime=7*24*60,nQuality=1,nBindState = -2},
        --	{szName="Huy HiÖu Sao Vµng", tbProp={6,1,4378,1,0,0},nCount = 1,nExpiredTime=7*24*60,nBindState = -2},
        --	{szName="2 r­¬ng h¹n chÕ", tbProp={6,1,4369,1,0,0},nCount = 2,nExpiredTime=7*24*60,nBindState = -2},
        --	{szName="tin vat mon phai", tbProp={6,1,1670,1,0,0},nCount = 2,nExpiredTime=30*24*60,nBindState = -2},
    --		{szName="Tói tÝch lòy Tèng Kim", tbProp={6,1,4361,1,0,0},nCount = 10,nExpiredTime=1*24*60,nBindState = -2},
    --		{szName="Sieu Quang", tbProp={0,10,13,10,0,0,0},nCount = 1,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=7*24*60,nBindState = -2},
        --	{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="Phong V©n Phæ Phßng hoµn", tbProp={6,1,191,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="Phong V©n B¨ng Phßng hoµn", tbProp={6,1,192,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="Chuyªn dïng cho Phong V©n L«i phßng hoµn", tbProp={6,1,193,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        ---	{szName="Chuyªn dïng cho Phong V©n Háa phßng hoµn", tbProp={6,1,194,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="Chuyªn dïng cho Phong V©n §éc phßng hoµn", tbProp={6,1,195,1,0,0},nCount = 50,nExpiredTime=1*24*60,nBindState = -2},
        --	{szName="KÝch C«ng Trî Lùc Hoµn", tbProp={6,1,2952,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
            --{szName="¢m D­¬ng Ho¹t HuyÕt §¬n", tbProp={6,1,2953,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},		
        --	{szName="Cong Kick", tbProp={6,1,1704,1,0,0},nCount = 15,nExpiredTime=10*24*60,nBindState = -2},		
        --	{szName="¢m D­¬ng", tbProp={6,1,1705,1,0,0},nCount = 15,nExpiredTime=10*24*60,nBindState = -2},		
            {szName="Kim Quang", tbProp={0,3771},nQuality=1,nCount = 2,nExpiredTime=15*24*60},		
        }
        
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
        if CalcFreeItemCellCount() <= 20 then
        Say("Kh«ng §ñ 20 ¤ Trèng, xãa vËt phÈm råi nhê GM add l¹i")
        return
        end
    tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng GiftCode")
    
    PlayerIndex=gmidx 
    WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t ®· hç trî "..ObjAccount.."  "..ObjName.." 1 MÆt n¹ + 2 NhÉn Kim Quang 15 Ngµy \n");
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> NhËn Hç Trî Thµnh C«ng")
    end
    
    function NhanHoTroTrungSinh3()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    for i=3000,3500 do
    if GetTask(i)>=1 then
    PlayerIndex=gmidx 
    Msg2Player("---------Task-"..i.."--------Gia Tri:"..GetTask(i).."------------")
    end
    end
    PlayerIndex=gmidx 
    
    end
    function goto_lam_an()
        SetFightState(1)
        NewWorld(930,1750,3394)
        end
        function goto_bien_kinh()
        SetFightState(1)
        NewWorld(927,1749,3388)
        end
        function goto_thanh_do()
        SetFightState(1)
        NewWorld(926,1712,3300)
        end
        function goto_tuong_duong()
        SetFightState(1)
        NewWorld(931,1710,3303)
        end
        function goto_phuong_tuong()
        SetFightState(1)
        NewWorld(929,1764,3513)
        end
        function goto_duong_chau()
        SetFightState(1)
        NewWorld(932,1728,3302)
        end
        function goto_dai_ly()
        SetFightState(1)
        NewWorld(928,1727,3295)
        end
        function goto_ba_lang()
        SetFightState(0)
        NewWorld(53,1598,3191)
        end
        function goto_loidai()
        SetFightState(0)
        NewWorld(209,1612,3197)
        end
        function goto_tongkim()
        SetFightState(0)
        NewWorld(380,1568,3195)
        end
        function goto_liendau()
        SetFightState(0)
        NewWorld(380,1568,3195)
        end
        
        function goto_ca_dao()
        SetFightState(1)
        NewWorld(968,1586,3172)
        end
        function goto_nha_tu()
            SetFightState(0)
                DisabledUseTownP(0);
            NewWorld(208,1785,3058)
            end
            function goto_tong_kim()----------
            NewWorld(900,180*8,208*16)
            end
            function xem_blh1()----------
            NewWorld(53,220*8,200*16)
            end
            function xem_blh2()----------
            NewWorld(53,207*8,182*16)
            end
            function xem_vlt1()----------
            NewWorld(99,189*8,223*16)
            end
            function xem_vlt2()----------
            NewWorld(99,224*8,206*16)
            end
            function xem_lmt1()----------
            NewWorld(121,226*8,275*16)
            end
            function xem_lmt2()----------
            NewWorld(121,276*8,282*16)
            end
            function xem_ctt1()----------
            NewWorld(100,183*8,203*16)
            end
            function xem_ctt2()----------
            NewWorld(100,229*8,190*16)
            end
            function xem_dht1()----------
            NewWorld(101,171*8,198*16)
            end
            function xem_dht2()----------
            NewWorld(101,232*8,205*16)
            end
            function xem_ltt1()----------
            NewWorld(174,218*8,192*16)
            end
            function xem_ltt2()----------
            NewWorld(174,183*8,211*16)
            end
            function xem_gtt1()----------
            NewWorld(20,432*8,359*16)
            end
            function xem_gtt2()----------
            NewWorld(20,438*8,396*16)
            end
            function xem_tct1()----------
            NewWorld(153,232*8,180*16)
            end
            function xem_tct2()----------
            NewWorld(153,189*8,223*16)
            end