
----------------------------------------------------------------------
function TanNhamHa()
    AskClientForNumber("TanNhamHa_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function TanNhamHa_d(num)
    local Index = AddGoldItem(0,3960) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
    function TanNhamTrung()
    AskClientForNumber("TanNhamTrung_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function TanNhamTrung_d(num)
    local Index = AddGoldItem(0,3961) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end
    
    function TanNhamThuong()
    AskClientForNumber("TanNhamThuong_d",1,100,"Nh�p S� Ng�y Mu�n L�y") 
    end
    function TanNhamThuong_d(num)
    local Index = AddGoldItem(0,3962) ITEM_SetExpiredTime(Index,24*60*num) SyncItem(Index)
    end