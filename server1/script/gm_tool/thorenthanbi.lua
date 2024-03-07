--------------------------------------------------------------------------------------------------------
-- File Name		:	thorenhoangkim.lua
--	Author			:	Alone_ (Nguyen Khai)
--	Create Time	:	27/10/2017 - 20:20
--	Description		:
--------------------------------------------------------------------------------------------------------
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
--��ȡ��������� - modified by DinhHQ - 20110921
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("ITEM")

function main()
    dofile("script/gm_tool/thorenthanbi.lua")
    local nNpcIndex = GetLastDiagNpc()
    local szNpcName = GetNpcName(nNpcIndex)
    if NpcName2Replace then
        szNpcName = NpcName2Replace(szNpcName)
    end
    local tbDailog = DailogClass:new(szNpcName)
    G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

    EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)

    tbDailog.szTitleMsg = "<#><npc> N�i n�y ��u l� k� tr�n d� b�o! ��i hi�p c�n g�!?"
    --	tbDailog:AddOptEntry("��i V�t Ph�m Ho�ng Kim Ra Ti�n ��ng", doivatpham)
    tbDailog:AddOptEntry("��i M�nh l�y r��ng trang b� ", menuruonghoangkim)
    --tbDailog:AddOptEntry("Mua Trang B� HKMP Random Option", doimanhrahkmp)
    --tbDailog:AddOptEntry("Mua Trang B� HKMP H�n Ch�", menuhanche)
    --tbDailog:AddOptEntry("Mua Trang B� An Bang", muaanbang)
    --tbDailog:AddOptEntry("Mua Ng�a Phi�n V� (2000 Xu)", nguaphienvu)
    --	tbDailog:AddOptEntry("��i Ng� H�nh Trang B� Xanh", menutrangbixanh)
    --tbDailog:AddOptEntry("Thay ��i Opp HKMP H�n ch� ", tbHanCheRefineEquip)
    --	tbDailog:AddOptEntry("Thay ��i Ngo�i H�nh �o Gi�p ��p Trai(200xu)", MenuDoiNgoaiHinhGiap_d)
    --	tbDailog:AddOptEntry("Thay ��i Ngo�i H�nh V� Kh�", MenuDoiNgoaiHinh0)
    ----	tbDailog:AddOptEntry("Ch� T�o V� Kh� HKMP Ph�t S�ng", Make_Weapons)
    --	tbDailog:AddOptEntry("Nh�n Th�y Tinh", NhanThuyTinhFree)
    --	tbDailog:AddOptEntry("Tr�ng Luy�n Trang B� H�n Ch�", refine_HanChe)
    --tbDailog:AddOptEntry("N�ng C�p Trang B� B�ch Kim (Mem M�i Vip)", NangCapBachKimVIP)
    --	tbDailog:AddOptEntry("N�ng C�p Trang B� B�ch Kim", NangCapBachKim)
    --	tbDailog:AddOptEntry("R� Trang B� B�ch Kim ", RaTrangBiBachKim)
    --	tbDailog:AddOptEntry("��i M�nh HKMP", exchange_entry)
    --	tbDailog:AddOptEntry("Thu� Nh�n K�ch All",Kick_All)
    tbDailog:AddOptEntry("L�c L�i Option Trang B� HKMP", LocOptionHKOK)

    --	tbDailog:AddOptEntry("Test Nang Bach Kim", bachkim0)
    --		tbDailog:AddOptEntry("Test Nang Cap +8", nangcapbachkim6)
    tbDailog:Show()
end
function menutrangbixanh()
    local tbSay = {
        "��i sang Trang B� H� Kim./#tranhbixanhhekim()",
        "��i sang Trang B� H� M�c./#tranhbixanhhemoc()",
        "��i sang Trang B� H� Thu�./#tranhbixanhhethuy()",
        "��i sang Trang B� H� Ho�./#tranhbixanhhehoa()",
        "��i sang Trang B� H� Th�./#tranhbixanhhetho()",
        "Th�i ta kh�ng mu�n n�a./no"
    }
    Say("B�n ch�n ch�c n�ng n�o ?", getn(tbSay), tbSay)
end
function tranhbixanhhekim()
    GiveItemUI(
        "Trang B�",
        "B� Trang B� Xanh V�o, Nguy�n Li�u �� Ngo�i H�nh Trang\n Nguy�n Li�u: \n- 1 L�c Thu� Tinh",
        "tranhbixanhhekim_ok",
        "no",
        1
    )
end
function tranhbixanhhekim_ok()
    local nItemIdx = GetGiveItemUnit(1)
    local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp(nItemIdx)
    local nQuality = GetItemQuality(nItemIdx)
    local bindState = GetItemBindState(nItemIdx)
    local nG, nD, nP, nLevel, nHe, nDong2 = GetItemProp(nItemIdx)
    local timeitem = ITEM_GetExpiredTime(nItemIdx)
    if (bindState ~= 0) then
        Talk(1, "", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� �p")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang b� �ang c� h�n s� d�ng, kh�ng th� �p")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng��i ��t c�i g� v�o th� n�y ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("ch� ��t v�o trang b� xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 0, 0, 0)
    else
        Say("H�nh trang kh�ng �� nguy�n li�u.")
        return
    end
end
function tranhbixanhhemoc()
    GiveItemUI(
        "Trang B�",
        "B� Trang B� Xanh V�o, Nguy�n Li�u �� Ngo�i H�nh Trang\n Nguy�n Li�u: \n- 1 L�c Thu� Tinh",
        "tranhbixanhhemoc_ok",
        "no",
        1
    )
end
function tranhbixanhhemoc_ok()
    local nItemIdx = GetGiveItemUnit(1)
    local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp(nItemIdx)
    local nQuality = GetItemQuality(nItemIdx)
    local bindState = GetItemBindState(nItemIdx)
    local nG, nD, nP, nLevel, nHe, nDong2 = GetItemProp(nItemIdx)
    local timeitem = ITEM_GetExpiredTime(nItemIdx)
    if (bindState ~= 0) then
        Talk(1, "", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� �p")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang b� �ang c� h�n s� d�ng, kh�ng th� �p")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng��i ��t c�i g� v�o th� n�y ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("ch� ��t v�o trang b� xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 1, 0, 0)
    else
        Say("H�nh trang kh�ng �� nguy�n li�u.")
        return
    end
end
function tranhbixanhhethuy()
    GiveItemUI(
        "Trang B�",
        "B� Trang B� Xanh V�o, Nguy�n Li�u �� Ngo�i H�nh Trang\n Nguy�n Li�u: \n- 1 L�c Thu� Tinh",
        "tranhbixanhhethuy_ok",
        "no",
        1
    )
end
function tranhbixanhhethuy_ok()
    local nItemIdx = GetGiveItemUnit(1)
    local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp(nItemIdx)
    local nQuality = GetItemQuality(nItemIdx)
    local bindState = GetItemBindState(nItemIdx)
    local nG, nD, nP, nLevel, nHe, nDong2 = GetItemProp(nItemIdx)
    local timeitem = ITEM_GetExpiredTime(nItemIdx)
    if (bindState ~= 0) then
        Talk(1, "", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� �p")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang b� �ang c� h�n s� d�ng, kh�ng th� �p")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng��i ��t c�i g� v�o th� n�y ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("ch� ��t v�o trang b� xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 2, 0, 0)
    else
        Say("H�nh trang kh�ng �� nguy�n li�u.")
        return
    end
end
function tranhbixanhhehoa()
    GiveItemUI(
        "Trang B�",
        "B� Trang B� Xanh V�o, Nguy�n Li�u �� Ngo�i H�nh Trang\n Nguy�n Li�u: \n- 1 L�c Thu� Tinh",
        "tranhbixanhhehoa_ok",
        "no",
        1
    )
end
function tranhbixanhhehoa_ok()
    local nItemIdx = GetGiveItemUnit(1)
    local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp(nItemIdx)
    local nQuality = GetItemQuality(nItemIdx)
    local bindState = GetItemBindState(nItemIdx)
    local nG, nD, nP, nLevel, nHe, nDong2 = GetItemProp(nItemIdx)
    local timeitem = ITEM_GetExpiredTime(nItemIdx)
    if (bindState ~= 0) then
        Talk(1, "", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� �p")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang b� �ang c� h�n s� d�ng, kh�ng th� �p")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng��i ��t c�i g� v�o th� n�y ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("ch� ��t v�o trang b� xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 3, 0, 0)
    else
        Say("H�nh trang kh�ng �� nguy�n li�u.")
        return
    end
end
function tranhbixanhhetho()
    GiveItemUI(
        "Trang B�",
        "B� Trang B� Xanh V�o, Nguy�n Li�u �� Ngo�i H�nh Trang\n Nguy�n Li�u: \n- 1 L�c Thu� Tinh",
        "tranhbixanhhetho_ok",
        "no",
        1
    )
end
function tranhbixanhhetho_ok()
    local nItemIdx = GetGiveItemUnit(1)
    local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp(nItemIdx)
    local nQuality = GetItemQuality(nItemIdx)
    local bindState = GetItemBindState(nItemIdx)
    local nG, nD, nP, nLevel, nHe, nDong2 = GetItemProp(nItemIdx)
    local timeitem = ITEM_GetExpiredTime(nItemIdx)
    if (bindState ~= 0) then
        Talk(1, "", "Trang b� �ang trong tr�ng th�i kh�a, kh�ng th� �p")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang b� �ang c� h�n s� d�ng, kh�ng th� �p")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng��i ��t c�i g� v�o th� n�y ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("ch� ��t v�o trang b� xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 4, 0, 0)
    else
        Say("H�nh trang kh�ng �� nguy�n li�u.")
        return
    end
end
function muaanbang()
    local tbSay = {
        "An Bang B�ng Tinh Th�ch H�ng Li�n./#muaanbangok(164)",
        "An Bang C�c Hoa Th�ch Ch� ho�n./#muaanbangok(165)",
        "An Bang �i�n Ho�ng Th�ch Ng�c B�i./#muaanbangok(166)",
        "An Bang K� Huy�t Th�ch Gi�i Ch�./#muaanbangok(167)",
        "Th�i ta kh�ng mu�n n�a./no"
    }
    Say("B�n ch�n ch�c n�ng n�o ?", getn(tbSay), tbSay)
end
function muaanbangok(idtrangbi)
    if idtrangbi == 164 then
        if CalcEquiproomItemCount(4, 417, 1, 1) >= 120 then
            ConsumeEquiproomItem(120, 4, 417, 1, 1)
            tbAwardTemplet:GiveAwardByList(
                {{szName = "", tbProp = {0, idtrangbi}, nCount = 1, nQuality = 1}},
                "test",
                1
            )
        else
            Say("H�nh trang kh�ng �� 120 Ti�n ��ng.")
            return
        end
    else
        if CalcEquiproomItemCount(4, 417, 1, 1) >= 50 then
            ConsumeEquiproomItem(50, 4, 417, 1, 1)
            tbAwardTemplet:GiveAwardByList(
                {{szName = "", tbProp = {0, idtrangbi}, nCount = 1, nQuality = 1}},
                "test",
                1
            )
        else
            Say("H�nh trang kh�ng �� 50 Ti�n ��ng.")
            return
        end
    end
end

function trangbihancherandom()
    local tbSay = {
        "[H�n ch� th�i gian] M�ng Long T� Kim B�t Nh� Gi�i./#trangbihancherandom_ok(769,1)",
        "[H�n ch� th�i gian] Ph�c Ma V� L��ng Kim Cang Uy�n./#trangbihancherandom_ok(771,2)",
        "[H�n ch� th�i gian] T� Kh�ng ��t Ma T�ng H�i./#trangbihancherandom_ok(776,3)",
        "[H�n ch� th�i gian] Ng� Long T�n Phong Ph�t C�./#trangbihancherandom_ok(793,4)",
        "[H�n ch� th�i gian] V� Gian Thanh Phong Nhuy�n K�ch./#trangbihancherandom_ok(796,5)",
        "[H�n ch� th�i gian] V� Y�m Thu Th�y L�u Quang ��i./#trangbihancherandom_ok(801,6)",
        "[H�n ch� th�i gian] V� Tr�n T�nh �nh L�u T�./#trangbihancherandom_ok(808,7)",
        "[H�n ch� th�i gian] Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u./#trangbihancherandom_ok(811,8)",
        "[H�n ch� th�i gian] B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n ./#trangbihancherandom_ok(816,9)",
        "[H�n ch� th�i gian] Minh Hoan Song Ho�n X� Kh�u./#trangbihancherandom_ok(829,10)",
        "[H�n ch� th�i gian] Ch� Ph�c Tr�ng C�t Ng�c B�i./#trangbihancherandom_ok(834,11)",
        "Trang Sau./#trangbihancherandom2()",
        "Th�i ta kh�ng mu�n n�a./no"
    }
    Say("B�n ch�n ch�c n�ng n�o ?", getn(tbSay), tbSay)
end
function trangbihancherandom2()
    local tbSay = {
        "[H�n ch� th�i gian] Thi�n Quang ��a H�nh Thi�n L� Ngoa./#trangbihancherandom_ok(843,12)",
        "[H�n ch� th�i gian] ��a Ph�ch Phong H�n Th�c Y�u./#trangbihancherandom_ok(854,13)",
        "[H�n ch� th�i gian] ��ng C�u Ng� Long Ng�c B�i./#trangbihancherandom_ok(855,14)",
        "[H�n ch� th�i gian] Ma S�t C� H�a Li�u Thi�n Ho�n./#trangbihancherandom_ok(868,15)",
        "[H�n ch� th�i gian] Ma Ho�ng Dung Kim �o�n Nh�t Gi�i./#trangbihancherandom_ok(874,16)",
        "[H�n ch� th�i gian] Ma Th� L� Ma Ph� T�m ��i./#trangbihancherandom_ok(876,17)",
        "[H�n ch� th�i gian] L�ng Nh�c V� Ng� Th�c ��i./#trangbihancherandom_ok(881,18)",
        "[H�n ch� th�i gian] C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n./#trangbihancherandom_ok(888,19)",
        "[H�n ch� th�i gian] S��ng Tinh L�u Tinh C�n Nguy�t Kh�u./#trangbihancherandom_ok(891,20)",
        "[H�n ch� th�i gian] L�i Khung Linh Ng�c �n L�i Uy�n./#trangbihancherandom_ok(898,21)",
        "[H�n ch� th�i gian] V� Hoan Th�i Uy�n Ch�n V� Li�n./#trangbihancherandom_ok(901,22)",
        "Th�i ta kh�ng mu�n n�a./no"
    }
    Say("B�n ch�n ch�c n�ng n�o ?", getn(tbSay), tbSay)
end
function trangbihancherandom_ok(idtrangbi, thutu)
    if CalcEquiproomItemCount(4, 417, 1, 1) >= 12000 then
        ConsumeEquiproomItem(12000, 4, 417, 1, 1)
        local ranntyle = random(1, 100)
        if ranntyle <= 81 then
            tbAwardTemplet:GiveAwardByList(
                {{szName = "", tbProp = {0, idtrangbi}, nCount = 1, nQuality = 1}},
                "test",
                1
            )
        else
            tbAwardTemplet:GiveAwardByList(
                {{szName = "", tbProp = {0, 685 + thutu}, nCount = 1, nQuality = 1}},
                "test",
                1
            )
        end
    else
        Say("H�nh trang kh�ng �� 12000 Ti�n ��ng.")
        return
    end
end
function trangbihanchemax()
    local tbSay = {
        "[H�n ch� th�i gian] M�ng Long T� Kim B�t Nh� Gi�i./#trangbihanchemax_ok(686)",
        "[H�n ch� th�i gian] Ph�c Ma V� L��ng Kim Cang Uy�n./#trangbihanchemax_ok(687)",
        "[H�n ch� th�i gian] T� Kh�ng ��t Ma T�ng H�i./#trangbihanchemax_ok(688)",
        "[H�n ch� th�i gian] Ng� Long T�n Phong Ph�t C�./#trangbihanchemax_ok(689)",
        "[H�n ch� th�i gian] V� Gian Thanh Phong Nhuy�n K�ch./#trangbihanchemax_ok(690)",
        "[H�n ch� th�i gian] V� Y�m Thu Th�y L�u Quang ��i./#trangbihanchemax_ok(691)",
        "[H�n ch� th�i gian] V� Tr�n T�nh �nh L�u T�./#trangbihanchemax_ok(692)",
        "[H�n ch� th�i gian] Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u./#trangbihanchemax_ok(693)",
        "[H�n ch� th�i gian] B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n ./#trangbihanchemax_ok(694)",
        "[H�n ch� th�i gian] Minh Hoan Song Ho�n X� Kh�u./#trangbihanchemax_ok(695)",
        "[H�n ch� th�i gian] Ch� Ph�c Tr�ng C�t Ng�c B�i./#trangbihanchemax_ok(696)",
        "Trang Sau./#trangbihanchemax2()",
        "Th�i ta kh�ng mu�n n�a./no"
    }
    Say("B�n ch�n ch�c n�ng n�o ?", getn(tbSay), tbSay)
end
function trangbihanchemax2()
    local tbSay = {
        "[H�n ch� th�i gian] Thi�n Quang ��a H�nh Thi�n L� Ngoa./#trangbihanchemax_ok(697)",
        "[H�n ch� th�i gian] ��a Ph�ch Phong H�n Th�c Y�u./#trangbihanchemax_ok(698)",
        "[H�n ch� th�i gian] ��ng C�u Ng� Long Ng�c B�i./#trangbihanchemax_ok(699)",
        "[H�n ch� th�i gian] Ma S�t C� H�a Li�u Thi�n Ho�n./#trangbihanchemax_ok(700)",
        "[H�n ch� th�i gian] Ma Ho�ng Dung Kim �o�n Nh�t Gi�i./#trangbihanchemax_ok(701)",
        "[H�n ch� th�i gian] Ma Th� L� Ma Ph� T�m ��i./#trangbihanchemax_ok(702)",
        "[H�n ch� th�i gian] L�ng Nh�c V� Ng� Th�c ��i./#trangbihanchemax_ok(703)",
        "[H�n ch� th�i gian] C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n./#trangbihanchemax_ok(704)",
        "[H�n ch� th�i gian] S��ng Tinh L�u Tinh C�n Nguy�t Kh�u./#trangbihanchemax_ok(705)",
        "[H�n ch� th�i gian] L�i Khung Linh Ng�c �n L�i Uy�n./#trangbihanchemax_ok(706)",
        "[H�n ch� th�i gian] V� Hoan Th�i Uy�n Ch�n V� Li�n./#trangbihanchemax_ok(707)",
        "Th�i ta kh�ng mu�n n�a./no"
    }
    Say("B�n ch�n ch�c n�ng n�o ?", getn(tbSay), tbSay)
end
function trangbihanchemax_ok(idtrangbi)
    if CalcEquiproomItemCount(4, 417, 1, 1) >= 16000 then
        ConsumeEquiproomItem(16000, 4, 417, 1, 1)
        tbAwardTemplet:GiveAwardByList(
            {{szName = "Phi V�n", tbProp = {0, idtrangbi}, nCount = 1, nQuality = 1}},
            "test",
            1
        )
    else
        Say("H�nh trang kh�ng �� 16000 Ti�n ��ng.")
        return
    end
end
function menuhanche()
    local szTitle = "<#><npc> N�i n�y ��u l� k� tr�n d� b�o! ��i hi�p c�n g�!?"
    local Opt = {
        {"Mua Trang B� H�n Ch� Random Option (12000 Xu)", trangbihancherandom},
        --{"Mua Trang B� H�n Ch� Max Option (16000 Xu)", trangbihanchemax},
        {"K�t th�c ��i tho�i. ", End}
    }
    CreateNewSayEx(szTitle, Opt)
end

-------------------------------------------------- ��i R��ng ho�ng kim -----------------------

function menuruonghoangkim()
    local szTitle = "<#><npc> N�i n�y ��u l� k� tr�n d� b�o! ��i hi�p c�n g�!?"
    local Opt = {
        {"R��ng Ho�ng Kim M�n Ph�i", ruonghkmp},
        {"R��ng ��ng S�t", ruongdongsat},
        {"R��ng An Bang", ruonganbang},
        {"R��ng H�ng �nh", ruonghonganh},
        {"R��ng ��nh Qu�c", ruongdinhquoc},
        {"R��ng Nhu T�nh", ruongnhutinh},
        {"R��ng Hi�p C�t", ruonghiepcot},
        {"K�t th�c ��i tho�i. ", End}
    }
    CreateNewSayEx(szTitle, Opt)
end
-----------------------r��ng hkmp ------------
function ruonghkmp()
    if CalcEquiproomItemCount(6, 1, 4914, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)

        local tbVnNewItemDropAward = {{{szName = "R��ng Ho�ng Kim M�n Ph�i", tbProp = {6, 1, 4224, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "Ph�n Th��ng")
    else
        Say("Tr�n ng��i ��i hi�p kh�ng �� 100 M�nh Ho�ng Kim. , ho�c kh�ng c� �� 100 ti�n ��ng !")
        return
    end
end
---------------------------- r��ng ��ng s�t ---------------------
function ruongdongsat()
    if CalcEquiproomItemCount(6, 1, 4916, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)

        local tbVnNewItemDropAward = {{{szName = "R��ng Ho�ng Kim M�n Ph�i", tbProp = {6, 1, 4910, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "Ph�n Th��ng")
    else
        Say("Server Free : \n  1 : B�n Qu� Ngh�o Ko �� 100 Ti�n ��ng ! \n 2 : B�n Ch�a �r 100 m�nh Ho�ng Kim .")
        return
    end
end
---------------------------- an bang ---------------------
function ruonganbang()
    if CalcEquiproomItemCount(6, 1, 4917, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R��ng Ho�ng Kim M�n Ph�i", tbProp = {6, 1, 4909, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "Ph�n Th��ng")
    else
        Say("Server Free : \n  1 : B�n Qu� Ngh�o Ko �� 100 Ti�n ��ng ! \n 2 : B�n Ch�a �r 100 m�nh Ho�ng Kim .")
        return
    end
end
---------------------------- r��ng ��ng s�t ---------------------
function ruonghonganh()
    if CalcEquiproomItemCount(6, 1, 4918, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R��ng Ho�ng Kim M�n Ph�i", tbProp = {6, 1, 4912, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "Ph�n Th��ng")
    else
        Say("Server Free : \n  1 : B�n Qu� Ngh�o Ko �� 100 Ti�n ��ng ! \n 2 : B�n Ch�a �r 100 m�nh Ho�ng Kim .")
        return
    end
end
---------------------------- r��ng ��ng s�t ---------------------
function ruongdinhquoc()
    if CalcEquiproomItemCount(6, 1, 4915, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R��ng Ho�ng Kim M�n Ph�i", tbProp = {6, 1, 4911, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "Ph�n Th��ng")
    else
        Say("Server Free : \n  1 : B�n Qu� Ngh�o Ko �� 100 Ti�n ��ng ! \n 2 : B�n Ch�a �r 100 m�nh Ho�ng Kim .")
        return
    end
end
---------------------------- r��ng ��ng s�t ---------------------
function ruongnhutinh()
    if CalcEquiproomItemCount(6, 1, 4919, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R��ng Ho�ng Kim M�n Ph�i", tbProp = {6, 1, 4921, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "Ph�n Th��ng")
    else
        Say("Server Free : \n  1 : B�n Qu� Ngh�o Ko �� 100 Ti�n ��ng ! \n 2 : B�n Ch�a �r 100 m�nh Ho�ng Kim .")
        return
    end
end
---------------------------- r��ng ��ng s�t ---------------------
function ruonghiepcot()
    if CalcEquiproomItemCount(6, 1, 4920, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R��ng Ho�ng Kim M�n Ph�i", tbProp = {6, 1, 4922, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "Ph�n Th��ng")
    else
        Say("Server Free : \n  1 : B�n Qu� Ngh�o Ko �� 100 Ti�n ��ng ! \n 2 : B�n Ch�a �r 100 m�nh Ho�ng Kim .")
        return
    end
end
---------------------------- r��ng ��ng s�t ---------------------
function doivatpham()
    if CalcFreeItemCellCount() < 10 then
        Say(
            "H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y m�.",
            0
        )
        return 0
    end
    GiveItemUI("��i V�t Ph�m.", "Ch� b� 1 trang b� v�o.", "doivatpham_ok")
end
function doivatpham_ok(nCount)
    if (nCount ~= 1) then
        Say("C�c h� ch� c�n b� v�o 1 trang b�.", 0)
        return
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nItemTime = ITEM_GetExpiredTime(nItemIndex)
    local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
    local nCurItemQuality = GetItemQuality(nItemIndex)
    local nCurTime = GetCurServerTime()
    if (nItemTime > 0) then
        Talk(1, "", "V�t ph�m c� th�i h�n kh�ng th� ��i ���c.")
        return
    end
    local bindState = GetItemBindState(nItemIndex)
    if (bindState ~= 0) then
        Talk(1, "", "Trang bi �ang trong tr�ng th�i kh�a, kh�ng th� ��i ���c")
        return
    end
    if (nCurItemQuality ~= 1) then
        Talk(1, "", "Trang bi kh�ng ph�i l� trang b� ho�ng kim, kh�ng th� ��i ���c")
        return
    end
    if (nGoldEquipIdxFF >= 159 and nGoldEquipIdxFF <= 163) or (nGoldEquipIdxFF >= 191 and nGoldEquipIdxFF <= 193) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 165 and nGoldEquipIdxFF <= 167) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 403 and nGoldEquipIdxFF <= 427) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 6272 and nGoldEquipIdxFF <= 6275) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 494 and nGoldEquipIdxFF <= 497) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 100}}, "test", 1)
    elseif nGoldEquipIdxFF == 164 then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 425 and nGoldEquipIdxFF <= 427) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 50}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 186 and nGoldEquipIdxFF <= 189) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 5}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 430 and nGoldEquipIdxFF <= 433) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 5}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 143 and nGoldEquipIdxFF <= 146) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 5}}, "test", 1)
    elseif nGoldEquipIdxFF == 190 then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif nGoldEquipIdxFF >= 685 and nGoldEquipIdxFF <= 901 then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 150}}, "test", 1)
    elseif nGoldEquipIdxFF >= 1 and nGoldEquipIdxFF <= 140 then
        local idvatpham = {
            6,
            11,
            16,
            21,
            26,
            31,
            39,
            1,
            46,
            51,
            56,
            61,
            71,
            76,
            81,
            94,
            96,
            101,
            111,
            116,
            121,
            126,
            131
        }
        local checkckeck = 0
        for i = 1, getn(idvatpham) do
            if idvatpham[i] == nGoldEquipIdxFF then
                checkckeck = 1
            end
        end
        if checkckeck == 1 then
            RemoveItemByIndex(nItemIndex)
            tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 200}}, "test", 1)
        else
            RemoveItemByIndex(nItemIndex)
            tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 100}}, "test", 1)
        end
    elseif nGoldEquipIdxFF >= 540 and nGoldEquipIdxFF <= 679 then
        --	elseif nGoldEquipIdxFF>=540 and nGoldEquipIdxFF<=679 then
        --	local idvatpham={6,11,16,21,26,31,39,1,46,51,56,61,71,76,81,94,96,101,111,116,121,126,131}
        --	local checkckeck=0
        --	for i=1,getn(idvatpham) do
        --		if idvatpham[i]+539==nGoldEquipIdxFF then
        --		checkckeck=1
        --	end
        --	end
        --	if checkckeck==1 then
        --		RemoveItemByIndex(nItemIndex)
        --		tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,417,1,1},nCount=4000},}, "test", 1);
        --		tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,417,1,1},nCount=4000},}, "test", 1);
        --		tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,417,1,1},nCount=4000},}, "test", 1);
        --	tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,417,1,1},nCount=4000},}, "test", 1);
        --	else
        --		RemoveItemByIndex(nItemIndex)
        --		tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng",tbProp={4,417,1,1},nCount=8000},}, "test", 1);
        --	end
        local idvatpham = {
            6,
            11,
            16,
            21,
            26,
            31,
            39,
            1,
            46,
            51,
            56,
            61,
            71,
            76,
            81,
            94,
            96,
            101,
            111,
            116,
            121,
            126,
            131
        }
        local checkckeck = 0
        for i = 1, getn(idvatpham) do
            if idvatpham[i] + 539 == nGoldEquipIdxFF then
                checkckeck = 1
            end
        end
        if checkckeck == 1 then
            RemoveItemByIndex(nItemIndex)
            tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 200}}, "test", 1)
        else
            RemoveItemByIndex(nItemIndex)
            tbAwardTemplet:GiveAwardByList({{szName = "Ti�n ��ng", tbProp = {4, 417, 1, 1}, nCount = 100}}, "test", 1)
        end
    else
        Say("Trang b� n�y kh�ng ��i ra ti�n ��ng ���c.")
        return
    end
end

function NangCapBachKimVIP()
    if GetTask(3081) == 0 then
        Say("Ch�c n�ng ch� c� Admin ph�t cho nh�ng mem m�i VIP.")
        return 1
    end
    local tbSay = {
        "N�ng HKMP --> B�ch Kim +0 (free)/#BachKimGui(0)",
        --"N�ng B�ch Kim C�p 1-->5 (30 MTT m�i lo�i)/#BachKimGui(15)",
        --"N�ng B�ch Kim C�p 1 (Free)/#bachkim6free()",
        --"N�ng B�ch Kim C�p 5 L�n 6(D�ng Xu+KNB Kh�a)/#BachKimGui(61)",
        --"N�ng B�ch Kim C�p 6-->7 (250 MTT m�i lo�i + 1 HKNB)/#BachKimGui(7)",
        --"N�ng B�ch Kim C�p 7-->8 (250 MTT m�i lo�i + 10 HKNB)/#BachKimGui(8)",
        --"N�ng B�ch Kim C�p 8 L�n 9 (open t�m t�t) /#BachKimGui(9)",
        --"N�ng B�ch Kim C�p 9 L�n 10 (open t�m t�t) /#BachKimGui(10)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n Ch�n C�p �� C�n N�ng C�p", getn(tbSay), tbSay)
end
function bachkim6free()
    if GetTask(3081) >= 1 and GetTask(3081) < 6 then
        GiveItemUI("N�ng C�p Trang B� B�ch Kim", "1", "bachkim6free_ok", "no", 1)
    else
        Say("M�i nh�n v�t ch� ���c �p 5 m�n.")
        return
    end
end
function bachkim6free_ok(nCount)
    if nCount ~= 1 then
        Say("Ch� b� 1 v�t ph�m v�o �� n�ng c�p.")
        return
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
    if nItemLevel == 0 then
        --nItemLeveltc=nItemLevel+5
        --UpgradePlatinaFromGoldItem(GetGiveItemUnit(1))
        UpgradePlatinaItem(GetGiveItemUnit(1))
        UpgradePlatinaItem(GetGiveItemUnit(1))
        UpgradePlatinaItem(GetGiveItemUnit(1))
        UpgradePlatinaItem(GetGiveItemUnit(1))
        UpgradePlatinaItem(GetGiveItemUnit(1))
        UpgradePlatinaItem(GetGiveItemUnit(1))
        SetItemBindState(nItemIndex, -2)
        Msg2Player("N�ng c�p th�nh c�ng")
        SetTask(3081, GetTask(3081) + 1)
    else
        Say("Trang b� n�y kh�ng th� n�ng c�p l�n +6")
        return
    end
end
function bachkim0()
    GiveItemUI("N�ng C�p Trang B� B�ch Kim", "1", "nangbachkim0ad_ok", "no", 1)
end
function nangbachkim0ad_ok(nCount)
    for i = 1, nCount do
        --local nItemIndex = GetGiveItemUnit(i)

        UpgradePlatinaFromGoldItem(GetGiveItemUnit(i))
    end
    Msg2Player(
        "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
            GetName() .. "<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� <color=red>L�n B�ch Kim"
    )
end
function nangcapbachkim6()
    GiveItemUI("N�ng C�p Trang B� B�ch Kim", "1", "nangcapbachkim6_ok", "no", 1)
end
function nangcapbachkim6_ok(nCount)
    for i = 1, nCount do
        local nItemLevel = GetPlatinaLevel(GetGiveItemUnit(i))
        --nItemLeveltc=nItemLevel+5
        --UpgradePlatinaFromGoldItem(GetGiveItemUnit(1))
        UpgradePlatinaItem(GetGiveItemUnit(i))
        UpgradePlatinaItem(GetGiveItemUnit(i))
        UpgradePlatinaItem(GetGiveItemUnit(i))
        UpgradePlatinaItem(GetGiveItemUnit(i))
        UpgradePlatinaItem(GetGiveItemUnit(i))
        UpgradePlatinaItem(GetGiveItemUnit(i))
        UpgradePlatinaItem(GetGiveItemUnit(i))
        UpgradePlatinaItem(GetGiveItemUnit(i))
    end
    --	Msg2Player("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� "..szItemName.." <color=red>L�n B�ch Kim C�p <color=yellow>"..nItemLeveltc.."")
    --else Say("Trang B� Ho�ng Kim Kh�ng Ph�i +5 ")
    --end
end
------------------------------------------------------------------------------------ra bach kim
function RaTrangBiBachKim()
    local tbSay = {
        --"R� B�ch Kim +1 Th�nh 30 M�nh Thi�n Th�ch(20xu) /#RaTrangBi(1)",
        --"R� B�ch Kim +2 Th�nh 60 M�nh Thi�n Th�ch(20xu) /#RaTrangBi(2)",
        --"R� B�ch Kim +3 Th�nh 90 M�nh Thi�n Th�ch(20xu) /#RaTrangBi(3)",
        --"R� B�ch Kim +4 Th�nh 120 M�nh Thi�n Th�ch(20xu) /#RaTrangBi(4)",
        --"R� B�ch Kim +5 Th�nh 150 M�nh Thi�n Th�ch(20xu) /#RaTrangBi(5)",
        --"R� B�ch Kim +6 Th�nh 250 M�nh Thi�n Th�ch(20xu) /#RaTrangBi(6)",
        --"R� B�ch Kim +7 Th�nh 250 M�nh Thi�n Th�ch(100xu) /#RaTrangBi(7)",
        --"R� B�ch Kim +8 Th�nh 500 M�nh Thi�n Th�ch(100xu) /#RaTrangBi(8)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n Ch�n C�p �� C�n R�", getn(tbSay), tbSay)
end

function RaTrangBi(num)
    if num == 1 then
        GiveItemUI("R� Trang B� B�ch Kim +1", "Xin h�y b� v�o trang b� v�o", "ratrangbi1", "no", 1)
    end
    if num == 2 then
        GiveItemUI("R� Trang B� B�ch Kim +2", "Xin h�y b� v�o trang b� v�o", "ratrangbi2", "no", 1)
    end
    if num == 3 then
        GiveItemUI("R� Trang B� B�ch Kim +3", "Xin h�y b� v�o trang b� v�o", "ratrangbi3", "no", 1)
    end
    if num == 4 then
        GiveItemUI("R� Trang B� B�ch Kim +4", "Xin h�y b� v�o trang b� v�o", "ratrangbi4", "no", 1)
    end
    if num == 5 then
        GiveItemUI("R� Trang B� B�ch Kim +5", "Xin h�y b� v�o trang b� v�o", "ratrangbi5", "no", 1)
    end
    if num == 6 then
        GiveItemUI("R� Trang B� B�ch Kim +6", "Xin h�y b� v�o trang b� v�o", "ratrangbi6", "no", 1)
    end
    if num == 7 then
        GiveItemUI("R� Trang B� B�ch Kim +7", "Xin h�y b� v�o trang b� v�o", "ratrangbi7", "no", 1)
    end
    if num == 8 then
        GiveItemUI("R� Trang B� B�ch Kim +8", "Xin h�y b� v�o trang b� v�o", "ratrangbi8", "no", 1)
    end
    if num == 9 then
        GiveItemUI("R� Trang B� B�ch Kim +9", "Xin h�y b� v�o trang b� v�o", "ratrangbi9", "no", 1)
    end
    if num == 10 then
        GiveItemUI("R� Trang B� B�ch Kim +9", "Xin h�y b� v�o trang b� v�o", "ratrangbi10", "no", 1)
    end
end
function ratrangbi1()
    if CalcFreeItemCellCount() < 20 then
        Say("H�nh trang kh�ng �� 20 � tr�ng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� R�")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("H�nh trang kh�ng c� 20 xu.")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 1 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            ConsumeEquiproomItem(20, 4, 417, 1, 1)
            for i = 1317, 1325 do
                tbAwardTemplet:GiveAwardByList(
                    {{szName = "M�nh Thi�n Th�ch", tbProp = {4, i, 1, 1, 0}, nCount = 30}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 30 M�nh Thi�n Th�ch. "
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +1 ")
        end
    end
end
function ratrangbi2()
    if CalcFreeItemCellCount() < 20 then
        Say("H�nh trang kh�ng �� 20 � tr�ng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� R�")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("H�nh trang kh�ng c� 20 xu.")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 2 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            ConsumeEquiproomItem(20, 4, 417, 1, 1)
            for i = 1317, 1325 do
                tbAwardTemplet:GiveAwardByList(
                    {{szName = "M�nh Thi�n Th�ch", tbProp = {4, i, 1, 1, 0}, nCount = 60}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 60 M�nh Thi�n Th�ch. "
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +2")
        end
    end
end
function ratrangbi3()
    if CalcFreeItemCellCount() < 20 then
        Say("H�nh trang kh�ng �� 20 � tr�ng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� R�")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("H�nh trang kh�ng c� 20 xu.")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 3 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            ConsumeEquiproomItem(20, 4, 417, 1, 1)
            for i = 1317, 1325 do
                tbAwardTemplet:GiveAwardByList(
                    {{szName = "M�nh Thi�n Th�ch", tbProp = {4, i, 1, 1, 0}, nCount = 90}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 90 M�nh Thi�n Th�ch. "
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +3 ")
        end
    end
end
function ratrangbi4()
    if CalcFreeItemCellCount() < 20 then
        Say("H�nh trang kh�ng �� 20 � tr�ng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� R�")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("H�nh trang kh�ng c� 20 xu.")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 4 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            ConsumeEquiproomItem(20, 4, 417, 1, 1)
            for i = 1317, 1325 do
                tbAwardTemplet:GiveAwardByList(
                    {{szName = "M�nh Thi�n Th�ch", tbProp = {4, i, 1, 1, 0}, nCount = 120}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 120 M�nh Thi�n Th�ch. "
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +4")
        end
    end
end
function ratrangbi5()
    if CalcFreeItemCellCount() < 20 then
        Say("H�nh trang kh�ng �� 20 � tr�ng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� R�")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("H�nh trang kh�ng c� 20 xu.")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 5 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            ConsumeEquiproomItem(20, 4, 417, 1, 1)
            for i = 1317, 1325 do
                tbAwardTemplet:GiveAwardByList(
                    {{szName = "M�nh Thi�n Th�ch", tbProp = {4, i, 1, 1, 0}, nCount = 150}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 150 M�nh Thi�n Th�ch. "
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +5 ")
        end
    end
end
function ratrangbi6()
    if CalcFreeItemCellCount() < 20 then
        Say("H�nh trang kh�ng �� 20 � tr�ng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� R�")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("H�nh trang kh�ng c� 20 xu.")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 6 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            ConsumeEquiproomItem(20, 4, 417, 1, 1)
            for i = 1317, 1325 do
                tbAwardTemplet:GiveAwardByList(
                    {{szName = "M�nh Thi�n Th�ch", tbProp = {4, i, 1, 1, 0}, nCount = 250}},
                    "test",
                    1
                )
                --	tbAwardTemplet:GiveAwardByList({{szName = "M�nh Thi�n Th�ch",tbProp={4,i,1,1,0},nCount=100},}, "test", 1);
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 250 M�nh Thi�n Th�ch. "
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +6")
        end
    end
end
function ratrangbi7()
    if CalcFreeItemCellCount() < 20 then
        Say("H�nh trang kh�ng �� 20 � tr�ng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� R�")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 100 then
        Say("H�nh trang kh�ng c� 100 xu.")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 7 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            ConsumeEquiproomItem(100, 4, 417, 1, 1)
            for i = 1317, 1325 do
                tbAwardTemplet:GiveAwardByList(
                    {{szName = "M�nh Thi�n Th�ch", tbProp = {4, i, 1, 1, 0}, nCount = 250}},
                    "test",
                    1
                )
                --tbAwardTemplet:GiveAwardByList({{szName = "M�nh Thi�n Th�ch",tbProp={4,i,1,1,0},nCount=200},}, "test", 1);
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 250 M�nh Thi�n Th�ch. "
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +7")
        end
    end
end
function ratrangbi61()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 6 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            AddStackItem(50, 4, 417, 1, 1, 0, 0)
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 50 Xu "
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +6 ")
        end
    end
end
function ratrangbi71()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcFreeItemCellCount() <= 20 then
        Say("H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 7 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            AddStackItem(150, 4, 417, 1, 1, 0, 0)
            --	AddStackItem(10,4,343,1,1,0,0)
            AddStackItem(100, 4, 1317, 1, 1, 0, 0)
            AddStackItem(100, 4, 1318, 1, 1, 0, 0)
            AddStackItem(100, 4, 1319, 1, 1, 0, 0)
            AddStackItem(100, 4, 1320, 1, 1, 0, 0)
            AddStackItem(100, 4, 1321, 1, 1, 0, 0)
            AddStackItem(100, 4, 1322, 1, 1, 0, 0)
            AddStackItem(100, 4, 1323, 1, 1, 0, 0)
            AddStackItem(100, 4, 1324, 1, 1, 0, 0)
            AddStackItem(100, 4, 1325, 1, 1, 0, 0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 150 Xu + 100  M�nh TT m�i lo�i"
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +7 ")
        end
    end
end

function ratrangbi8()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 100 then
        Say("H�nh trang kh�ng �� 100 xu.")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcFreeItemCellCount() <= 20 then
        Say("H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 8 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            ConsumeEquiproomItem(100, 4, 417, 1, 1)
            for i = 1317, 1325 do
                tbAwardTemplet:GiveAwardByList(
                    {{szName = "M�nh Thi�n Th�ch", tbProp = {4, i, 1, 1, 0}, nCount = 500}},
                    "test",
                    1
                )
                --tbAwardTemplet:GiveAwardByList({{szName = "M�nh Thi�n Th�ch",tbProp={4,i,1,1,0},nCount=200},}, "test", 1);
            end
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 500 M�nh Thi�n Th�ch. "
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +8 ")
        end
    end
end

function ratrangbi9()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcFreeItemCellCount() <= 20 then
        Say("H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 9 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            AddStackItem(250, 4, 417, 1, 1, 0, 0)
            AddStackItem(200, 4, 417, 1, 1, 0, 0)
            AddStackItem(200, 4, 1317, 1, 1, 0, 0)
            AddStackItem(200, 4, 1317, 1, 1, 0, 0)
            AddStackItem(200, 4, 1318, 1, 1, 0, 0)
            AddStackItem(200, 4, 1318, 1, 1, 0, 0)
            AddStackItem(200, 4, 1319, 1, 1, 0, 0)
            AddStackItem(200, 4, 1319, 1, 1, 0, 0)
            AddStackItem(200, 4, 1320, 1, 1, 0, 0)
            AddStackItem(200, 4, 1320, 1, 1, 0, 0)
            AddStackItem(200, 4, 1321, 1, 1, 0, 0)
            AddStackItem(200, 4, 1321, 1, 1, 0, 0)
            AddStackItem(200, 4, 1322, 1, 1, 0, 0)
            AddStackItem(200, 4, 1322, 1, 1, 0, 0)
            AddStackItem(200, 4, 1323, 1, 1, 0, 0)
            AddStackItem(200, 4, 1323, 1, 1, 0, 0)
            AddStackItem(200, 4, 1324, 1, 1, 0, 0)
            AddStackItem(200, 4, 1324, 1, 1, 0, 0)
            AddStackItem(200, 4, 1325, 1, 1, 0, 0)
            AddStackItem(200, 4, 1325, 1, 1, 0, 0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 450 Xu + 400  M�nh TT m�i lo�i"
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +9 ")
        end
    end
end

function ratrangbi10()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� R�")
        return 0
    end
    if CalcFreeItemCellCount() <= 20 then
        Say("H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 10 then
            --	nItemLeveltc=nItemLevel+1
            RemoveItemByIndex(nItemIndex)
            AddStackItem(250, 4, 417, 1, 1, 0, 0)
            AddStackItem(200, 4, 417, 1, 1, 0, 0)
            AddStackItem(200, 4, 417, 1, 1, 0, 0)
            AddStackItem(250, 4, 1317, 1, 1, 0, 0)
            AddStackItem(200, 4, 1317, 1, 1, 0, 0)
            AddStackItem(200, 4, 1317, 1, 1, 0, 0)
            AddStackItem(250, 4, 1318, 1, 1, 0, 0)
            AddStackItem(200, 4, 1318, 1, 1, 0, 0)
            AddStackItem(200, 4, 1318, 1, 1, 0, 0)
            AddStackItem(200, 4, 1319, 1, 1, 0, 0)
            AddStackItem(200, 4, 1319, 1, 1, 0, 0)
            AddStackItem(250, 4, 1319, 1, 1, 0, 0)
            AddStackItem(200, 4, 1320, 1, 1, 0, 0)
            AddStackItem(250, 4, 1320, 1, 1, 0, 0)
            AddStackItem(200, 4, 1320, 1, 1, 0, 0)
            AddStackItem(200, 4, 1321, 1, 1, 0, 0)
            AddStackItem(250, 4, 1321, 1, 1, 0, 0)
            AddStackItem(200, 4, 1321, 1, 1, 0, 0)
            AddStackItem(200, 4, 1322, 1, 1, 0, 0)
            AddStackItem(250, 4, 1322, 1, 1, 0, 0)
            AddStackItem(200, 4, 1322, 1, 1, 0, 0)
            AddStackItem(200, 4, 1323, 1, 1, 0, 0)
            AddStackItem(250, 4, 1323, 1, 1, 0, 0)
            AddStackItem(200, 4, 1323, 1, 1, 0, 0)
            AddStackItem(200, 4, 1324, 1, 1, 0, 0)
            AddStackItem(250, 4, 1324, 1, 1, 0, 0)
            AddStackItem(200, 4, 1324, 1, 1, 0, 0)
            AddStackItem(200, 4, 1325, 1, 1, 0, 0)
            AddStackItem(250, 4, 1325, 1, 1, 0, 0)
            AddStackItem(200, 4, 1325, 1, 1, 0, 0)
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> R� Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>Th�nh 650 Xu + 600  M�nh TT m�i lo�i"
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +10 ")
        end
    end
end
------------------------------------------------------------------------------------ra bach kim

function NangCapBachKim()
    local tbSay = {
        "N�ng HKMP --> B�ch Kim +0 (free)/#BachKimGui(0)",
        "N�ng B�ch Kim C�p 1-->6 (free)/#BachKimGui(15)",
        --"N�ng B�ch Kim C�p 5-->6 (100 MTT m�i lo�i + 20xu)/#BachKimGui(6)",
        --"N�ng B�ch Kim C�p 5 L�n 6(D�ng Xu+KNB Kh�a)/#BachKimGui(61)",
        "N�ng B�ch Kim C�p 6-->7 (250 MTT m�i lo�i + 1 HKNB)/#BachKimGui(7)",
        "N�ng B�ch Kim C�p 7-->8 (250 MTT m�i lo�i + 10 HKNB)/#BachKimGui(8)",
        --"N�ng B�ch Kim C�p 8 L�n 9 (open t�m t�t) /#BachKimGui(9)",
        --"N�ng B�ch Kim C�p 9 L�n 10 (open t�m t�t) /#BachKimGui(10)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n Ch�n C�p �� C�n N�ng C�p", getn(tbSay), tbSay)
end

function BachKimGui(int)
    if int == 15 then
        GiveItemUI("N�ng C�p Trang B� B�ch Kim", "Xin h�y b� v�o trang b� v�o", "nangbachkim15", "no", 1)
    end
    if int == 0 then
        GiveItemUI("N�ng C�p Trang B� B�ch Kim", "Xin h�y b� v�o trang b� v�o ", "nangbachkim0", "no", 1)
    end
    if int == 6 then
        GiveItemUI(
            "N�ng C�p Trang B� B�ch Kim",
            "Xin h�y b� v�o trang b� v�o \nKh�ng b� nguy�n li�u v�o \nNguy�n Li�u: \n+9 lo�i m�nh thi�n th�ch ,m�i lo�i 100 m�nh\n+20 Xu",
            "nangbachkim6",
            "no",
            1
        )
    end

    if int == 61 then
        GiveItemUI(
            "N�ng C�p Trang B� B�ch Kim",
            "Xin h�y b� v�o trang b� v�o\n Chi Ph�: 50 xu + 2 KNB(Kh�a)",
            "nangbachkim61",
            "no",
            1
        )
    end

    if int == 7 then
        GiveItemUI(
            "N�ng C�p Trang B� B�ch Kim",
            "Xin h�y b� v�o trang b� v�o \nKh�ng b� nguy�n li�u v�o \nNguy�n Li�u: \n+9 lo�i m�nh thi�n th�ch ,m�i lo�i 250 m�nh\n+1 Ho�ng Kim Ng�c B�i",
            "nangbachkim7",
            "no",
            1
        )
    end

    if int == 8 then
        GiveItemUI(
            "N�ng C�p Trang B� B�ch Kim",
            "Xin h�y b� v�o trang b� v�o \nKh�ng b� nguy�n li�u v�o \nNguy�n Li�u: \n+9 lo�i m�nh thi�n th�ch ,m�i lo�i 250 m�nh\n+10 Ho�ng Kim Ng�c B�i",
            "nangbachkim8",
            "no",
            1
        )
    end

    if int == 9 then
        GiveItemUI(
            "N�ng C�p Trang B� B�ch Kim",
            "Xin h�y b� v�o trang b� v�o\n Chi Ph�: 150 xu + 20 KNB + 200 M�nh TT M�i Lo�i",
            "nangbachkim9",
            "no",
            1
        )
    end

    if int == 10 then
        GiveItemUI(
            "N�ng C�p Trang B� B�ch Kim",
            "Xin h�y b� v�o trang b� v�o\n Chi Ph�: 200 xu + 20 KNB + 200 M�nh TT M�i Lo�i",
            "nangbachkim10",
            "no",
            1
        )
    end
end

function nangbachkim10()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    --local checkkhoa=GetItemBindState(nItemIndex)
    local ttcap1 = CalcEquiproomItemCount(4, 1317, 1, -1)
    local ttcap2 = CalcEquiproomItemCount(4, 1318, 1, -1)
    local ttcap3 = CalcEquiproomItemCount(4, 1319, 1, -1)
    local ttcap4 = CalcEquiproomItemCount(4, 1320, 1, -1)
    local ttcap5 = CalcEquiproomItemCount(4, 1321, 1, -1)
    local ttcap6 = CalcEquiproomItemCount(4, 1322, 1, -1)
    local ttcap7 = CalcEquiproomItemCount(4, 1323, 1, -1)
    local ttcap8 = CalcEquiproomItemCount(4, 1324, 1, -1)
    local ttcap9 = CalcEquiproomItemCount(4, 1325, 1, -1)
    local knb = CalcEquiproomItemCount(4, 343, 1, -1)
    local xu = CalcEquiproomItemCount(4, 417, 1, -1)

    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end

    --end
    --Msg2Player("oo"..checkkhoa.."ooo")
    if knb < 20 or xu < 200 then
        Say("Kh�ng �� 20 KNB Ho�c 200 Xu")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end

    if
        ttcap1 < 200 or ttcap2 < 200 or ttcap3 < 200 or ttcap4 < 200 or ttcap5 < 200 or ttcap6 < 200 or ttcap7 < 200 or
            ttcap8 < 200 or
            ttcap9 < 200
     then
        Say("Kh�ng �� Nguy�n Li�u ")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 9 then
            nItemLeveltc = nItemLevel + 1
            ConsumeEquiproomItem(200, 4, 1317, 1, -1)
            ConsumeEquiproomItem(200, 4, 1318, 1, -1)
            ConsumeEquiproomItem(200, 4, 1319, 1, -1)
            ConsumeEquiproomItem(200, 4, 1320, 1, -1)
            ConsumeEquiproomItem(200, 4, 1321, 1, -1)
            ConsumeEquiproomItem(200, 4, 1322, 1, -1)
            ConsumeEquiproomItem(200, 4, 1323, 1, -1)
            ConsumeEquiproomItem(200, 4, 1324, 1, -1)
            ConsumeEquiproomItem(200, 4, 1325, 1, -1)
            ConsumeEquiproomItem(20, 4, 343, 1, -1)
            ConsumeEquiproomItem(200, 4, 417, 1, -1)
            UpgradePlatinaItem(GetGiveItemUnit(1))
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>L�n B�ch Kim C�p <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +9 ")
        end
    end
end

function nangbachkim9()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    --local checkkhoa=GetItemBindState(nItemIndex)
    local ttcap1 = CalcEquiproomItemCount(4, 1317, 1, -1)
    local ttcap2 = CalcEquiproomItemCount(4, 1318, 1, -1)
    local ttcap3 = CalcEquiproomItemCount(4, 1319, 1, -1)
    local ttcap4 = CalcEquiproomItemCount(4, 1320, 1, -1)
    local ttcap5 = CalcEquiproomItemCount(4, 1321, 1, -1)
    local ttcap6 = CalcEquiproomItemCount(4, 1322, 1, -1)
    local ttcap7 = CalcEquiproomItemCount(4, 1323, 1, -1)
    local ttcap8 = CalcEquiproomItemCount(4, 1324, 1, -1)
    local ttcap9 = CalcEquiproomItemCount(4, 1325, 1, -1)
    local knb = CalcEquiproomItemCount(4, 343, 1, -1)
    local xu = CalcEquiproomItemCount(4, 417, 1, -1)

    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end

    --end
    --Msg2Player("oo"..checkkhoa.."ooo")
    if knb < 15 or xu < 150 then
        Say("Kh�ng �� 15 KNB Ho�c 150 Xu")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end
    if
        ttcap1 < 200 or ttcap2 < 200 or ttcap3 < 200 or ttcap4 < 200 or ttcap5 < 200 or ttcap6 < 200 or ttcap7 < 200 or
            ttcap8 < 200 or
            ttcap9 < 200
     then
        Say("Kh�ng �� Nguy�n Li�u ")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 8 then
            nItemLeveltc = nItemLevel + 1
            ConsumeEquiproomItem(200, 4, 1317, 1, -1)
            ConsumeEquiproomItem(200, 4, 1318, 1, -1)
            ConsumeEquiproomItem(200, 4, 1319, 1, -1)
            ConsumeEquiproomItem(200, 4, 1320, 1, -1)
            ConsumeEquiproomItem(200, 4, 1321, 1, -1)
            ConsumeEquiproomItem(200, 4, 1322, 1, -1)
            ConsumeEquiproomItem(200, 4, 1323, 1, -1)
            ConsumeEquiproomItem(200, 4, 1324, 1, -1)
            ConsumeEquiproomItem(200, 4, 1325, 1, -1)
            ConsumeEquiproomItem(20, 4, 343, 1, -1)
            ConsumeEquiproomItem(150, 4, 417, 1, -1)
            UpgradePlatinaItem(GetGiveItemUnit(1))
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>L�n B�ch Kim C�p <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +8 ")
        end
    end
end

function nangbachkim8()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    --local checkkhoa=GetItemBindState(nItemIndex)
    local ttcap1 = CalcEquiproomItemCount(4, 1317, 1, -1)
    local ttcap2 = CalcEquiproomItemCount(4, 1318, 1, -1)
    local ttcap3 = CalcEquiproomItemCount(4, 1319, 1, -1)
    local ttcap4 = CalcEquiproomItemCount(4, 1320, 1, -1)
    local ttcap5 = CalcEquiproomItemCount(4, 1321, 1, -1)
    local ttcap6 = CalcEquiproomItemCount(4, 1322, 1, -1)
    local ttcap7 = CalcEquiproomItemCount(4, 1323, 1, -1)
    local ttcap8 = CalcEquiproomItemCount(4, 1324, 1, -1)
    local ttcap9 = CalcEquiproomItemCount(4, 1325, 1, -1)
    local knb = CalcEquiproomItemCount(4, 343, 1, -1)
    local xu = CalcEquiproomItemCount(4, 417, 1, -1)
    local hoangkimngocbai = CalcEquiproomItemCount(4, 1326, -1, 1)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end

    --end
    --Msg2Player("oo"..checkkhoa.."ooo")

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end
    if
        ttcap1 < 250 or ttcap2 < 250 or ttcap3 < 250 or ttcap4 < 250 or ttcap5 < 250 or ttcap6 < 250 or ttcap7 < 250 or
            ttcap8 < 250 or
            ttcap9 < 250 or
            hoangkimngocbai < 10
     then
        Say("Kh�ng �� Nguy�n Li�u ")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 7 then
            nItemLeveltc = nItemLevel + 1
            ConsumeEquiproomItem(250, 4, 1317, 1, -1)
            ConsumeEquiproomItem(250, 4, 1318, 1, -1)
            ConsumeEquiproomItem(250, 4, 1319, 1, -1)
            ConsumeEquiproomItem(250, 4, 1320, 1, -1)
            ConsumeEquiproomItem(250, 4, 1321, 1, -1)
            ConsumeEquiproomItem(250, 4, 1322, 1, -1)
            ConsumeEquiproomItem(250, 4, 1323, 1, -1)
            ConsumeEquiproomItem(250, 4, 1324, 1, -1)
            ConsumeEquiproomItem(250, 4, 1325, 1, -1)
            ConsumeEquiproomItem(10, 4, 1326, -1, 1)
            UpgradePlatinaItem(GetGiveItemUnit(1))
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>L�n B�ch Kim C�p <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +7 ")
        end
    end
end

function nangbachkim7()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    --local checkkhoa=GetItemBindState(nItemIndex)
    local ttcap1 = CalcEquiproomItemCount(4, 1317, 1, -1)
    local ttcap2 = CalcEquiproomItemCount(4, 1318, 1, -1)
    local ttcap3 = CalcEquiproomItemCount(4, 1319, 1, -1)
    local ttcap4 = CalcEquiproomItemCount(4, 1320, 1, -1)
    local ttcap5 = CalcEquiproomItemCount(4, 1321, 1, -1)
    local ttcap6 = CalcEquiproomItemCount(4, 1322, 1, -1)
    local ttcap7 = CalcEquiproomItemCount(4, 1323, 1, -1)
    local ttcap8 = CalcEquiproomItemCount(4, 1324, 1, -1)
    local ttcap9 = CalcEquiproomItemCount(4, 1325, 1, -1)
    local hoangkimngocbai = CalcEquiproomItemCount(4, 1326, -1, 1)
    local knb = CalcEquiproomItemCount(4, 343, 1, -1)
    local xu = CalcEquiproomItemCount(4, 417, 1, -1)

    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end

    --end
    --Msg2Player("oo"..checkkhoa.."ooo")

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end
    if
        ttcap1 < 250 or ttcap2 < 250 or ttcap3 < 250 or ttcap4 < 250 or ttcap5 < 250 or ttcap6 < 250 or ttcap7 < 250 or
            ttcap8 < 250 or
            ttcap9 < 250 or
            hoangkimngocbai < 1
     then
        Say("H�nh trang kh�ng �� 250 M�nh Thi�n Th�ch m�i lo�i ho�c 1 Ho�ng Kim Ng�c B�i �� n�ng c�p.")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 6 then
            nItemLeveltc = nItemLevel + 1
            ConsumeEquiproomItem(250, 4, 1317, 1, -1)
            ConsumeEquiproomItem(250, 4, 1318, 1, -1)
            ConsumeEquiproomItem(250, 4, 1319, 1, -1)
            ConsumeEquiproomItem(250, 4, 1320, 1, -1)
            ConsumeEquiproomItem(250, 4, 1321, 1, -1)
            ConsumeEquiproomItem(250, 4, 1322, 1, -1)
            ConsumeEquiproomItem(250, 4, 1323, 1, -1)
            ConsumeEquiproomItem(250, 4, 1324, 1, -1)
            ConsumeEquiproomItem(250, 4, 1325, 1, -1)
            ConsumeEquiproomItem(1, 4, 1326, -1, 1)
            UpgradePlatinaItem(GetGiveItemUnit(1))
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>L�n B�ch Kim C�p <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +6 ")
        end
    end
end
function nangbachkim61()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    local xu = CalcEquiproomItemCount(4, 417, 1, -1)
    local knb = CalcEquiproomItemCount(4, 343, 1, -1)
    if checkkhoa == -2 then
        Say("V�t Ph�m Kh�a Kh�ng Th� N�ng C�p")
        return 0
    end
    if xu < 50 or knb < 2 then
        Say("Kh�ng �� 50xu ho�c 2knb")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 5 then
            nItemLeveltc = nItemLevel + 1
            ConsumeEquiproomItem(50, 4, 417, 1, -1)
            ConsumeEquiproomItem(2, 4, 343, 1, -1)
            UpgradePlatinaItem(GetGiveItemUnit(1))
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>L�n B�ch Kim C�p <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +5 ")
        end
    end
end
------------------------------------------------------------------------------------------------------------------------

function nangbachkim6()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local xu = CalcEquiproomItemCount(4, 417, 1, 1)
    local knb = CalcEquiproomItemCount(6, 1, 4380, -1)
    local ttcap1 = CalcEquiproomItemCount(4, 1317, 1, -1)
    local ttcap2 = CalcEquiproomItemCount(4, 1318, 1, -1)
    local ttcap3 = CalcEquiproomItemCount(4, 1319, 1, -1)
    local ttcap4 = CalcEquiproomItemCount(4, 1320, 1, -1)
    local ttcap5 = CalcEquiproomItemCount(4, 1321, 1, -1)
    local ttcap6 = CalcEquiproomItemCount(4, 1322, 1, -1)
    local ttcap7 = CalcEquiproomItemCount(4, 1323, 1, -1)
    local ttcap8 = CalcEquiproomItemCount(4, 1324, 1, -1)
    local ttcap9 = CalcEquiproomItemCount(4, 1325, 1, -1)
    if
        ttcap1 < 100 or ttcap2 < 100 or ttcap3 < 100 or ttcap4 < 100 or ttcap5 < 100 or ttcap6 < 100 or ttcap7 < 100 or
            ttcap8 < 100 or
            ttcap9 < 100 or
            xu < 20
     then
        Say("H�nh trang kh�ng �� nguy�n li�u ho�c xu �� n�ng c�p.")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality == 4 then
        nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel == 5 then
            nItemLeveltc = nItemLevel + 1
            ConsumeEquiproomItem(100, 4, 1317, 1, -1)
            ConsumeEquiproomItem(100, 4, 1318, 1, -1)
            ConsumeEquiproomItem(100, 4, 1319, 1, -1)
            ConsumeEquiproomItem(100, 4, 1320, 1, -1)
            ConsumeEquiproomItem(100, 4, 1321, 1, -1)
            ConsumeEquiproomItem(100, 4, 1322, 1, -1)
            ConsumeEquiproomItem(100, 4, 1323, 1, -1)
            ConsumeEquiproomItem(100, 4, 1324, 1, -1)
            ConsumeEquiproomItem(100, 4, 1325, 1, -1)
            ConsumeEquiproomItem(20, 4, 417, 1, 1)
            UpgradePlatinaItem(GetGiveItemUnit(1))
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>L�n B�ch Kim C�p <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang B� Ho�ng Kim Kh�ng Ph�i +5 ")
        end
    end
end
function nangbachkim0()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    --local nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1));
    if nQuality ~= 1 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end
    if
        nGoldEquipIdx == 5 or nGoldEquipIdx == 7 or nGoldEquipIdx == 12 or nGoldEquipIdx == 29 or nGoldEquipIdx == 32 or
            nGoldEquipIdx == 37 or
            nGoldEquipIdx == 47 or
            nGoldEquipIdx == 52 or
            nGoldEquipIdx == 65 or
            nGoldEquipIdx == 70 or
            nGoldEquipIdx == 79 or
            nGoldEquipIdx == 90 or
            nGoldEquipIdx == 91 or
            nGoldEquipIdx == 104 or
            nGoldEquipIdx == 112 or
            nGoldEquipIdx == 110 or
            nGoldEquipIdx == 117 or
            nGoldEquipIdx == 124 or
            nGoldEquipIdx == 127 or
            nGoldEquipIdx == 134 or
            nGoldEquipIdx == 17 or
            nGoldEquipIdx == 25 or
            nGoldEquipIdx == 41 or
            nGoldEquipIdx == 42 or
            nGoldEquipIdx == 44 or
            nGoldEquipIdx == 45 or
            nGoldEquipIdx == 66 or
            nGoldEquipIdx == 67 or
            nGoldEquipIdx == 69 or
            nGoldEquipIdx == 70 or
            nGoldEquipIdx == 82 or
            (nGoldEquipIdx >= 86 and nGoldEquipIdx <= 90) or
            nGoldEquipIdx == 106 or
            nGoldEquipIdx == 107 or
            nGoldEquipIdx == 108 or
            nGoldEquipIdx == 110 or
            (nGoldEquipIdx >= 136 and nGoldEquipIdx <= 140)
     then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end

    if (nQuality == 1 and nGoldEquipIdx <= 140) then --or (nQuality==1 and nGoldEquipIdx==540)
        UpgradePlatinaFromGoldItem(GetGiveItemUnit(1))
        Msg2SubWorld(
            "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                GetName() ..
                    "<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� " ..
                        szItemName .. " <color=red>L�n B�ch Kim"
        )
    end
end
------------------------------------------------------------------------------------------------------------------------
function nangbachkim15()
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local ttcap1 = CalcEquiproomItemCount(4, 1317, 1, -1)
    local ttcap2 = CalcEquiproomItemCount(4, 1318, 1, -1)
    local ttcap3 = CalcEquiproomItemCount(4, 1319, 1, -1)
    local ttcap4 = CalcEquiproomItemCount(4, 1320, 1, -1)
    local ttcap5 = CalcEquiproomItemCount(4, 1321, 1, -1)
    local ttcap6 = CalcEquiproomItemCount(4, 1322, 1, -1)
    local ttcap7 = CalcEquiproomItemCount(4, 1323, 1, -1)
    local ttcap8 = CalcEquiproomItemCount(4, 1324, 1, -1)
    local ttcap9 = CalcEquiproomItemCount(4, 1325, 1, -1)
    --local nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1));
    if nQuality ~= 4 then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end
    if
        nGoldEquipIdx == 5 or nGoldEquipIdx == 7 or nGoldEquipIdx == 12 or nGoldEquipIdx == 29 or nGoldEquipIdx == 32 or
            nGoldEquipIdx == 37 or
            nGoldEquipIdx == 47 or
            nGoldEquipIdx == 52 or
            nGoldEquipIdx == 65 or
            nGoldEquipIdx == 70 or
            nGoldEquipIdx == 79 or
            nGoldEquipIdx == 90 or
            nGoldEquipIdx == 91 or
            nGoldEquipIdx == 104 or
            nGoldEquipIdx == 112 or
            nGoldEquipIdx == 110 or
            nGoldEquipIdx == 117 or
            nGoldEquipIdx == 124 or
            nGoldEquipIdx == 127 or
            nGoldEquipIdx == 134
     then
        Say("V�t Ph�m N�y Kh�ng Th� N�ng C�p")
        return 0
    end

    if nQuality == 4 then
        local nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel < 6 then
            nItemLevelok = nItemLevel + 1
            UpgradePlatinaItem(GetGiveItemUnit(1))
            Msg2SubWorld(
                "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                    GetName() ..
                        "<color=yellow> N�ng C�p Th�nh C�ng <color=green>Trang B� " ..
                            szItemName .. " <color=red>L�n B�ch Kim C�p <color=yellow> " .. nItemLevelok .. ""
            )
        else
            Say("V�t Ph�m �� +6 v� kh�ng Th� N�ng C�p")
            return
        end
    end
end
function MenuDoiNgoaiHinhGiap_d()
    GiveItemUI("Thay ��i ngo�i h�nh trang b�", "Xin h�y b� v�o trang b? c�n thay ��i ngo�i h�nh", "luachondo", "no", 1)
end

function luachondo(nCount)
    local xu = CalcEquiproomItemCount(4, 417, 1, -1)
    local nItemIndex = GetGiveItemUnit(1)
    --Msg2Player("-"..nItemIndex.."-")
    if xu >= 200 then
        if GetSex() == 1 then
            SetItemNewFeature(nItemIndex, random(47, 53))
        else
            SetItemNewFeature(nItemIndex, random(47, 54))
        end
        ConsumeEquiproomItem(200, 4, 417, 1, -1)
        Msg2SubWorld(
            "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                GetName() .. "<color=yellow> N�ng C�p Th�nh C�ng <color=red>Ngo�i Trang ��p Trai"
        )
    else
        Say("Kh�ng �� 200 Xu")
    end
end
function NhanThuyTinhFree()
    AddEventItem(238)
    AddEventItem(239)
    AddEventItem(240)
end

----------------------------- Thieu lam-----------------------------
function hkmptl1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbSay = {
        "Thi�u L�m Quy�n/#hkmptld2()",
        "Thi�u L�m B�ng/#hkmptlb()",
        "Thi�u L�m �ao/#hkmptlq()",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay), tbSay)
end

function hkmptld2()
    local tbSay1 = {
        "M�ng Long Ch�nh H�ng T�ng M�o/#addhkmp(1,239)",
        "M�ng Long Kim Ti Ch�nh H�ng C� Sa/#addhkmp(2,240)",
        "M�ng Long Huy�n Ti Ph�t ��i/#addhkmp(3,241)",
        "M�ng Long Ph�t Ph�p Huy�n B�i/#addhkmp(4,242)",
        "M�ng Long ��t Ma T�ng h�i/#addhkmp(5,243)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkmptlb()
    local tbSay1 = {
        "Ph�c Ma T� Kim C�n/#addhkmp(6,244)",
        "Ph�c Ma Huy�n Ho�ng C� Sa/#addhkmp(7,245)",
        "Ph�c Ma � Kim Nhuy�n �i�u/#addhkmp(8,246)",
        "Ph�c Ma Ph�t T�m Nhuy�n Kh�u/#addhkmp(9,247)",
        "Ph�c Ma Ph� �� T�ng h�i/#addhkmp(10,248)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end
function hkmptlq()
    local tbSay1 = {
        "T� Kh�ng Gi�ng Ma Gi�i �ao/#addhkmp(11,249)",
        "T� Kh�ng T� Kim C� Sa/#addhkmp(12,250)",
        "T� Kh�ng H� ph�p Y�u ��i/#addhkmp(13,251)",
        "T� Kh�ng Nhuy�n B� H� Uy�n/#addhkmp(14,252)",
        "T� Kh�ng Gi�i Lu�t Ph�p gi�i/#addhkmp(15,253)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

----------------------------------------------------------thien vuong ----------------------------------------------
function hkmptv1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"Thi�n V��ng Ch�y", hkviptvt1},
        {"Thi�n V��ng Th��ng", hkviptvc1},
        {"Thi�n V��ng �ao", hkviptvd1},
        {"Tho�t"}
    }
    CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
    return 1
end

function hkviptvt1()
    local tbSay1 = {
        "H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y/#addhkmp(16,254)",
        "H�m Thi�n V� Th�n T��ng Kim Gi�p/#addhkmp(17,255)",
        "H�m Thi�n Uy V� Th�c y�u ��i/#addhkmp(18,256)",
        "H�m Thi�n H� ��u Kh�n Th�c Uy�n/#addhkmp(19,257)",
        "H�m Thi�n Th�a Long Chi�n Ngoa/#addhkmp(20,258)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkviptvc1()
    local tbSay1 = {
        "K� Nghi�p B�n L�i To�n Long th��ng/#addhkmp(21,259)",
        "K� Nghi�p Huy�n V� Ho�ng Kim Kh�i/#addhkmp(22,260)",
        "K� Nghi�p B�ch H� V� Song kh�u/#addhkmp(23,261)",
        "K� Nghi�p H�aV�n K� L�n Th� /#addhkmp(24,262)",
        "K� Nghi�p Chu T��c L�ng V�n Ngoa/#addhkmp(25,263)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkviptvd1()
    local tbSay1 = {
        "Ng� Long L��ng Ng�n B�o �ao/#addhkmp(26,264)",
        "Ng� Long Chi�n Th�n Phi Qu�i gi�p/#addhkmp(27,265)",
        "Ng� Long Thi�n M�n Th�c Y�u ho�n/#addhkmp(28,266)",
        "Ng� Long T�n Phong H� y�n/#addhkmp(29,267)",
        "Ng� Long Tuy�t M�nh Ch� ho�n/#addhkmp(30,268)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

---------------------------------------------nga my---------------------------------------

function hkmpnm1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"Nga My Ki�m", hkvipnmc1},
        {"Nga My Ch��ng", hkvipnmk1},
        {"Nga My Buff", hkvipnmbuff1},
        {"Tho�t"}
    }
    CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
    return 1
end

function hkvipnmc1()
    local tbSay1 = {
        "V� Gian � Thi�n Ki�m/#addhkmp(31,269)",
        "V� Gian Thanh Phong Truy Y/#addhkmp(32,270)",
        "V� Gian Ph�t V�n Ti ��i/#addhkmp(33,271)",
        "V� Gian C�m V�n H� Uy�n/#addhkmp(34,272)",
        "V� Gian B�ch Ng�c B�n Ch� /#addhkmp(35,273)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvipnmk1()
    local tbSay1 = {
        "V� Ma Ma Ni qu�n/#addhkmp(36,274)",
        "V� Ma T� Kh�m C� Sa/#addhkmp(37,275)",
        "V� Ma B�ng Tinh Ch� Ho�n/#addhkmp(38,276)",
        "V� Ma T�y T��ng Ng�c Kh�u /#addhkmp(39,277)",
        "V� Ma H�ng Truy Nhuy�n Th�p h�i/#addhkmp(40,278)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvipnmbuff1()
    local tbSay1 = {
        "V� Tr�n Ng�c N� T� T�m qu�n/#addhkmp(41,279)",
        "V� Tr�n Thanh T�m H��ng Thi�n Ch�u/#addhkmp(42,280)",
        "V� Tr�n T� Bi Ng�c Ban Ch� /#addhkmp(43,281)",
        "V� Tr�n Ph�t T�m T� H�u Y�u Ph�i/#addhkmp(44,282)",
        "V� Tr�n Ph�t Quang Ch� Ho�n/#addhkmp(45,283)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end
--------------------------------------------------thuy yen------------------------------------
function hkmpty1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"Th�y Y�n �ao", hkviptyd1},
        {"Th�y Y�n Ch��ng", hkviptyc1},
        {"Tho�t"}
    }
    CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
    return 1
end

function hkviptyd1()
    local tbSay1 = {
        "T� Ho�ng Ph�ng Nghi �ao/#addhkmp(46,284)",
        "T� Ho�ng Tu� T�m Khinh Sa Y/#addhkmp(47,285)",
        "T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i/#addhkmp(48,286)",
        "T� Ho�ng B�ng Tung C�m uy�n/#addhkmp(49,287)",
        "T� Ho�ng Th�y Ng�c Ch� Ho�n/#addhkmp(50,288)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkviptyc1()
    local tbSay1 = {
        "B�ch H�i Uy�n ��ng Li�n Ho�n �ao/#addhkmp(51,289)",
        "B�ch H�i Ho�n Ch�u V� Li�n/#addhkmp(52,290)",
        "B�ch H�i H�ng Linh Kim Ti ��i/#addhkmp(53,291)",
        "B�ch H�i H�ng L�ng Ba/#addhkmp(54,292)",
        "B�ch H�i Khi�n T� Ch� ho�n/#addhkmp(55,293)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

-----------------------------------------------------------ngu doc --------------
function hkmpnd1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"Ng� ��c Ch��ng", hkvipndc1},
        {"Ng� ��c �ao", hkvipndd1},
        {"Ng� ��c B�a", hkvipndb1},
        {"Tho�t"}
    }
    CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
    return 1
end

function hkvipndc1()
    local tbSay1 = {
        "U Lung Kim X� Ph�t ��i/#addhkmp(56,294)",
        "U Lung X�ch Y�t M�t trang/#addhkmp(57,295)",
        "U Lung Thanh Ng� Tri�n y�u/#addhkmp(58,296)",
        "U Lung Ng�n Th�m H� Uy�n/#addhkmp(59,297)",
        "U Lung M�c Th� Nhuy�n L� /#addhkmp(60,298)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvipndd1()
    local tbSay1 = {
        "Minh �o T� S�t ��c Nh�n/#addhkmp(61,299)",
        "Minh �o U ��c �m Y/#addhkmp(62,300)",
        "Minh �o ��c Y�t Ch� Ho�n/#addhkmp(63,301)",
        "Minh �o H� C�t H� uy�n/#addhkmp(64,302)",
        "Minh �o Song Ho�n X� H�i/#addhkmp(65,303)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvipndb1()
    local tbSay1 = {
        "Ch� Ph��c Ph� gi�p ��u ho�n/#addhkmp(66,304)",
        "Ch� Ph��c Di�t L�i C�nh Ph� /#addhkmp(67,305)",
        "Ch� Ph��c U �o Ch� Ho�n/#addhkmp(68,306)",
        "Ch� Ph��c Xuy�n T�m ��c Uy�n/#addhkmp(69,307)",
        "Ch� Ph��c B�ng H�a Th�c C�t Ngoa/#addhkmp(70,308)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end
function hkmpdm1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"���ng M�n Phi Ti�u", hkvipbv1},
        {"���ng M�n N�", hkvippt1},
        {"���ng M�n B�ng H�n", hkvippd1},
        {"���ng M�n B�y", hkvipbay1},
        {"Tho�t"}
    }
    CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
    return 1
end

function hkvipbv1()
    local tbSay1 = {
        "B�ng H�n ��n Ch� Phi �ao/#addhkmp(71,309)",
        "B�ng H�n Huy�n Y Th�c Gi�p/#addhkmp(72,310)",
        "B�ng H�n T�m Ti�n Y�u Kh�u/#addhkmp(73,311)",
        "B�ng H�n Huy�n Thi�n B�ng H�a B�i/#addhkmp(74,312)",
        "B�ng H�n Nguy�t �nh Ngoa/#addhkmp(75,313)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvippt1()
    local tbSay1 = {
        "Thi�n Quang Hoa V� M�n Thi�n/#addhkmp(76,314)",
        "Thi�n Quang ��nh T�m Ng�ng Th�n Ph� /#addhkmp(77,315)",
        "Thi�n Quang S�m La Th�c ��i/#addhkmp(78,316)",
        "Thi�n Quang Song B�o H�n Thi�t Tr�c/#addhkmp(79,317)",
        "Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n/#addhkmp(80,318)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvippd1()
    local tbSay1 = {
        "S�m Hoang Phi Tinh �o�t H�n/#addhkmp(81,319)",
        "S�m Hoang KimTi�n Li�n Ho�n Gi�p/#addhkmp(82,320)",
        "S�m Hoang H�n Gi�o Y�u Th�c/#addhkmp(83,321)",
        "S�m Hoang Huy�n Thi�t T��ng Ng�c B�i/#addhkmp(84,322)",
        "S�m Hoang Tinh V�n Phi L� /#addhkmp(85,323)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvipbay1()
    local tbSay1 = {
        "��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n/#addhkmp(86,324)",
        "��a Ph�ch H�c Di�m Xung Thi�n Li�n/#addhkmp(87,325)",
        "��a Ph�ch T�ch L�ch L�i H�a Gi�i/#addhkmp(88,326)",
        "��a Ph�ch Kh�u T�m tr�c/#addhkmp(89,327)",
        "��a Ph�ch ��a H�nh Thi�n L� Ngoa/#addhkmp(90,328)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

----------------------------cai bang----------------------------
function hkmpcb1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"C�i Bang Ch��ng", hkvipcbc1},
        {"C�i Bang B�ng", hkvipcbb1},
        {"Tho�t"}
    }
    CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
    return 1
end

function hkvipcbc1()
    local tbSay1 = {
        "��ng C�u Phi Long ��u ho�n/#addhkmp(91,329)",
        "��ng C�u Gi�ng Long C�i Y/#addhkmp(92,330)",
        "��ng C�u Ti�m Long Y�u ��i/#addhkmp(93,331)",
        "��ng C�u Kh�ng Long H� Uy�n/#addhkmp(94,332)",
        "��ng C�u Ki�n Long Ban Ch� /#addhkmp(95,333)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvipcbb1()
    local tbSay1 = {
        "��ch Kh�i L�c Ng�c Tr��ng/#addhkmp(96,334)",
        "��ch Kh�i C�u ��i C�i Y/#addhkmp(97,335)",
        "��ch Kh�i Tri�n M�ng y�u ��i/#addhkmp(98,336)",
        "��ch Kh�i C�u T�ch B� H� uy�n/#addhkmp(99,337)",
        "��ch Kh�i Th�o Gian Th�ch gi�i/#addhkmp(100,338)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

--------------------------thien nhan------------------------------------------
function hkmptn1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"Thi�n Nh�n Th��ng", hkviptnt1},
        {"Thi�n Nh�n Ch��ng", hkviptnd1},
        {"Thi�n Nh�n B�a", hkviptnb1},
        {"Tho�t"}
    }
    CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
    return 1
end

function hkviptnt1()
    local tbSay1 = {
        "Ma S�t Qu� C�c U Minh Th��ng/#addhkmp(101,339)",
        "Ma S�t T�n D��ng �nh Huy�t Gi�p/#addhkmp(102,340)",
        "Ma S�t X�ch K� T�a Y�u Kh�u/#addhkmp(103,341)",
        "Ma S�t C� H�a Li�u Thi�n uy�n/#addhkmp(104,342)",
        "Ma S�t V�n Long Th� Ch�u gi�i/#addhkmp(105,343)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkviptnd1()
    local tbSay1 = {
        "Ma Ho�ng Kim Gi�p Kh�i/#addhkmp(106,344)",
        "Ma Ho�ng �n Xu�t H� H�ng Khuy�n/#addhkmp(107,345)",
        "Ma Ho�ng Kh� C�c Th�c y�u ��i/#addhkmp(108,346)",
        "Ma Ho�ng Huy�t Y Th� Tr�c/#addhkmp(109,347)",
        "Ma Ho�ng ��ng ��p Ngoa/#addhkmp(110,348)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkviptnb1()
    local tbSay1 = {
        "Ma Th� Li�t Di�m Qu�n Mi�n/#addhkmp(111,349)",
        "Ma Th� L� Ma Ph� T�m Li�n/#addhkmp(112,350)",
        "Ma Th� Nghi�p H�a U Minh Gi�i/#addhkmp(113,351)",
        "Ma Th� Huy�t Ng�c Th�t S�t B�i/#addhkmp(114,352)",
        "Ma Th� s�n  H�i Phi H�ng L� /#addhkmp(115,353)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkmpvd1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"V� �ang Ch��ng", hkvipvdc1},
        {"V� �ang Ki�m", hkvipvdk1},
        {"Tho�t"}
    }
    CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
    return 1
end

function hkvipvdc1()
    local tbSay1 = {
        "L�ng Nh�c Th�i C�c Ki�m/#addhkmp(116,354)",
        "L�ng Nh�c V� Ng� ��o b�o/#addhkmp(117,355)",
        "L�ng Nh�c N� L�i Gi�i/#addhkmp(118,356)",
        "L�ng Nh�c V� C�c Huy�n Ng�c B�i/#addhkmp(119,357)",
        "L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i/#addhkmp(120,358)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvipvdk1()
    local tbSay1 = {
        "C�p Phong Ch�n V� Ki�m/#addhkmp(121,359)",
        "C�p Phong Tam Thanh Ph� /#addhkmp(122,360)",
        "C�p Phong Huy�n Ti Tam �o�n c�m/#addhkmp(123,361)",
        "C�p Phong Th�y Ng�c Huy�n Ho�ng B�i/#addhkmp(124,362)",
        "C�p Phong Thanh T�ng Ph�p gi�i/#addhkmp(125,363)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkmpcl1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"C�n L�n �ao", hkvipcld1},
        {"C�n L�n Ch��ng", hkvipclc1},
        {"C�n L�n B�a", hkvipclb1},
        {"Tho�t"}
    }
    CreateNewSayEx("<npc>B�n �i ���ng N�o ?", tbOpt)
    return 1
end

function hkvipcld1()
    local tbSay1 = {
        "S��ng Tinh Thi�n Ni�n H�n Thi�t/#addhkmp(126,364)",
        "S��ng Tinh Ng�o S��ng ��o b�o/#addhkmp(127,365)",
        "S��ng Tinh Thanh Phong L� ��i/#addhkmp(128,366)",
        "S��ng Tinh Thi�n Tinh B�ng Tinh th� /#addhkmp(129,367)",
        "S��ng Tinh Phong B�o ch� ho�n/#addhkmp(130,368)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvipclc1()
    local tbSay1 = {
        "L�i Khung H�n Tung B�ng B�ch quan/#addhkmp(131,369)",
        "L�i Khung Thi�n ��a H� ph� /#addhkmp(132,370)",
        "L�i Khung Phong L�i Thanh C�m ��i/#addhkmp(133,371)",
        "L�i Khung Linh Ng�c U�n L�i/#addhkmp(134,372)",
        "L�i Khung C�u Thi�n D�n L�i gi�i/#addhkmp(135,373)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function hkvipclb1()
    local tbSay1 = {
        "V� �o B�c Minh ��o qu�n/#addhkmp(136,374)",
        "V� �o Ki B�n ph� ch�/#addhkmp(137,375)",
        "V� �o Th�c T�m ch� ho�n/#addhkmp(138,376)",
        "V� �o Thanh �nh Huy�n Ng�c B�i/#addhkmp(139,377)",
        "V� �o Tung Phong Tuy�t �nh ngoa/#addhkmp(140,378)",
        "Th�i ta kh�ng mu�n n�a/no"
    }
    Say("B�n �i ���ng N�o ?", getn(tbSay1), tbSay1)
end

function LocHKMPNo1()
    tbOpt = {
        "<dec><npc>L�c trang b� t�c l� l�c l�i thu�c t�nh trang b� ng��i mu�n ta l�c cho kh�ng..",
        "L�c V� Kh� Trang B� HKMP/lochkmpmain",
        "K�t th�c ��i tho�i./no"
    }
    CreateTaskSay(tbOpt)
end

function no()
end

function Make_Weapons()
    szDescription =
        format("+ 1 T� Th�y Tinh\n+ 1 L�c Th�y Tinh\n+ 1 Lam Th�y Tinh\n+ 100 Ti�n ��ng\n=> ��p V�i C�i L�n!!.")
    GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_MakeWeapons", "no", 1)
    --GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
end

function Run_MakeWeapons(nCount)
    if nCount == 0 then
        Say("Ng��i d�m g�t ta �! Th�t to gan.", 2, "Th�t xin l�i ng�i, t�i h� mu�n ��t l�i/Make_Weapons", "no")
    end

    local tbDatabase = {
        tbWeapons = {},
        tbItem = {},
        tbStone1 = {},
        tbStone2 = {},
        tbStone3 = {}
    }

    for i = 1, nCount do
        local nItemIndex = GetGiveItemUnit(i)
        local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
        szItemName = GetItemName(nItemIndex)
        nItemTime = ITEM_GetExpiredTime(nItemIndex)
        nQuality = GetItemQuality(nItemIndex)
        local tbMagicItem = {
            [4] = {
                [238] = 1,
                [239] = 1,
                [240] = 1,
                [417] = 1
            }
        }

        local nIndex = 0
        if nG == 4 then
            nIndex = nD
        end

        if nG == 4 then
            if nIndex == 238 then
                if tbMagicItem[nG][nIndex] then
                    tinsert(tbDatabase.tbStone1, nItemIndex)
                end
            elseif nIndex == 239 then
                if tbMagicItem[nG][nIndex] then
                    tinsert(tbDatabase.tbStone2, nItemIndex)
                end
            elseif nIndex == 240 then
                if tbMagicItem[nG][nIndex] then
                    tinsert(tbDatabase.tbStone3, nItemIndex)
                end
            end
        end

        if nG == 0 then
            if nD == 0 then
                if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
                    Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
                    return
                end
            elseif nD == 1 then
                if nP ~= 0 and nP ~= 1 and nP ~= 2 then
                    Talk(1, "no", "Ngo�i tr� v� kh� ra th� kh�ng th� n�ng c�p trang b� n�o kh�c!")
                    return
                end
            else
                Talk(
                    1,
                    "no",
                    "Th�t th� l�i! Kh� n�ng c�a ta ca gi�i h�n, kh�ng th� n�ng c�p <color=red>trang b�<color> n�y ���c."
                )
                return
            end
        end

        local TAB_WEAPONS = {
            ["0,0,0"] = {},
            ["0,0,1"] = {},
            ["0,0,2"] = {},
            ["0,0,3"] = {},
            ["0,0,4"] = {},
            ["0,0,5"] = {},
            ["0,1,0"] = {},
            ["0,1,1"] = {},
            ["0,1,2"] = {}
        }
        local tbIndex = format("%d,%d,%d", nG, nD, nP)
        if TAB_WEAPONS[tbIndex] then
            tinsert(tbDatabase.tbWeapons, nItemIndex)
        end

        local nFaction = GetLastFactionNumber()
        nRandomAccess = random(1, 100)
        nRandomRes = random(1, 100)
        nSucces = 1
        if nG == 0 and nD == 0 and nP == 0 then
            if nFaction == 8 then ----------------------------------------------------------Kiem Vo Dang
                if nRandomAccess > 1 then
                    nIndexRes = 59
                else
                    nSucces = 0
                end
            elseif nFaction == 4 then ----------------------------------------------------------Kiem Nga Mi
                if nRandomAccess > 1 then
                    nIndexRes = 57
                else
                    nSucces = 0
                end
            elseif nFaction == 9 then ----------------------------------------------------------Kiem Con Lon
                if nRandomAccess > 1 then
                    nIndexRes = 58
                else
                    nSucces = 0
                end
            else
                if nRandomRes >= 0 and nRandomRes < 33 then
                    if nRandomAccess > 1 then
                        nIndexRes = 57
                    else
                        nSucces = 0
                    end
                elseif nRandomRes >= 33 and nRandomRes < 66 then
                    if nRandomAccess > 1 then
                        nIndexRes = 58
                    else
                        nSucces = 0
                    end
                elseif nRandomRes >= 66 and nRandomRes <= 100 then
                    if nRandomAccess > 1 then
                        nIndexRes = 59
                    else
                        nSucces = 0
                    end
                end
            end
        elseif nG == 0 and nD == 0 and nP == 1 then
            if nFaction == 0 or nFaction == 1 then
                if nRandomAccess > 1 then
                    nIndexRes = 52
                    nSucces = 1
                else
                    nSucces = 0
                end
            elseif nFaction == 3 then ----------------------------------------------------------Dao Ngu Doc
                if nRandomAccess > 1 then
                    nIndexRes = 53
                    nSucces = 1
                else
                    nSucces = 0
                end
            elseif nFaction == 5 then ----------------------------------------------------------Dao Thuy Yen
                if nRandomAccess > 1 then
                    nIndexRes = 54
                    nSucces = 1
                else
                    nSucces = 0
                end
            elseif nFaction == 9 then ----------------------------------------------------------Dao Con Lon
                if nRandomAccess > 1 then
                    nIndexRes = 56
                    nSucces = 1
                else
                    nSucces = 0
                end
            else
                if nRandomRes >= 1 and nRandomRes < 25 then
                    if nRandomAccess > 1 then
                        nIndexRes = 52
                        nSucces = 1
                    else
                        nSucces = 0
                    end
                elseif nRandomRes >= 25 and nRandomRes < 50 then
                    if nRandomAccess > 1 then
                        nIndexRes = 53
                        nSucces = 1
                    else
                        nSucces = 0
                    end
                elseif nRandomRes >= 50 and nRandomRes < 75 then
                    if nRandomAccess > 1 then
                        nIndexRes = 54
                        nSucces = 1
                    else
                        nSucces = 0
                    end
                elseif nRandomRes >= 75 and nRandomRes <= 100 then
                    if nRandomAccess > 1 then
                        nIndexRes = 56
                        nSucces = 1
                    else
                        nSucces = 0
                    end
                end
            end
        elseif nG == 0 and nD == 0 and nP == 2 then
            if nFaction == 0 then -------------------------------------------------Bong Thieu Lam
                if nRandomAccess > 1 then
                    nIndexRes = 40
                    nSucces = 1
                else
                    nSucces = 0
                end
            elseif nFaction == 6 then -------------------------------------------------Bong Cai Bang
                if nRandomAccess > 1 then
                    nIndexRes = 41
                    nSucces = 1
                else
                    nSucces = 0
                end
            else
                if nRandomRes >= 1 and nRandomRes < 50 then
                    if nRandomAccess > 1 then
                        nIndexRes = 40
                        nSucces = 1
                    else
                        nSucces = 0
                    end
                elseif nRandomRes >= 50 and nRandomRes < 100 then
                    if nRandomAccess > 1 then
                        nIndexRes = 41
                        nSucces = 1
                    else
                        nSucces = 0
                    end
                end
            end
        elseif nG == 0 and nD == 0 and nP == 3 then
            if nFaction == 7 then
                if nRandomAccess > 1 then
                    nIndexRes = 51
                    nSucces = 1
                else
                    nSucces = 0
                end
            elseif nFaction == 1 then
                if nRandomAccess > 1 then
                    nIndexRes = 50
                    nSucces = 1
                else
                    nSucces = 0
                end
            else
                if nRandomRes >= 1 and nRandomRes < 50 then
                    if nRandomAccess > 1 then
                        nIndexRes = 51
                        nSucces = 1
                    else
                        nSucces = 0
                    end
                elseif nRandomRes >= 50 and nRandomRes <= 100 then
                    if nRandomAccess > 1 then
                        nIndexRes = 50
                        nSucces = 1
                    else
                        nSucces = 0
                    end
                end
            end
        elseif nG == 0 and nD == 0 and nP == 4 then
            if nRandomAccess > 1 then
                nIndexRes = 60
                nSucces = 1
            else
                nSucces = 0
            end
        elseif nG == 0 and nD == 0 and nP == 5 then
            if nRandomAccess > 1 then
                nIndexRes = 61
                nSucces = 1
            else
                nSucces = 0
            end
        elseif nG == 0 and nD == 1 and nP == 0 then
            if nRandomAccess > 1 then
                nIndexRes = 46
                nSucces = 1
            else
                nSucces = 0
            end
        elseif nG == 0 and nD == 1 and nP == 1 then
            if nRandomAccess > 1 then
                nIndexRes = 46
                nSucces = 1
            else
                nSucces = 0
            end
        elseif nG == 0 and nD == 1 and nP == 2 then
            if nRandomAccess > 1 then
                nIndexRes = 46
                nSucces = 1
            else
                nSucces = 0
            end
        end
    end

    if nItemTime ~= 0 then
        Talk(1, "no", "Kh�ng th� ��t v�o v�t ph�m c� th�i h�n!")
        return
    end
    local nCountWeapon = getn(tbDatabase.tbWeapons)
    if nCountWeapon ~= 1 then
        Talk(1, "no", "Ng��i ch�a ��t v� kh� c�n n�ng c�p v�o � tr�ng")
        return
    end

    local nCountStone1 = getn(tbDatabase.tbStone1)
    if nCountStone1 ~= 1 then
        Talk(1, "no", "C�n c� 1 vi�n <color=red>Lam Th�y Tinh<color> m�i c� th� n�ng c�p.")
        return
    end

    local nCountStone2 = getn(tbDatabase.tbStone2)
    if nCountStone2 ~= 1 then
        Talk(1, "no", "C�n c� 1 vi�n <color=red>T� Th�y Tinh<color> m�i c� th� n�ng c�p.")
        return
    end

    local nCountStone3 = getn(tbDatabase.tbStone3)
    if nCountStone3 ~= 1 then
        Talk(1, "no", "C�n c� 1 vi�n <color=red>L�c Th�y Tinh<color> m�i c� th� n�ng c�p.")
        return
    end

    local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1)
    if (nSilverCount < 100) then
        Talk(1, "no", "C�n c� 100 <color=red>Ti�n ��ng<color> m�i c� th� n�ng c�p t� l� n�p th� 100k ���c 100xu.")
        return
    end
    --local nIDX = GetGiveItemUnit(n)
    --local nQuality = GetItemQuality(nIDX)
    --if nQuality ~= 1 then
    --Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang b� ho�ng kim")
    --return
    --end

    RemoveItemByIndex(tbDatabase.tbStone1[1])
    RemoveItemByIndex(tbDatabase.tbStone2[1])
    RemoveItemByIndex(tbDatabase.tbStone3[1])
    RemoveItemByIndex(tbDatabase.tbItem[1])
    ConsumeEquiproomItem(100, 4, 417, 1, 1)

    if nSucces == 0 then
        Msg2Player(
            "R�t ti�c! Th�t b�i l� chuy�n b�nh th��ng c�a binh gia,huynh ��i ��ng n�n ch� h�y c� g�ng l�n n�a s� ���c nh� �."
        )
    elseif nSucces == 1 then
        --write(moepphatsang,format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] N�ng c�p th�nh c�ng v� kh� ph�t s�ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
        -- write(moepphatsang, format("%d:%d\tAccount: %s\t Name: %s\t Level: %s\t IP Address: %s  N�ng c�p th�nh c�ng v� kh� ph�t s�ng\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(), GetIP()))
        --closefile(moepphatsang)
        _Weapons(tbDatabase.tbWeapons[1], nIndexRes)
        Msg2Player("<color=yellow>Ch�c m�ng b�n �� n�ng c�p th�nh c�ng v� kh� ph�t quang.")
        Msg2SubWorld(
            "<color=cyan>Ch�c m�ng ��i hi�p <color=green>" ..
                GetName() .. "<color=yellow> �� n�ng c�p th�nh c�ng v� kh�<color=green> Ph�t S�ng!"
        )
        SaveNow()
        local epphatsang = "script/global/bil4i3n/bil4i3n_log/vukhiphatsang.log"
        local moepphatsang = openfile(epphatsang, "a")
    else
        print("Bug tinh nang nang cap Vu Khi phat quang")
    end
end

function _Weapons(nItemIndex, nIndexRes)
    SetItemNewFeature(nItemIndex, nIndexRes)
    print(nIndexRes)
end

function no()
end

function VuKhiPhatQuang_Test()
    AddItem(4, 240, 1, 0, 0, 0)
    AddItem(4, 238, 1, 0, 0, 0)
    AddItem(4, 239, 1, 0, 0, 0)
    --AddItem(4,417,1,0,0,0)
    tbAwardTemplet:GiveAwardByList(
        {{szName = "L�ng Nh�c Th�i C�c Ki�m", tbProp = {4, 417, 1, 0, 0, 0}, nCount = 50}},
        "test",
        1
    )
end

function nhanvukhi()
    --tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=1440},}, "test", 1);
    tbAwardTemplet:GiveAwardByList(
        {{szName = "L�ng Nh�c Th�i C�c Ki�m", tbProp = {0, 16}, nCount = 1, nQuality = 1}},
        "test",
        1
    )
end

--------------------------------------------------------------------------------

--------------------------------------------------TRANGKHAC---------------------------------

function lochkmpmain()
    Say(
        "Xin m�i ch�n trang b�",
        7,
        "Nga Mi/locoknm",
        "Th�y Y�n/locokty",
        "���ng M�n/locokdm",
        "Ng� ��c/locoknd",
        "Thi�n V��ng/locoktv",
        "Trang Sau/lochkmpmain1",
        "K�t th�c ��i tho�i/no"
    )
end

function lochkmpmain1()
    Say(
        "Xin m�i ch�n trang b�",
        7,
        "Thi�u L�m/locoktl",
        "V� �ang/locokvd",
        "C�n L�n/locokcl",
        "Thi�n Nh�n/locoktn",
        "C�i Bang/locokcb",
        "Trang Tr��c/lochkmpmain",
        "K�t th�c ��i tho�i/no"
    )
end

function locoknm()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"V� Ma T�y N�g�c Kh�u", hknmc},
        {"V� Giang � Thi�n Ki�m", hknmk},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function hknmc()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 39}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 39}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 2,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function hknmk()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 31}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 31}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locokty()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"T� Ho�ng Ph�ng Nghi �ao", tehoangdao},
        {"B�ch H�i Uy�n ��ng Ho�ng �ao", yenuongdao},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function tehoangdao()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 46}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 46}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function yenuongdao()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 51}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 51}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locokdm()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"Thi�n Quang M�n V� M�n Thi�n", thienquangmanthien},
        {"S�m Ho�ng Phi Tinh �o�t H�n", samhoangdao},
        {"B�ng H�n ��n Ch� Phi �ao", banghandao},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function thienquangmanthien()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 76}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 76}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function samhoangdao()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 81}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 81}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function banghandao()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 71}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 71}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locoknd()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"U Lung Kim X� Ph�t ��i", unlungkimxa},
        {"Minh �o T� S�t ��c Nh�n", minhaodoc},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function unlungkimxa()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 56}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 56}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function minhaodoc()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 61}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 61}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locoktv()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"K� Nghi�p B�n L�i To�n Long th��ng", kenghiepthuong},
        {"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y", hamthienchuy},
        {"Ng� Long L��ng Ng�n B�o �ao", ngulongdao},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function kenghiepthuong()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 21}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 21}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function hamthienchuy()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 16}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 16}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function ngulongdao()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 26}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 26}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locoktl()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"T� Kh�ng Gi�ng Ma Gi�i �ao", tukhonggiangdao},
        {"Ph�c Ma T� Kim C�n", phucmakimcon},
        {"M�ng Long Kim Ti Ch�nh H�ng C� Sa", monglongcasa},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function tukhonggiangdao()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 11}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 11}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function phucmakimcon()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 6}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 6}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function monglongcasa()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 2}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 2}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locokvd()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"L�ng Nh�c Th�i C�c Ki�m", langnhackiem},
        {"C�p Phong Ch�n V� Ki�m", capphongkiem},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function langnhackiem()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 116}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 116}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function capphongkiem()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 121}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 121}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locokcl()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"S��ng Tinh Thi�n Ni�n H�n Thi�t", suongtinhhanthiet},
        {"L�i Khung H�n Tung B�ng B�ch quan", loikhungbachquan},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function suongtinhhanthiet()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 126}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 126}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function loikhungbachquan()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 131}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 131}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locoktn()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"Ma S�t Qu� C�c U Minh Th��ng", masatuminh},
        {"Ma Th� To�i Tinh �ao", mathidao},
        {"Ma Th� s�n H�i Phi H�ng L�", mathihongly},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function masatuminh()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 101}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 101}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function mathidao()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 540}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 540}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function mathihongly()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 115}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 115}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locokcb()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
        return
    end
    local tbOpt = {
        {"��ng C�u Kh�ng Long H� Uy�n", dongcuuhouyen},
        {"��ch Kh�i L�c Ng�c Tr��ng", dinhkhaitruong},
        {"Tho�t"}
    }
    CreateNewSayEx(
        "<npc>Ng� h�nh k� th�ch l�y � s�ng b�i - T�ng kim t�ch l�y bao trong shop t�ng kim �em �� 2 m�n cho ta ta s� gi�p ng��i l�c option ?",
        tbOpt
    )
    return 1
end

function dongcuuhouyen()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 94}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 94}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function dinhkhaitruong()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>��i hi�p <color=yellow>%s<color=cyan> �� l�c l�i thu�c t�nh th�nh c�ng trang b� <color=gold><%s><color=green><enter><color=yellow>< T�i Th� ��c Trang B� ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK C�n L�c", tbProp = {0, 96}, nQuality = 1, nCount = 1},
            {szName = "TK T�ch L�y Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ng� H�nh K� Th�ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Th�nh Ph�m", tbProp = {0, 96}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

-----------------------------------------------------

function LocOptionHKOK()
    local title = "L�c Trang b� HKMP"
    g_GiveItemUI(title, "     C�n 100 ti�n ��ng \n\nCH� � :\n\n 100 ti�n ��ng ph�i �� ngo�i    h�nh trang  ", {GiveUIOK4}, nil, nil) --- 100 ti�n ��ng l�u � 100 ti�n ��ng ph�i �� ngo�i h�nh trang
end

--------------��nh ngh�a b�ng trang b� HKMP tbHKMP : th�m v�o nhi�u d�ng t� id th�p t�i cao

tbHKMP = {
    [1] = {
        {"M�ng Long Ch�nh H�ng T�ng M�o", 1},
        {"M�ng Long Kim Ti Ch�nh H�ng C� Sa", 2},
        {"M�ng Long Huy�n Ti Ph�t ��i", 3},
        {"M�ng Long Ph�t Ph�p Huy�n B�i", 4},
        {"M�ng Long ��t Ma T�ng h�i", 5},
        {"Ph�c Ma T� Kim C�n", 6},
        {"Ph�c Ma Huy�n Ho�ng C� Sa", 7},
        {"Ph�c Ma � Kim Nhuy�n �i�u", 8},
        {"Ph�c Ma Ph�t T�m Nhuy�n Kh�u", 9},
        {"Ph�c Ma Ph� �� T�ng h�i", 10},
        {"T� Kh�ng Gi�ng Ma Gi�i �ao", 11},
        {"T� Kh�ng T� Kim C� Sa", 12},
        {"T� Kh�ng H� ph�p Y�u ��i", 13},
        {"T� Kh�ng Nhuy�n B� H� Uy�n", 14},
        {"T� Kh�ng Gi�i Lu�t Ph�p gi�i", 15},
        {"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y", 16},
        {"H�m Thi�n V� Th�n T��ng Kim Gi�p", 17},
        {"H�m Thi�n Uy V� Th�c y�u ��i", 18},
        {"H�m Thi�n H� ��u Kh�n Th�c Uy�n", 19},
        {"H�m Thi�n Th�a Long Chi�n Ngoa", 20},
        {"K� Nghi�p B�n L�i To�n Long th��ng", 21},
        {"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i", 22},
        {"K� Nghi�p B�ch H� V� Song kh�u", 23},
        {"K� Nghi�p H�aV�n K� L�n Th� ", 24},
        {"K� Nghi�p Chu T��c L�ng V�n Ngoa", 25},
        {"Ng� Long L��ng Ng�n B�o �ao", 26},
        {"Ng� Long Chi�n Th�n Phi Qu�i gi�p", 27},
        {"Ng� Long Thi�n M�n Th�c Y�u ho�n", 28},
        {"Ng� Long T�n Phong H� y�n", 29},
        {"Ng� Long Tuy�t M�nh Ch� ho�n", 30},
        {"V� Gian � Thi�n Ki�m", 31},
        {"V� Gian Thanh Phong Truy Y", 32},
        {"V� Gian Ph�t V�n Ti ��i", 33},
        {"V� Gian C�m V�n H� Uy�n", 34},
        {"V� Gian B�ch Ng�c B�n Ch� ", 35},
        {"V� Ma Ma Ni qu�n", 36},
        {"V� Ma T� Kh�m C� Sa", 37},
        {"V� Ma B�ng Tinh Ch� Ho�n", 38},
        {"V� Ma T�y T��ng Ng�c Kh�u ", 39},
        {"V� Ma H�ng Truy Nhuy�n Th�p h�i", 40},
        {"V� Tr�n Ng�c N� T� T�m qu�n", 41},
        {"V� Tr�n Thanh T�m H��ng Thi�n Ch�u", 42},
        {"V� Tr�n T� Bi Ng�c Ban Ch� ", 43},
        {"V� Tr�n Ph�t T�m T� H�u Y�u Ph�i", 44},
        {"V� Tr�n Ph�t Quang Ch� Ho�n", 45},
        {"T� Ho�ng Ph�ng Nghi �ao", 46},
        {"T� Ho�ng Tu� T�m Khinh Sa Y", 47},
        {"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i", 48},
        {"T� Ho�ng B�ng Tung C�m uy�n", 49},
        {"T� Ho�ng Th�y Ng�c Ch� Ho�n", 50},
        {"B�ch H�i Uy�n ��ng Li�n Ho�n �ao", 51},
        {"B�ch H�i Ho�n Ch�u V� Li�n", 52},
        {"B�ch H�i H�ng Linh Kim Ti ��i", 53},
        {"B�ch H�i H�ng L�ng Ba", 54},
        {"B�ch H�i Khi�n T� Ch� ho�n", 55},
        {"U Lung Kim X� Ph�t ��i", 56},
        {"U Lung X�ch Y�t M�t trang", 57},
        {"U Lung Thanh Ng� Tri�n y�u", 58},
        {"U Lung Ng�n Th�m H� Uy�n", 59},
        {"U Lung M�c Th� Nhuy�n L� ", 60},
        {"Minh �o T� S�t ��c Nh�n", 61},
        {"Minh �o U ��c �m Y", 62},
        {"Minh �o ��c Y�t Ch� Ho�n", 63},
        {"Minh �o H� C�t H� uy�n", 64},
        {"Minh �o Song Ho�n X� H�i", 65},
        {"Ch� Ph��c Ph� gi�p ��u ho�n", 66},
        {"Ch� Ph��c Di�t L�i C�nh Ph� ", 67},
        {"Ch� Ph��c U �o Ch� Ho�n", 68},
        {"Ch� Ph��c Xuy�n T�m ��c Uy�n", 69},
        {"Ch� Ph��c B�ng H�a Th�c C�t Ngoa", 70},
        {"B�ng H�n ��n Ch� Phi �ao", 71},
        {"B�ng H�n Huy�n Y Th�c Gi�p", 72},
        {"B�ng H�n T�m Ti�n Y�u Kh�u", 73},
        {"B�ng H�n Huy�n Thi�n B�ng H�a B�i", 74},
        {"B�ng H�n Nguy�t �nh Ngoa", 75},
        {"Thi�n Quang Hoa V� M�n Thi�n", 76},
        {"Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ", 77},
        {"Thi�n Quang S�m La Th�c ��i", 78},
        {"Thi�n Quang Song B�o H�n Thi�t Tr�c", 79},
        {"Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n", 80},
        {"S�m Hoang Phi Tinh �o�t H�n", 81},
        {"S�m Hoang KimTi�n Li�n Ho�n Gi�p", 82},
        {"S�m Hoang H�n Gi�o Y�u Th�c", 83},
        {"S�m Hoang Huy�n Thi�t T��ng Ng�c B�i", 84},
        {"S�m Hoang Tinh V�n Phi L� ", 85},
        {"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n", 86},
        {"��a Ph�ch H�c Di�m Xung Thi�n Li�n", 87},
        {"��a Ph�ch T�ch L�ch L�i H�a Gi�i", 88},
        {"��a Ph�ch Kh�u T�m tr�c", 89},
        {"��a Ph�ch ��a H�nh Thi�n L� Ngoa", 90},
        {"��ng C�u Phi Long ��u ho�n", 91},
        {"��ng C�u Gi�ng Long C�i Y", 92},
        {"��ng C�u Ti�m Long Y�u ��i", 93},
        {"��ng C�u Kh�ng Long H� Uy�n", 94},
        {"��ng C�u Ki�n Long Ban Ch� ", 95},
        {"��ch Kh�i L�c Ng�c Tr��ng", 96},
        {"��ch Kh�i C�u ��i C�i Y", 97},
        {"��ch Kh�i Tri�n M�ng y�u ��i", 98},
        {"��ch Kh�i C�u T�ch B� H� uy�n", 99},
        {"��ch Kh�i Th�o Gian Th�ch gi�i", 100},
        {"Ma S�t Qu� C�c U Minh Th��ng", 101},
        {"Ma S�t T�n D��ng �nh Huy�t Gi�p", 102},
        {"Ma S�t X�ch K� T�a Y�u Kh�u", 103},
        {"Ma S�t C� H�a Li�u Thi�n uy�n", 104},
        {"Ma S�t V�n Long Th� Ch�u gi�i", 105},
        {"Ma Ho�ng Kim Gi�p Kh�i", 106},
        {"Ma Ho�ng �n Xu�t H� H�ng Khuy�n", 107},
        {"Ma Ho�ng Kh� C�c Th�c y�u ��i", 108},
        {"Ma Ho�ng Huy�t Y Th� Tr�c", 109},
        {"Ma Ho�ng ��ng ��p Ngoa", 110},
        {"Ma Th� Li�t Di�m Qu�n Mi�n", 111},
        {"Ma Th� L� Ma Ph� T�m Li�n", 112},
        {"Ma Th� Nghi�p H�a U Minh Gi�i", 113},
        {"Ma Th� Huy�t Ng�c Th�t S�t B�i", 114},
        {"Ma Th� s�n  H�i Phi H�ng L� ", 115},
        {"L�ng Nh�c Th�i C�c Ki�m", 116},
        {"L�ng Nh�c V� Ng� ��o b�o", 117},
        {"L�ng Nh�c N� L�i Gi�i", 118},
        {"L�ng Nh�c V� C�c Huy�n Ng�c B�i", 119},
        {"L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i", 120},
        {"C�p Phong Ch�n V� Ki�m", 121},
        {"C�p Phong Tam Thanh Ph� ", 122},
        {"C�p Phong Huy�n Ti Tam �o�n c�m", 123},
        {"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i", 124},
        {"C�p Phong Thanh T�ng Ph�p gi�i", 125},
        {"S��ng Tinh Thi�n Ni�n H�n Thi�t", 126},
        {"S��ng Tinh Ng�o S��ng ��o b�o", 127},
        {"S��ng Tinh Thanh Phong L� ��i", 128},
        {"S��ng Tinh Thi�n Tinh B�ng Tinh th� ", 129},
        {"S��ng Tinh Phong B�o ch� ho�n", 130},
        {"L�i Khung H�n Tung B�ng B�ch quan", 131},
        {"L�i Khung Thi�n ��a H� ph� ", 132},
        {"L�i Khung Phong L�i Thanh C�m ��i", 133},
        {"L�i Khung Linh Ng�c U�n L�i", 134},
        {"L�i Khung C�u Thi�n D�n L�i gi�i", 135},
        {"V� �o B�c Minh ��o qu�n", 136},
        {"V� �o Ki B�n ph� ch� ", 137},
        {"V� �o Th�c T�m ch� ho�n", 138},
        {"V� �o Thanh �nh Huy�n Ng�c B�i", 139},
        {"V� �o Tung Phong Tuy�t �nh ngoa", 140},
        {"[H�n ch�th�i gian] ��ng C�u Ng� Long Ng�c B�i", 141},
        {"[H�n ch�th�i gian] ��a Ph�ch Phong H�n Th�c Y�u", 142},
        {"[H�n ch�th�i gian] B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n", 143},
        {"[H�n ch�th�i gian] C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n", 144},
        {"[H�n ch�th�i gian] Ch� Ph�c Tr�ng C�t Ng�c B�i", 145},
        {"[H�n ch�th�i gian] L�ng Nh�c V� Ng� Th�c ��i", 146},
        {"[H�n ch�th�i gian] L�i Khung Linh Ng�c �n L�i Uy�n", 147},
        {"[H�n ch�th�i gian] Ma Ho�ng Dung Kim �o�n Nh�t Gi�i", 148},
        {"[H�n ch�th�i gian] Ma S�t C� H�a Li�u Thi�n Ho�n", 149},
        {"[H�n ch�th�i gian] Ma Th� L� Ma Ph� T�m ��i", 150},
        {"[H�n ch�th�i gian] M�ng Long T� Kim B�t Nh� Gi�i", 151},
        {"[H�n ch�th�i gian] Minh Hoan Song Ho�n X� Kh�u", 152},
        {"[H�n ch�th�i gian] Ng� Long T�n Phong Ph�t C�", 153},
        {"[H�n ch�th�i gian] Ph�c Ma V� L��ng Kim Cang Uy�n", 154},
        {"[H�n ch�th�i gian] S��ng Tinh L�u Tinh C�n Nguy�t Kh�u", 155},
        {"[H�n ch�th�i gian] Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u", 156},
        {"[H�n ch�th�i gian] Thi�n Quang ��a H�nh Thi�n L� Ngoa", 157},
        {"[H�n ch�th�i gian] T� Kh�ng ��t Ma T�ng H�i", 158},
        {"[H�n ch�th�i gian] V� Gian Thanh Phong Nhuy�n K�ch", 159},
        {"[H�n ch�th�i gian] V� Tr�n T�nh �nh L�u T�", 160},
        {"[H�n ch�th�i gian] V� Y�m Thu Th�y L�u Quang ��i", 161},
        {"[H�n ch�th�i gian] V� Hoan Th�i Uy�n Ch�n V� Li�n", 162}
    }
}

function GiveUIOK4(putCount) --ep phi phong 9
    if (putCount == 0) then
        Talk(1, "", "Xin vui l�ng ��t v�o trang b� HKMP")
        return
    end
    local itemIndex = GetGiveItemUnit(1)
    local bindState = GetItemBindState(itemIndex)
    if (bindState ~= 0) then
        Talk(1, "", "Trang bi �ang  trong tr�ng th�i kh�a, kh�ng th� n�ng c�p")
        return
    end
    local ts1 = ITEM_GetExpiredTime(itemIndex) -- timestamp: thoi gian tin = s tu 1/1/1970
    local ts2 = GetLocalTime()
    local t = 1
     --ts1 - ts2
    local ntime = t / 60
    --print(ts1,ntime)
    if (t > 0) then
        local goldEquipIndex = GetGlodEqIndex(itemIndex)
        local hkmpTable = tbHKMP[1]
        local minId = hkmpTable[1][2]
        local maxId = hkmpTable[3][2] --- d�y cu�i c�ng c�a bant tbHKMP ��nh ngh�a � tr�n

        if (goldEquipIndex < 1) or (goldEquipIndex > 163) then
            Talk(1, "", "Xin vui l�ng ��t v�o 1 trang b� HKMP")
            return
        end
        local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1)
        if (nSilverCount < 100) then
            Talk(1, "no", "C�n c� 100 <color=red>Ti�n ��ng<color> m�i c� th� l�c.")
            return
        end

        if (RemoveItemByIndex(itemIndex) == 1) then
            tenhk = tbHKMP[1][goldEquipIndex][1]
            -- local requireIngradent = CalcEquiproomItemCount(4, 417, 1, -1)
            local ndxit = AddGoldItem(0, goldEquipIndex)
            local rate = CalcEquiproomItemCount(4, 417, 1, -1)
            if (rate >= 100) then
                Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> l�c l�i option trang b� <color=gold>"..tenhk.."<color> T�i NPC.")
                ConsumeEquiproomItem(100, 4, 417, 1, -1)
                ITEM_SetExpiredTime(ndxit, ntime)
                SyncItem(ndxit)
            else
                Talk(1, "", "C�n c� 100 <color=red>Ti�n ��ng<color> m�i c� th� l�c trang b� xin h�y ki�m tra l�i.")
                return
            end
        else
            Talk(1, "", "Trang b� kh�ng c� trong danh s�ch ho�c �� h�t h�n s� d�ng ho�c nguy�n li�u kh�ng ��ng")
            return
        end
    end
end

-------------------------------------

function logExchangeItem(gradientItem, gradientnumber, item)
    local account = GetAccount()
    local name = GetName()
    local row = {account, name, gradientItem, gradientnumber, item}
    local fileName = "logdoido_.txt"
    local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/", fileName, {"*w", "*w", "*n", "*n", "*n"})
    local tbData = {}
    tbData[1] = {"Account", "Character", "Gradient", "Grandient Number", "Item"}
    if (tbDataFromFile == nil) then
        tbData[2] = row
    else
        for i = 1, getn(tbDataFromFile) do
            tbData[1 + i] = tbDataFromFile[i]
        end
        tbData[getn(tbData) + 1] = row
    end
    tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)
end

----------------------------------
function no()
end
function Kick_All()
    if CalcFreeItemCellCount() < 5 then
        Say("H�nh trang kh�ng �� 5 � tr�ng.")
        return
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 50 then
        Say("H�nh trang kh�ng c� �� 50 xu.")
        return
    end
    ConsumeEquiproomItem(50, 4, 417, 1, 1)
    local Index = AddGoldItem(0, 3771)
    ITEM_SetExpiredTime(Index, 72 * 60)
    SyncItem(Index)
end
