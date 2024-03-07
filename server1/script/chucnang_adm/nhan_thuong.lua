
function nhanthuongphattop()
    for i=0,4 do
    local Index = AddGoldItem(0,6207+i) 
    end
    end
    function nhanthuongthientu()
    local Index = AddItem(0,11,561,1,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
    tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
    tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
    tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
    local Index = AddItem(4,1326,1,1,0,0) SyncItem(Index)
    local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    --local Index = AddGoldItem(0,6224) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    --local Index = AddGoldItem(0,6224) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t NhËn th­ëng Thiªn Tö \n");
    end
    function nhanthuongcongthanhchien()
    local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    --local Index = AddGoldItem(0,428) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    --local Index = AddItem(0,10,13,10,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    --local Index = AddItem(0,10,13,10,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    --tbAwardTemplet:GiveAwardByList({{szName="Tói Tèng Kim",tbProp={6,1,4361,1,1},nCount=100},}, "test", 1);
    local Index = AddGoldItem(0,3879) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    local Index = AddGoldItem(0,3879) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    --local Index = AddItem(6,1,4377,1,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    for i=1,8 do
    tbAwardTemplet:GiveAwardByList({{szName="Xu",tbProp={4,417,1,1},nCount=500},}, "test", 1);
    end
    for i=1,2 do
    local Index = AddItem(0,11,561,1,0,0) ITEM_SetExpiredTime(Index,24*60*7) SyncItem(Index)
    end
    WriteLogPro("dulieu/admin_buff_ho_tro.txt",""..GetAccount().."  "..GetName().."\t "..GetLocalDate("%H:%M_%d-%m-%Y").."   "..GetIP().."\t NhËn th­ëng C«ng Thµnh ChiÕn \n");
    end