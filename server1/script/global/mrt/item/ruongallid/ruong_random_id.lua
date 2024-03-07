
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\playerfunlib.lua")


Msg3AllGS =  function (nItemIndex, strBoxName)
    local handle = OB_Create()
    local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><%s><color>" ,GetName(),GetItemName(nItemIndex), strBoxName)
    ObjBuffer:PushObject(handle, msg)
    RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
    OB_Release(handle)
end
 VatPhamAddExp =  function (nAmount, strBoxName)
    AddOwnExp(nAmount)
    Msg2Player("��t ���c kinh nghi�m kh�ng th� c�ng d�n "..nAmount)
    tbLog:PlayerAwardLog("BachBaoRuong", "SuDungKimBaoRuong", "�i�m Kinh Nghi�m", "", nAmount)
    local handle = OB_Create()
    local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><%s><color>" ,GetName(),nAmount.." �i�m kinh nghi�m", strBoxName)
    ObjBuffer:PushObject(handle, msg)
    RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
    OB_Release(handle)
--	{szName = "�i�m Kinh Nghi�m", nRate=10, pFun = function() %VatPhamAddExp(500e6, "Qu� Tr�ng B�o R��ng") end},

end
JXMUKimBaoRuong = 
{
    [4689] = {	
    
                
                -- {szName="Ti�n Th�o L� (x10)",nCount=10,tbProp={6,1,4903,1,0,0},nRate=8.8999, CallBack = function(nParam) Msg3AllGS(nParam, "Kim B�o R��ng C�p 5") end},
                -- {szName="Event (B�nh trung thu th��ng)",nCount=100,tbProp={6,1,4958,1,0,0},nRate=2, CallBack = function(nParam) %Msg3AllGS(nParam, "Kim B�o R��ng C�p 5") end},
                {szName="��ng S�t B�ch Kim �i�u Long Gi�i", nQuality=1, tbProp={0, 360},nRate=25, CallBack = function(nParam) Msg3AllGS(nParam, " B�o R��ng ��ng S�t") end},
                {szName="��ng S�t B�ch Ng�c C�n Kh�n B�i", nQuality=1, tbProp={0, 361},nRate=25, CallBack = function(nParam) Msg3AllGS(nParam, " B�o R��ng ��ng S�t") end},
                {szName="��ng S�t B�ch Kim T� Ph�ng Gi�i", nQuality=1, tbProp={0, 362},nRate=25, CallBack = function(nParam) Msg3AllGS(nParam, " B�o R��ng ��ng S�t") end},
                {szName="��ng S�t Ph� Th�y Ng�c H�ng Khuy�n", nQuality=1, tbProp={0, 363},nRate=25, CallBack = function(nParam) Msg3AllGS(nParam, " B�o R��ng ��ng S�t") end},
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
    if PlayerFunLib:CheckTaskDaily(nTSKID, 1000, format("S� d�ng v�t ph�m %s ��t gi�i h�n ng�y, kh�ng th� s� d�ng th�m.", GetItemName(nItemIndex)), "<") ~= 1 then
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




