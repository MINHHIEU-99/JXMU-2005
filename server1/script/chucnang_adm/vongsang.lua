
function ChonVongSang1()

    AskClientForNumber("ChonVongSang_d11",1,1000,"Nh�p S� Mu�n L�y") 
    end
    function ChonVongSang_d11(num)
    
    local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
    local nDate = FormatTime2Number(nServerTime);
    local nDay = floor(mod(nDate,1000000) / 10000);
    local nMon = mod(floor(nDate / 1000000) , 100)
    local nTime = nMon * 1000000 + nDay * 10000 
    Title_AddTitle(num, 2, nTime)
    Title_ActiveTitle(num)
    SetTask(1122,num)
    Msg2Player("Nh�n V�ng S�ng Th�nh C�ng1"); 
    end

    

    function nhanvongsang()
        local tbSay = 
    {
    "V�ng s�ng 1/#NhanVongSangVip(1682)",
    "V�ng s�ng 2/#NhanVongSangVip(1683)",
    "V�ng s�ng 3/#NhanVongSangVip(1684)",
    "V�ng s�ng 4/#NhanVongSangVip(1685)",
    "V�ng s�ng 5/#NhanVongSangVip(1662)",
    "V�ng s�ng 6/#NhanVongSangVip(1663)",
    "V�ng s�ng 7/#NhanVongSangVip(1664)",
    "V�ng s�ng 8/#NhanVongSangVip(1665)",
    "V�ng s�ng 9/#NhanVongSangVip(1674)",
    "V�ng s�ng 10/#NhanVongSangVip(1675)",
    "V�ng s�ng 11/#NhanVongSangVip(1676)",
    "V�ng s�ng 12/#NhanVongSangVip(1677)",
    "V�ng s�ng 13/#NhanVongSangVip(1678)",
    "X�a T�t C� V�ng S�ng/#xoavongsang()",
    "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("Ch�n ch�c n�ng n�o?",getn(tbSay),tbSay)
    --	return 1;
    --tbAwardTemplet:GiveAwardByList({{szName="Lenh Bai",tbProp={6,1,4402,1,1},nCount=1,nExpiredTime=20*24*60},}, "test", 1);
    end
    function xoavongsang()
    --GetSkillState()
    for i=500,1678 do
        RemoveSkillState(i,30,3,559872000,1) 
    end
    end
    function NhanVongSangVip(vongsang)
    --	gmidx=PlayerIndex 
    --PlayerIndex=GetTaskTemp(200) 
    
        --local ntime=18*60*60*24*14
    --for i=1546,1650 do
    --RemoveSkillState(958,20,3,559872000,1) 
    --RemoveSkillState(959,20,3,559872000,1) 
    --RemoveSkillState(960,20,3,559872000,1) 
    --end
    for i=1682,1685 do
        RemoveSkillState(i,20,3,559872000,1) 
    end
    
    --PlayerFunLib:AddSkillState(vongsang,21,0,54)
    --PlayerFunLib:AddSkillState(vongsang,3,0,54)
    --PlayerFunLib:AddSkillState(vongsang,2,0,54)
    --PlayerFunLib:AddSkillState(vongsang,2,0,54)
    PlayerFunLib:AddSkillState(vongsang,20,3,18*60*60*24*1,1)
    --PlayerIndex=gmidx 
    Msg2Player("�� add v�ng s�ng th�nh c�ng!")
    end
    function ChonVongSang()

        local ntime = 18*60*60*24*4
        local n_title = 190	
        Title_AddTitle(n_title, 2, nTime)
        Title_ActiveTitle(n_title)
        --PlayerFunLib:AddSkillState(977,20,3,6220800,1)
    --AskClientForNumber("ChonVongSang_d1",1,10000,"Nh�p S� Ng�y Mu�n L�y") 
    --SaveNow();
    --RemoveSkillState(1295,20,3,559872000,1) 
    --tbAwardTemplet:GiveAwardByList({{szName="Lenh Bai",tbProp={6,1,4402,1,1},nCount=1,nExpiredTime=20*24*60},}, "test", 1);
    end    

    function ChonVongSang_d1(num)

        local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
        local nDate = FormatTime2Number(nServerTime);
        local nDay = floor(mod(nDate,1000000) / 10000);
        local nMon = mod(floor(nDate / 1000000) , 100)
        local nTime = nMon * 1000000 + nDay * 10000 
        Title_AddTitle(num, 2, nTime)
        Title_ActiveTitle(num)
        SetTask(1122,num)
        Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
        end

   
function FixVongSangChuyenSinh()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    local nTransLife = ST_GetTransLifeCount()
        for i=1,5 do
        RemoveSkillState(1528+i,1,3,559872000,1)
        end
        if (nTransLife == 1) then
        --PlayerFunLib:AddSkillState(1529,1,3,559872000,1)
        elseif (nTransLife == 2) then
    --		PlayerFunLib:AddSkillState(1530,1,3,559872000,1)
        elseif (nTransLife == 3) then
    --		PlayerFunLib:AddSkillState(1531,1,3,559872000,1)
        elseif (nTransLife == 4) then
    --		PlayerFunLib:AddSkillState(1532,1,3,559872000,1)
        elseif (nTransLife == 5) then
    --		PlayerFunLib:AddSkillState(1533,1,3,559872000,1)
    end
        
    Msg2Player("Fix OK")
    PlayerIndex=gmidx 
    Msg2Player("Fix OK")
    end
    ----------------------------------------------------------------------------------------------------
    function ThemVongSangChuyenSinh()
    local szTitle = "H�y Ch�n Ch�c N�ng"
        local tbOpt = {			
            {"Th�m V�ng S�ng Chuy�n Sinh 1",ThemVongSang1},
            {"Th�m V�ng S�ng Chuy�n Sinh 2",ThemVongSang2},
            {"Th�m V�ng S�ng Chuy�n Sinh 3",ThemVongSang3},
            {"Th�m V�ng S�ng Chuy�n Sinh 4",ThemVongSang4},
            {"Th�m V�ng S�ng Chuy�n Sinh 5",ThemVongSang5},
            {"X�a H�t V�ng S�ng",XoaHetVongSang},		
            {"Tho�t",},
        }
        CreateNewSayEx(szTitle, tbOpt)
    end
    
    function ThemVongSang1()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    PlayerFunLib:AddSkillState(1529,1,3,559872000,1)
    Msg2Player("Fix OK")
    PlayerIndex=gmidx 
    Msg2Player("Fix OK")
    end
    
    function ThemVongSang2()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    PlayerFunLib:AddSkillState(1530,1,3,559872000,1)
    Msg2Player("Fix OK")
    PlayerIndex=gmidx 
    Msg2Player("Fix OK")
    end
    
    function ThemVongSang3()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    PlayerFunLib:AddSkillState(1531,1,3,559872000,1)
    Msg2Player("Fix OK")
    PlayerIndex=gmidx 
    Msg2Player("Fix OK")
    end
    
    function ThemVongSang4()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    PlayerFunLib:AddSkillState(1532,1,3,559872000,1)
    Msg2Player("Fix OK")
    PlayerIndex=gmidx 
    Msg2Player("Fix OK")
    end
    
    function ThemVongSang5()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    PlayerFunLib:AddSkillState(1533,1,3,559872000,1)
    Msg2Player("Fix OK")
    PlayerIndex=gmidx 
    Msg2Player("Fix OK")
    end
    
    function XoaHetVongSang()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    for i=1,5 do
    RemoveSkillState(1528+i,1,3,559872000,1)
    end
    Msg2Player("Fix OK")
    PlayerIndex=gmidx 
    Msg2Player("Fix OK")
    end
    
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VSCS1()
    local n_vongsang = random(1,63)
    VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip359.spr>V�ng S�ng: <link>"
    local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 1 ID<bclr> <bclr=red>359<bclr>"
        local tbOpt = {				
            {"Tho�t"},
        }
        CreateNewSayEx(szTitle, tbOpt) return 1;
    end
    
    function VSCS2()
    local n_vongsang = random(1,63)
    VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip361.spr>V�ng S�ng: <link>"
    local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 2 ID<bclr> <bclr=red>361<bclr>"
        local tbOpt = {				
            {"Tho�t"},
        }
        CreateNewSayEx(szTitle, tbOpt) return 1;
    end
    
    function VSCS3()
    local n_vongsang = random(1,63)
    VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip366.spr>V�ng S�ng: <link>"
    local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 3 ID<bclr> <bclr=red>366<bclr>"
        local tbOpt = {				
            {"Tho�t"},
        }
        CreateNewSayEx(szTitle, tbOpt) return 1;
    end
    
    function VSCS4()
    local n_vongsang = random(1,63)
    VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip365.spr>V�ng S�ng: <link>"
    local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 4 ID<bclr> <bclr=red>365<bclr>"
        local tbOpt = {				
            {"Tho�t"},
        }
        CreateNewSayEx(szTitle, tbOpt) return 1;
    end
    
    function VSCS5()
    local n_vongsang = random(1,63)
    VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip360.spr>V�ng S�ng: <link>"
    local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Chuy�n Sinh 5 ID<bclr> <bclr=red>360<bclr>"
        local tbOpt = {				
            {"Tho�t"},
        }
        CreateNewSayEx(szTitle, tbOpt) return 1;
    end
    
    function VSCLHD()
    local n_vongsang = random(1,63)
    VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip364.spr>V�ng S�ng: <link>"
    local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Th� Nh�t ID<bclr> <bclr=red>364<bclr>"
        local tbOpt = {				
            {"Tho�t"},
        }
        CreateNewSayEx(szTitle, tbOpt) return 1;
    end
    
    function IDVS4()
    local n_vongsang = random(1,63)
    VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip362.spr>V�ng S�ng: <link>"
    local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Th� Nh�t ID<bclr> <bclr=red>362<bclr>"
        local tbOpt = {				
            {"Tho�t"},
        }
        CreateNewSayEx(szTitle, tbOpt) return 1;
    end
    
    function IDVS5()
    local n_vongsang = random(1,63)
    VONG_SANG = "<#><link=image[0]:\\spr\\danhieukidfp\\vongsang\\vongsangvip363.spr>V�ng S�ng: <link>"
    local szTitle = VONG_SANG.."<bclr=violet>V�ng S�ng Th� Nh�t ID<bclr> <bclr=red>363<bclr>"
        local tbOpt = {				
            {"Tho�t"},
        }
        CreateNewSayEx(szTitle, tbOpt) return 1;
    end
    function kiemtra_spr()
        local tbOpt = {
            {"V�ng S�ng Chuy�n Sinh 1",VSCS1},
            {"V�ng S�ng Chuy�n Sinh 2",VSCS2},
            {"V�ng S�ng Chuy�n Sinh 3",VSCS3},
            {"V�ng S�ng Chuy�n Sinh 4",VSCS4},
            {"V�ng S�ng Chuy�n Sinh 5",VSCS5},
            {"V�ng S�ng C�i L�o Ho�n ��ng",VSCLHD},
            {"Th�i",No},
        }
        CreateNewSayEx("<bclr=violet>L�a Ch�n V�ng S�ng Mu�n Ki�m Tra<bclr>", tbOpt)
    end
    function ChonVongSang_d(num)
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        --for num,10 do
        local nServerTime = GetCurServerTime()+ 4302359; --20*24*60*60
        local nDate = FormatTime2Number(nServerTime);
        local nDay = floor(mod(nDate,1000000) / 10000);
        local nMon = mod(floor(nDate / 1000000) , 100)
        local nTime = nMon * 1000000 + nDay * 10000 
        Title_AddTitle(num, 2, nTime)
        Title_ActiveTitle(num)
        SetTask(1122,num)
        Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
        PlayerIndex=gmidx 
        Msg2Player("Nh�n V�ng S�ng Th�nh C�ng"); 
        end