-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function BangHoi()
    local strTongName = GetTongName()
    local tszTitle = "Chµo Mõng B¹n §· Tham Gia HÖ Thèng <color=yellow>Bang Héi<color>"
        if (strTongName == nil or strTongName == "") then
            Say(tszTitle,6,
            "NhËn §iÒu KiÖn T¹o Bang Héi/dmcreatetong",
            "Gia NhËp Bang Héi/dmjointong",
            "T¹o bang héi/dmcreateit",
            "KÕt Thóc §èi Tho¹i/No")
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
                Msg2Player("<color=yellow>Ng­êi §· Héi §ñ TÊt C¶ §iªu KiÖn CÓ T¹o Bang Héi<color>")
            else
                    Talk(1,"","<bclr=red>"..myplayersex().." Ch­a §ñ CÊp 50")
            end
        else
            Talk(1,"","<bclr=red>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i Kh«ng ThÓ NhËn §iÒu KiÖn Bang Héi")
        end
    end
    
    function dmjointong()
    local n_fac = GetLastFactionNumber();
        if (n_fac >= 0) and (n_fac <= 10) then
            if GetLevel() >= 50 then
                SetCamp(4) SetCurCamp(4) ConsumeEquiproomItem(200,4,417,1,-1) Msg2Player("Chóc Mõng "..myplayersex().." §· XuÊt S­ Thµnh C«ng")
            else
                Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a §ñ CÊp 50 H·y Cè G¾ng RÌn LuyÖn Thªm Råi §Õn T×m Ta")
            end
        else
            Talk(1,"","<bclr=violet>"..myplayersex().." Ch­a Gia NhËp M«n Ph¸i HoÆc §· Cã Bang Héi\n                            Kh«ng ThÓ NhËn §iÒu KiÖn")
        end
    end
    
    function dmcreateit()
    Tong_name,oper = GetTong()
        if (oper == 0) and (GetTask(99) == 0) then
            if (HaveItem(195) == 1) and (GetRepute() >= 450) and (GetLeadLevel() >= 30) and (GetLevel() >= 50) and (GetCamp() == 4) and (oper == 0) then
                Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
            else	
                Talk(1,"","<bclr=violet>C¸c H¹ Muèn T¹o Dùng Bang Ph¸i:\nYªu CÇu §¼ng CÊp 50 Trë Lªn, Danh Väng 450, §¼ng CÊp Thèng So¸i 30, Kh«ng M«n Ph¸i, Míi Cã ThÓ TiÕn Hµnh\nLËp Bang Héi...!")
            end
        else
            Say("KiÕm HiÖp Ch­ëng M«n Nh©n:Khai S¸ng Bang Héi, Më Réng B¸ NghiÖp",2,"B¾t BÇu Dùng Bang/TaoBangHoi","§îi Ta Mét Chót/No")
        end
    end
    
    function TaoBangHoi()		
    DelItem(195)		
    SetTask(99,1)				
    CreateTong(1)
    end
    