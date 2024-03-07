
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Pet()
    local szTitle = "H·y Lùa Chän Pet"
        local tbOpt = {
            {"Chän Lo¹i Pet",ChonPet},
            {"Xem Tr¹ng Th¸i",XemTrangThai},
            {"Tho¸t"},
        }
        CreateNewSayEx(szTitle, tbOpt)
    end
    -------------------------------------------------------------------------
    function ChonPet()
    local partnerindex = PARTNER_GetCurPartner()
        if (partnerindex == 0) then
            Say("Lùa Chän Pet",6,"Chu T­íc/ChuTuoc","Háa Kú L©n/HoaKyLan","Thanh Long/ThanhLong","HuyÒn Vò/HuyenVu","LiÖt DiÔm S­/LietDiemSu","Hñy Bá/No")
        else
            Talk(1,"","C¸c H¹ §· Cã Pet Råi H·y Sö Dông Chøc N¨ng Gäi Ra...!")
        end
    end
    -----------------------------------------------------------------------------------------------------------------------------------------------------------
    function ChuTuoc()
     local partneridex = PARTNER_AddFightPartner(4,4,1,5,5,5,5,5,5)
    PARTNER_CallOutCurPartner(1)
    end
    function HoaKyLan()
     local partneridex = PARTNER_AddFightPartner(1,1,1,5,5,5,5,5,5)
    PARTNER_CallOutCurPartner(1)
    end
    function ThanhLong()
     local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
    PARTNER_CallOutCurPartner(1)
    end
    function HuyenVu()
     local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
    PARTNER_CallOutCurPartner(1)
    end
    function LietDiemSu()
     local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
    PARTNER_CallOutCurPartner(1)
    end