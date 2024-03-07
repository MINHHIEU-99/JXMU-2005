
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\playerfunlib.lua")


Msg3AllGS =  function (nItemIndex, strBoxName)
    local handle = OB_Create()
    local msg = format("<color=green>Chóc mõng cao thñ <color=yellow>%s<color=green> ®· nhËn ®­îc <color=yellow><%s><color=green> tõ <color=yellow><%s><color>" ,GetName(),GetItemName(nItemIndex), strBoxName)
    ObjBuffer:PushObject(handle, msg)
    RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
    OB_Release(handle)
end
 VatPhamAddExp =  function (nAmount, strBoxName)
    AddOwnExp(nAmount)
    Msg2Player("§¹t ®­îc kinh nghiÖm kh«ng thÓ céng dån "..nAmount)
    tbLog:PlayerAwardLog("BachBaoRuong", "SuDungKimBaoRuong", "§iÓm Kinh NghiÖm", "", nAmount)
    local handle = OB_Create()
    local msg = format("<color=green>Chóc mõng cao thñ <color=yellow>%s<color=green> ®· nhËn ®­îc <color=yellow><%s><color=green> tõ <color=yellow><%s><color>" ,GetName(),nAmount.." ®iÓm kinh nghiÖm", strBoxName)
    ObjBuffer:PushObject(handle, msg)
    RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
    OB_Release(handle)
--	{szName = "§iÓm Kinh NghiÖm", nRate=10, pFun = function() %VatPhamAddExp(500e6, "Quý Träng B¶o R­¬ng") end},

end
JXMUKimBaoRuong = 
{
    [4689] = {	
    
                
                -- {szName="Tiªn Th¶o Lé (x10)",nCount=10,tbProp={6,1,4903,1,0,0},nRate=8.8999, CallBack = function(nParam) Msg3AllGS(nParam, "Kim B¶o R­¬ng CÊp 5") end},
                -- {szName="Event (B¸nh trung thu th­êng)",nCount=100,tbProp={6,1,4958,1,0,0},nRate=2, CallBack = function(nParam) %Msg3AllGS(nParam, "Kim B¶o R­¬ng CÊp 5") end},
                {szName="§éng S¸t B¹ch Kim §iªu Long Giíi", nQuality=1, tbProp={0, 360},nRate=25, CallBack = function(nParam) Msg3AllGS(nParam, " B¶o R­¬ng §éng S¸t") end},
                {szName="§éng S¸t B¹ch Ngäc Cµn Kh«n Béi", nQuality=1, tbProp={0, 361},nRate=25, CallBack = function(nParam) Msg3AllGS(nParam, " B¶o R­¬ng §éng S¸t") end},
                {szName="§éng S¸t B¹ch Kim Tó Phông Giíi", nQuality=1, tbProp={0, 362},nRate=25, CallBack = function(nParam) Msg3AllGS(nParam, " B¶o R­¬ng §éng S¸t") end},
                {szName="§éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn", nQuality=1, tbProp={0, 363},nRate=25, CallBack = function(nParam) Msg3AllGS(nParam, " B¶o R­¬ng §éng S¸t") end},
    },

}

KimBaoRuonglog = {
    [4689] = "SuDungDongSatBaoRuong",

}
KimBaoRuongTSKDailyLimit = {
    [4689] = 6000,

    
}
KimBaoRuongFreeBag = {
    [4689] = {nW = 5, nH = 5},

    
}
function main(nItemIndex)
    dofile("script/global/mrt/item/ruongallid/ruong_random_id.lua");
    local _, _, nP = GetItemProp(nItemIndex)
    if nP ~= 4689  then
        return 1
    end
    local nTSKID = KimBaoRuongTSKDailyLimit[nP]
    if PlayerFunLib:CheckTaskDaily(nTSKID, 1000, format("Sö dông vËt phÈm %s ®¹t giíi h¹n ngµy, kh«ng thÓ sö dông thªm.", GetItemName(nItemIndex)), "<") ~= 1 then
        return 1
    end
    local tbFreeBag = KimBaoRuongFreeBag[nP]
    if PlayerFunLib:CheckFreeBagCellWH(tbFreeBag.nW, tbFreeBag.nH, 1, "default") ~= 1 then
        return 1
    end
    PlayerFunLib:AddTaskDaily(nTSKID, 1)	
--	if mod(PlayerFunLib:GetTaskDailyCount(nTSKID), 4) == 0 then	
        
        tbAwardTemplet:Give(JXMUKimBaoRuong[nP], 1, {"BachBaoRuong", KimBaoRuonglog[nP]})
    
    return 0
end




