
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Pet()
    local szTitle = "H�y L�a Ch�n Pet"
        local tbOpt = {
            {"Ch�n Lo�i Pet",ChonPet},
            {"Xem Tr�ng Th�i",XemTrangThai},
            {"Tho�t"},
        }
        CreateNewSayEx(szTitle, tbOpt)
    end
    -------------------------------------------------------------------------
    function ChonPet()
    local partnerindex = PARTNER_GetCurPartner()
        if (partnerindex == 0) then
            Say("L�a Ch�n Pet",6,"Chu T��c/ChuTuoc","H�a K� L�n/HoaKyLan","Thanh Long/ThanhLong","Huy�n V�/HuyenVu","Li�t Di�m S�/LietDiemSu","H�y B�/No")
        else
            Talk(1,"","C�c H� �� C� Pet R�i H�y S� D�ng Ch�c N�ng G�i Ra...!")
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