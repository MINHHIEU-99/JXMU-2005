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
--»»È¡ÐÐÏÀÁî³ö´í - modified by DinhHQ - 20110921
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

    tbDailog.szTitleMsg = "<#><npc> N¬i nµy ®Òu lµ kú tr©n dÞ b¶o! §¹i hiÖp cÇn g×!?"
    --	tbDailog:AddOptEntry("§æi VËt PhÈm Hoµng Kim Ra TiÒn §ång", doivatpham)
    tbDailog:AddOptEntry("§æi M¶nh lÊy r­¬ng trang bÞ ", menuruonghoangkim)
    --tbDailog:AddOptEntry("Mua Trang BÞ HKMP Random Option", doimanhrahkmp)
    --tbDailog:AddOptEntry("Mua Trang BÞ HKMP H¹n ChÕ", menuhanche)
    --tbDailog:AddOptEntry("Mua Trang BÞ An Bang", muaanbang)
    --tbDailog:AddOptEntry("Mua Ngùa Phiªn Vò (2000 Xu)", nguaphienvu)
    --	tbDailog:AddOptEntry("§æi Ngò Hµnh Trang BÞ Xanh", menutrangbixanh)
    --tbDailog:AddOptEntry("Thay §æi Opp HKMP H¹n chÕ ", tbHanCheRefineEquip)
    --	tbDailog:AddOptEntry("Thay §ái Ngo¹i H×nh ¸o Gi¸p §Ñp Trai(200xu)", MenuDoiNgoaiHinhGiap_d)
    --	tbDailog:AddOptEntry("Thay §ái Ngo¹i H×nh Vò KhÝ", MenuDoiNgoaiHinh0)
    ----	tbDailog:AddOptEntry("ChÕ T¹o Vò KhÝ HKMP Ph¸t S¸ng", Make_Weapons)
    --	tbDailog:AddOptEntry("NhËn Thñy Tinh", NhanThuyTinhFree)
    --	tbDailog:AddOptEntry("Trïng LuyÖn Trang BÞ H¹n ChÕ", refine_HanChe)
    --tbDailog:AddOptEntry("N©ng CÊp Trang BÞ B¹ch Kim (Mem Míi Vip)", NangCapBachKimVIP)
    --	tbDailog:AddOptEntry("N©ng CÊp Trang BÞ B¹ch Kim", NangCapBachKim)
    --	tbDailog:AddOptEntry("R· Trang BÞ B¹ch Kim ", RaTrangBiBachKim)
    --	tbDailog:AddOptEntry("§æi M¶nh HKMP", exchange_entry)
    --	tbDailog:AddOptEntry("Thuª NhÉn KÝch All",Kick_All)
    tbDailog:AddOptEntry("Läc L¹i Option Trang BÞ HKMP", LocOptionHKOK)

    --	tbDailog:AddOptEntry("Test Nang Bach Kim", bachkim0)
    --		tbDailog:AddOptEntry("Test Nang Cap +8", nangcapbachkim6)
    tbDailog:Show()
end
function menutrangbixanh()
    local tbSay = {
        "§æi sang Trang BÞ HÖ Kim./#tranhbixanhhekim()",
        "§æi sang Trang BÞ HÖ Méc./#tranhbixanhhemoc()",
        "§æi sang Trang BÞ HÖ Thuû./#tranhbixanhhethuy()",
        "§æi sang Trang BÞ HÖ Ho¶./#tranhbixanhhehoa()",
        "§æi sang Trang BÞ HÖ Thæ./#tranhbixanhhetho()",
        "Th«i ta kh«ng muèn n÷a./no"
    }
    Say("B¹n chän chøc n¨ng nµo ?", getn(tbSay), tbSay)
end
function tranhbixanhhekim()
    GiveItemUI(
        "Trang BÞ",
        "Bá Trang BÞ Xanh Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang\n Nguyªn LiÖu: \n- 1 Lôc Thuû Tinh",
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
        Talk(1, "", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ Ðp")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang bÞ ®ang cã h¹n sö dông, kh«ng thÓ Ðp")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("chØ ®Æt vµo trang bÞ xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 0, 0, 0)
    else
        Say("Hµnh trang kh«ng ®ñ nguyªn liÖu.")
        return
    end
end
function tranhbixanhhemoc()
    GiveItemUI(
        "Trang BÞ",
        "Bá Trang BÞ Xanh Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang\n Nguyªn LiÖu: \n- 1 Lôc Thuû Tinh",
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
        Talk(1, "", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ Ðp")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang bÞ ®ang cã h¹n sö dông, kh«ng thÓ Ðp")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("chØ ®Æt vµo trang bÞ xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 1, 0, 0)
    else
        Say("Hµnh trang kh«ng ®ñ nguyªn liÖu.")
        return
    end
end
function tranhbixanhhethuy()
    GiveItemUI(
        "Trang BÞ",
        "Bá Trang BÞ Xanh Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang\n Nguyªn LiÖu: \n- 1 Lôc Thuû Tinh",
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
        Talk(1, "", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ Ðp")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang bÞ ®ang cã h¹n sö dông, kh«ng thÓ Ðp")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("chØ ®Æt vµo trang bÞ xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 2, 0, 0)
    else
        Say("Hµnh trang kh«ng ®ñ nguyªn liÖu.")
        return
    end
end
function tranhbixanhhehoa()
    GiveItemUI(
        "Trang BÞ",
        "Bá Trang BÞ Xanh Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang\n Nguyªn LiÖu: \n- 1 Lôc Thuû Tinh",
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
        Talk(1, "", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ Ðp")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang bÞ ®ang cã h¹n sö dông, kh«ng thÓ Ðp")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("chØ ®Æt vµo trang bÞ xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 3, 0, 0)
    else
        Say("Hµnh trang kh«ng ®ñ nguyªn liÖu.")
        return
    end
end
function tranhbixanhhetho()
    GiveItemUI(
        "Trang BÞ",
        "Bá Trang BÞ Xanh Vµo, Nguyªn LiÖu §Ó Ngoµi Hµnh Trang\n Nguyªn LiÖu: \n- 1 Lôc Thuû Tinh",
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
        Talk(1, "", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ Ðp")
        return
    end
    if timeitem > 0 then
        Talk(1, "", "Trang bÞ ®ang cã h¹n sö dông, kh«ng thÓ Ðp")
        return
    end
    if nG == 4 or nG == 6 then
        Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ", 0)
        return
    end
    if nQuality ~= 0 then
        Say("chØ ®Æt vµo trang bÞ xanh", 0)
        return
    end
    if CalcEquiproomItemCount(4, 240, 1, 1) >= 1 then
        ConsumeEquiproomItem(1, 4, 240, 1, 1)
        RemoveItemByIndex(nItemIdx)
        --	AddItem(0, 0, 1, 10, random(0,4), 0, 0)
        AddItem(nGenre, nDetailType, nParticular, nLevel, 4, 0, 0)
    else
        Say("Hµnh trang kh«ng ®ñ nguyªn liÖu.")
        return
    end
end
function muaanbang()
    local tbSay = {
        "An Bang B¨ng Tinh Th¹ch H¹ng Liªn./#muaanbangok(164)",
        "An Bang Cóc Hoa Th¹ch ChØ hoµn./#muaanbangok(165)",
        "An Bang §iÒn Hoµng Th¹ch Ngäc Béi./#muaanbangok(166)",
        "An Bang Kª HuyÕt Th¹ch Giíi ChØ./#muaanbangok(167)",
        "Th«i ta kh«ng muèn n÷a./no"
    }
    Say("B¹n chän chøc n¨ng nµo ?", getn(tbSay), tbSay)
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
            Say("Hµnh trang kh«ng ®ñ 120 TiÒn §ång.")
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
            Say("Hµnh trang kh«ng ®ñ 50 TiÒn §ång.")
            return
        end
    end
end

function trangbihancherandom()
    local tbSay = {
        "[H¹n chÕ thêi gian] Méng Long Tö Kim B¸t Nh· Giíi./#trangbihancherandom_ok(769,1)",
        "[H¹n chÕ thêi gian] Phôc Ma V« L­îng Kim Cang UyÓn./#trangbihancherandom_ok(771,2)",
        "[H¹n chÕ thêi gian] Tø Kh«ng §¹t Ma T¨ng Hµi./#trangbihancherandom_ok(776,3)",
        "[H¹n chÕ thêi gian] Ngù Long TÊn Phong Ph¸t C¬./#trangbihancherandom_ok(793,4)",
        "[H¹n chÕ thêi gian] V« Gian Thanh Phong NhuyÔn KÞch./#trangbihancherandom_ok(796,5)",
        "[H¹n chÕ thêi gian] V« YÓm Thu Thñy L­u Quang §¸i./#trangbihancherandom_ok(801,6)",
        "[H¹n chÕ thêi gian] V« TrÇn TÞnh ¶nh L­u T«./#trangbihancherandom_ok(808,7)",
        "[H¹n chÕ thêi gian] Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu./#trangbihancherandom_ok(811,8)",
        "[H¹n chÕ thêi gian] BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n ./#trangbihancherandom_ok(816,9)",
        "[H¹n chÕ thêi gian] Minh Hoan Song Hoµn Xµ KhÊu./#trangbihancherandom_ok(829,10)",
        "[H¹n chÕ thêi gian] Chó Phäc Trïng Cèt Ngäc Béi./#trangbihancherandom_ok(834,11)",
        "Trang Sau./#trangbihancherandom2()",
        "Th«i ta kh«ng muèn n÷a./no"
    }
    Say("B¹n chän chøc n¨ng nµo ?", getn(tbSay), tbSay)
end
function trangbihancherandom2()
    local tbSay = {
        "[H¹n chÕ thêi gian] Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa./#trangbihancherandom_ok(843,12)",
        "[H¹n chÕ thêi gian] §Þa Ph¸ch Phong Hµn Thóc Yªu./#trangbihancherandom_ok(854,13)",
        "[H¹n chÕ thêi gian] §ång Cõu Ngù Long Ngäc Béi./#trangbihancherandom_ok(855,14)",
        "[H¹n chÕ thêi gian] Ma S¸t Cö Háa Liªu Thiªn Hoµn./#trangbihancherandom_ok(868,15)",
        "[H¹n chÕ thêi gian] Ma Hoµng Dung Kim §o¹n NhËt Giíi./#trangbihancherandom_ok(874,16)",
        "[H¹n chÕ thêi gian] Ma ThÞ LÖ Ma PhÖ T©m §¸i./#trangbihancherandom_ok(876,17)",
        "[H¹n chÕ thêi gian] L¨ng Nh¹c V« Ng· Thóc §¸i./#trangbihancherandom_ok(881,18)",
        "[H¹n chÕ thêi gian] CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn./#trangbihancherandom_ok(888,19)",
        "[H¹n chÕ thêi gian] S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu./#trangbihancherandom_ok(891,20)",
        "[H¹n chÕ thêi gian] L«i Khung Linh Ngäc Èn L«i UyÓn./#trangbihancherandom_ok(898,21)",
        "[H¹n chÕ thêi gian] Vô Hoan Th¸i Uyªn Ch©n Vò Liªn./#trangbihancherandom_ok(901,22)",
        "Th«i ta kh«ng muèn n÷a./no"
    }
    Say("B¹n chän chøc n¨ng nµo ?", getn(tbSay), tbSay)
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
        Say("Hµnh trang kh«ng ®ñ 12000 TiÒn §ång.")
        return
    end
end
function trangbihanchemax()
    local tbSay = {
        "[H¹n chÕ thêi gian] Méng Long Tö Kim B¸t Nh· Giíi./#trangbihanchemax_ok(686)",
        "[H¹n chÕ thêi gian] Phôc Ma V« L­îng Kim Cang UyÓn./#trangbihanchemax_ok(687)",
        "[H¹n chÕ thêi gian] Tø Kh«ng §¹t Ma T¨ng Hµi./#trangbihanchemax_ok(688)",
        "[H¹n chÕ thêi gian] Ngù Long TÊn Phong Ph¸t C¬./#trangbihanchemax_ok(689)",
        "[H¹n chÕ thêi gian] V« Gian Thanh Phong NhuyÔn KÞch./#trangbihanchemax_ok(690)",
        "[H¹n chÕ thêi gian] V« YÓm Thu Thñy L­u Quang §¸i./#trangbihanchemax_ok(691)",
        "[H¹n chÕ thêi gian] V« TrÇn TÞnh ¶nh L­u T«./#trangbihanchemax_ok(692)",
        "[H¹n chÕ thêi gian] Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu./#trangbihanchemax_ok(693)",
        "[H¹n chÕ thêi gian] BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n ./#trangbihanchemax_ok(694)",
        "[H¹n chÕ thêi gian] Minh Hoan Song Hoµn Xµ KhÊu./#trangbihanchemax_ok(695)",
        "[H¹n chÕ thêi gian] Chó Phäc Trïng Cèt Ngäc Béi./#trangbihanchemax_ok(696)",
        "Trang Sau./#trangbihanchemax2()",
        "Th«i ta kh«ng muèn n÷a./no"
    }
    Say("B¹n chän chøc n¨ng nµo ?", getn(tbSay), tbSay)
end
function trangbihanchemax2()
    local tbSay = {
        "[H¹n chÕ thêi gian] Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa./#trangbihanchemax_ok(697)",
        "[H¹n chÕ thêi gian] §Þa Ph¸ch Phong Hµn Thóc Yªu./#trangbihanchemax_ok(698)",
        "[H¹n chÕ thêi gian] §ång Cõu Ngù Long Ngäc Béi./#trangbihanchemax_ok(699)",
        "[H¹n chÕ thêi gian] Ma S¸t Cö Háa Liªu Thiªn Hoµn./#trangbihanchemax_ok(700)",
        "[H¹n chÕ thêi gian] Ma Hoµng Dung Kim §o¹n NhËt Giíi./#trangbihanchemax_ok(701)",
        "[H¹n chÕ thêi gian] Ma ThÞ LÖ Ma PhÖ T©m §¸i./#trangbihanchemax_ok(702)",
        "[H¹n chÕ thêi gian] L¨ng Nh¹c V« Ng· Thóc §¸i./#trangbihanchemax_ok(703)",
        "[H¹n chÕ thêi gian] CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn./#trangbihanchemax_ok(704)",
        "[H¹n chÕ thêi gian] S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu./#trangbihanchemax_ok(705)",
        "[H¹n chÕ thêi gian] L«i Khung Linh Ngäc Èn L«i UyÓn./#trangbihanchemax_ok(706)",
        "[H¹n chÕ thêi gian] Vô Hoan Th¸i Uyªn Ch©n Vò Liªn./#trangbihanchemax_ok(707)",
        "Th«i ta kh«ng muèn n÷a./no"
    }
    Say("B¹n chän chøc n¨ng nµo ?", getn(tbSay), tbSay)
end
function trangbihanchemax_ok(idtrangbi)
    if CalcEquiproomItemCount(4, 417, 1, 1) >= 16000 then
        ConsumeEquiproomItem(16000, 4, 417, 1, 1)
        tbAwardTemplet:GiveAwardByList(
            {{szName = "Phi V©n", tbProp = {0, idtrangbi}, nCount = 1, nQuality = 1}},
            "test",
            1
        )
    else
        Say("Hµnh trang kh«ng ®ñ 16000 TiÒn §ång.")
        return
    end
end
function menuhanche()
    local szTitle = "<#><npc> N¬i nµy ®Òu lµ kú tr©n dÞ b¶o! §¹i hiÖp cÇn g×!?"
    local Opt = {
        {"Mua Trang BÞ H¹n ChÕ Random Option (12000 Xu)", trangbihancherandom},
        --{"Mua Trang BÞ H¹n ChÕ Max Option (16000 Xu)", trangbihanchemax},
        {"KÕt thóc ®èi tho¹i. ", End}
    }
    CreateNewSayEx(szTitle, Opt)
end

-------------------------------------------------- §æi R­¬ng hoµng kim -----------------------

function menuruonghoangkim()
    local szTitle = "<#><npc> N¬i nµy ®Òu lµ kú tr©n dÞ b¶o! §¹i hiÖp cÇn g×!?"
    local Opt = {
        {"R­¬ng Hoµng Kim M«n Ph¸i", ruonghkmp},
        {"R­¬ng §éng S¸t", ruongdongsat},
        {"R­¬ng An Bang", ruonganbang},
        {"R­¬ng Hång ¶nh", ruonghonganh},
        {"R­¬ng §Þnh Quèc", ruongdinhquoc},
        {"R­¬ng Nhu T×nh", ruongnhutinh},
        {"R­¬ng HiÖp Cèt", ruonghiepcot},
        {"KÕt thóc ®èi tho¹i. ", End}
    }
    CreateNewSayEx(szTitle, Opt)
end
-----------------------r­¬ng hkmp ------------
function ruonghkmp()
    if CalcEquiproomItemCount(6, 1, 4914, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)

        local tbVnNewItemDropAward = {{{szName = "R­¬ng Hoµng Kim M«n Ph¸i", tbProp = {6, 1, 4224, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "PhÇn Th­ëng")
    else
        Say("Trªn ng­êi ®¹i hiÖp kh«ng ®ñ 100 M¶nh Hoàng Kim. , hoÆc kh«ng cã ®ñ 100 tiÒn ®ång !")
        return
    end
end
---------------------------- r­¬ng ®éng s¸t ---------------------
function ruongdongsat()
    if CalcEquiproomItemCount(6, 1, 4916, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)

        local tbVnNewItemDropAward = {{{szName = "R­¬ng Hoµng Kim M«n Ph¸i", tbProp = {6, 1, 4910, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "PhÇn Th­ëng")
    else
        Say("Server Free : \n  1 : B¹n Qu¸ NghÌo Ko §ñ 100 TiÒn §ång ! \n 2 : B¹n Ch­a §r 100 m¶nh Hoµng Kim .")
        return
    end
end
---------------------------- an bang ---------------------
function ruonganbang()
    if CalcEquiproomItemCount(6, 1, 4917, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R­¬ng Hoµng Kim M«n Ph¸i", tbProp = {6, 1, 4909, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "PhÇn Th­ëng")
    else
        Say("Server Free : \n  1 : B¹n Qu¸ NghÌo Ko §ñ 100 TiÒn §ång ! \n 2 : B¹n Ch­a §r 100 m¶nh Hoµng Kim .")
        return
    end
end
---------------------------- r­¬ng ®éng s¸t ---------------------
function ruonghonganh()
    if CalcEquiproomItemCount(6, 1, 4918, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R­¬ng Hoµng Kim M«n Ph¸i", tbProp = {6, 1, 4912, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "PhÇn Th­ëng")
    else
        Say("Server Free : \n  1 : B¹n Qu¸ NghÌo Ko §ñ 100 TiÒn §ång ! \n 2 : B¹n Ch­a §r 100 m¶nh Hoµng Kim .")
        return
    end
end
---------------------------- r­¬ng ®éng s¸t ---------------------
function ruongdinhquoc()
    if CalcEquiproomItemCount(6, 1, 4915, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R­¬ng Hoµng Kim M«n Ph¸i", tbProp = {6, 1, 4911, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "PhÇn Th­ëng")
    else
        Say("Server Free : \n  1 : B¹n Qu¸ NghÌo Ko §ñ 100 TiÒn §ång ! \n 2 : B¹n Ch­a §r 100 m¶nh Hoµng Kim .")
        return
    end
end
---------------------------- r­¬ng ®éng s¸t ---------------------
function ruongnhutinh()
    if CalcEquiproomItemCount(6, 1, 4919, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R­¬ng Hoµng Kim M«n Ph¸i", tbProp = {6, 1, 4921, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "PhÇn Th­ëng")
    else
        Say("Server Free : \n  1 : B¹n Qu¸ NghÌo Ko §ñ 100 TiÒn §ång ! \n 2 : B¹n Ch­a §r 100 m¶nh Hoµng Kim .")
        return
    end
end
---------------------------- r­¬ng ®éng s¸t ---------------------
function ruonghiepcot()
    if CalcEquiproomItemCount(6, 1, 4920, -1) >= 100 and CalcEquiproomItemCount(4, 417, 1, -1) >= 100 then
        ConsumeEquiproomItem(100, 6, 1, 4914, -1)
        ConsumeEquiproomItem(100, 4, 417, 1, -1)
        local tbVnNewItemDropAward = {{{szName = "R­¬ng Hoµng Kim M«n Ph¸i", tbProp = {6, 1, 4922, 1, 1}, nCount = 1}}}
        tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward, "PhÇn Th­ëng")
    else
        Say("Server Free : \n  1 : B¹n Qu¸ NghÌo Ko §ñ 100 TiÒn §ång ! \n 2 : B¹n Ch­a §r 100 m¶nh Hoµng Kim .")
        return
    end
end
---------------------------- r­¬ng ®éng s¸t ---------------------
function doivatpham()
    if CalcFreeItemCellCount() < 10 then
        Say(
            "Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y më.",
            0
        )
        return 0
    end
    GiveItemUI("§æi VËt PhÈm.", "ChØ bá 1 trang bÞ vµo.", "doivatpham_ok")
end
function doivatpham_ok(nCount)
    if (nCount ~= 1) then
        Say("C¸c h¹ chØ cÇn bá vµo 1 trang bÞ.", 0)
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
        Talk(1, "", "VËt phÈm cã thêi h¹n kh«ng thÓ ®æi ®­îc.")
        return
    end
    local bindState = GetItemBindState(nItemIndex)
    if (bindState ~= 0) then
        Talk(1, "", "Trang bi ®ang trong tr¹ng th¸i khãa, kh«ng thÓ ®æi ®­îc")
        return
    end
    if (nCurItemQuality ~= 1) then
        Talk(1, "", "Trang bi kh«ng ph¶i lµ trang bÞ hoµng kim, kh«ng thÓ ®æi ®­îc")
        return
    end
    if (nGoldEquipIdxFF >= 159 and nGoldEquipIdxFF <= 163) or (nGoldEquipIdxFF >= 191 and nGoldEquipIdxFF <= 193) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 165 and nGoldEquipIdxFF <= 167) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 403 and nGoldEquipIdxFF <= 427) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 6272 and nGoldEquipIdxFF <= 6275) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 494 and nGoldEquipIdxFF <= 497) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 100}}, "test", 1)
    elseif nGoldEquipIdxFF == 164 then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 425 and nGoldEquipIdxFF <= 427) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 50}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 186 and nGoldEquipIdxFF <= 189) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 5}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 430 and nGoldEquipIdxFF <= 433) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 5}}, "test", 1)
    elseif (nGoldEquipIdxFF >= 143 and nGoldEquipIdxFF <= 146) then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 5}}, "test", 1)
    elseif nGoldEquipIdxFF == 190 then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 20}}, "test", 1)
    elseif nGoldEquipIdxFF >= 685 and nGoldEquipIdxFF <= 901 then
        RemoveItemByIndex(nItemIndex)
        tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 150}}, "test", 1)
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
            tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 200}}, "test", 1)
        else
            RemoveItemByIndex(nItemIndex)
            tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 100}}, "test", 1)
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
        --		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,417,1,1},nCount=4000},}, "test", 1);
        --		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,417,1,1},nCount=4000},}, "test", 1);
        --		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,417,1,1},nCount=4000},}, "test", 1);
        --	tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,417,1,1},nCount=4000},}, "test", 1);
        --	else
        --		RemoveItemByIndex(nItemIndex)
        --		tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång",tbProp={4,417,1,1},nCount=8000},}, "test", 1);
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
            tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 200}}, "test", 1)
        else
            RemoveItemByIndex(nItemIndex)
            tbAwardTemplet:GiveAwardByList({{szName = "TiÒn §ång", tbProp = {4, 417, 1, 1}, nCount = 100}}, "test", 1)
        end
    else
        Say("Trang bÞ nµy kh«ng ®æi ra tiÒn ®ång ®­îc.")
        return
    end
end

function NangCapBachKimVIP()
    if GetTask(3081) == 0 then
        Say("Chøc n¨ng chØ cã Admin ph¸t cho nh÷ng mem míi VIP.")
        return 1
    end
    local tbSay = {
        "N©ng HKMP --> B¹ch Kim +0 (free)/#BachKimGui(0)",
        --"N©ng B¹ch Kim CÊp 1-->5 (30 MTT mçi lo¹i)/#BachKimGui(15)",
        --"N©ng B¹ch Kim CÊp 1 (Free)/#bachkim6free()",
        --"N©ng B¹ch Kim CÊp 5 Lªn 6(Dïng Xu+KNB Khãa)/#BachKimGui(61)",
        --"N©ng B¹ch Kim CÊp 6-->7 (250 MTT mçi lo¹i + 1 HKNB)/#BachKimGui(7)",
        --"N©ng B¹ch Kim CÊp 7-->8 (250 MTT mçi lo¹i + 10 HKNB)/#BachKimGui(8)",
        --"N©ng B¹ch Kim CÊp 8 Lªn 9 (open t¹m t¾t) /#BachKimGui(9)",
        --"N©ng B¹ch Kim CÊp 9 Lªn 10 (open t¹m t¾t) /#BachKimGui(10)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n Chän CÊp §å CÇn N©ng CÊp", getn(tbSay), tbSay)
end
function bachkim6free()
    if GetTask(3081) >= 1 and GetTask(3081) < 6 then
        GiveItemUI("N©ng CÊp Trang BÞ B¹ch Kim", "1", "bachkim6free_ok", "no", 1)
    else
        Say("Mçi nh©n vËt chØ ®­îc Ðp 5 mãn.")
        return
    end
end
function bachkim6free_ok(nCount)
    if nCount ~= 1 then
        Say("ChØ bá 1 vËt phÈm vµo ®Ó n©ng cÊp.")
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
        Msg2Player("N©ng cÊp thµnh c«ng")
        SetTask(3081, GetTask(3081) + 1)
    else
        Say("Trang bÞ nµy khång thÓ n©ng cÊp lªn +6")
        return
    end
end
function bachkim0()
    GiveItemUI("N©ng CÊp Trang BÞ B¹ch Kim", "1", "nangbachkim0ad_ok", "no", 1)
end
function nangbachkim0ad_ok(nCount)
    for i = 1, nCount do
        --local nItemIndex = GetGiveItemUnit(i)

        UpgradePlatinaFromGoldItem(GetGiveItemUnit(i))
    end
    Msg2Player(
        "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
            GetName() .. "<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ <color=red>Lªn B¹ch Kim"
    )
end
function nangcapbachkim6()
    GiveItemUI("N©ng CÊp Trang BÞ B¹ch Kim", "1", "nangcapbachkim6_ok", "no", 1)
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
    --	Msg2Player("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ "..szItemName.." <color=red>Lªn B¹ch Kim CÊp <color=yellow>"..nItemLeveltc.."")
    --else Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +5 ")
    --end
end
------------------------------------------------------------------------------------ra bach kim
function RaTrangBiBachKim()
    local tbSay = {
        --"R· B¹ch Kim +1 Thµnh 30 M¶nh Thiªn Th¹ch(20xu) /#RaTrangBi(1)",
        --"R· B¹ch Kim +2 Thµnh 60 M¶nh Thiªn Th¹ch(20xu) /#RaTrangBi(2)",
        --"R· B¹ch Kim +3 Thµnh 90 M¶nh Thiªn Th¹ch(20xu) /#RaTrangBi(3)",
        --"R· B¹ch Kim +4 Thµnh 120 M¶nh Thiªn Th¹ch(20xu) /#RaTrangBi(4)",
        --"R· B¹ch Kim +5 Thµnh 150 M¶nh Thiªn Th¹ch(20xu) /#RaTrangBi(5)",
        --"R· B¹ch Kim +6 Thµnh 250 M¶nh Thiªn Th¹ch(20xu) /#RaTrangBi(6)",
        --"R· B¹ch Kim +7 Thµnh 250 M¶nh Thiªn Th¹ch(100xu) /#RaTrangBi(7)",
        --"R· B¹ch Kim +8 Thµnh 500 M¶nh Thiªn Th¹ch(100xu) /#RaTrangBi(8)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n Chän CÊp §å CÇn R·", getn(tbSay), tbSay)
end

function RaTrangBi(num)
    if num == 1 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +1", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi1", "no", 1)
    end
    if num == 2 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +2", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi2", "no", 1)
    end
    if num == 3 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +3", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi3", "no", 1)
    end
    if num == 4 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +4", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi4", "no", 1)
    end
    if num == 5 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +5", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi5", "no", 1)
    end
    if num == 6 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +6", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi6", "no", 1)
    end
    if num == 7 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +7", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi7", "no", 1)
    end
    if num == 8 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +8", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi8", "no", 1)
    end
    if num == 9 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +9", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi9", "no", 1)
    end
    if num == 10 then
        GiveItemUI("R· Trang BÞ B¹ch Kim +9", "Xin h·y bá vµo trang bÞ vµo", "ratrangbi10", "no", 1)
    end
end
function ratrangbi1()
    if CalcFreeItemCellCount() < 20 then
        Say("Hµnh trang kh«ng ®ñ 20 « trèng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("VËt PhÈm Khãa Kh«ng ThÓ R·")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("Hµnh trang kh«ng cã 20 xu.")
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
                    {{szName = "M¶nh Thiªn Th¹ch", tbProp = {4, i, 1, 1, 0}, nCount = 30}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 30 M¶nh Thiªn Th¹ch. "
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +1 ")
        end
    end
end
function ratrangbi2()
    if CalcFreeItemCellCount() < 20 then
        Say("Hµnh trang kh«ng ®ñ 20 « trèng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("VËt PhÈm Khãa Kh«ng ThÓ R·")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("Hµnh trang kh«ng cã 20 xu.")
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
                    {{szName = "M¶nh Thiªn Th¹ch", tbProp = {4, i, 1, 1, 0}, nCount = 60}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 60 M¶nh Thiªn Th¹ch. "
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +2")
        end
    end
end
function ratrangbi3()
    if CalcFreeItemCellCount() < 20 then
        Say("Hµnh trang kh«ng ®ñ 20 « trèng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("VËt PhÈm Khãa Kh«ng ThÓ R·")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("Hµnh trang kh«ng cã 20 xu.")
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
                    {{szName = "M¶nh Thiªn Th¹ch", tbProp = {4, i, 1, 1, 0}, nCount = 90}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 90 M¶nh Thiªn Th¹ch. "
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +3 ")
        end
    end
end
function ratrangbi4()
    if CalcFreeItemCellCount() < 20 then
        Say("Hµnh trang kh«ng ®ñ 20 « trèng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("VËt PhÈm Khãa Kh«ng ThÓ R·")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("Hµnh trang kh«ng cã 20 xu.")
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
                    {{szName = "M¶nh Thiªn Th¹ch", tbProp = {4, i, 1, 1, 0}, nCount = 120}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 120 M¶nh Thiªn Th¹ch. "
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +4")
        end
    end
end
function ratrangbi5()
    if CalcFreeItemCellCount() < 20 then
        Say("Hµnh trang kh«ng ®ñ 20 « trèng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("VËt PhÈm Khãa Kh«ng ThÓ R·")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("Hµnh trang kh«ng cã 20 xu.")
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
                    {{szName = "M¶nh Thiªn Th¹ch", tbProp = {4, i, 1, 1, 0}, nCount = 150}},
                    "test",
                    1
                )
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 150 M¶nh Thiªn Th¹ch. "
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +5 ")
        end
    end
end
function ratrangbi6()
    if CalcFreeItemCellCount() < 20 then
        Say("Hµnh trang kh«ng ®ñ 20 « trèng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("VËt PhÈm Khãa Kh«ng ThÓ R·")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 20 then
        Say("Hµnh trang kh«ng cã 20 xu.")
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
                    {{szName = "M¶nh Thiªn Th¹ch", tbProp = {4, i, 1, 1, 0}, nCount = 250}},
                    "test",
                    1
                )
                --	tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Thiªn Th¹ch",tbProp={4,i,1,1,0},nCount=100},}, "test", 1);
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 250 M¶nh Thiªn Th¹ch. "
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +6")
        end
    end
end
function ratrangbi7()
    if CalcFreeItemCellCount() < 20 then
        Say("Hµnh trang kh«ng ®ñ 20 « trèng")
        return 0
    end
    local nItemIndex = GetGiveItemUnit(1)
    local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
    local szItemName = GetItemName(nItemIndex)
    local nQuality = GetItemQuality(nItemIndex)
    local nGoldEquipIdx = GetGlodEqIndex(nItemIndex)
    local checkkhoa = GetItemBindState(nItemIndex)
    if checkkhoa == -2 then
        Say("VËt PhÈm Khãa Kh«ng ThÓ R·")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 100 then
        Say("Hµnh trang kh«ng cã 100 xu.")
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
                    {{szName = "M¶nh Thiªn Th¹ch", tbProp = {4, i, 1, 1, 0}, nCount = 250}},
                    "test",
                    1
                )
                --tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Thiªn Th¹ch",tbProp={4,i,1,1,0},nCount=200},}, "test", 1);
            end
            --	AddStackItem(2,4,343,1,1,0,0)
            Msg2SubWorld(
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 250 M¶nh Thiªn Th¹ch. "
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +7")
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 50 Xu "
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +6 ")
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcFreeItemCellCount() <= 20 then
        Say("Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 150 Xu + 100  M¶nh TT mçi lo¹i"
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +7 ")
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 100 then
        Say("Hµnh trang kh«ng ®ñ 100 xu.")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcFreeItemCellCount() <= 20 then
        Say("Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
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
                    {{szName = "M¶nh Thiªn Th¹ch", tbProp = {4, i, 1, 1, 0}, nCount = 500}},
                    "test",
                    1
                )
                --tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Thiªn Th¹ch",tbProp={4,i,1,1,0},nCount=200},}, "test", 1);
            end
            Msg2SubWorld(
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 500 M¶nh Thiªn Th¹ch. "
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +8 ")
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcFreeItemCellCount() <= 20 then
        Say("Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 450 Xu + 400  M¶nh TT mçi lo¹i"
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +9 ")
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ R·")
        return 0
    end
    if CalcFreeItemCellCount() <= 20 then
        Say("Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> R· Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Thµnh 650 Xu + 600  M¶nh TT mçi lo¹i"
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +10 ")
        end
    end
end
------------------------------------------------------------------------------------ra bach kim

function NangCapBachKim()
    local tbSay = {
        "N©ng HKMP --> B¹ch Kim +0 (free)/#BachKimGui(0)",
        "N©ng B¹ch Kim CÊp 1-->6 (free)/#BachKimGui(15)",
        --"N©ng B¹ch Kim CÊp 5-->6 (100 MTT mçi lo¹i + 20xu)/#BachKimGui(6)",
        --"N©ng B¹ch Kim CÊp 5 Lªn 6(Dïng Xu+KNB Khãa)/#BachKimGui(61)",
        "N©ng B¹ch Kim CÊp 6-->7 (250 MTT mçi lo¹i + 1 HKNB)/#BachKimGui(7)",
        "N©ng B¹ch Kim CÊp 7-->8 (250 MTT mçi lo¹i + 10 HKNB)/#BachKimGui(8)",
        --"N©ng B¹ch Kim CÊp 8 Lªn 9 (open t¹m t¾t) /#BachKimGui(9)",
        --"N©ng B¹ch Kim CÊp 9 Lªn 10 (open t¹m t¾t) /#BachKimGui(10)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n Chän CÊp §å CÇn N©ng CÊp", getn(tbSay), tbSay)
end

function BachKimGui(int)
    if int == 15 then
        GiveItemUI("N©ng CÊp Trang BÞ B¹ch Kim", "Xin h·y bá vµo trang bÞ vµo", "nangbachkim15", "no", 1)
    end
    if int == 0 then
        GiveItemUI("N©ng CÊp Trang BÞ B¹ch Kim", "Xin h·y bá vµo trang bÞ vµo ", "nangbachkim0", "no", 1)
    end
    if int == 6 then
        GiveItemUI(
            "N©ng CÊp Trang BÞ B¹ch Kim",
            "Xin h·y bá vµo trang bÞ vµo \nKh«ng bá nguyªn liÖu vµo \nNguyªn LiÖu: \n+9 lo¹i m¶nh thiªn th¹ch ,mçi lo¹i 100 m¶nh\n+20 Xu",
            "nangbachkim6",
            "no",
            1
        )
    end

    if int == 61 then
        GiveItemUI(
            "N©ng CÊp Trang BÞ B¹ch Kim",
            "Xin h·y bá vµo trang bÞ vµo\n Chi PhÝ: 50 xu + 2 KNB(Khãa)",
            "nangbachkim61",
            "no",
            1
        )
    end

    if int == 7 then
        GiveItemUI(
            "N©ng CÊp Trang BÞ B¹ch Kim",
            "Xin h·y bá vµo trang bÞ vµo \nKh«ng bá nguyªn liÖu vµo \nNguyªn LiÖu: \n+9 lo¹i m¶nh thiªn th¹ch ,mçi lo¹i 250 m¶nh\n+1 Hoµng Kim Ngäc Bµi",
            "nangbachkim7",
            "no",
            1
        )
    end

    if int == 8 then
        GiveItemUI(
            "N©ng CÊp Trang BÞ B¹ch Kim",
            "Xin h·y bá vµo trang bÞ vµo \nKh«ng bá nguyªn liÖu vµo \nNguyªn LiÖu: \n+9 lo¹i m¶nh thiªn th¹ch ,mçi lo¹i 250 m¶nh\n+10 Hoµng Kim Ngäc Bµi",
            "nangbachkim8",
            "no",
            1
        )
    end

    if int == 9 then
        GiveItemUI(
            "N©ng CÊp Trang BÞ B¹ch Kim",
            "Xin h·y bá vµo trang bÞ vµo\n Chi PhÝ: 150 xu + 20 KNB + 200 M¶nh TT Mçi Lo¹i",
            "nangbachkim9",
            "no",
            1
        )
    end

    if int == 10 then
        GiveItemUI(
            "N©ng CÊp Trang BÞ B¹ch Kim",
            "Xin h·y bá vµo trang bÞ vµo\n Chi PhÝ: 200 xu + 20 KNB + 200 M¶nh TT Mçi Lo¹i",
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    --end
    --Msg2Player("oo"..checkkhoa.."ooo")
    if knb < 20 or xu < 200 then
        Say("Kh«ng §ñ 20 KNB HoÆc 200 Xu")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if
        ttcap1 < 200 or ttcap2 < 200 or ttcap3 < 200 or ttcap4 < 200 or ttcap5 < 200 or ttcap6 < 200 or ttcap7 < 200 or
            ttcap8 < 200 or
            ttcap9 < 200
     then
        Say("Kh«ng §ñ Nguyªn LiÖu ")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Lªn B¹ch Kim CÊp <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +9 ")
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    --end
    --Msg2Player("oo"..checkkhoa.."ooo")
    if knb < 15 or xu < 150 then
        Say("Kh«ng §ñ 15 KNB HoÆc 150 Xu")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
        return 0
    end
    if
        ttcap1 < 200 or ttcap2 < 200 or ttcap3 < 200 or ttcap4 < 200 or ttcap5 < 200 or ttcap6 < 200 or ttcap7 < 200 or
            ttcap8 < 200 or
            ttcap9 < 200
     then
        Say("Kh«ng §ñ Nguyªn LiÖu ")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Lªn B¹ch Kim CÊp <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +8 ")
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    --end
    --Msg2Player("oo"..checkkhoa.."ooo")

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
        return 0
    end
    if
        ttcap1 < 250 or ttcap2 < 250 or ttcap3 < 250 or ttcap4 < 250 or ttcap5 < 250 or ttcap6 < 250 or ttcap7 < 250 or
            ttcap8 < 250 or
            ttcap9 < 250 or
            hoangkimngocbai < 10
     then
        Say("Kh«ng §ñ Nguyªn LiÖu ")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Lªn B¹ch Kim CÊp <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +7 ")
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    --end
    --Msg2Player("oo"..checkkhoa.."ooo")

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
        return 0
    end
    if
        ttcap1 < 250 or ttcap2 < 250 or ttcap3 < 250 or ttcap4 < 250 or ttcap5 < 250 or ttcap6 < 250 or ttcap7 < 250 or
            ttcap8 < 250 or
            ttcap9 < 250 or
            hoangkimngocbai < 1
     then
        Say("Hµnh trang kh«ng ®ñ 250 M¶nh Thiªn Th¹ch mçi lo¹i hoÆc 1 Hoµng Kim Ngäc Bµi ®Ó n©ng cÊp.")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Lªn B¹ch Kim CÊp <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +6 ")
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
        Say("VËt PhÈm Khãa Kh«ng ThÓ N©ng CÊp")
        return 0
    end
    if xu < 50 or knb < 2 then
        Say("Kh«ng §ñ 50xu hoÆc 2knb")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Lªn B¹ch Kim CÊp <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +5 ")
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
        Say("Hµnh trang kh«ng ®ñ nguyªn liÖu hoÆc xu ®Ó n©ng cÊp.")
        return 0
    end
    if nQuality ~= 1 and nQuality ~= 4 then
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
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
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Lªn B¹ch Kim CÊp <color=yellow>" .. nItemLeveltc .. ""
            )
        else
            Say("Trang BÞ Hoµng Kim Kh«ng Ph¶i +5 ")
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
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
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
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if (nQuality == 1 and nGoldEquipIdx <= 140) then --or (nQuality==1 and nGoldEquipIdx==540)
        UpgradePlatinaFromGoldItem(GetGiveItemUnit(1))
        Msg2SubWorld(
            "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                GetName() ..
                    "<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ " ..
                        szItemName .. " <color=red>Lªn B¹ch Kim"
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
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
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
        Say("VËt PhÈm Nµy Kh«ng ThÓ N©ng CÊp")
        return 0
    end

    if nQuality == 4 then
        local nItemLevel = GetPlatinaLevel(GetGiveItemUnit(1))
        if nItemLevel < 6 then
            nItemLevelok = nItemLevel + 1
            UpgradePlatinaItem(GetGiveItemUnit(1))
            Msg2SubWorld(
                "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                    GetName() ..
                        "<color=yellow> N©ng CÊp Thµnh C«ng <color=green>Trang BÞ " ..
                            szItemName .. " <color=red>Lªn B¹ch Kim CÊp <color=yellow> " .. nItemLevelok .. ""
            )
        else
            Say("VËt PhÈm §· +6 vµ kh«ng ThÓ N©ng CÊp")
            return
        end
    end
end
function MenuDoiNgoaiHinhGiap_d()
    GiveItemUI("Thay ®æi ngo¹i h×nh trang bÞ", "Xin h·y bá vµo trang b? cÇn thay ®æi ngo¹i h×nh", "luachondo", "no", 1)
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
            "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                GetName() .. "<color=yellow> N©ng CÊp Thµnh C«ng <color=red>Ngo¹i Trang §Ñp Trai"
        )
    else
        Say("Kh«ng §ñ 200 Xu")
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
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbSay = {
        "ThiÕu L©m QuyÒn/#hkmptld2()",
        "ThiÕu L©m Bæng/#hkmptlb()",
        "ThiÕu L©m §ao/#hkmptlq()",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay), tbSay)
end

function hkmptld2()
    local tbSay1 = {
        "Méng Long ChÝnh Hång T¨ng M·o/#addhkmp(1,239)",
        "Méng Long Kim Ti ChÝnh Hång Cµ Sa/#addhkmp(2,240)",
        "Méng Long HuyÒn Ti Ph¸t ®¸i/#addhkmp(3,241)",
        "Méng Long PhËt Ph¸p HuyÒn Béi/#addhkmp(4,242)",
        "Méng Long §¹t Ma T¨ng hµi/#addhkmp(5,243)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkmptlb()
    local tbSay1 = {
        "Phôc Ma Tö Kim C«n/#addhkmp(6,244)",
        "Phôc Ma HuyÒn Hoµng Cµ Sa/#addhkmp(7,245)",
        "Phôc Ma ¤ Kim NhuyÔn §iÒu/#addhkmp(8,246)",
        "Phôc Ma PhËt T©m NhuyÔn KhÊu/#addhkmp(9,247)",
        "Phôc Ma Phæ §é T¨ng hµi/#addhkmp(10,248)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end
function hkmptlq()
    local tbSay1 = {
        "Tø Kh«ng Gi¸ng Ma Giíi ®ao/#addhkmp(11,249)",
        "Tø Kh«ng Tö Kim Cµ Sa/#addhkmp(12,250)",
        "Tø Kh«ng Hé ph¸p Yªu ®¸i/#addhkmp(13,251)",
        "Tø Kh«ng NhuyÔn B× Hé UyÓn/#addhkmp(14,252)",
        "Tø Kh«ng Giíi LuËt Ph¸p giíi/#addhkmp(15,253)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

----------------------------------------------------------thien vuong ----------------------------------------------
function hkmptv1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Thiªn V­¬ng Chïy", hkviptvt1},
        {"Thiªn V­¬ng Th­¬ng", hkviptvc1},
        {"Thiªn V­¬ng §ao", hkviptvd1},
        {"Tho¸t"}
    }
    CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
    return 1
end

function hkviptvt1()
    local tbSay1 = {
        "H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy/#addhkmp(16,254)",
        "H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p/#addhkmp(17,255)",
        "H¸m Thiªn Uy Vò Thóc yªu ®¸i/#addhkmp(18,256)",
        "H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn/#addhkmp(19,257)",
        "H¸m Thiªn Thõa Long ChiÕn Ngoa/#addhkmp(20,258)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkviptvc1()
    local tbSay1 = {
        "KÕ NghiÖp B«n L«i Toµn Long th­¬ng/#addhkmp(21,259)",
        "KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i/#addhkmp(22,260)",
        "KÕ NghiÖp B¹ch Hæ V« Song khÊu/#addhkmp(23,261)",
        "KÕ NghiÖp HáaV©n Kú L©n Thñ /#addhkmp(24,262)",
        "KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa/#addhkmp(25,263)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkviptvd1()
    local tbSay1 = {
        "Ngù Long L­îng Ng©n B¶o ®ao/#addhkmp(26,264)",
        "Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p/#addhkmp(27,265)",
        "Ngù Long Thiªn M«n Thóc Yªu hoµn/#addhkmp(28,266)",
        "Ngù Long TÊn Phong Hé yÓn/#addhkmp(29,267)",
        "Ngù Long TuyÖt MÖnh ChØ hoµn/#addhkmp(30,268)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

---------------------------------------------nga my---------------------------------------

function hkmpnm1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Nga My KiÕm", hkvipnmc1},
        {"Nga My Ch­ëng", hkvipnmk1},
        {"Nga My Buff", hkvipnmbuff1},
        {"Tho¸t"}
    }
    CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
    return 1
end

function hkvipnmc1()
    local tbSay1 = {
        "V« Gian û Thiªn KiÕm/#addhkmp(31,269)",
        "V« Gian Thanh Phong Truy Y/#addhkmp(32,270)",
        "V« Gian PhÊt V©n Ti ®¸i/#addhkmp(33,271)",
        "V« Gian CÇm VËn Hé UyÓn/#addhkmp(34,272)",
        "V« Gian B¹ch Ngäc Bµn ChØ /#addhkmp(35,273)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvipnmk1()
    local tbSay1 = {
        "V« Ma Ma Ni qu¸n/#addhkmp(36,274)",
        "V« Ma Tö Kh©m Cµ Sa/#addhkmp(37,275)",
        "V« Ma B¨ng Tinh ChØ Hoµn/#addhkmp(38,276)",
        "V« Ma TÈy T­îng Ngäc KhÊu /#addhkmp(39,277)",
        "V« Ma Hång Truy NhuyÔn Th¸p hµi/#addhkmp(40,278)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvipnmbuff1()
    local tbSay1 = {
        "V« TrÇn Ngäc N÷ Tè T©m qu¸n/#addhkmp(41,279)",
        "V« TrÇn Thanh T©m H­íng ThiÖn Ch©u/#addhkmp(42,280)",
        "V« TrÇn Tõ Bi Ngäc Ban ChØ /#addhkmp(43,281)",
        "V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi/#addhkmp(44,282)",
        "V« TrÇn PhËt Quang ChØ Hoµn/#addhkmp(45,283)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end
--------------------------------------------------thuy yen------------------------------------
function hkmpty1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Thóy Yªn §ao", hkviptyd1},
        {"Thóy Yªn Ch­ëng", hkviptyc1},
        {"Tho¸t"}
    }
    CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
    return 1
end

function hkviptyd1()
    local tbSay1 = {
        "Tª Hoµng Phông Nghi ®ao/#addhkmp(46,284)",
        "Tª Hoµng TuÖ T©m Khinh Sa Y/#addhkmp(47,285)",
        "Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i/#addhkmp(48,286)",
        "Tª Hoµng B¨ng Tung CÈm uyÓn/#addhkmp(49,287)",
        "Tª Hoµng Thóy Ngäc ChØ Hoµn/#addhkmp(50,288)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkviptyc1()
    local tbSay1 = {
        "BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao/#addhkmp(51,289)",
        "BÝch H¶i Hoµn Ch©u Vò Liªn/#addhkmp(52,290)",
        "BÝch H¶i Hång Linh Kim Ti ®¸i/#addhkmp(53,291)",
        "BÝch H¶i Hång L¨ng Ba/#addhkmp(54,292)",
        "BÝch H¶i Khiªn TÕ ChØ hoµn/#addhkmp(55,293)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

-----------------------------------------------------------ngu doc --------------
function hkmpnd1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Ngò §éc Ch­ëng", hkvipndc1},
        {"Ngò §éc §ao", hkvipndd1},
        {"Ngò §éc Bïa", hkvipndb1},
        {"Tho¸t"}
    }
    CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
    return 1
end

function hkvipndc1()
    local tbSay1 = {
        "U Lung Kim Xµ Ph¸t ®¸i/#addhkmp(56,294)",
        "U Lung XÝch YÕt MËt trang/#addhkmp(57,295)",
        "U Lung Thanh Ng« TriÒn yªu/#addhkmp(58,296)",
        "U Lung Ng©n ThÒm Hé UyÓn/#addhkmp(59,297)",
        "U Lung MÆc Thï NhuyÔn Lý /#addhkmp(60,298)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvipndd1()
    local tbSay1 = {
        "Minh ¶o Tµ S¸t §éc NhËn/#addhkmp(61,299)",
        "Minh ¶o U §éc ¸m Y/#addhkmp(62,300)",
        "Minh ¶o §éc YÕt ChØ Hoµn/#addhkmp(63,301)",
        "Minh ¶o Hñ Cèt Hé uyÓn/#addhkmp(64,302)",
        "Minh ¶o Song Hoµn Xµ Hµi/#addhkmp(65,303)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvipndb1()
    local tbSay1 = {
        "Chó Ph­îc Ph¸ gi¸p ®Çu hoµn/#addhkmp(66,304)",
        "Chó Ph­îc DiÖt L«i C¶nh Phï /#addhkmp(67,305)",
        "Chó Ph­îc U ¶o ChØ Hoµn/#addhkmp(68,306)",
        "Chó Ph­îc Xuyªn T©m §éc UyÓn/#addhkmp(69,307)",
        "Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa/#addhkmp(70,308)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end
function hkmpdm1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"§­êng M«n Phi Tiªu", hkvipbv1},
        {"§­êng M«n Ná", hkvippt1},
        {"§­êng M«n B¨ng Hµn", hkvippd1},
        {"§­êng M«n BÉy", hkvipbay1},
        {"Tho¸t"}
    }
    CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
    return 1
end

function hkvipbv1()
    local tbSay1 = {
        "B¨ng Hµn §¬n ChØ Phi §ao/#addhkmp(71,309)",
        "B¨ng Hµn HuyÒn Y Thóc Gi¸p/#addhkmp(72,310)",
        "B¨ng Hµn T©m TiÔn Yªu KhÊu/#addhkmp(73,311)",
        "B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi/#addhkmp(74,312)",
        "B¨ng Hµn NguyÖt ¶nh Ngoa/#addhkmp(75,313)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvippt1()
    local tbSay1 = {
        "Thiªn Quang Hoa Vò M¹n Thiªn/#addhkmp(76,314)",
        "Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï /#addhkmp(77,315)",
        "Thiªn Quang S©m La Thóc §¸i/#addhkmp(78,316)",
        "Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c/#addhkmp(79,317)",
        "Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn/#addhkmp(80,318)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvippd1()
    local tbSay1 = {
        "S©m Hoang Phi Tinh §o¹t Hån/#addhkmp(81,319)",
        "S©m Hoang KimTiÒn Liªn Hoµn Gi¸p/#addhkmp(82,320)",
        "S©m Hoang Hån Gi¶o Yªu Thóc/#addhkmp(83,321)",
        "S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi/#addhkmp(84,322)",
        "S©m Hoang Tinh VÉn Phi Lý /#addhkmp(85,323)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvipbay1()
    local tbSay1 = {
        "§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n/#addhkmp(86,324)",
        "§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn/#addhkmp(87,325)",
        "§Þa Ph¸ch TÝch LÞch L«i Háa Giíi/#addhkmp(88,326)",
        "§Þa Ph¸ch KhÊu T©m tr¹c/#addhkmp(89,327)",
        "§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa/#addhkmp(90,328)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

----------------------------cai bang----------------------------
function hkmpcb1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"C¸i Bang Ch­ëng", hkvipcbc1},
        {"C¸i Bang Bæng", hkvipcbb1},
        {"Tho¸t"}
    }
    CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
    return 1
end

function hkvipcbc1()
    local tbSay1 = {
        "§ång Cõu Phi Long §Çu hoµn/#addhkmp(91,329)",
        "§ång Cõu Gi¸ng Long C¸i Y/#addhkmp(92,330)",
        "§ång Cõu TiÒm Long Yªu §¸i/#addhkmp(93,331)",
        "§ång Cõu Kh¸ng Long Hé UyÓn/#addhkmp(94,332)",
        "§ång Cõu KiÕn Long Ban ChØ /#addhkmp(95,333)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvipcbb1()
    local tbSay1 = {
        "§Þch Kh¸i Lôc Ngäc Tr­îng/#addhkmp(96,334)",
        "§Þch Kh¸i Cöu §¹i C¸i Y/#addhkmp(97,335)",
        "§Þch Kh¸i TriÒn M·ng yªu ®¸i/#addhkmp(98,336)",
        "§Þch Kh¸i CÈu TÝch B× Hé uyÓn/#addhkmp(99,337)",
        "§Þch Kh¸i Th¶o Gian Th¹ch giíi/#addhkmp(100,338)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

--------------------------thien nhan------------------------------------------
function hkmptn1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Thiªn NhÉn Th­¬ng", hkviptnt1},
        {"Thiªn NhÉn Ch­ëng", hkviptnd1},
        {"Thiªn NhÉn Bïa", hkviptnb1},
        {"Tho¸t"}
    }
    CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
    return 1
end

function hkviptnt1()
    local tbSay1 = {
        "Ma S¸t Quû Cèc U Minh Th­¬ng/#addhkmp(101,339)",
        "Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p/#addhkmp(102,340)",
        "Ma S¸t XÝch Ký Táa Yªu KhÊu/#addhkmp(103,341)",
        "Ma S¸t Cö Háa Liªu Thiªn uyÓn/#addhkmp(104,342)",
        "Ma S¸t V©n Long Thæ Ch©u giíi/#addhkmp(105,343)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkviptnd1()
    local tbSay1 = {
        "Ma Hoµng Kim Gi¸p Kh«i/#addhkmp(106,344)",
        "Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn/#addhkmp(107,345)",
        "Ma Hoµng Khª Cèc Thóc yªu ®¸i/#addhkmp(108,346)",
        "Ma Hoµng HuyÕt Y Thó Tr¹c/#addhkmp(109,347)",
        "Ma Hoµng §¨ng §¹p Ngoa/#addhkmp(110,348)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkviptnb1()
    local tbSay1 = {
        "Ma ThÞ LiÖt DiÖm Qu¸n MiÖn/#addhkmp(111,349)",
        "Ma ThÞ LÖ Ma PhÖ T©m Liªn/#addhkmp(112,350)",
        "Ma ThÞ NghiÖp Háa U Minh Giíi/#addhkmp(113,351)",
        "Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi/#addhkmp(114,352)",
        "Ma ThÞ s¬n  H¶i Phi Hång Lý /#addhkmp(115,353)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkmpvd1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Vâ §ang Ch­ëng", hkvipvdc1},
        {"Vâ §ang KiÕm", hkvipvdk1},
        {"Tho¸t"}
    }
    CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
    return 1
end

function hkvipvdc1()
    local tbSay1 = {
        "L¨ng Nh¹c Th¸i Cùc KiÕm/#addhkmp(116,354)",
        "L¨ng Nh¹c V« Ng· ®¹o bµo/#addhkmp(117,355)",
        "L¨ng Nh¹c Né L«i Giíi/#addhkmp(118,356)",
        "L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi/#addhkmp(119,357)",
        "L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi/#addhkmp(120,358)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvipvdk1()
    local tbSay1 = {
        "CËp Phong Ch©n Vò KiÕm/#addhkmp(121,359)",
        "CËp Phong Tam Thanh Phï /#addhkmp(122,360)",
        "CËp Phong HuyÒn Ti Tam §o¹n cÈm/#addhkmp(123,361)",
        "CËp Phong Thóy Ngäc HuyÒn Hoµng Béi/#addhkmp(124,362)",
        "CËp Phong Thanh Tïng Ph¸p giíi/#addhkmp(125,363)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkmpcl1()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"C«n L«n §ao", hkvipcld1},
        {"C«n L«n Ch­ëng", hkvipclc1},
        {"C«n L«n Bïa", hkvipclb1},
        {"Tho¸t"}
    }
    CreateNewSayEx("<npc>B¹n §i §­êng Nµo ?", tbOpt)
    return 1
end

function hkvipcld1()
    local tbSay1 = {
        "S­¬ng Tinh Thiªn Niªn Hµn ThiÕt/#addhkmp(126,364)",
        "S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo/#addhkmp(127,365)",
        "S­¬ng Tinh Thanh Phong Lò ®¸i/#addhkmp(128,366)",
        "S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ /#addhkmp(129,367)",
        "S­¬ng Tinh Phong B¹o chØ hoµn/#addhkmp(130,368)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvipclc1()
    local tbSay1 = {
        "L«i Khung Hµn Tung B¨ng B¹ch quan/#addhkmp(131,369)",
        "L«i Khung Thiªn §Þa Hé phï /#addhkmp(132,370)",
        "L«i Khung Phong L«i Thanh CÈm ®¸i/#addhkmp(133,371)",
        "L«i Khung Linh Ngäc UÈn L«i/#addhkmp(134,372)",
        "L«i Khung Cöu Thiªn DÉn L«i giíi/#addhkmp(135,373)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function hkvipclb1()
    local tbSay1 = {
        "Vô ¶o B¾c Minh §¹o qu¸n/#addhkmp(136,374)",
        "Vô ¶o Ki B¸n phï chó/#addhkmp(137,375)",
        "Vô ¶o Thóc T©m chØ hoµn/#addhkmp(138,376)",
        "Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi/#addhkmp(139,377)",
        "Vô ¶o Tung Phong TuyÕt ¶nh ngoa/#addhkmp(140,378)",
        "Th«i ta kh«ng muèn n÷a/no"
    }
    Say("B¹n §i §­êng Nµo ?", getn(tbSay1), tbSay1)
end

function LocHKMPNo1()
    tbOpt = {
        "<dec><npc>Läc trang bÞ tøc lµ läc l¹i thuéc tÝnh trang bÞ ng­¬i muèn ta läc cho kh«ng..",
        "Läc Vò KhÝ Trang BÞ HKMP/lochkmpmain",
        "KÕt thóc ®èi tho¹i./no"
    }
    CreateTaskSay(tbOpt)
end

function no()
end

function Make_Weapons()
    szDescription =
        format("+ 1 Tö Thñy Tinh\n+ 1 Lôc Thñy Tinh\n+ 1 Lam Thñy Tinh\n+ 100 TiÒn §ång\n=> §Ñp V·i C¸i Lån!!.")
    GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_MakeWeapons", "no", 1)
    --GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
end

function Run_MakeWeapons(nCount)
    if nCount == 0 then
        Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
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
                    Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
                    return
                end
            elseif nD == 1 then
                if nP ~= 0 and nP ~= 1 and nP ~= 2 then
                    Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
                    return
                end
            else
                Talk(
                    1,
                    "no",
                    "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc."
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
        Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
        return
    end
    local nCountWeapon = getn(tbDatabase.tbWeapons)
    if nCountWeapon ~= 1 then
        Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
        return
    end

    local nCountStone1 = getn(tbDatabase.tbStone1)
    if nCountStone1 ~= 1 then
        Talk(1, "no", "CÇn cã 1 viªn <color=red>Lam Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
        return
    end

    local nCountStone2 = getn(tbDatabase.tbStone2)
    if nCountStone2 ~= 1 then
        Talk(1, "no", "CÇn cã 1 viªn <color=red>Tö Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
        return
    end

    local nCountStone3 = getn(tbDatabase.tbStone3)
    if nCountStone3 ~= 1 then
        Talk(1, "no", "CÇn cã 1 viªn <color=red>Lôc Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
        return
    end

    local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1)
    if (nSilverCount < 100) then
        Talk(1, "no", "CÇn cã 100 <color=red>TiÒn §ång<color> míi cã thÓ n©ng cÊp tØ lÖ n¹p thÎ 100k ®­îc 100xu.")
        return
    end
    --local nIDX = GetGiveItemUnit(n)
    --local nQuality = GetItemQuality(nIDX)
    --if nQuality ~= 1 then
    --Talk(1, "", "Trang bÞ ng­¬i ®Æt vµo kh«ng ph¶i lµ trang bÞ hoµng kim")
    --return
    --end

    RemoveItemByIndex(tbDatabase.tbStone1[1])
    RemoveItemByIndex(tbDatabase.tbStone2[1])
    RemoveItemByIndex(tbDatabase.tbStone3[1])
    RemoveItemByIndex(tbDatabase.tbItem[1])
    ConsumeEquiproomItem(100, 4, 417, 1, 1)

    if nSucces == 0 then
        Msg2Player(
            "RÊt tiÕc! ThÊt b¹i lµ chuyÖn b×nh th­êng cña binh gia,huynh ®µi ®õng n¶n chÝ h·y cè g¾ng lÇn n÷a sÏ ®­îc nh­ ý."
        )
    elseif nSucces == 1 then
        --write(moepphatsang,format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
        -- write(moepphatsang, format("%d:%d\tAccount: %s\t Name: %s\t Level: %s\t IP Address: %s  N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(), GetIP()))
        --closefile(moepphatsang)
        _Weapons(tbDatabase.tbWeapons[1], nIndexRes)
        Msg2Player("<color=yellow>Chóc mõng b¹n ®· n©ng cÊp thµnh c«ng vò khÝ ph¸t quang.")
        Msg2SubWorld(
            "<color=cyan>Chóc mõng ®¹i hiÖp <color=green>" ..
                GetName() .. "<color=yellow> §· n©ng cÊp thµnh c«ng vò khÝ<color=green> Ph¸t S¸ng!"
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
        {{szName = "L¨ng Nh¹c Th¸i Cùc KiÕm", tbProp = {4, 417, 1, 0, 0, 0}, nCount = 50}},
        "test",
        1
    )
end

function nhanvukhi()
    --tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c Th¸i Cùc KiÕm",tbProp={0,11},nCount=1,nQuality = 1,nExpiredTime=1440},}, "test", 1);
    tbAwardTemplet:GiveAwardByList(
        {{szName = "L¨ng Nh¹c Th¸i Cùc KiÕm", tbProp = {0, 16}, nCount = 1, nQuality = 1}},
        "test",
        1
    )
end

--------------------------------------------------------------------------------

--------------------------------------------------TRANGKHAC---------------------------------

function lochkmpmain()
    Say(
        "Xin mêi chän trang bÞ",
        7,
        "Nga Mi/locoknm",
        "Thóy Yªn/locokty",
        "§­êng M«n/locokdm",
        "Ngò §éc/locoknd",
        "Thiªn V­¬ng/locoktv",
        "Trang Sau/lochkmpmain1",
        "KÕt thóc ®èi tho¹i/no"
    )
end

function lochkmpmain1()
    Say(
        "Xin mêi chän trang bÞ",
        7,
        "ThiÕu L©m/locoktl",
        "Vâ §ang/locokvd",
        "C«n L«n/locokcl",
        "Thiªn NhÉn/locoktn",
        "C¸i Bang/locokcb",
        "Trang Tr­íc/lochkmpmain",
        "KÕt thóc ®èi tho¹i/no"
    )
end

function locoknm()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"V« Ma TÈy N­gäc KhÊu", hknmc},
        {"V« Giang û Thiªn KiÕm", hknmk},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function hknmc()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 39}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 39}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 31}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 31}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Tª Hoµng Phông Nghi §ao", tehoangdao},
        {"BÝch H¶i Uyªn ¦¬ng Hoµng §ao", yenuongdao},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function tehoangdao()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 46}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 46}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 51}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 51}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locokdm()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Thiªn Quang M¹n Vò M·n Thiªn", thienquangmanthien},
        {"S©m Hoµng Phi Tinh §o¹t Hån", samhoangdao},
        {"B¨ng Hµn §¬n ChØ Phi §ao", banghandao},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function thienquangmanthien()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 76}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 76}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 81}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 81}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 71}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 71}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locoknd()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"U Lung Kim Xµ Ph¸t ®¸i", unlungkimxa},
        {"Minh ¶o Tµ S¸t §éc NhËn", minhaodoc},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function unlungkimxa()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 56}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 56}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 61}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 61}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locoktv()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"KÕ NghiÖp B«n L«i Toµn Long th­¬ng", kenghiepthuong},
        {"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy", hamthienchuy},
        {"Ngù Long L­îng Ng©n B¶o ®ao", ngulongdao},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function kenghiepthuong()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 21}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 21}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 16}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 16}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 26}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 26}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locoktl()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Tø Kh«ng Gi¸ng Ma Giíi ®ao", tukhonggiangdao},
        {"Phôc Ma Tö Kim C«n", phucmakimcon},
        {"Méng Long Kim Ti ChÝnh Hång Cµ Sa", monglongcasa},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function tukhonggiangdao()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 11}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 11}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 6}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 6}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 2}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 2}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locokvd()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"L¨ng Nh¹c Th¸i Cùc KiÕm", langnhackiem},
        {"CËp Phong Ch©n Vò KiÕm", capphongkiem},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function langnhackiem()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 116}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 116}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 121}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 121}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locokcl()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt", suongtinhhanthiet},
        {"L«i Khung Hµn Tung B¨ng B¹ch quan", loikhungbachquan},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function suongtinhhanthiet()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 126}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 126}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 131}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 131}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locoktn()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"Ma S¸t Quû Cèc U Minh Th­¬ng", masatuminh},
        {"Ma ThÞ To¹i Tinh §ao", mathidao},
        {"Ma ThÞ s¬n H¶i Phi Hång Lý", mathihongly},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function masatuminh()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 101}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 101}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 540}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 540}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 115}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 115}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

function locokcb()
    if CalcFreeItemCellCount() < 6 then
        Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
        return
    end
    local tbOpt = {
        {"§ång Cõu Kh¸ng Long Hé UyÓn", dongcuuhouyen},
        {"§Þch Kh¸i Lôc Ngäc Tr­îng", dinhkhaitruong},
        {"Tho¸t"}
    }
    CreateNewSayEx(
        "<npc>Ngò hµnh kú th¹ch lÊy ë sßng bµi - Tèng kim tÝch lòy bao trong shop tèng kim ®em ®ñ 2 mãn cho ta ta sÏ gióp ng­êi läc option ?",
        tbOpt
    )
    return 1
end

function dongcuuhouyen()
    local _Message = function(nItemIndex)
        local handle = OB_Create()
        local msg =
            format(
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 94}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 94}, nQuality = 1, nCount = 1, CallBack = _Message},
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
            "<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> ®· läc l¹i thuéc tÝnh thµnh c«ng trang bÞ <color=gold><%s><color=green><enter><color=yellow>< T¹i Thî §óc Trang BÞ ><color>",
            GetName(),
            GetItemName(nItemIndex)
        )
        ObjBuffer:PushObject(handle, msg)
        RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
        OB_Release(handle)
    end
    local tbFormula = {
        tbMaterial = {
            {szName = "HK CÇn Läc", tbProp = {0, 96}, nQuality = 1, nCount = 1},
            {szName = "TK TÝch Lòy Bao", tbProp = {6, 1, 4415, 1}, nCount = 1},
            {szName = "Ngò Hµnh Kú Th¹ch", tbProp = {6, 1, 2125, 1}, nCount = 1}
        },
        tbProduct = {szName = "Thµnh PhÈm", tbProp = {0, 96}, nQuality = 1, nCount = 1, CallBack = _Message},
        nWidth = 1,
        nHeight = 3,
        nFreeItemCellLimit = 1
    }
    local p = tbActivityCompose:new(tbFormula, "xingxialin1huitian", INVENTORY_ROOM.room_giveitem)
    p:ComposeDailog()
end

-----------------------------------------------------

function LocOptionHKOK()
    local title = "Läc Trang bÞ HKMP"
    g_GiveItemUI(title, "     CÇn 100 tiÒn ®ång \n\nCHó ý :\n\n 100 tiÒn ®ång ph¶i ®Ó ngoµi    hµnh trang  ", {GiveUIOK4}, nil, nil) --- 100 tiÒn ®ång l­u ý 100 tiÒn ®ång ph¶i ®Ó ngoµi hµnh trang
end

--------------®Þnh nghÜa b¶ng trang bÞ HKMP tbHKMP : thªm vµo nhiÒu dßng tõ id thÊp tíi cao

tbHKMP = {
    [1] = {
        {"Méng Long ChÝnh Hång T¨ng M·o", 1},
        {"Méng Long Kim Ti ChÝnh Hång Cµ Sa", 2},
        {"Méng Long HuyÒn Ti Ph¸t ®¸i", 3},
        {"Méng Long PhËt Ph¸p HuyÒn Béi", 4},
        {"Méng Long §¹t Ma T¨ng hµi", 5},
        {"Phôc Ma Tö Kim C«n", 6},
        {"Phôc Ma HuyÒn Hoµng Cµ Sa", 7},
        {"Phôc Ma ¤ Kim NhuyÔn §iÒu", 8},
        {"Phôc Ma PhËt T©m NhuyÔn KhÊu", 9},
        {"Phôc Ma Phæ §é T¨ng hµi", 10},
        {"Tø Kh«ng Gi¸ng Ma Giíi ®ao", 11},
        {"Tø Kh«ng Tö Kim Cµ Sa", 12},
        {"Tø Kh«ng Hé ph¸p Yªu ®¸i", 13},
        {"Tø Kh«ng NhuyÔn B× Hé UyÓn", 14},
        {"Tø Kh«ng Giíi LuËt Ph¸p giíi", 15},
        {"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy", 16},
        {"H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p", 17},
        {"H¸m Thiªn Uy Vò Thóc yªu ®¸i", 18},
        {"H¸m Thiªn Hæ ®Çu KhÈn Thóc UyÓn", 19},
        {"H¸m Thiªn Thõa Long ChiÕn Ngoa", 20},
        {"KÕ NghiÖp B«n L«i Toµn Long th­¬ng", 21},
        {"KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i", 22},
        {"KÕ NghiÖp B¹ch Hæ V« Song khÊu", 23},
        {"KÕ NghiÖp HáaV©n Kú L©n Thñ ", 24},
        {"KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa", 25},
        {"Ngù Long L­îng Ng©n B¶o ®ao", 26},
        {"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p", 27},
        {"Ngù Long Thiªn M«n Thóc Yªu hoµn", 28},
        {"Ngù Long TÊn Phong Hé yÓn", 29},
        {"Ngù Long TuyÖt MÖnh ChØ hoµn", 30},
        {"V« Gian û Thiªn KiÕm", 31},
        {"V« Gian Thanh Phong Truy Y", 32},
        {"V« Gian PhÊt V©n Ti ®¸i", 33},
        {"V« Gian CÇm VËn Hé UyÓn", 34},
        {"V« Gian B¹ch Ngäc Bµn ChØ ", 35},
        {"V« Ma Ma Ni qu¸n", 36},
        {"V« Ma Tö Kh©m Cµ Sa", 37},
        {"V« Ma B¨ng Tinh ChØ Hoµn", 38},
        {"V« Ma TÈy T­îng Ngäc KhÊu ", 39},
        {"V« Ma Hång Truy NhuyÔn Th¸p hµi", 40},
        {"V« TrÇn Ngäc N÷ Tè T©m qu¸n", 41},
        {"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u", 42},
        {"V« TrÇn Tõ Bi Ngäc Ban ChØ ", 43},
        {"V« TrÇn PhËt T©m Tõ H÷u Yªu Phèi", 44},
        {"V« TrÇn PhËt Quang ChØ Hoµn", 45},
        {"Tª Hoµng Phông Nghi ®ao", 46},
        {"Tª Hoµng TuÖ T©m Khinh Sa Y", 47},
        {"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i", 48},
        {"Tª Hoµng B¨ng Tung CÈm uyÓn", 49},
        {"Tª Hoµng Thóy Ngäc ChØ Hoµn", 50},
        {"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao", 51},
        {"BÝch H¶i Hoµn Ch©u Vò Liªn", 52},
        {"BÝch H¶i Hång Linh Kim Ti ®¸i", 53},
        {"BÝch H¶i Hång L¨ng Ba", 54},
        {"BÝch H¶i Khiªn TÕ ChØ hoµn", 55},
        {"U Lung Kim Xµ Ph¸t ®¸i", 56},
        {"U Lung XÝch YÕt MËt trang", 57},
        {"U Lung Thanh Ng« TriÒn yªu", 58},
        {"U Lung Ng©n ThÒm Hé UyÓn", 59},
        {"U Lung MÆc Thï NhuyÔn Lý ", 60},
        {"Minh ¶o Tµ S¸t §éc NhËn", 61},
        {"Minh ¶o U §éc ¸m Y", 62},
        {"Minh ¶o §éc YÕt ChØ Hoµn", 63},
        {"Minh ¶o Hñ Cèt Hé uyÓn", 64},
        {"Minh ¶o Song Hoµn Xµ Hµi", 65},
        {"Chó Ph­îc Ph¸ gi¸p ®Çu hoµn", 66},
        {"Chó Ph­îc DiÖt L«i C¶nh Phï ", 67},
        {"Chó Ph­îc U ¶o ChØ Hoµn", 68},
        {"Chó Ph­îc Xuyªn T©m §éc UyÓn", 69},
        {"Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa", 70},
        {"B¨ng Hµn §¬n ChØ Phi §ao", 71},
        {"B¨ng Hµn HuyÒn Y Thóc Gi¸p", 72},
        {"B¨ng Hµn T©m TiÔn Yªu KhÊu", 73},
        {"B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi", 74},
        {"B¨ng Hµn NguyÖt ¶nh Ngoa", 75},
        {"Thiªn Quang Hoa Vò M¹n Thiªn", 76},
        {"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï ", 77},
        {"Thiªn Quang S©m La Thóc §¸i", 78},
        {"Thiªn Quang Song B¹o Hµn ThiÕt Tr¹c", 79},
        {"Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn", 80},
        {"S©m Hoang Phi Tinh §o¹t Hån", 81},
        {"S©m Hoang KimTiÒn Liªn Hoµn Gi¸p", 82},
        {"S©m Hoang Hån Gi¶o Yªu Thóc", 83},
        {"S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi", 84},
        {"S©m Hoang Tinh VÉn Phi Lý ", 85},
        {"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n", 86},
        {"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn", 87},
        {"§Þa Ph¸ch TÝch LÞch L«i Háa Giíi", 88},
        {"§Þa Ph¸ch KhÊu T©m tr¹c", 89},
        {"§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa", 90},
        {"§ång Cõu Phi Long §Çu hoµn", 91},
        {"§ång Cõu Gi¸ng Long C¸i Y", 92},
        {"§ång Cõu TiÒm Long Yªu §¸i", 93},
        {"§ång Cõu Kh¸ng Long Hé UyÓn", 94},
        {"§ång Cõu KiÕn Long Ban ChØ ", 95},
        {"§Þch Kh¸i Lôc Ngäc Tr­îng", 96},
        {"§Þch Kh¸i Cöu §¹i C¸i Y", 97},
        {"§Þch Kh¸i TriÒn M·ng yªu ®¸i", 98},
        {"§Þch Kh¸i CÈu TÝch B× Hé uyÓn", 99},
        {"§Þch Kh¸i Th¶o Gian Th¹ch giíi", 100},
        {"Ma S¸t Quû Cèc U Minh Th­¬ng", 101},
        {"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p", 102},
        {"Ma S¸t XÝch Ký Táa Yªu KhÊu", 103},
        {"Ma S¸t Cö Háa Liªu Thiªn uyÓn", 104},
        {"Ma S¸t V©n Long Thæ Ch©u giíi", 105},
        {"Ma Hoµng Kim Gi¸p Kh«i", 106},
        {"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn", 107},
        {"Ma Hoµng Khª Cèc Thóc yªu ®¸i", 108},
        {"Ma Hoµng HuyÕt Y Thó Tr¹c", 109},
        {"Ma Hoµng §¨ng §¹p Ngoa", 110},
        {"Ma ThÞ LiÖt DiÖm Qu¸n MiÖn", 111},
        {"Ma ThÞ LÖ Ma PhÖ T©m Liªn", 112},
        {"Ma ThÞ NghiÖp Háa U Minh Giíi", 113},
        {"Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi", 114},
        {"Ma ThÞ s¬n  H¶i Phi Hång Lý ", 115},
        {"L¨ng Nh¹c Th¸i Cùc KiÕm", 116},
        {"L¨ng Nh¹c V« Ng· ®¹o bµo", 117},
        {"L¨ng Nh¹c Né L«i Giíi", 118},
        {"L¨ng Nh¹c V« Cùc HuyÒn Ngäc Béi", 119},
        {"L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi", 120},
        {"CËp Phong Ch©n Vò KiÕm", 121},
        {"CËp Phong Tam Thanh Phï ", 122},
        {"CËp Phong HuyÒn Ti Tam §o¹n cÈm", 123},
        {"CËp Phong Thóy Ngäc HuyÒn Hoµng Béi", 124},
        {"CËp Phong Thanh Tïng Ph¸p giíi", 125},
        {"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt", 126},
        {"S­¬ng Tinh Ng¹o S­¬ng ®¹o bµo", 127},
        {"S­¬ng Tinh Thanh Phong Lò ®¸i", 128},
        {"S­¬ng Tinh Thiªn Tinh B¨ng Tinh thñ ", 129},
        {"S­¬ng Tinh Phong B¹o chØ hoµn", 130},
        {"L«i Khung Hµn Tung B¨ng B¹ch quan", 131},
        {"L«i Khung Thiªn §Þa Hé phï ", 132},
        {"L«i Khung Phong L«i Thanh CÈm ®¸i", 133},
        {"L«i Khung Linh Ngäc UÈn L«i", 134},
        {"L«i Khung Cöu Thiªn DÉn L«i giíi", 135},
        {"Vô ¶o B¾c Minh §¹o qu¸n", 136},
        {"Vô ¶o Ki B¸n phï chó ", 137},
        {"Vô ¶o Thóc T©m chØ hoµn", 138},
        {"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi", 139},
        {"Vô ¶o Tung Phong TuyÕt ¶nh ngoa", 140},
        {"[H¹n chÕthêi gian] §ång Cõu Ngù Long Ngäc Béi", 141},
        {"[H¹n chÕthêi gian] §Þa Ph¸ch Phong Hµn Thóc Yªu", 142},
        {"[H¹n chÕthêi gian] BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n", 143},
        {"[H¹n chÕthêi gian] CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn", 144},
        {"[H¹n chÕthêi gian] Chó Phäc Trïng Cèt Ngäc Béi", 145},
        {"[H¹n chÕthêi gian] L¨ng Nh¹c V« Ng· Thóc §¸i", 146},
        {"[H¹n chÕthêi gian] L«i Khung Linh Ngäc Èn L«i UyÓn", 147},
        {"[H¹n chÕthêi gian] Ma Hoµng Dung Kim §o¹n NhËt Giíi", 148},
        {"[H¹n chÕthêi gian] Ma S¸t Cö Háa Liªu Thiªn Hoµn", 149},
        {"[H¹n chÕthêi gian] Ma ThÞ LÖ Ma PhÖ T©m §¸i", 150},
        {"[H¹n chÕthêi gian] Méng Long Tö Kim B¸t Nh· Giíi", 151},
        {"[H¹n chÕthêi gian] Minh Hoan Song Hoµn Xµ KhÊu", 152},
        {"[H¹n chÕthêi gian] Ngù Long TÊn Phong Ph¸t C¬", 153},
        {"[H¹n chÕthêi gian] Phôc Ma V« L­îng Kim Cang UyÓn", 154},
        {"[H¹n chÕthêi gian] S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu", 155},
        {"[H¹n chÕthêi gian] Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu", 156},
        {"[H¹n chÕthêi gian] Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa", 157},
        {"[H¹n chÕthêi gian] Tø Kh«ng §¹t Ma T¨ng Hµi", 158},
        {"[H¹n chÕthêi gian] V« Gian Thanh Phong NhuyÔn KÞch", 159},
        {"[H¹n chÕthêi gian] V« TrÇn TÞnh ¶nh L­u T«", 160},
        {"[H¹n chÕthêi gian] V« YÓm Thu Thñy L­u Quang §¸i", 161},
        {"[H¹n chÕthêi gian] Vô Hoan Th¸i Uyªn Ch©n Vò Liªn", 162}
    }
}

function GiveUIOK4(putCount) --ep phi phong 9
    if (putCount == 0) then
        Talk(1, "", "Xin vui lßng ®Æt vµo trang bÞ HKMP")
        return
    end
    local itemIndex = GetGiveItemUnit(1)
    local bindState = GetItemBindState(itemIndex)
    if (bindState ~= 0) then
        Talk(1, "", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
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
        local maxId = hkmpTable[3][2] --- d·y cuèi cïng cña bant tbHKMP ®Þnh nghÜa ë trªn

        if (goldEquipIndex < 1) or (goldEquipIndex > 163) then
            Talk(1, "", "Xin vui lßng ®Ët vµo 1 trang bÞ HKMP")
            return
        end
        local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1)
        if (nSilverCount < 100) then
            Talk(1, "no", "CÇn cã 100 <color=red>TiÒn §ång<color> míi cã thÓ läc.")
            return
        end

        if (RemoveItemByIndex(itemIndex) == 1) then
            tenhk = tbHKMP[1][goldEquipIndex][1]
            -- local requireIngradent = CalcEquiproomItemCount(4, 417, 1, -1)
            local ndxit = AddGoldItem(0, goldEquipIndex)
            local rate = CalcEquiproomItemCount(4, 417, 1, -1)
            if (rate >= 100) then
                Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> läc l¹i option trang bÞ <color=gold>"..tenhk.."<color> T¹i NPC.")
                ConsumeEquiproomItem(100, 4, 417, 1, -1)
                ITEM_SetExpiredTime(ndxit, ntime)
                SyncItem(ndxit)
            else
                Talk(1, "", "CÇn cã 100 <color=red>TiÒn §ång<color> míi cã thÓ läc trang bÞ xin h·y kiÔm tra l¹i.")
                return
            end
        else
            Talk(1, "", "Trang bÞ kh«ng cã trong danh s¸ch hoÆc ®· hÕt h¹n sö dông hoÆc nguyªn liÖu kh«ng ®óng")
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
        Say("Hµnh trang kh«ng ®ñ 5 « trèng.")
        return
    end
    if CalcEquiproomItemCount(4, 417, 1, 1) < 50 then
        Say("Hµnh trang kh«ng cã ®ñ 50 xu.")
        return
    end
    ConsumeEquiproomItem(50, 4, 417, 1, 1)
    local Index = AddGoldItem(0, 3771)
    ITEM_SetExpiredTime(Index, 72 * 60)
    SyncItem(Index)
end
