-----------------------------------------------------------------------------------------------------------------------------------
function AddDiemPhucLoi() 
	AskClientForNumber("AddDiemPhucLoi1",0,50000000,"NhËp Sè §iÓm") 
end 
function AddDiemPhucLoi1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> §iÓm Phóc Lîi Thµnh C«ng");
SetTask(5994,GetTask(5994)+num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> §iÓm Phóc Lîi Thµnh C«ng"); 
end;
-------------------------------------------------------------------------------------------------------------------------
function LayDiemPhucLoi() 
	AskClientForNumber("LayDiemPhucLoi1",0,50000000,"NhËp Sè §iÓm") 
end 
function LayDiemPhucLoi1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> §iÓm Phóc Lîi Thµnh C«ng");
SetTask(5994,GetTask(5994)-num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> §iÓm Phóc Lîi Thµnh C«ng"); 
end;
------------------------------------------------------------------------------------------------------------------------------------
function AddDiemTK() 
	AskClientForNumber("AddDiemTK1",0,1000000,"NhËp Sè §iÓm") 
end 
function AddDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng");
SetTask(747,GetTask(747)+num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng"); 
end
-------------------------------------------------------------------------------------------------------------------------
function LayDiemTK() 
	AskClientForNumber("LayDiemTK1",0,1000000,"NhËp Sè §iÓm") 
end 
function LayDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng");
SetTask(747,GetTask(747)-num)
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> §iÓm Tèng Kim Thµnh C«ng"); 
end

-------------------------------------------------------------------------------------------------------------------------------
function AddKNB_FullHD()
    local szTitle = "H·y Chän Chøc N¨ng"
        local tbOpt = {			
            {"N¹p §iÓm VIP",AddDiemVip},
            {"Xãa §iÓm Vip",LayDiemVip},
    --		{"N¹p Kim Nguyªn B¶o",AddKNB},			
            {"Xãa Kim Nguyªn B¶o",LayKNB},
        --	{"N¹p TiÒn §ång",AddXu},
            {"Xãa TiÒn §ång",LayXu},
            {"N¹p Ng©n L­îng",AddKV},
            {"Xãa Ng©n L­îng",LayKV},
            {"N¹p §iÓm Phóc Lîi",AddDiemPhucLoi},
            {"Xãa §iÓm Phóc Lîi",LayDiemPhucLoi},
            {"N¹p §iÓm Tèng Kim",AddDiemTK},
            {"Xãa §iÓm Tèng Kim",LayDiemTK},
            {"Xãa HÖ Thèng Vip",DellVip},
            {"Xãa Task Nh©n VËt",DellTask},
            {"Tho¸t",},
        }
        CreateNewSayEx(szTitle, tbOpt)
    end
    -------------------------------------------------------------------------------------
    function AddDiemVip() 
        AskClientForNumber("AddDiemVip1",0,100,"Sè §iÓm VIP") 
    end 
    function AddDiemVip1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    if num==0 then
        for i=0,11 do
        RemoveSkillState(1648+i,20,3,559872000,1) 
        end
        PayExtPoint(3,GetExtPoint(3))
        --Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· §­îc Xãa Vip"); 
        PlayerIndex=gmidx 
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §· §­îc Xãa Vip"); 
    else
    for i=0,11 do
    RemoveSkillState(1648+i,20,3,559872000,1) 
    end
    PlayerFunLib:AddSkillState(1647+num,20,3,559872000,1)-- PayExtPoint(3,GetExtPoint(3)) AddExtPoint(3,num-GetExtPoint(3))
    --Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM N©ng Thµnh C«ng Vip <color=metal>"..num..""); 
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM N©ng Thµnh C«ng Vip <color=metal>"..num..""); 
    end
    end;
    
    function XoaDiemVip()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    PayExtPoint(1,GetExtPoint(1))
    PayExtPoint(2,GetExtPoint(2))
    PayExtPoint(3,GetExtPoint(3))
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Xãa Th«ng Tin Vip Thµnh C«ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc Xãa Th«ng Tin Vip Thµnh C«ng"); 
    end
    -------------------------------------------------------------------------------------------------------------------------
    function LayDiemVip() 
        AskClientForNumber("LayDiemVip1",0,2000,"Sè §iÓm VIP") 
    end 
    function LayDiemVip1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> §iÓm Vip Thµnh C«ng");
    SetTask(5991,GetTask(5991)-num)
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> §iÓm Vip Thµnh C«ng"); 
    end;
    --------------------------------------------------------------------------------------------------------------------------
    function AddKNB() 
    AskClientForNumber("AddKNB1",0,5000,"Sè l­îng KNB") 
    end 
    function AddKNB1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
    AddExtPoint(1,num)
    
    PlayerIndex=gmidx 
    WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M _ %d/%m/%Y").."   "..GetIP().."\t Da Them "..ObjAccount.."  "..ObjName.." "..num.." KNB\n");
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
    
    end;
    ---------------------------------------------------------------------------------------------------------------------------------
    function LayKNB() 
    AskClientForNumber("LayKNB1",0,2000,"Sè l­îng KNB") 
    end 
    function LayKNB1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
    for i = 1, num do
        ConsumeEquiproomItem(1,4,343,1,-1)
    end
    --PayExtPoint(1,num)
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> Kim Nguyªn B¶o Thµnh C«ng"); 
    end;
    ------------------------------------------------------------------------------------------------------------------------------------
    function AddXu() 
        AskClientForNumber("AddXu1",0,2000,"Sè l­îng Xu") 
    end 
    function AddXu1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
    for i = 1, num do
    AddStackItem(1,4,417,1,1,0,0)
    end
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
    end;
    ---------------------------------------------------------------------------------------------------------------------------------
    function LayXu() 
        AskClientForNumber("LayXu1",0,2000,"Sè l­îng Xu") 
    end 
    function LayXu1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng");
    for i = 1, num do
    ConsumeEquiproomItem(1,4,417,1,-1)
    end
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> TiÒn §ång Thµnh C«ng"); 
    end;
    -----------------------------------------------------------------------------------------------------------------------------------
    function AddKV() 
        AskClientForNumber("AddKV1",0,999999999,"NhËp Sè L­îng") 
    end 
    function AddKV1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color> L­îng Thµnh C«ng"); 
    Earn(num)
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color> L­îng Thµnh C«ng"); 
    end;
    ---------------------------------------------------------------------------------------------------------------------------------
    function LayKV() 
        AskClientForNumber("LayKV1",0,999999999,"NhËp Sè L­îng") 
    end 
    function LayKV1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu¶n lý <color=pink>GM<color> §· Trõ <color=metal>"..num.."<color> L­îng Thµnh C«ng");
    Pay(num)
    PlayerIndex=gmidx 
    Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> BÞ GM Trõ <color=metal>"..num.."<color> L­îng Thµnh C«ng"); 
    end;

    function ChuyenKhoanKhongKNB()
        AskClientForNumber("ChuyenKhoanKhongKNB_d",1,5000,"Nhap So Tien Can Them") 
        end
        function ChuyenKhoanKhongKNB_d(num)
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>"..num.."<color>K Thµnh C«ng");
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,num) end
        PlayerIndex=gmidx 
        --WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 20 KNB\n");
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>"..num.."<color>K Thµnh C«ng");
        end
        function ChuyenKhoan()
            local tbOpt = {
                {"ChuyÓn Kho¶n 10.000 => 20 KNB",CK10},
                {"ChuyÓn Kho¶n 20.000 => 40 KNB",CK20},
                {"ChuyÓn Kho¶n 50.000 => 100 KNB",CK50},
                {"ChuyÓn Kho¶n 100.000 => 200 KNB",CK100},
                {"ChuyÓn Kho¶n 200.000 => 400 KNB",CK200},
                {"ChuyÓn Kho¶n 500.000 => 1000 KNB",CK500},
                {"ChuyÓn Kho¶n 1000.000 => 2000 KNB",CK1000},
                {"ChuyÓn Kho¶n 2000.000 => 4000 KNB",CK2000},
                {"Hñy Bá",},
            }
            CreateNewSayEx("<color=pink>"..myplayersex().." Muèn ChuyÓn Kho¶n Møc Nµo H·y Lùa Chän\nH×nh Thøc ChuyÓn Kho¶n §­îc Nh©n 1.5 LÇn Trªn TØ Gi¸\nN¹p...!", tbOpt)
        end
        --------------------------------------------------------------------------------------------------------------
        
        function CK10() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>20<color> Kim Nguyªn B¶o Thµnh C«ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,20) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,10) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 20 KNB\n");
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>20<color> Kim Nguyªn B¶o Thµnh C«ng");
        end
        ----------------------------------------------------------------------------------------------------------------------------
        function CK20() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>40<color> Kim Nguyªn B¶o Thµnh C«ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,40) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,20) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 40 KNB\n");
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>40<color> Kim Nguyªn B¶o Thµnh C«ng");
        end
        -------------------------------------------------------------------------------------------------------------------------------
        function CK50() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>100<color> Kim Nguyªn B¶o Thµnh C«ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,100) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,50) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 100 KNB\n");
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>50<color> Kim Nguyªn B¶o Thµnh C«ng");
        end
        -------------------------------------------------------------------------------------------------------------------------
        function CK100() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,200) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,100) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 200 KNB\n");
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
        end
        --------------------------------------------------------------------------------------------------------------------------
        function CK200() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,400) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,200) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 400 KNB\n");
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
        end
        --------------------------------------------------------------------------------------------------------------------------
        function CK500() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>1000<color> Kim Nguyªn B¶o Thµnh C«ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,1000) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,500) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 1000 KNB\n");
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>500<color> Kim Nguyªn B¶o Thµnh C«ng");
        end
        ---------------------------------------------------------------------------------------------------------------------------
        function CK1000() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>2000<color> Kim Nguyªn B¶o Thµnh C«ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,2000) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,1000) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 2000 KNB\n");
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>2000<color> Kim Nguyªn B¶o Thµnh C«ng");
        end
        -------------------------------------------------------------------------------------------------------------------------
        function CK2000() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>4000<color> Kim Nguyªn B¶o Thµnh C«ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,4000) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,2000) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 4000 KNB\n");
        Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>4000<color> Kim Nguyªn B¶o Thµnh C«ng");
        end
        -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NapThe()
	local tbOpt = {
		{"N¹p 10.000 => 2 KNB",Nap10},
		{"N¹p 20.000 => 4 KNB",Nap20},
		{"N¹p 50.000 => 10 KNB",Nap50},
		{"N¹p 100.000 => 20 KNB",Nap100},
		{"N¹p 200.000 => 40 KNB",Nap200},
		{"N¹p 500.000 => 100 KNB",Nap500},
		{"N¹p 1000.000 => 200 KNB",Nap1000},
		{"N¹p 2000.000 => 400 KNB",Nap2000},
		{"Hñy Bá",},
	}
	CreateNewSayEx("<color=pink>"..myplayersex().." Muèn N¹p Møc Nµo H·y Lùa Chän", tbOpt)
end
--------------------------------------------------------------------------------------------------------------
function Nap10() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>1<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,1) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,10) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>1<color> Kim Nguyªn B¶o Thµnh C«ng");
end
----------------------------------------------------------------------------------------------------------------------------
function Nap20() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>2<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,2) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,20) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>2<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------------
function Nap50() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>5<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,5) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,50) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>10<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap100() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>10<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,10) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,100) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>10<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap200() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>20<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,40) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,200) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>40<color> Kim Nguyªn B¶o Thµnh C«ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap500() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>100<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,100) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,500) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>100<color> Kim Nguyªn B¶o Thµnh C«ng");
end
---------------------------------------------------------------------------------------------------------------------------
function Nap1000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,200) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,1000) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>200<color> Kim Nguyªn B¶o Thµnh C«ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap2000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu¶n lý <color=pink>GM<color> §· ChuyÓn <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,400) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,2000) end
PlayerIndex=gmidx 
Msg2Player("Nh©n vËt <color=green>"..ObjName.."<color> §­îc GM Tr¶ <color=metal>400<color> Kim Nguyªn B¶o Thµnh C«ng");
end    