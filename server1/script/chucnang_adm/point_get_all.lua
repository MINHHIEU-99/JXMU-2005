-----------------------------------------------------------------------------------------------------------------------------------
function AddDiemPhucLoi() 
	AskClientForNumber("AddDiemPhucLoi1",0,50000000,"Nh�p S� �i�m") 
end 
function AddDiemPhucLoi1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m Ph�c L�i Th�nh C�ng");
SetTask(5994,GetTask(5994)+num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> �i�m Ph�c L�i Th�nh C�ng"); 
end;
-------------------------------------------------------------------------------------------------------------------------
function LayDiemPhucLoi() 
	AskClientForNumber("LayDiemPhucLoi1",0,50000000,"Nh�p S� �i�m") 
end 
function LayDiemPhucLoi1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> �i�m Ph�c L�i Th�nh C�ng");
SetTask(5994,GetTask(5994)-num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> �i�m Ph�c L�i Th�nh C�ng"); 
end;
------------------------------------------------------------------------------------------------------------------------------------
function AddDiemTK() 
	AskClientForNumber("AddDiemTK1",0,1000000,"Nh�p S� �i�m") 
end 
function AddDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> �i�m T�ng Kim Th�nh C�ng");
SetTask(747,GetTask(747)+num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> �i�m T�ng Kim Th�nh C�ng"); 
end
-------------------------------------------------------------------------------------------------------------------------
function LayDiemTK() 
	AskClientForNumber("LayDiemTK1",0,1000000,"Nh�p S� �i�m") 
end 
function LayDiemTK1(num) 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> �i�m T�ng Kim Th�nh C�ng");
SetTask(747,GetTask(747)-num)
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> �i�m T�ng Kim Th�nh C�ng"); 
end

-------------------------------------------------------------------------------------------------------------------------------
function AddKNB_FullHD()
    local szTitle = "H�y Ch�n Ch�c N�ng"
        local tbOpt = {			
            {"N�p �i�m VIP",AddDiemVip},
            {"X�a �i�m Vip",LayDiemVip},
    --		{"N�p Kim Nguy�n B�o",AddKNB},			
            {"X�a Kim Nguy�n B�o",LayKNB},
        --	{"N�p Ti�n ��ng",AddXu},
            {"X�a Ti�n ��ng",LayXu},
            {"N�p Ng�n L��ng",AddKV},
            {"X�a Ng�n L��ng",LayKV},
            {"N�p �i�m Ph�c L�i",AddDiemPhucLoi},
            {"X�a �i�m Ph�c L�i",LayDiemPhucLoi},
            {"N�p �i�m T�ng Kim",AddDiemTK},
            {"X�a �i�m T�ng Kim",LayDiemTK},
            {"X�a H� Th�ng Vip",DellVip},
            {"X�a Task Nh�n V�t",DellTask},
            {"Tho�t",},
        }
        CreateNewSayEx(szTitle, tbOpt)
    end
    -------------------------------------------------------------------------------------
    function AddDiemVip() 
        AskClientForNumber("AddDiemVip1",0,100,"S� �i�m VIP") 
    end 
    function AddDiemVip1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    if num==0 then
        for i=0,11 do
        RemoveSkillState(1648+i,20,3,559872000,1) 
        end
        PayExtPoint(3,GetExtPoint(3))
        --Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> �� ���c X�a Vip"); 
        PlayerIndex=gmidx 
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> �� ���c X�a Vip"); 
    else
    for i=0,11 do
    RemoveSkillState(1648+i,20,3,559872000,1) 
    end
    PlayerFunLib:AddSkillState(1647+num,20,3,559872000,1)-- PayExtPoint(3,GetExtPoint(3)) AddExtPoint(3,num-GetExtPoint(3))
    --Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM N�ng Th�nh C�ng Vip <color=metal>"..num..""); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM N�ng Th�nh C�ng Vip <color=metal>"..num..""); 
    end
    end;
    
    function XoaDiemVip()
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    PayExtPoint(1,GetExtPoint(1))
    PayExtPoint(2,GetExtPoint(2))
    PayExtPoint(3,GetExtPoint(3))
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM X�a Th�ng Tin Vip Th�nh C�ng"); 
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c X�a Th�ng Tin Vip Th�nh C�ng"); 
    end
    -------------------------------------------------------------------------------------------------------------------------
    function LayDiemVip() 
        AskClientForNumber("LayDiemVip1",0,2000,"S� �i�m VIP") 
    end 
    function LayDiemVip1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> �i�m Vip Th�nh C�ng");
    SetTask(5991,GetTask(5991)-num)
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> �i�m Vip Th�nh C�ng"); 
    end;
    --------------------------------------------------------------------------------------------------------------------------
    function AddKNB() 
    AskClientForNumber("AddKNB1",0,5000,"S� l��ng KNB") 
    end 
    function AddKNB1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> Kim Nguy�n B�o Th�nh C�ng"); 
    AddExtPoint(1,num)
    
    PlayerIndex=gmidx 
    WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M _ %d/%m/%Y").."   "..GetIP().."\t Da Them "..ObjAccount.."  "..ObjName.." "..num.." KNB\n");
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> Kim Nguy�n B�o Th�nh C�ng"); 
    
    end;
    ---------------------------------------------------------------------------------------------------------------------------------
    function LayKNB() 
    AskClientForNumber("LayKNB1",0,2000,"S� l��ng KNB") 
    end 
    function LayKNB1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> Kim Nguy�n B�o Th�nh C�ng"); 
    for i = 1, num do
        ConsumeEquiproomItem(1,4,343,1,-1)
    end
    --PayExtPoint(1,num)
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> Kim Nguy�n B�o Th�nh C�ng"); 
    end;
    ------------------------------------------------------------------------------------------------------------------------------------
    function AddXu() 
        AskClientForNumber("AddXu1",0,2000,"S� l��ng Xu") 
    end 
    function AddXu1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng"); 
    for i = 1, num do
    AddStackItem(1,4,417,1,1,0,0)
    end
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng"); 
    end;
    ---------------------------------------------------------------------------------------------------------------------------------
    function LayXu() 
        AskClientForNumber("LayXu1",0,2000,"S� l��ng Xu") 
    end 
    function LayXu1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng");
    for i = 1, num do
    ConsumeEquiproomItem(1,4,417,1,-1)
    end
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> Ti�n ��ng Th�nh C�ng"); 
    end;
    -----------------------------------------------------------------------------------------------------------------------------------
    function AddKV() 
        AskClientForNumber("AddKV1",0,999999999,"Nh�p S� L��ng") 
    end 
    function AddKV1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color> L��ng Th�nh C�ng"); 
    Earn(num)
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color> L��ng Th�nh C�ng"); 
    end;
    ---------------------------------------------------------------------------------------------------------------------------------
    function LayKV() 
        AskClientForNumber("LayKV1",0,999999999,"Nh�p S� L��ng") 
    end 
    function LayKV1(num) 
    gmidx=PlayerIndex 
    PlayerIndex=GetTaskTemp(200) 
    Msg2Player("Qu�n l� <color=pink>GM<color> �� Tr� <color=metal>"..num.."<color> L��ng Th�nh C�ng");
    Pay(num)
    PlayerIndex=gmidx 
    Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> B� GM Tr� <color=metal>"..num.."<color> L��ng Th�nh C�ng"); 
    end;

    function ChuyenKhoanKhongKNB()
        AskClientForNumber("ChuyenKhoanKhongKNB_d",1,5000,"Nhap So Tien Can Them") 
        end
        function ChuyenKhoanKhongKNB_d(num)
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.."<color>K Th�nh C�ng");
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,num) end
        PlayerIndex=gmidx 
        --WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 20 KNB\n");
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>"..num.."<color>K Th�nh C�ng");
        end
        function ChuyenKhoan()
            local tbOpt = {
                {"Chuy�n Kho�n 10.000 => 20 KNB",CK10},
                {"Chuy�n Kho�n 20.000 => 40 KNB",CK20},
                {"Chuy�n Kho�n 50.000 => 100 KNB",CK50},
                {"Chuy�n Kho�n 100.000 => 200 KNB",CK100},
                {"Chuy�n Kho�n 200.000 => 400 KNB",CK200},
                {"Chuy�n Kho�n 500.000 => 1000 KNB",CK500},
                {"Chuy�n Kho�n 1000.000 => 2000 KNB",CK1000},
                {"Chuy�n Kho�n 2000.000 => 4000 KNB",CK2000},
                {"H�y B�",},
            }
            CreateNewSayEx("<color=pink>"..myplayersex().." Mu�n Chuy�n Kho�n M�c N�o H�y L�a Ch�n\nH�nh Th�c Chuy�n Kho�n ���c Nh�n 1.5 L�n Tr�n T� Gi�\nN�p...!", tbOpt)
        end
        --------------------------------------------------------------------------------------------------------------
        
        function CK10() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>20<color> Kim Nguy�n B�o Th�nh C�ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,20) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,10) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 20 KNB\n");
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>20<color> Kim Nguy�n B�o Th�nh C�ng");
        end
        ----------------------------------------------------------------------------------------------------------------------------
        function CK20() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>40<color> Kim Nguy�n B�o Th�nh C�ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,40) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,20) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 40 KNB\n");
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>40<color> Kim Nguy�n B�o Th�nh C�ng");
        end
        -------------------------------------------------------------------------------------------------------------------------------
        function CK50() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>100<color> Kim Nguy�n B�o Th�nh C�ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,100) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,50) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 100 KNB\n");
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>50<color> Kim Nguy�n B�o Th�nh C�ng");
        end
        -------------------------------------------------------------------------------------------------------------------------
        function CK100() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>200<color> Kim Nguy�n B�o Th�nh C�ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,200) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,100) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 200 KNB\n");
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>200<color> Kim Nguy�n B�o Th�nh C�ng");
        end
        --------------------------------------------------------------------------------------------------------------------------
        function CK200() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>400<color> Kim Nguy�n B�o Th�nh C�ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,400) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,200) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 400 KNB\n");
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>400<color> Kim Nguy�n B�o Th�nh C�ng");
        end
        --------------------------------------------------------------------------------------------------------------------------
        function CK500() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>1000<color> Kim Nguy�n B�o Th�nh C�ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,1000) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,500) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 1000 KNB\n");
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>500<color> Kim Nguy�n B�o Th�nh C�ng");
        end
        ---------------------------------------------------------------------------------------------------------------------------
        function CK1000() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>2000<color> Kim Nguy�n B�o Th�nh C�ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,2000) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,1000) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 2000 KNB\n");
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>2000<color> Kim Nguy�n B�o Th�nh C�ng");
        end
        -------------------------------------------------------------------------------------------------------------------------
        function CK2000() 
        gmidx=PlayerIndex 
        PlayerIndex=GetTaskTemp(200) 
        Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>4000<color> Kim Nguy�n B�o Th�nh C�ng");
        if (GetExtPoint(1) < 32768) then AddExtPoint(1,4000) end
        if (GetExtPoint(2) < 32768) then AddExtPoint(2,2000) end
        PlayerIndex=gmidx 
        WriteLogPro("dulieu/admin_log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Ho Tro "..ObjAccount.."  "..ObjName.." 4000 KNB\n");
        Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>4000<color> Kim Nguy�n B�o Th�nh C�ng");
        end
        -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NapThe()
	local tbOpt = {
		{"N�p 10.000 => 2 KNB",Nap10},
		{"N�p 20.000 => 4 KNB",Nap20},
		{"N�p 50.000 => 10 KNB",Nap50},
		{"N�p 100.000 => 20 KNB",Nap100},
		{"N�p 200.000 => 40 KNB",Nap200},
		{"N�p 500.000 => 100 KNB",Nap500},
		{"N�p 1000.000 => 200 KNB",Nap1000},
		{"N�p 2000.000 => 400 KNB",Nap2000},
		{"H�y B�",},
	}
	CreateNewSayEx("<color=pink>"..myplayersex().." Mu�n N�p M�c N�o H�y L�a Ch�n", tbOpt)
end
--------------------------------------------------------------------------------------------------------------
function Nap10() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>1<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,1) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,10) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>1<color> Kim Nguy�n B�o Th�nh C�ng");
end
----------------------------------------------------------------------------------------------------------------------------
function Nap20() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>2<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,2) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,20) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>2<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------------
function Nap50() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>5<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,5) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,50) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>10<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap100() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>10<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,10) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,100) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>10<color> Kim Nguy�n B�o Th�nh C�ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap200() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>20<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,40) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,200) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>40<color> Kim Nguy�n B�o Th�nh C�ng");
end
--------------------------------------------------------------------------------------------------------------------------
function Nap500() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>100<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,100) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,500) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>100<color> Kim Nguy�n B�o Th�nh C�ng");
end
---------------------------------------------------------------------------------------------------------------------------
function Nap1000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>200<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,200) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,1000) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>200<color> Kim Nguy�n B�o Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------
function Nap2000() 
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200) 
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>400<color> Kim Nguy�n B�o Th�nh C�ng");
if (GetExtPoint(1) < 32768) then AddExtPoint(1,400) end
if (GetExtPoint(2) < 32768) then AddExtPoint(2,2000) end
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Tr� <color=metal>400<color> Kim Nguy�n B�o Th�nh C�ng");
end    