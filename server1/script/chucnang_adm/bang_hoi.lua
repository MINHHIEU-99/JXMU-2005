-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function BangHoi()
    local strTongName = GetTongName()
    local tszTitle = "Ch�o M�ng B�n �� Tham Gia H� Th�ng <color=yellow>Bang H�i<color>"
        if (strTongName == nil or strTongName == "") then
            Say(tszTitle,6,
            "Nh�n �i�u Ki�n T�o Bang H�i/dmcreatetong",
            "Gia Nh�p Bang H�i/dmjointong",
            "T�o bang h�i/dmcreateit",
            "K�t Th�c ��i Tho�i/No")
        end
    end
    
    function dmcreatetong()
        if  GetCamp() ~= 0 then
            if GetLevel() >= 50 then
                SetCamp(4)
                SetCurCamp(4)
                AddRepute(450)
                AddLeadExp(10000000)
                AddEventItem(195)
                Msg2Player("<color=yellow>Ng��i �� H�i �� T�t C� �i�u Ki�n C� T�o Bang H�i<color>")
            else
                    Talk(1,"","<bclr=red>"..myplayersex().." Ch�a �� C�p 50")
            end
        else
            Talk(1,"","<bclr=red>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Kh�ng Th� Nh�n �i�u Ki�n Bang H�i")
        end
    end
    
    function dmjointong()
    local n_fac = GetLastFactionNumber();
        if (n_fac >= 0) and (n_fac <= 10) then
            if GetLevel() >= 50 then
                SetCamp(4) SetCurCamp(4) ConsumeEquiproomItem(200,4,417,1,-1) Msg2Player("Ch�c M�ng "..myplayersex().." �� Xu�t S� Th�nh C�ng")
            else
                Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a �� C�p 50 H�y C� G�ng R�n Luy�n Th�m R�i ��n T�m Ta")
            end
        else
            Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a Gia Nh�p M�n Ph�i Ho�c �� C� Bang H�i\n                            Kh�ng Th� Nh�n �i�u Ki�n")
        end
    end
    
    function dmcreateit()
    Tong_name,oper = GetTong()
        if (oper == 0) and (GetTask(99) == 0) then
            if (HaveItem(195) == 1) and (GetRepute() >= 450) and (GetLeadLevel() >= 30) and (GetLevel() >= 50) and (GetCamp() == 4) and (oper == 0) then
                Say("Ki�m Hi�p Ch��ng M�n Nh�n:Khai S�ng Bang H�i, M� R�ng B� Nghi�p",2,"B�t B�u D�ng Bang/TaoBangHoi","��i Ta M�t Ch�t/No")
            else	
                Talk(1,"","<bclr=violet>C�c H� Mu�n T�o D�ng Bang Ph�i:\nY�u C�u ��ng C�p 50 Tr� L�n, Danh V�ng 450, ��ng C�p Th�ng So�i 30, Kh�ng M�n Ph�i, M�i C� Th� Ti�n H�nh\nL�p Bang H�i...!")
            end
        else
            Say("Ki�m Hi�p Ch��ng M�n Nh�n:Khai S�ng Bang H�i, M� R�ng B� Nghi�p",2,"B�t B�u D�ng Bang/TaoBangHoi","��i Ta M�t Ch�t/No")
        end
    end
    
    function TaoBangHoi()		
    DelItem(195)		
    SetTask(99,1)				
    CreateTong(1)
    end
    