-- Tinh nang da tau edit by mcteam dong mo chuc nang

IncludeLib("FILESYS")
IncludeLib("RELAYLADDER") --排行榜
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua") -- 任务链的头文件
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua") -- 任务链的奖励头文件
Include("\\script\\task\\newtask\\newtask_head.lua") -- Task ho祅 Th祅h M鏸 100 l莕
Include("\\script\\event\\storm\\function.lua") --Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
MISSION_OF_DAY = SoLanNVDaTauTrongNgay
function storm_goon_start(gameid, b_nonext)
    local nNum = GetTask(ID_TASKLINK_LIMITNUM)

    nNum = nNum + 1
    SetTask(ID_TASKLINK_LIMITNUM, nNum)

    if b_nonext then
        return
    end
    tl_dealtask()
    Task_MainDialog()
end

function checkTask_Limit()
    -- 每天限制次数的处理
    local nNowDate = tonumber(GetLocalDate("%y%m%d"))
    local nOldDate = GetTask(ID_TASKLINK_LIMITDATE)
    local nNum = GetTask(ID_TASKLINK_LIMITNUM)

    if nNowDate ~= nOldDate then
        SetTask(ID_TASKLINK_LIMITDATE, tonumber(GetLocalDate("%y%m%d")))
        SetTask(ID_TASKLINK_LIMITNUM, 0)
        SetTask(ID_TASKLINK_LIMITCancelCount, 0)
        return 1
    else
        -- 40 次的限制
        if nNum >= MISSION_OF_DAY then
            Say("M鏸 ng祔 kh玭g th� l祄 qu� " .. MISSION_OF_DAY .. " nhi謒 v� ", 0)
            return 0
        end

        return 1
    end
end

--Task_BuyGoods = {}
--Task_FindGoods = {}
--Task_ShowGoods = {}
--Task_FindMaps = {}
--Task_UpGround = {}
--Task_WorldMaps = {}
--Task_Level = {}
--Task_MainLevelRate = {}

Task_BuyGoods = AssignValue(Task_BuyGoods, TL_BUYGOODS)
Task_FindGoods = AssignValue(Task_FindGoods, TL_FINDGOODS)
Task_ShowGoods = AssignValue(Task_ShowGoods, TL_SHOWGOODS)
Task_FindMaps = AssignValue(Task_FindMaps, TL_FINDMAPS)
Task_UpGround = AssignValue(Task_UpGround, TL_UPGROUND)
Task_WorldMaps = AssignValue(Task_WorldMaps, TL_WORLDMAPS)

Task_MainTaskLink = AssignValue_TaskLink(Task_MainTaskLink, TL_LEVELLINK)
Task_MainLevelRate = AssignValue_TaskRate(Task_MainLevelRate, TL_MAINTASKLEVEL)

Task_AwardBasic = AssignValue_Award(Task_AwardBasic, TL_AWARDBASIC)

Task_AwardLink = AssignValue_LinkAward(TL_AWARDLINK)

Task_AwardLoop = AssignValue_Award(Task_AwardLoop, TL_AWARDLOOP)

Task_TalkGoods = AssignValue_TaskTalk(Task_TalkGoods, TL_TASKGOODSTALK)
Task_TalkBuy = AssignValue_TaskTalk(Task_TalkBuy, TL_TASKBUYTALK)
Task_TalkShow = AssignValue_TaskTalk(Task_TalkShow, TL_TASKSHOWTALK)
Task_TalkFind = AssignValue_TaskTalk(Task_TalkFind, TL_TASKFINDMAPS)
Task_TalkUp = AssignValue_TaskTalk(Task_TalkUp, TL_TASKUPGROUNDTALK)
Task_TalkWorld = AssignValue_TaskTalk(Task_TalkWorld, TL_TASKWORLDTALK)


function Task_NewVersionAward()
    local nNum = GetTask(ID_TASKLINK_LIMITNUM)
    local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount)
    DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "yesourenwu")
    G_ACTIVITY:OnMessage("FinishYesou", nNum, nCancelNum) -- d飊g cho ch�  config c馻 AcTivitiSYS
	tbAward = {
		[10] = {szName = "觤 Kinh Nghi謒", nExp = 60000},
		[20] = {szName = "觤 Kinh Nghi謒", nExp = 60000},
		[30] = {szName = "觤 Kinh Nghi謒", nExp = 60000},
		[40] = {szName = "觤 Kinh Nghi謒", nExp = 60000},
	}

    -----=== phan thuong da tau 20 nhiem vu lien tiep==========-----------
	local solanhoanthanh = {

		10,
		20,
		30,
		40,
	}
    -- if (nNum - nCancelNum) == 10 then -- ( s� l莕 ho祅 th祅h - s� l莕 h駓 b� ) == 10 th� ...
	local nCompletedNum = nNum - nCancelNum
		for _, targetNum  in solanhoanthanh do
			if nCompletedNum == targetNum then
				tbAwardTemplet:GiveWithoutLog(tbAward[targetNum], 1)
				Msg2SubWorld(
					format("Ch骳 m鮪g i hi謕 <color=green>%s<color> ho祅 th祅h %d nhi謒 v� d� t萿 trong ng祔 <color> nh薾 頲  <color=yellow>%s <color>",
					GetName(), targetNum, tbAward[targetNum].szName)
				)
				break
			end
		end


end

-----------------------

function main()
    if GetAccount == "skendy2" then
        dofile("script/global/seasonnpc.lua")
    end
    if NPCDaTau ~= 1 then
    Say("Ch鴆 nang n祔 t筸 th阨 ch璦 m� .")
    	return 1;
    end
    --	do Say("Hi謓  t筰 dang dua top! tinh nang nay se duoc mo khi dua top xong") return end

    if GetLevel() < capdoduocnhannhiemvu then
        Say("Ъng c蕄 <color=green>" .. capdoduocnhannhiemvu .. "<color> tr� l猲 m韎 l祄 nhi謒 v� d� t萿 .")
        return 1
    end

    tasklink_entence()
end


function tasklink_entence()
    _TaskLinkDebug() -- 对于任务链无法进行下去的 BUG 修复

    local myTaskTimes = tl_gettaskstate(1) -- 玩家进行到的次数
    local myTaskLinks = tl_gettaskstate(2) -- 玩家进行到的链数
    local myTaskLoops = tl_gettaskstate(3) -- 玩家进行到的环数
    local myTaskCancel = tl_gettaskstate(4) -- 玩家可以取消的次数

    local myCountLinks
    local myCountTimes

    local myCanceled = nt_getTask(1036)
    local myTaskTime = GetGameTime() -- 获取游戏时间，用以判断玩家是否被封
    local n = myTaskTime - nt_getTask(1029)
    local myTaskInfo = ""

    if (tl_gettaskcourse() == 2) then
        Task_GiveAward()
        return
    end

    if (myCanceled == 10) then
        if (n < 605) then
            Task_Punish()
            return
        else
            myCanceled = 0
            nt_setTask(1036, 0)
            Task_Confirm()
        end
    end

    if (tl_gettaskcourse() == 0) then
        Say(
            " V� " ..
                GetPlayerSex() ..
                    " n祔 xem ra  b玭 ba giang h� 頲 m閠 th阨 gian d礽 r錳 nh�, c� mu鑞 tham gia kh秓 nghi謒 nhi謒 v� li猲 t鬰 c馻 ta kh玭g?",
            3,
            "Л頲 th玦! Ta kh玭g tin c� nhi謒 v� n祇 l祄 kh� d� 頲 ta/Task_Confirm",
            "Ta mu鑞 bi誸 kh秓 nghi謒 c馻 ngi n鉯 c� n閕 dung ra sao/Task_Info",
            "Ta b薾 r錳, kh玭g r秐h ng錳 t竛 g蓇 v韎 玭g/Task_Exit"
        )
    end

    if (tl_gettaskcourse() == 3) then
        if checkTask_Limit() ~= 1 then
            return
        end

        myCountLinks = tl_counttasklinknum(2)
        myCountTimes = tl_counttasklinknum(1)
        Say(
            ":<enter>V� " ..
                GetPlayerSex() ..
                    "  ho祅 th祅h <color=yellow>" ..
                        myCountTimes ..
                            "<color>, nhi謒 v� n祔 ng祔 h玬 nay c� th� th鵦 hi謓 l筰<color=yellow>" ..
                                (MISSION_OF_DAY - GetTask(ID_TASKLINK_LIMITNUM)) .. "<color>, ngi c� mu鑞 l祄 n鱝 kh玭g?",
            2,
            "Л琻g nhi猲, mau cho ta bi誸 nhi謒 v� ti誴 theo l� g� /Task_TaskProcess",
            "в ta ngh� ng琲 m閠 l竧 ! Ta b薾 r錳/Task_Wait"
        )
    elseif (tl_gettaskcourse() == 1) then
        Task_MainDialog()
    end
end

function Task_Confirm()
    local myTaskID

    tl_settaskstate(1, 0) -- 正在进行第一次任务
    tl_settaskstate(2, tl_getfirstlink()) -- 正在进行第一链任务
    tl_settaskstate(3, tl_getfirstloop()) -- 正在进行第一环任务

    tl_settaskstate(4, 0) -- 剩余 0 次取消任务的机会
    nt_setTask(DEBUG_TASKVALUE, 0)

    tl_settaskstate(6, 0)

    storm_ask2start(4) --Storm 开始挑战
    tbLog:PlayerActionLog("TinhNangKey", "NhanNhiemVuDaTau")
end

function Task_TaskProcess()
    local myTaskTimes = tl_gettaskstate(1) -- 玩家进行到的次数
    local myTaskLinks = tl_gettaskstate(2) -- 玩家进行到的链数
    local myTaskLoops = tl_gettaskstate(3) -- 玩家进行到的环数
    local myTaskCancel = tl_gettaskstate(4) -- 玩家可以取消的次数

    if checkTask_Limit() ~= 1 then
        return
    end

    tl_taskprocess() -- 首先执行下一轮函数

    storm_goon_start() --Storm恢复
end

function Task_MainDialog()
    local myTaskInfo = tl_gettaskinfo() -- 任务的详细信息
    local myTaskTotalNum = tl_counttasklinknum(1) + 1 -- 总任务次数统计
    local myTitleText = ""

    if (myTaskInfo == nil) then
        myTaskInfo = ""
    end

    tl_settaskcourse(1)

    if myTaskTotalNum == 0 or myTaskTotalNum == nil then
        myTitleText = "D� T萿:<enter><enter>" .. myTaskInfo
    else
        myTitleText =
            "D� T萿:<enter><enter> Зy l� <color=green>" .. myTaskTotalNum .. "<color> nhi謒 v� th�, " .. myTaskInfo
    end

    Say(
        myTitleText,
        5,
        "Bi誸 r錳,  ta ho祅 th祅h nhi謒 v� xong m韎 l筰 t譵 ngi/Task_Wait",
        "Ta  ho祅 th祅h nhi謒 v� l莕 n祔, xin h穣 ki觤 tra l筰!/Task_Accept",
        "Ta mu鑞 d飊g 1xu  ho祅 th祅h nhi謒 v�!/hoanhthanhdatau1xu",
        --"Ta mu鑞 d飊g T� Th駓 Tinh ho芻 D� T萿 Chi L謓h  ho祅g th祅h nhi謒 v�!/hoanhthanhdatau",
        --"Ta  ho祅 th祅h nhi謒 v� l莕 n祔, xin h穣 ki觤 tra l筰!/Task_GiveAward",
        "Nhi謒 v� l莕 n祔 kh� qu�, Ta mu鑞 h駓 b� kh玭g l祄 n鱝/Task_CancelConfirm",
        "Ta mu鑞 bi誸 kh秓 nghi謒 c馻 ngi n鉯 c� n閕 dung ra sao/Task_Info"
    )

    nt_setTask(1045, 1)
end

function Task_CancelConfirm()
    local myTaskTimes = tl_gettaskstate(1) -- 玩家进行到的次数
    local myTaskLinks = tl_gettaskstate(2) -- 玩家进行到的链数
    local myTaskLoops = tl_gettaskstate(3) -- 玩家进行到的环数
    local myTaskCancel = tl_gettaskstate(4) -- 玩家可以取消的次数

    local myCountTimes = tl_counttasklinknum(1) -- 玩家进行的任务总数

    if (myTaskCancel == 0) then
        Say(
            " Hi謓 t筰 b筺 kh玭g c� c� h閕 n祇  h駓 b� nhi謒 v�, b筺 ch� c� th� l祄 l筰 t� u th玦! уng th阨 ph莕 thng t輈h l騳 c馻 b筺 l骳 trc s� 頲 t輓h l筰 t� u.",
            3,
            "ng, ta kh玭g mu鑞 l祄 nhi謒 v� qu� qu竔 n祔 u/Task_NormalCancel",
            --	"Ta mu鑞 s� d鬾g 1 T� Th駓 Tinh  h駓 b� nhi謒 v� l莕 n祔/#Task_TotalCancel",
            "Ta mu鑞 s� d鬾g 100 m秐h s琻 H� X� T綾  h駓 b� nhi謒 v� l莕 n祔/#Task_Cancel(2)",
            "Uhm! в ta suy ngh� l筰 /Task_Wait"
        )
    else
        Say(
            " Hi謓 t筰 b筺 c遪" ..
                myTaskCancel .. " s� l莕 c� h閕 h駓 b� nhi謒 v�, b筺 x竎 nh h駓 b� nhi謒 v� l莕 n祔 ng kh玭g?",
            2,
            "ng, ta kh玭g mu鑞 l祄 nhi謒 v� qu� qu竔 n祔 u/#Task_Cancel(1)",
            "Uhm! в ta suy ngh� l筰 /Task_Wait"
        )
    end
end

function Task_NormalCancel()
    Say(
        " B筺 suy ngh� k� h駓 b� nhi謒 v� l莕 n祔 ng kh玭g?",
        2,
        "ng l玦 th玦 n鱝! ta kh玭g mu鑞 l祄 nhi謒 v� qu� qu竔 n祔 u/#Task_Cancel(1)",
        "Th玦  ta suy ngh� l筰 !/Task_Wait"
    )
end

-- 1000
function hoanhthanhdatau1xu()
    if ConsumeEquiproomItem(1, 4, 417, 1, -1) == 1 then
        -- nUseTimes = nUseTimes + 1;
        -- SetBitTask(DTL_TASK, 0, 8,  nUseTimes);
        -- SetBitTask(DTL_TASK, 8, 24, nLastUseDate);
        Task_AwardRecord()
        Task_GiveAward()
    else
        Say("D� T萿: Kh玭g l祄 m� i c� ╪ sao? Mau 甶 l祄 nhi謒 v� 甶!", 0)
    end
end

function Task_TotalCancel()
    GiveItemUI(
        "Giao th駓 tinh cho D� T萿",
        "N誹 ngi  quy誸 h駓 b� chu鏸 nhi謒 v�, ta c騨g kh玭g ng╪ c秐, h穣 t v祇 vi猲 T� Th駓 Tinh!",
        "Task_TotalCancel_Main",
        "Task_Wait"
    )
end

function Task_TotalCancel_Main(nCount)
    local nGenre, nDetail, nParticular, nLevel, nGoodsFive, nLuck = 0, 0, 0, 0, 0, 0
    local nIndex = 0

    if nCount ~= 1 then
        Say("D� T萿: Ngi a g� cho ta v藋? Ta ch� c莕 <color=yellow>1 vi猲 T� Th駓 Tinh<color> th玦!", 0)
        return
    end

    nIndex = GetGiveItemUnit(1)
    nGenre, nDetail, nParticular, nLevel, nGoodsFive, nLuck = GetItemProp(nIndex)

    if nGenre == 4 and nDetail == 239 and nParticular == 1 then
        Task_Cancel(1) -- 全部取消
    else
        Say("D� T萿: Ngi a g� cho ta v藋? Ta ch� c莕 <color=yellow>1 vi猲 T� Th駓 Tinh<color> th玦!", 0)
        return
    end
end

function Task_ProcessInfo()
    local myTaskTimes = tl_gettaskstate(1) -- 玩家进行到的次数
    local myTaskLinks = tl_gettaskstate(2) -- 玩家进行到的链数
    local myTaskLoops = tl_gettaskstate(3) -- 玩家进行到的环数
    local myTaskCancel = tl_gettaskstate(4) -- 玩家可以取消的次数

    local myTaskType = tl_getplayertasktype()

    local myTimes = tl_gettaskstate(1)
    local myLinks = tl_gettaskstate(2)

    local myCountTimes = tl_counttasklinknum(1)

    -- local myTaskValue1 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue1"))
    -- local myTaskValue2 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue2"))

    -- local myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myCountLinks+myTimes)*0.1))

    -- local myMainValueText1 = "你目前的任务物品价值为: "..myTaskValue1.."  任务价值为: "..myTaskValue2.."<enter>".."你现在的任务总价值量为: "..myMainValue

    --	Say("野叟：你现在进行到了第 "..myTaskLoops.." 环中的第 "..myTaskLinks.." 链中的第 "..myTaskTimes.." 次。<enter>你连续进行的次数为："..tl_counttasklinknum(1).." 次<enter>你连续进行的链数为："..tl_counttasklinknum(2).." 链<enter>"..myMainValueText1,0);

    Say(
        " Hi謓 t筰 ngi  ho祅 th祅h <color=yellow>" ..
            myCountTimes .. "<color> s� l莕 nhi謒 v� ta giao cho, c莕 c� g緉g h琻 nh�!",
        0
    )
end

function Task_Accept()
    if (CalcFreeItemCellCount() < 5) then
        Say("H祅h trang  y, h穣 s緋 x誴 l筰 cho ng╪ n緋.", 0)
        return
    end
    local myTaskType = tl_getplayertasktype()

    if (myTaskType == 1) then
        GiveItemUI(
            "Nhi謒 v� t譵 v藅 ph萴",
            " 馻? Nh鱪g th� ta c莕 ngi t譵 頲 cho ta ch璦?",
            "Task_Accept_01",
            "Task_Wait"
        )
    elseif (myTaskType == 2) then
        GiveItemUI(
            "Nhi謒 v� mua v藅 ph萴",
            " 馻? Nh鱪g th� ta c莕 ngi t譵 頲 cho ta ch璦?",
            "Task_Accept_02",
            "Task_Wait"
        )
    elseif (myTaskType == 3) then
        GiveItemUI(
            "Nhi謒 v� hi觧 th� v藅 ph萴",
            " 馻? Nh鱪g th� ta c莕 ngi t譵 頲 cho ta ch璦?",
            "Task_Accept_03",
            "Task_Wait"
        )
    elseif (myTaskType == 4) then
        Task_Accept_04()
    elseif (myTaskType == 5) then
        Task_Accept_05()
    elseif (myTaskType == 6) then
        Task_Accept_06()
    else -- 异常处理
        Say(" Nh鱪g th� ngi giao cho ta ch璦 t ng y猽 c莡, c� g緉g h琻 nh�!", 0)
    end
end

function Task_Accept_01(nCount)
    local myTaskGoods
    local ItemGenre, DetailType, ParticularType, Level, nSeries, Luck

    if (nCount > 1) then
        Say(" V� n祔" .. GetPlayerSex() .. ", Ngi b� nhi襲  v� nh� v藋 xem t韎 ta hoa c� m総, t� t� th玦 n祇!", 0)
        return 0
    elseif (nCount == 0) then
        Say(
            " V� n祔" .. GetPlayerSex() .. ", ngi c� th藅  b� v祇 th� ta c莕 kh玭g? Kh玭g ph秈 l穙 phu hoa m総 ch�?",
            0
        )
        return 0
    end

    ItemGenre, DetailType, ParticularType, Level, nSeries, Luck = GetItemProp(GetGiveItemUnit(1))
    --	magictype , p1, p2, p3 = GetItemMagicAttrib(nItemIndex, 1)
    myTaskGoods = {ItemGenre, DetailType, ParticularType, nSeries, Level}

    --	tl_print ("野叟检验了物品："..ItemGenre..DetailType..ParticularType..nSeries..Level)

    if (tl_checktask(myTaskGoods) == 1) then
        -- 发奖处理
        RemoveItemByIndex(GetGiveItemUnit(1)) -- 删除玩家身上的物品
        Task_AwardRecord()
        Task_GiveAward()
    else
        Say(" Nh鱪g vi謈 b筺 l祄 ch璦 t ng y猽 c莡, c� g緉g h琻 nh�!", 0)
    end
end

function Task_Accept_02(nCount)
    local myTaskGoods
    local ItemGenre, DetailType, ParticularType, Level, nSeries, Luck
    local magictype, p1, p2, p3
    local i, n, m = 0, 0, 0

    if (nCount > 1) then
        Say(" V� n祔" .. GetPlayerSex() .. ", Ngi b� nhi襲  v� nh� v藋 xem t韎 ta hoa c� m総, t� t� th玦 n祇!", 0)
        return 0
    elseif (nCount == 0) then
        Say(
            " V� n祔" .. GetPlayerSex() .. ", ngi c� th藅  b� v祇 th� ta c莕 kh玭g? Kh玭g ph秈 l穙 phu hoa m総 ch�?",
            0
        )
        return 0
    end

    for i = 1, 6 do
        ItemGenre, DetailType, ParticularType, Level, nSeries, Luck = GetItemProp(GetGiveItemUnit(1))
        magictype, p1, p2, p3 = GetItemMagicAttrib(GetGiveItemUnit(1), i)
        myTaskGoods = {ItemGenre, DetailType, ParticularType, Level, nSeries, magictype, p1, p2, p3}
        --		tl_print("检验了魔法属性 "..i.." :".." 魔法 ID 为: "..magictype.."  魔法参数1为: "..p1.."  魔法参数2为: "..p2.." 魔法参数3为: "..p3);
        n = tl_checktask(myTaskGoods)
        if (n == 1) then
            m = 1
        end
    end

    if (m == 1) then
        RemoveItemByIndex(GetGiveItemUnit(1)) -- 删除玩家身上的物品
        Task_AwardRecord()
        Task_GiveAward()
    else
        Say(" Nh鱪g vi謈 b筺 l祄 ch璦 t ng y猽 c莡, c� g緉g h琻 nh�!", 0)
    end
end

function Task_Accept_03(nCount)
    local myTaskGoods
    local magictype, p1, p2, p3
    local i, n, m = 0, 0, 0

    if (nCount > 1) then
        Say(" V� n祔" .. GetPlayerSex() .. ", Ngi b� nhi襲  v� nh� v藋 xem t韎 ta hoa c� m総, t� t� th玦 n祇!", 0)
        return 0
    elseif (nCount == 0) then
        Say(
            " V� n祔" .. GetPlayerSex() .. ", ngi c� th藅  b� v祇 th� ta c莕 kh玭g? Kh玭g ph秈 l穙 phu hoa m総 ch�?",
            0
        )
        return 0
    end

    for i = 1, 6 do -- 循环历遍所有的魔法属性看看是否有合适的
        magictype, p1, p2, p3 = GetItemMagicAttrib(GetGiveItemUnit(1), i)
        myTaskGoods = {magictype, p1, p2, p3}
        n = tl_checktask(myTaskGoods)
        if (n == 1) then
            m = 1
        end
    end

    if (m == 1) then
        -- 发奖处理
        Task_AwardRecord()
		Task_GiveAward()
    else
        Say(" Nh鱪g vi謈 b筺 l祄 ch璦 t ng y猽 c莡, c� g緉g h琻 nh�!", 0)
    end
end

function Task_Accept_04()
    if (tl_checktask() == 1) then
        -- 发奖处理
        Task_AwardRecord()
        Task_GiveAward()
    else
        Say(" Nh鱪g vi謈 b筺 l祄 ch璦 t ng y猽 c莡, c� g緉g h琻 nh�!", 0)
    end
end

function Task_Accept_05()
    if (tl_checktask() == 1) then
        -- 发奖处理
        Task_AwardRecord()
        Task_GiveAward()
    else
        Say(" Nh鱪g vi謈 b筺 l祄 ch璦 t ng y猽 c莡, c� g緉g h琻 nh�!", 0)
    end
end

function Task_Accept_06()
    if (tl_checktask() == 1) then
        Task_AwardRecord()
        Task_GiveAward()
        return 1
    else
        Say(
            " Hahaha! V� n祔" ..
                GetPlayerSex() ..
                    ", ta tuy b蕋 t礽, nh鱪g c騨g hi觰 頲 ch� t輓 tr猲 giang h�, ngi c遪 ch璦 thu th藀  m秐h s琻 H� X� T綾 m� ta y猽 c莡 sao c� th� n l穘h thng y?",
            0
        )
        return 0
    end
end

function Task_Cancel(nType)
    local myTaskTimes = tl_gettaskstate(1) -- 玩家进行到的次数

    local myTaskLinks = tl_gettaskstate(2) -- 玩家进行到的链数
    local myTaskLoops = tl_gettaskstate(3) -- 玩家进行到的环数
    local myTaskCancel = tl_gettaskstate(4) -- 玩家可以取消的次数
    local myCanceled = nt_getTask(1036) -- 玩家已经恶意取消了多少次
    local myMapNum = nt_getTask(1027) -- 看看玩家身上有多少个山河社稷图残片

    local myNewCancel = GetTask(DEBUG_TASKVALUE) -- 备份的取消机会

    local nTotalTaskNum = tl_counttasklinknum(1) -- 获取当前玩家一共做了多少次任务

    if nt_getTask(1045) ~= 1 then
        return
    end

    if _CancelTaskDebug() ~= 1 then
        Say("Uhm! B筺 tr� n祔 h譶h nh� kh玭g c遪 c� h閕 h駓 b� ", 0)
        return
    end

    if checkTask_Limit() ~= 1 then
        return
    end

    if (nType == 2) then
        if (myMapNum >= 100) then
            myMapNum = myMapNum - 100
            nt_setTask(1027, myMapNum)
            myTaskCancel = myTaskCancel + 1
            Msg2Player("B筺  s� d鬾g 100 m秐h s琻 H� X� T綾  h駓 b� nhi謒 v� n祔!")
            Msg2Player("M秐h s琻 H� X� T綾 hi謓 t筰 c馻 b筺 c遪 d� " .. myMapNum .. " T蕀!")
        else
            Say(
                " ngi c� ng  mang <color=yellow>100<color> m秐h s琻 H� X� T綾 kh玭g? Ta c� nh譶 l莔 kh玭g v藋?",
                0
            )
            return
        end
    end

    if (myTaskTimes == 0) and (myTaskLinks == tl_getfirstlink()) then
        if (myTaskCancel == 0) then
            myCanceled = myCanceled + 1
            nt_setTask(1036, myCanceled)

            if (myCanceled > 2) then -- 如果玩家连续在初期取消了三次任务，则作处罚
                myCanceled = 10
                nt_setTask(1036, myCanceled)
                nt_setTask(1029, GetGameTime())
                Task_Punish()

                return
            end
        end

        SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1) -- 增加当天的取消次数
        storm_ask2start(4) --Storm 开始挑战

        return
    end

    if (myTaskCancel >= 1) then -- 如果玩家还有机会取消的话则继续随机当前等级的任务
        -- 写入取消任务时的 LOG
        _WriteCancelLog(nType, nTotalTaskNum, myTaskCancel)

        myTaskCancel = myTaskCancel - 1

        tl_settaskstate(4, myTaskCancel)

        nt_setTask(DEBUG_TASKVALUE, myTaskCancel)
    else
        -- 写入取消任务时的 LOG
        _WriteCancelLog(nType, nTotalTaskNum, myTaskCancel)

        tl_settaskstate(1, 0) -- 正在进行第一次任务
        tl_settaskstate(2, tl_getfirstlink()) -- 正在进行第一链任务
        tl_settaskstate(3, 0) -- 从第 0 环开始

        tl_settaskstate(4, 0) -- 剩余 0 次取消任务的机会
        nt_setTask(DEBUG_TASKVALUE, 0)

        tl_settaskstate(6, 0) -- 当前的链进行了 0 次
        nt_setTask(1036, 0) -- 惩罚次数累积变为 0
        -- 在这里记录一下任务的总数
        nt_setTask(1044, tl_counttasklinknum(1))

        Msg2Player(
            "<color=yellow>Chu鏸 nhi謒 v� D� T萿  x鉧 b� ho祅 to祅, b﹜ gi� s� ph秈 l祄 l筰 t� nhi謒 v� u ti猲<color>!"
        )
    end

    nt_setTask(1045, 2)

    SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1) -- 增加当天的取消次数
    storm_ask2start(4) --Storm 开始挑战
end

function Task_Info()
    Talk(
        4,
        "tasklink_entence",
        " L莕 n祔 ta  s緋 x誴 c竎 lo筰 kh秓 nghi謒 nhi謒 v� nh�  th� th竎h v� thu藅 c騨g nh� t輓h ki猲 nh蒼 c馻 c竎 v� anh h飊g h祇 ki謙 y.",
        " M鏸 l莕 ho祅 th祅h nhi謒 v� u c� <color=red>ph莕 thng tng 鴑g<color> cho c竎 v�, n誹 c� th� li猲 t鬰 ho祅 th祅h nhi謒 v� 頲 t ra th� c� 頲 <color=red>l� v藅 t鑤 h琻<color>d﹏g t苙g ri猲g, n誹 nh� ai  c� th� t n <color=red>8000<color> nhi謒 v� s� nh薾 頲 <color=red>s� n p n b蕋 ng�<color>!",
        " N誹 nh� ngi b� qua m閠 nhi謒 v� trong s� nhi謒 v� th� t輓h l筰 t� nhi謒 v� ban u. Nh璶g m�, ta c� l骳 c騨g cho c� h閕 h駓 b� nhi謒 v�,  xem ngi n緈 b総 ra sao th玦!",
        " Sao r錳? Ngi thanh ni猲 c� mu鑞 ti誴 nh薾 s� kh秓 nghi謒 c馻 ta kh玭g?"
    )
end

function Task_Exit()
    if (GetSex() == 0) then
        Say(
            " Hahaha! ьi sau khi v� i hi謕 n祔 th玭g qua kh秓 nghi謒 xong nh薾 頲 c竎 ph莕 thng phong ph�, t� nhi猲 l筰 bi誸 n t譵 ta th玦!",
            0
        )
    else
        Say(
            " Hahaha! ьi sau khi v� n� hi謕 n祔 th玭g qua kh秓 nghi謒 xong nh薾 頲 c竎 ph莕 thng phong ph�, t� nhi猲 l筰 bi誸 n t譵 ta th玦!",
            0
        )
    end
end

function Task_Wait()
end

function Task_Punish()
    Say(
        " V� n祔" ..
            GetPlayerSex() .. "C� ph秈 g蕄 l緈 kh玭g, kh秓 nghi謒 c馻 ta s緋 x誴 kh� n nh� v藋 �? L莕 sau n v藋!",
        0
    )
    return 0
end

function Task_GiveAward()
    local i

    local myAward
    local myLinkAward, myLoopAward

    local myGoodsText = ""
    local ShowText = {"", "", ""}

    -- local nTotalTaskNum = tl_counttasklinknum(1); -- 获取当前玩家一共做了多少次任务
    -- if (nTotalTaskNum ~= 0 and mod(nTotalTaskNum, 10) == 0 and GetTask(TKS_TASKLINK_SPITEM) ~= nTotalTaskNum) then
    -- SetTask(TKS_TASKLINK_SPITEM, nTotalTaskNum);
    -- local tbItem = {tbProp = {6, 1, 2374, 1, 0, 0}}
    -- tbAwardTemplet:GiveAwardByList(tbItem, "seasonnpc_10task")
    -- Msg2Player(format("Ch骳 m鮪g i hi謕  ho祅 th祅h li猲 ti誴 %d nhi謒 v� D� T萿, nh薾 頲 ph莕 thng %s!", 10, "B秓 rng th莕 b� c馻 D� T萿"));
    -- end

    local nTongValue
    myAward, nTongValue = tl_giveplayeraward(1)
    if (not nTongValue) then
        nTongValue = 0
    end
    local nBeishu = greatnight_huang_event(4)
    if (nBeishu > 0) then
        nTongValue = floor(nTongValue / nBeishu)
    end

    for i = 1, 3 do
        if (myAward[i][1] == 1) then
            ShowText[i] = "Nh薾 頲 " .. myAward[i][9] .. "/3" .. "/" .. (myAward[i][2]) .. "/SelectAward_Money"
        elseif (myAward[i][1] == 2) then
            ShowText[i] = "Nh薾 頲 " .. myAward[i][9] .. "/4" .. "/" .. myAward[i][2] .. "/SelectAward_Exp"
        elseif (myAward[i][1] == 3) then
            myGoodsText =
                myAward[i][3] ..
                "," ..
                    myAward[i][4] ..
                        "," .. myAward[i][5] .. "," .. myAward[i][6] .. "," .. myAward[i][7] .. "," .. myAward[i][8]
            ShowText[i] = "Nh薾 頲 " .. myAward[i][9] .. "/5" .. "/" .. myGoodsText .. "/mySG"
        elseif (myAward[i][1] == 4) then
            if (myAward[i][10] == 1) then
                myGoodsText =
                    myAward[i][3] ..
                    "," ..
                        myAward[i][4] ..
                            "," .. myAward[i][5] .. "," .. myAward[i][6] .. "," .. myAward[i][7] .. "," .. myAward[i][8]
                ShowText[i] = myAward[i][9] .. "/6" .. "/" .. myGoodsText .. "/mySG"
            elseif (myAward[i][10] == 2) then
                ShowText[i] = myAward[i][9] .. "/6" .. "/" .. myAward[i][2] .. "/SelectAward_Exp"
            elseif (myAward[i][10] == 3) then
                ShowText[i] = myAward[i][9] .. "/6" .. "/" .. myAward[i][2] .. "/SelectAward_Money"
            end
        elseif (myAward[i][1] == 5) then
            ShowText[i] = "Nh薾 頲 " .. myAward[i][9] .. "/7" .. "/" .. myAward[i][1] .. "/SelectAward_Cancel"
        end
    end

    tl_print(ShowText[1])
    tl_print(ShowText[2])
    tl_print(ShowText[3])

    Prise(
        "Ngi v蕋 v� qu�, xin m阨 v� " .. GetPlayerSex() .. " ch鋘 m鉵 m譶h th輈h 甶! ",
        ShowText[1],
        ShowText[2],
        ShowText[3]
    )
end

function Task_AwardRecord()
    --Storm 加积分
    local filename = tl_gettasktextID(tl_getplayertasktype())
    local tabcol = tl_gettasktablecol()
    local myTaskValue1 = tonumber(TabFile_GetCell(filename, tabcol, "TaskValue1"))
    local myTaskValue2 = tonumber(TabFile_GetCell(filename, tabcol, "TaskValue2"))
    local myMainValue = (myTaskValue1 + myTaskValue2)/10
    storm_addpoint(4, myMainValue)

    tl_settaskcourse(2) -- 任务的进展程度为2，即是还没有发奖
    nt_setTask(1037, GetGameTime() + tonumber(GetLocalDate("%H%M%S")))
end

function mySG(myQuality, myGenre, myDetail, myParticular, myLevel, myFive)
    if (tl_gettaskcourse() == 3) then
        Say("Ngi  l穘h thng r錳! мnh g箃 gi� n祔 �?", 0)
        return
    end

    if (CalcFreeItemCellCount() < 5) then
        Say("H祅h trang  y, h穣 s緋 x誴 l筰 cho ng╪ n緋.", 0)
        return
    end

    if (myQuality == 0) then
        local nItemIndex = AddItem(myGenre, myDetail, myParticular, myLevel, myFive, 0, 0)
        if (GetProductRegion() == "vn") then
            -- LLG_ALLINONE_TODO_20070802
            if (myDetail == 238) or (myDetail == 239) or (myDetail == 240) or (myDetail == 252) then
                WriteLog(
                    " [Ghi nh� nh薾 ph莕 thng]" ..
                        date(" [%y n╩ %m th竛g %d ng祔  %H gi� %M ph髏]") ..
                            ": T礽 kho秐" ..
                                GetAccount() ..
                                    ", nh﹏ v藅" ..
                                        GetName() ..
                                            "Trong nhi謒 v� li猲 ti誴 nh薾 頲 ph莕 thng l� b秓 th筩h, s� th� t� lo筰 b秓 th筩h l�:" ..
                                                myDetail
                )
            elseif (myGenre == 6 and myDetail == 1 and myParticular == 1475) then
                local nLastTime = FormatTime2Number(GetCurServerTime() + 7 * 24 * 60 * 60)
                local nYear = floor(nLastTime / 100000000)
                local nMMDD = mod(floor(nLastTime / 10000), 10000)
                SetItemMagicLevel(nItemIndex, 1, GetTask(TSK_TASKLINK_SEANSONPOINT))
                SetItemMagicLevel(nItemIndex, 2, nYear)
                SetItemMagicLevel(nItemIndex, 3, nMMDD)
                SyncItem(nItemIndex)
                WriteLog(
                    format(
                        "[Log ph莕 thng chu鏸 nhi謒 v� D� T萿]%s: T礽 kho秐 %s, nh﹏ v藅 %s ho祅 th祅h chu鏸 nhi謒 v� D� T萿 nh薾 頲 甶觤 T輈h l騳 D� T萿 (甶觤 kinh nghi謒: %d)",
                        date(" [%y n╩ %m th竛g %d ng祔  %H gi� %M ph髏]"),
                        GetAccount(),
                        GetName(),
                        GetTask(TSK_TASKLINK_SEANSONPOINT)
                    )
                )
                SetTask(TSK_TASKLINK_SEANSONPOINT, 0)
            end
        else
            WriteLog(
                " [Ghi nh� nh薾 ph莕 thng]" ..
                    date(" [%y n╩ %m th竛g %d ng祔  %H gi� %M ph髏]") ..
                        " [m藅 m�:" .. GetAccount() .. "] [nh﹏ v藅:" .. GetName() .. "]" .. "Nh薾 頲 1 " .. szName
            )
        end
    else
        AddGoldItem(0, myGenre)
        AddGlobalNews(
            "Ngi ch琲 " .. GetName() .. "  ho祅 th祅h nhi謒 v� D� T萿 n猲  nh薾 頲 1 trang b� Ho祅g Kim!!!"
        )
        WriteLog(
            " [Ghi nh� nh薾 ph莕 thng]" ..
                date(" [%y n╩ %m th竛g %d ng祔  %H gi� %M ph髏]") ..
                    ": T礽 kho秐" ..
                        GetAccount() ..
                            ", nh﹏ v藅" ..
                                GetName() ..
                                    "Trong nhi謒 v� li猲 ti誴 nh薾 頲 ph莕 thng l� trang b� Ho祅g Kim s� th� t� l�:" ..
                                        myGenre
        )
    end
    Msg2Player("B筺 nh薾 頲 m閠 ph莕 thng nhi謒 v�!")

    tl_settaskcourse(3)
    PayPlayerLinkAward()

    local nBeishu = greatnight_huang_event(4)
    local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP)
    if (nBeishu > 0) then
        nTongValueGift = floor(nTongValueGift / nBeishu)
    end
    --tongaward_tasklink(nTongValueGift);	--加上门派奖励
    Task_NewVersionAward()
end

function SelectAward_Money(nAward)
    if (tl_gettaskcourse() == 3) then
        Say("Ngi  l穘h thng r錳! мnh g箃 gi� n祔 �?", 0)
        return
    end
    local nAward1 = (nAward)
    Earn(nAward1)
    Msg2Player("B筺 nh薾 頲 <color=green>" .. nAward1 .. "<color> lng  b筩")

    tl_settaskcourse(3)
    PayPlayerLinkAward()

    if nAward1 >= 300000 then
        WriteLog(
            " [Ghi nh� chu鏸 nhi謒 v鬩" ..
                date(" [%y n╩ %m th竛g %d ng祔  %H gi� %M ph髏]") ..
                    " [T礽 kho秐]" ..
                        GetAccount() ..
                            " [Nh﹏ v藅]" ..
                                GetName() ..
                                    "Trong nhi謒 v� li猲 ti誴 nh薾 頲<money>" ..
                                        nAward1 .. "</money>ph莕 thng l� lng b筩!"
        )
    end
    local nBeishu = greatnight_huang_event(4)
    local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP)
    if (nBeishu > 0) then
        nTongValueGift = floor(nTongValueGift / nBeishu)
    end
    --tongaward_tasklink(nTongValueGift);	--加上门派奖励
    Task_NewVersionAward()
end

function SelectAward_Exp(nAward)
    --local nExp = 4318540
    local nNum = GetTask(ID_TASKLINK_LIMITNUM)
    --if nNum <= 4 then
    --	nAward = nExp + nExp  * (nNum + 1)
    --end
    --if nNum > 4 then
    --nAward = nExp * nNum  + nExp * (nNum - 5)
    --end

    if (tl_gettaskcourse() == 3) then
        Say("Ngi  l穘h thng r錳! мnh g箃 gi� n祔 �?", 0)
        return
    end

    tl_addPlayerExp(nAward)
    Msg2Player("B筺 nh薾 頲 <color=green>" .. nAward .. "<color> 甶觤 kinh nghi謒")

    tl_settaskcourse(3)
    PayPlayerLinkAward()
    local nBeishu = greatnight_huang_event(4)
    local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP)
    if (nBeishu > 0) then
        nTongValueGift = floor(nTongValueGift / nBeishu)
    end
    --tongaward_tasklink(nTongValueGift);	--加上门派奖励
    Task_NewVersionAward()
end

function SelectAward_Change(nAward)
    if (tl_gettaskcourse() == 3) then
        Say("Ngi  l穘h thng r錳! мnh g箃 gi� n祔 �?", 0)
        return
    end

    Msg2Player("B筺 c� th猰 c� h閕 nh薾 頲 m閠 ph莕 thng ng蓇 nhi猲!")

    tl_settaskcourse(3)
    PayPlayerLinkAward()
end

function SelectAward_Cancel(nAward)
    local myCancel = 0
    local myNewCancel = GetTask(DEBUG_TASKVALUE)

    if (tl_gettaskcourse() == 3) then
        Say("Ngi  l穘h thng r錳! мnh g箃 gi� n祔 �?", 0)
        return
    end

    myCancel = tl_gettaskstate(4)
    myCancel = myCancel + 1
    if myCancel >= 100 then
        myCancel = 100
    end
    if myNewCancel == 0 then
        myNewCancel = myCancel
    else
        myNewCancel = myNewCancel + 1
    end

    if myNewCancel <= 254 then
        nt_setTask(DEBUG_TASKVALUE, myNewCancel)
    end

    tl_settaskstate(4, myCancel)

    if myCancel <= 254 then
        Msg2Player("B筺 nh薾 頲 <color=green>1 c� h閕 h駓 b� nhi謒 v�<color>!")
    end

    WriteLog(
        " [Ghi nh� nh薾 ph莕 thng]" ..
            date(" [%yn╩%mth竛g%dng祔%Hgi�%Mph髏%Sgi﹜]") ..
                " [T礽 kho秐]" ..
                    GetAccount() ..
                        " [Nh﹏ v藅]" ..
                            GetName() ..
                                "B筺 nh薾 頲 c� h閕 h駓 b� nhi謒 v�, hi謓 t筰 c遪 c� th� c� h閕 h駓 <" ..
                                    myCancel .. "> l莕."
    )

    tl_settaskcourse(3)
    PayPlayerLinkAward()

    local nBeishu = greatnight_huang_event(4)
    local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP)
    if (nBeishu > 0) then
        nTongValueGift = floor(nTongValueGift / nBeishu)
    end
    --tongaward_tasklink(nTongValueGift);	--加上门派奖励
    Task_NewVersionAward()
end

function PayPlayerLinkAward()
    --local myGolden = {2,6,11,16,21,22,26,31,39,40,42,46,51,54,56,60,61,67,71,76,81,87,92,94,96,101,106,107,115,119,121,122,126,132,136,144,145,146} -- 20 环奖励黄金装备的编号
    -- local myGolden = {204, 205, 206, 207, 190, 191, 192, 193, 159, 160, 161, 162, 163, 164, 165, 166, 167} -- 20 环奖励黄金装备的编号
    -- local vkhkmp = {6, 11, 16, 21, 26, 31, 39, 46, 51, 54, 61, 71, 76, 81, 96, 101, 116, 121, 122, 126} -- vu khi hkmp
    -- local anban = {6, 11} -- trang bi an bang
    -- local dinhquoc = {6, 11} -- trang bi dinhquoc
    -- local hiepcot = {6, 11} -- trang bi hiep cot
    -- local nhutinh = {6, 11} -- trang bi nhu tinh
    -- local nGoldenID = 0

    local myTaskTimes = tl_gettaskstate(1)
    local myTaskLinks = tl_gettaskstate(2)
    local myTaskLoops = tl_gettaskstate(3)

    local nTotalTask = tl_counttasklinknum(1)

    Ladder_NewLadder(10118, GetName(), nTotalTask, 1)

    --nTotalTask = 100 --test so lan nhiem vu da tau

    --tl_getlinkaward(Task_AwardLink, nTotalTask);
	local mochoanthanhDT = {

		200,
		400,
		600,
		800,
		1000,
		1200,
		1400,
		1600,
		1800,
		2000,
		2200,
		2400,
		2600,
		2800,
		3000,
		3200,
		3400,
		3600,
		3800,
		4000,
		4200,
		4400,
		4600,
		4800,
		5000,
		5200,
		5400,
		5600,
		5800,
		6000,
		6200,
		6400,
		6600,
		6800,
		7000,
		7200,
		7400,
		7600,
		7800,
		8000,
		

	}
    local mocHTMoi100Lan =  SetTask (5940,100)
	if nTotalTask == mocHTMoi100Lan  then
        tbAwardTemplet:GiveAwardByList(
            {{szName = "Ti猲 Th秓 L�", tbProp = {6, 1, 71, 1, 1}, nCount = 1}},
            format("Get %s", "Ti猲 Th秓 L�")
        )
        Msg2Player("Х ho祅 th祅h " .. nTotalTask .. " nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 3 Ti猲 Th秓 L�")
		mocHTMoi100Lan = SetTask(GetTask (5940),GetTask (5940)+100)
        return 
    end
    if nTotalTask == 100 then
        tbAwardTemplet:GiveAwardByList(
            {{szName = "B秓 Rng у Xanh ", tbProp = {6, 1, 4907, 1, 1}, nCount = 999}},  --> nCount = 999 nh薾 999 rng  xanh
            format("Get %s", "B秓 Rng  xanh")
        )
        Msg2Player(
            "Х ho祅 th祅h " .. nTotalTask .. " nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 999 B秓 Rng у Xanh"
        )
        return
    end

    if nTotalTask == 200 then
        tbAwardTemplet:GiveAwardByList(
            {{szName = "B秓 Rng у Xanh", tbProp = {6, 1, 4907, 1, 1}, nCount = 999}},
            format("Get %s", "B秓 Rng у Xanh")
        )
        Msg2Player(
            "Х ho祅 th祅h " .. nTotalTask .. " nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 999 B秓 Rng у Xanh"
        )
        return
    end
    if nTotalTask == 1000 then
        tbAwardTemplet:GiveAwardByList(
            {{szName = "B秓 Rng чng S竧", tbProp = {6, 1, 4910, 1, 1}, nCount = 1}},
            format("Get %s", "B秓 Rng чng S竧")
        )
        Msg2Player(
            "Х ho祅 th祅h " .. nTotalTask .. " nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 1 B秓 Rng чng S竧"
        )
        return
    end
    if nTotalTask == 2000 then
        tbAwardTemplet:GiveAwardByList(
            {{szName = "B秓 Rng An Bang Ti觰", tbProp = {6, 1, 4909, 1, 1}, nCount = 1}},
            format("Get %s", "B秓 Rng An Bang Ti觰")
        )
        Msg2Player(
            "Х ho祅 th祅h " .. nTotalTask .. " nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 1 B秓 Rng An Bang Ti觰"
        )
        return
    end
    if nTotalTask == 3000 then
        tbAwardTemplet:GiveAwardByList(
            {{szName = "An Bang B╪g Tinh Th筩h H筺g Li猲", tbProp = {0, 164}, nCount = 1, nQuality = 1}},
            format("Get %s", "An Bang B╪g Tinh Th筩h H筺g Li猲")
        )
        Msg2Player(
            "Х ho祅 th祅h " ..
                nTotalTask .. " nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 1 An Bang B╪g Tinh Th筩h H筺g Li猲"
        )
        return
    end

    -- if nTotalTask == 2500 or nTotalTask == 4500 then
    --tbAwardTemplet:GiveAwardByList({{szName = "Trang B� HKMP", tbProp ={ 0,random(1,140)},nCount=1,nQuality=1}}, format("Get %s", "An Bang B╪g Tinh Th筩h H筺g Li猲"))
    --	Msg2Player("Х ho祅 th祅h "..nTotalTask.." nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 1 Trang B� HKMP");
    --	return
    -- end
    -- if nTotalTask == 6500 then
    --	local idvatpham={6,11,16,21,26,31,39,1,46,51,56,61,71,76,81,94,96,101,111,116,121,126,131}
    --	local henxui=random(1,getn(idvatpham))
    --tbAwardTemplet:GiveAwardByList({{szName = "Trang B� V� Kh� HKMP", tbProp ={ 0,idvatpham[henxui]},nCount=1,nQuality=1}}, format("Get %s", "An Bang B╪g Tinh Th筩h H筺g Li猲"))
    --	Msg2Player("Х ho祅 th祅h "..nTotalTask.." nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 1 Trang B� V� Kh� HKMP");
    --	return
    -- end
    -- if nTotalTask == 9000 then
    --tbAwardTemplet:GiveAwardByList({{szName = "V� Danh Ch� Ho祅", tbProp ={ 0,141},nCount=1,nQuality=1}}, format("Get %s", "An Bang B╪g Tinh Th筩h H筺g Li猲"))
    --	Msg2Player("Х ho祅 th祅h "..nTotalTask.." nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 1 V� Danh Ch� Ho祅");
    --	return
    -- end
    -- if nTotalTask == 12000 then
    --tbAwardTemplet:GiveAwardByList({{szName = "V� Danh Gi韎 Ch�", tbProp ={ 0,142},nCount=1,nQuality=1}}, format("Get %s", "An Bang B╪g Tinh Th筩h H筺g Li猲"))
    --	Msg2Player("Х ho祅 th祅h "..nTotalTask.." nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 1 V� Danh Gi韎 Ch�");
    --	return
    -- end
    -- if nTotalTask == 500 then
    --tbAwardTemplet:GiveAwardByList({{szName = "Trang b� мnh Qu鑓", tbProp ={ 0,random(159,163)},nQuality=1, nCount=1}}, format("Get %s", "Trang B� мnh Qu鑓"))
    --	Msg2Player("Х ho祅 th祅h "..nTotalTask.." nhi謒 v� d� t萿 li猲 ti誴 may m緉 nh薾 頲 1 Trang B� мnh Qu鑓");
    --	return
    -- end

    ---------------------------------------------------------------
    storm_ask2start(4, 1) --Storm 开始挑战
end

function logplayer(zFile, szMsg)
    local handle = openfile(zFile, "a")
    write(handle, format("%s\n", szMsg))
    closefile(handle)
end

function _TaskLinkDebug()
    if (nt_getTask(1030) == 0) and (tl_gettaskcourse() == 1) then
        nt_setTask(1030, 2)
        tl_savetalkvalue(1, 2)
        tl_savetalkvalue(2, 2)
        tl_savetalkvalue(3, 2)
        tl_savetalkvalue(4, 2)
        tl_savetalkvalue(5, 2)
        tl_savetalkvalue(6, 2)
    end
end

function _CancelTaskDebug()
    local nOrgTask = GetTask(DEBUG_TASKVALUE)
    local nDecTask = tl_gettaskstate(4)
    local nDiff = 0

    if nOrgTask == nDecTask or nOrgTask == 0 then
        return 1
    else
        WriteLog(
            " [B秐g nhi謒 v�  ghi nh� sai]" ..
                date(" [%yn╩%mth竛g%dng祔%Hgi�%Mph髏%Sgi﹜]") ..
                    " [T礽 kho秐]" ..
                        GetAccount() ..
                            " [Nh﹏ v藅]" ..
                                GetName() ..
                                    "C� h閕 h駓 b� kh玭g c﹏ b籲g, hi謓 t筰 c� h閕 h駓 b� c遪 <" ..
                                        nDecTask .. "> l莕, ph莕 c� h閕 h駓 b� c遪 <" .. nOrgTask .. ">."
        )
        return 0
    end
end

function _WriteCancelLog(nType, nTime, nCancel)
    if nType == 1 then
        WriteLog(
            " [H駓 b� k� l鬰 nhi謒 v� li猲 ti誴]" ..
                date(" [%y n╩ %m th竛g %d ng祔  %H gi� %M ph髏]") ..
                    ": T礽 kho秐" ..
                        GetAccount() ..
                            ", nh﹏ v藅" ..
                                GetName() ..
                                    "T筰 nhi謒 v� th� " ..
                                        nTime .. "H駓 b� c� h閕 c遪 d� " .. nCancel .. "gi� h駓 b� m閠 l莕 nhi謒 v�."
        )
    else
        WriteLog(
            " [H駓 b� k� l鬰 nhi謒 v� li猲 ti誴]" ..
                date(" [%y n╩ %m th竛g %d ng祔  %H gi� %M ph髏]") ..
                    ": T礽 kho秐" ..
                        GetAccount() ..
                            ", nh﹏ v藅" ..
                                GetName() ..
                                    "T筰 nhi謒 v� th� " .. nTime .. " d飊g 100 t蕀 s琻 H� X� T綾 h駓 b� nhi謒 v�."
        )
    end
end

function menglanjie()
    if (GetExtPoint(0) <= 0 or GetLevel() < 30) then
        Say("Xin l鏸! Ch� c� ngi ch琲 t� c蕄 <color=red>30,  n筽 th�<color> m韎 c� th� tham gia ho箃 ng n祔", 0)
        return
    end
    local tab_Content = {
        "Ta mu鑞 k誸 v遪g Kim Li猲 Hoa [c莕 9 Kim Li猲 Hoa]/#process(1)",
        "Ta mu鑞 h頿 th祅h v遪g M閏 Li猲 Hoa [c莕 9 M閏 Li猲 Hoa]/#process(2)",
        "Ta mu鑞 h頿 th祅h v遪g Th駓 Li猲 Hoa [c莕 9 Th駓 Li猲 Hoa]/#process(3)",
        "Ta mu鑞 h頿 th祅h v遪g H醓 Li猲 Hoa [c莕 9 H醓 Li猲 Hoa]/#process(4)",
        "Ta mu鑞 h頿 th祅h v遪g Th� Li猲 Hoa [c莕 9 Th� Li猲 Hoa]/#process(5)",
        "Ch� n th╩ 玭g ch髏 th玦!/Task_Wait"
    }
    Say(
        "Ch� c莕 ngi 甶 thu th藀  s� Li猲 Hoa v� <color=yellow>" ..
            MAKING_COST ..
                "<color> lng ta s� gi髉 ngi k誸 v遪g hoa tuy謙 p. Nh璶g l璾 �: m鏸 ng祔 ch� c� th� k誸 頲 2 v遪g Li猲 Hoa c飊g thu閏 t輓h m� th玦.",
        getn(tab_Content),
        tab_Content
    )
end

--{name, product}
MAKING_COST = 10000
MAKING_COUNT = 9
tab_Flower = {
    {1126, "Kim", 1131, 1760, 1761},
    {1127, "M閏", 1132, 1762, 1763},
    {1128, "Th駓 ", 1133, 1764, 1765},
    {1129, "H醓", 1134, 1766, 1767},
    {1130, "Th� ", 1135, 1768, 1769}
}

function process(nIdx)
    if (nIdx < 1 or nIdx > getn(tab_Flower)) then
        return
    end

    local nIndex
    if (nIdx == 1) then
        nIndex = 1
    elseif (nIdx == 2) then
        nIndex = 2
    elseif (nIdx == 3) then
        nIndex = 3
    elseif (nIdx == 4) then
        nIndex = 4
    elseif (nIdx == 5) then
        nIndex = 5
    end

    Say(
        "Mu鑞 l祄 1 v遪g <color=yellow>" ..
            tab_Flower[nIdx][2] ..
                " Li猲 Hoa<color> c莕 c� 9 <color=yellow>" ..
                    tab_Flower[nIdx][2] .. "Li猲 Hoa<color>. Ngi x竎 nh l祄 ch�?",
        2,
        "ng! Xin l穙 b鑙 tr� t礽!/#make_round(" .. nIndex .. ")",
        "Ta s� quay l筰 sau!/Task_Wait"
    )
end

function make_round(nIdx)
    if (GetCash() < MAKING_COST) then
        Say("Xin t譵  10000 lng r錳 h穣 quay l筰! Ta � y ch�!", 1, "Л頲 th玦! Ta 甶 l蕐 th猰 ti襫!/Task_Wait")
        return
    end

    local nCount = CalcEquiproomItemCount(6, 1, tab_Flower[nIdx][1], -1)
    if (nCount < 9) then
        Say(
            "Ngi h譶h nh� ch璦  <color=yellow>" ..
                tab_Flower[nIdx][2] ..
                    " Li猲 Hoa<color=yellow>. Ch璦  9 <color=yellow>" ..
                        tab_Flower[nIdx][2] ..
                            " Li猲 Hoa<color> th� ta kh玭g th� gi髉 ngi k誸 v遪g " ..
                                tab_Flower[nIdx][2] .. " Li猲 Hoa ho祅",
            1,
            "в ta 甶 chu萵 b� !/Task_Wait"
        )
        return
    end

    local nDate = tonumber(GetLocalDate("%y%m%d"))
    if (nDate ~= GetTask(tab_Flower[nIdx][4])) then
        SetTask(tab_Flower[nIdx][4], nDate)
        SetTask(tab_Flower[nIdx][5], 0)
    end

    local nTimes = GetTask(tab_Flower[nIdx][5])
    if (nTimes >= 2) then
        Say(tab_Flower[nIdx][2] .. "H玬 nay  k誸 th祅h c玭g 2 v遪g r錳! Mai h穣 n nh�!", 0)
        return
    end

    Pay(MAKING_COST)
    ConsumeEquiproomItem(9, 6, 1, tab_Flower[nIdx][1], -1)
    SetTask(tab_Flower[nIdx][5], nTimes + 1)
    AddItem(6, 1, tab_Flower[nIdx][3], 1, 0, 0, 0)
    Say(
        "V遪g " .. tab_Flower[nIdx][2] .. " Li猲 Hoa c馻 ngi  k誸 xong. H穣 mang n� n ch� L� Quan 甶!",
        1,
        "Nh薾 v遪g hoa/Task_Wait"
    )
    Msg2Player("B筺 nh薾 頲 m閠" .. tab_Flower[nIdx][2] .. " Li猲 Hoa ho祅")
end