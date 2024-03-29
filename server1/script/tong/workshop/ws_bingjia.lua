Include("\\script\\tong\\workshop\\workshop_head.lua")

aLevelCoef = {}
aLevelScale = {}
aLevelStoneValue = {}
aLevelLingPaiPrice	=	{};		--Boss召唤符等级帮会资金需求
function LoadLevelData()
	local b1 = TabFile_Load("\\settings\\tong\\workshop\\bingjia_level_data.txt", "bingjiaLevelData")
	if b1~=1 then
		print("тc t謕 config binh gi竝 phng th蕋 b筰!")
		return
	end
	local nRowCount = TabFile_GetRowCount("bingjiaLevelData")
	for y = 2, nRowCount do
		local nLevel = tonumber(TabFile_GetCell("bingjiaLevelData", y, "LEVEL"))
		aLevelCoef[nLevel] = tonumber(TabFile_GetCell("bingjiaLevelData", y, "OUTPUT_COEF"))
		aLevelScale[nLevel] = tonumber(TabFile_GetCell("bingjiaLevelData", y, "SCALE"))
		aLevelStoneValue[nLevel] = tonumber(TabFile_GetCell("bingjiaLevelData", y, "STONE_VALUE"))	
		aLevelLingPaiPrice[nLevel] = tonumber(TabFile_GetCell("bingjiaLevelData", y, "LINGPAI_PRICE"))
	end
	--TabFile_UnLoad("bingjiaLevelData")
end
LoadLevelData()

if MODEL_GAMESERVER == 1 or MODEL_RELAY == 1 then
--------------------如果非客户端---------------------------
	if MODEL_GAMESERVER == 1 then	--GAMESERVER 才有的
		Include("\\script\\item\\techan_zijingao.lua");
	end;

function ws_main(nTongID, nWorkshopID)
	if SVR_CheckUse(nTongID, nWorkshopID, "T鎛g qu秐 Binh gi竝 phng") ~= 1 then
		return 0
	end
	local aryszContent = {
		"Nh薾 Tr蕁 bang chi th筩h/#use_g_1".."("..nTongID..","..nWorkshopID..")",
		"Ch� t筼 trang b�/#use_g_2".."("..nTongID..","..nWorkshopID..")",
	}
	
	if (GetProductRegion() == "cn") then
		tinsert(aryszContent, "Nh薾 T� kim c祇/#use_zijingao("..nTongID..","..nWor);
	elseif(GetProductRegion() == "vn") then
--		tinsert(aryszContent, "Nh薾 l謓h b礽 g鋓 Boss/#use_g_4_ok("..nTongID..","..nWorkshopID..")");
	end;
	
	tinsert(aryszContent, "Kh玭g c莕 u/cancel");
	
	Say("<#>T鎛g qu秐 Binh gi竝 phng: Mu鑞 ch� t筼 th莕 binh l頸 kh�, ngo礽 vi謈 ph秈 c� v藅 li謚 c莕 thi誸, c遪 ph秈 tr玭g ch� � thi猲 c�! Tr蕁 bang chi th筩h l� v藅 h蕄 th� 頲 linh kh� c馻 t tr阨, tinh hoa c馻 nh藅 nguy謙, c� th� n﹏g cao 頲 x竎 su蕋 th祅h c玭g!", 
		getn(aryszContent), 
		aryszContent);
	return 1;
end

----------------------------------------------------------------------------------------------
--//////////////////
--紫金镐
--每次购买8小时(8*60)，时间记到TaskID1739
--当角色在桃花岛时，有程序给与挖出的物品，并扣除时间，同普通矿镐


function use_zijingao(nTongID, nWorkshopID)
	Say("<#>T鎛g qu秐 Binh gi竝 phng: 'T� Kim C祇 c� th� gi髉 ngi o kho竛g tr猲 Уo hoa o, s� d鬾g n� c� th� nhanh ch鉵g t譵 頲 huy襫 tinh kho竛g th筩h c蕄 6 tr� l猲, th莕 b� kho竛g th筩h v� c竎 lo筰  kh� t譵 kh竎. T� Kim C祇 c� th阨 gian s� d鬾g l� 8 gi�,  s� h鱱 1 T� Kim C祇 c莕 s� d鬾g <color=yellow>"..VALUE_ZIJIGAO_CONTRIBUTION.."<color> 甶觤 c鑞g hi課, ngi ng � kh玭g?", 4,
	"<#>Ti誴 nh薾 1 T� Kim C祇/#bj_sure2zijingao("..nTongID..","..nWorkshopID..")",
	"<#>Tra xem th阨 gian c遪 l筰 c馻 T� Kim C祇/bj_checktime_zijin",
	"<#> T譵 hi觰 T� Kim C祇/bj_help_zijigao",
	"<#>R阨 kh醝/cancel")
end

function bj_help_zijigao()
	Say("<#>T鎛g qu秐 Binh gi竝 phng: Ngi c� th� mang T� Kim C祇 l猲 Уo Hoa Фo  o kho竛g th筩h qu� b竨. L璾 � l� kh玭g th� d飊g T� Kim C祇 chung v韎 c竎 c玭g c� o kho竛g thng kh竎. N誹 d飊g chung th� trc ti猲 s� tr� th阨 gian s� d鬾g T� Kim C祇, sau  l� n c玭g c� kia. ", 0)
end

function bj_sure2zijingao(nTongID, nWorkshopID)
	local bPause = TONG_GetPauseState(nTongID)
	if (bPause == 1) then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: Th藅 ng ti誧, hi謓 nay Binh gi竝 phng 產ng t筸 ng璶g ho箃 ng. C莕 ph秈 chuy觧 ng﹏ s竎h bang h閕 v祇 ng﹏ s竎h chi課 b� b秓 tr� h祅g tu莕, th� 24h00 ng祔 h玬  m韎 c� th� khai m� l筰 T竎 Phng.", 0)
		Msg2Player("<#>T竎 Phng t筸 ng璶g ho箃 ng, ch鴆 n╪g n祔 kh玭g th� s� d鬾g.")
		return
	end
	local szTongName , nTongID = GetTongName()
	if (nTongID == 0) then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: Чi hi謕 v蒼 ch璦 gia nh藀 bang h閕, n t譵 ta c� vi謈 g�?", 0)
		return 
	end
	local nUseLevel = TWS_GetUseLevel(nTongID, nWorkshopID)	--获得使用等级
	if (nUseLevel < 7) then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: Th藅 ng ti誧, ng c蕄 s� d鬾g c馻 Binh gi竝 phng ch璦 t c蕄 7, kh玭g th� ti誴 nh薾 bang v藅.", 0)
		Msg2Player("<#>Ъng c蕄 s� d鬾g c馻 t竎 phng ch璦 t c蕄 7 th� ch璦 s� d鬾g 頲.")
		return
	end
	if (TWS_GetDayOutput(nTongID, nWorkshopID) < (VALUE_ZIJIGAO_CONTRIBUTION )) then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: H玬 nay T� Kim C祇  ph﹏ ph竧 h誸 r錳, ng祔 mai h穣 n v藋!", 0)
		return
	end
	
	if (GetContribution() < VALUE_ZIJIGAO_CONTRIBUTION or AddContribution(-VALUE_ZIJIGAO_CONTRIBUTION) ~= 1)then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: Kh玭g 頲 r錳, 甶觤 c鑞g hi課 c馻 ngi kh玭g  <color=yellow>"..VALUE_ZIJIGAO_CONTRIBUTION.."<color> 甶觤, kh玭g th� i l蕐 bang v藅.", 0)
		Msg2Player("<#>觤 c鑞g hi課 c� nh﹏ kh玭g , kh玭g th� s� d鬾g ch鴆 n╪g n祔.")
		return 0
	end
	
	TWS_ApplyAddDayOutput(nTongID, nWorkshopID, -(VALUE_ZIJIGAO_CONTRIBUTION ))
	nRestH, nRestM = addzijingao_main();
	Msg2Player("<#>B筺  mua th祅h c玭g 1 T� Kim C祇, th阨 gian s� d鬾g c遪 l筰 l� "..nRestH.."gi� "..nRestM.."ph髏.")
	Say("<#>T鎛g qu秐 Binh gi竝 phng: B筺  mua 頲 1 T� Kim C祇, th阨 gian s� d鬾g c遪 l筰 l� "..nRestH.."gi� "..nRestM.."ph髏.", 0)
end

function bj_checktime_zijin()
	local lasttime = GetTask(TASKID_TECHAN_ZIJINGAO)
	if (lasttime < 10) then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: Th藅 ng ti誧, T� Kim C祇 n祔  b� h醤g, c莕 ph秈 mua c竔 kh竎.", 0)
	else
		local nRestH, nRestM = GetMinAndSec(lasttime)
		if (nRestH == 0) then
			Say("<#>T鎛g qu秐 Binh gi竝 phng: T� Kim C祇 n祔 v蒼 c遪 s� d鬾g 頲<color=yellow>"..nRestM.."<color> ph髏.", 0)
		else
			Say("<#>T鎛g qu秐 Binh gi竝 phng: T� Kim C祇 n祔 v蒼 c遪 s� d鬾g 頲<color=yellow>"..nRestH.."<color> gi� <color=yellow>"..nRestM.."<color> ph髏.", 0)
		end
	end
end

-----将秒传换成分与秒，比如62s = 1m2s
function GetMinAndSec(nSec)
nRestMin = floor(nSec / 60);
nRestSec = mod(nSec,60)
return nRestMin, nRestSec;
end;



--------
----------------------------------------------------
function MAINTAIN_R(nTongID, nWorkshopID) --日常活动
	if nWorkshopID <= 0 then
		return 0
	end	
	local eType = TWS_GetType(nTongID, nWorkshopID)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	local nTotal = floor(aLevelCoef[nLevel]*(TONG_GetMemberCount(nTongID)))
	TWS_ApplyAddDayOutput(nTongID, nWorkshopID, nTotal) --初始化可领取石头总价值量
	return 1
end

function USE_R(nTongID, nWorkshopID, nUse)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	if nLevel < 1 then
		return 0
	end
	local nLeft = TWS_GetDayOutput(nTongID, nWorkshopID);
	if (nUse ~= 4) then
		if (TWS_IsOpen(nTongID, nWorkshopID) ~= 1 or nLeft <= 0) then
			return 0
		end	
	else
		if (TWS_IsOpen(nTongID, nWorkshopID) ~= 1 or nLeft < 100) then
			return 0
		end
		if (TONG_GetBuildFund(nTongID) < aLevelLingPaiPrice[nLevel]) then
			return 0
		end
		if (TONG_ApplyAddBuildFund(nTongID, -aLevelLingPaiPrice[nLevel]) ~= 1) then
			return 0
		end

		TWS_ApplyAddDayOutput(nTongID, nWorkshopID,  -100)
		TONG_ApplyAddTaskValue(nTongID, TONGTSK_WEEK_WSCONSUME, 2688)
		TONG_ApplyAddTaskValue(nTongID, TONGTSK_WEEK_BFCONSUME, aLevelLingPaiPrice[nLevel])	
	end;
	return 1	
end

function USE_G_1(nTongID, nWorkshopID)
	ws_main(nTongID, nWorkshopID)
end


function use_g_1(nTongID, nWorkshopID)
	local nTime = tonumber(GetLocalDate("%H%M"))
	if (nTime >= 1230 and nTime <= 2200) then
			if (TWS_GetDayOutput(nTongID, nWorkshopID) <= 0) then
				Say("<#>T鎛g qu秐 Binh gi竝 phng: Tr蕁 bang chi th筩h ng祔 h玬 nay  ph﹏ ph竧 h誸 r錳, ng祔 mai h穣 n v藋!", 0)
				return 0;
			end
			local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
			TWS_ApplyUse(nTongID, nWorkshopID, 1)
	else
			Talk(1,"","Th阨 gian nh薾 v藅 ph萴 l� t� 12h30 n 22h h籲g ng祔 !")
			return
	end

end

function use_g_2(nTongID, nWorkshopID)
	Say("<#>T鎛g qu秐 Binh gi竝 phng: T筰 y, ngi c� th� kh秏 n筸 trang b� huy襫 tinh v� trang b� Ho祅g Kim, tr蕁 bang chi th筩h gi髉 t╪g x竎 su蕋 th祅h c玭g v� t╪g ch蕋 lng thu閏 t輓h � trang b� huy襫 tinh!", 2, "B総 u ch� t筼/#compound("..nTongID..","..
		nWorkshopID..",".."2)", "Kh玭g c莕!/cancel")
end		

function use_g_3(nTongID, nWorkshopID)
	Say("<#>T鎛g qu秐 Binh gi竝 phng: S� d鬾g h閕 t﹎ c� th� kh秏 n筸 頲 trang b� huy襫 tinh t鑤, nh璶g c竔 gi� kh玭g nh� ch髏 n祇!", 2, "B総 u ch� t筼/#compound("..nTongID..","..
		nWorkshopID..",".."3)", "Kh玭g c莕!/cancel")
end

function use_g_4_ok(nTongID, nWorkshopID)
	local nTongLevel = TONG_GetBuildLevel(nTongID)
	if (nTongLevel < 2)then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: Ъng c蕄 ki課 thi誸 bang t n c蕄 <color=red>2<color> m韎 c� th� ch� t筼 L謓h b礽 g鋓 Boss!", 0)
		return
	end
	if (TONGM_CheckRight(nTongID, GetName(), RIGHTID_WORKSHOP) ~= 1) then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: Kh玭g c� quy襫 qu秐 l� t竎 phng, kh玭g th� nh薾 l謓h b礽 g鋓 Boss!", 0)
		return
	end
	_dbgMsg("S� l莕 nh薾 c遪 l筰 * 100: "..TWS_GetDayOutput(nTongID, nWorkshopID))
	if (TWS_GetDayOutput(nTongID, nWorkshopID) < 100) then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: H玬 nay  ph竧 xong l謓h b礽 g鋓 Boss, ng祔 mai h穣 n v藋!", 0)
		return 0;
	end
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
---	Say("<#>T鎛g qu秐 Binh gi竝 phng: C莕 s� d鬾g <color=water>"..aLevelLingPaiPrice[nLevel].."<color> v筺 ng﹏ s竎h ki課 thi誸 bang  nh薾 1 l謓h b礽 g鋓 Boss, ngi ng � kh玭g?", 2,
	--	"Ti誴 nh薾/#use_g_4_ok2".."("..nTongID..","..nWorkshopID..")", "H駓 b� /cancel")
end

function use_g_4_ok2(nTongID, nWorkshopID)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	if (TONG_GetBuildFund(nTongID) < aLevelLingPaiPrice[nLevel]) then
		Say("<#>T鎛g qu秐 Binh gi竝 phng: Th藅 ng ti誧, ng﹏ s竎h ki課 thi誸 bang kh玭g , kh玭g th� nh薾!", 0)
		return
	end
	TWS_ApplyUse(nTongID, nWorkshopID, 4)
end


function compound(nTongID, nWorkshopID, nSel)
	TWS_ApplyUse(nTongID, nWorkshopID, nSel)
end

function _makefun(nTongID, nWorkshopID, nLevelStone)
	return nLevelStone.."c蕄/#stone("..nTongID..","..nWorkshopID..","..nLevelStone..")"
end

function USE_G_2(nTongID, nWorkshopID, nChose)
	local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
	if (nChose == 1)then --镇帮之石
		Sale(166, CURRENCYTYPE_CONTRIBUTION, aLevelScale[nLevel], "BuyCallBack1(%d,%d,"..nTongID..","..nWorkshopID..")")
	elseif(nChose == 2)then --普通打造
		FoundryItem(4)
	elseif(nChose == 3)then	--会心打造
		FoundryItem(2)
	elseif(nChose == 4) then
		local nLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
		local szMsg = GetName().." ti猽 t鑞 "..aLevelLingPaiPrice[nLevel].." v筺 ng﹏ s竎h ki課 thi誸 bang  i l蕐 1 l謓h b礽 g鋓 Boss c蕄 "..nLevel.."!"
		Msg2Tong(nTongID, szMsg)
		TONG_ApplyAddEventRecord(nTongID, szMsg)
		AddItem(6, 1, 1022, nLevel, 0, 0, 0);
	end	
end

function BuyCallBack1(nItemIdx, nPrice, nTongID, nWorkshopID)
	local nValue = TWS_GetDayOutput(nTongID, nWorkshopID)
	_dbgMsg("Gi� tr� lng c遪 l筰"..nValue)
	local nLevel = GetItemLevel(nItemIdx)
	local nOutputValue = aLevelStoneValue[nLevel]
	if (nValue < nOutputValue)then
		CloseShop()
		Say("<#>T鎛g qu秐 Binh gi竝 phng: Tr蕁 bang chi th筩h ng祔 h玬 nay  ph﹏ ph竧 h誸 r錳, ng祔 mai h穣 n v藋!", 0)
		return 0
	end	
	TWS_ApplyAddDayOutput(nTongID, nWorkshopID, -nOutputValue)
	TONG_ApplyAddTaskValue(nTongID, TONGTSK_WEEK_WSCONSUME, aLevelStoneValue[nLevel]/10000)
	return 1
end

function cancel()
end

else
-----------------如果是客户端---------------
function GET_DESC(nTongID, nWorkshopID, nType)
	if (nTongID == 0) then
		return "<color=water>Kh玭g c� bang h閕"	
	end
	local bOpen	--是否开启
	local bPause --是否暂停
	local nCurLevel --当前等级
	local nUseLevel --当前使用等级
	local nOpenFund --当前开启消耗
	local nMaintainFund --当前维护消耗
	local nScale  --当前换取镇帮之石折扣
	local dStoneCount	--当前每日换取镇帮之石总量提高
	local nPrice  --当前换取boss召唤符的建设基金
	local dTokenCount	--当前每日boss召唤符产出总量提高
	local nDoubleOdds  --当前召唤出2个黄金Boss的几率
	if (nWorkshopID ~= 0)then
		bOpen = TWS_IsOpen(nTongID, nWorkshopID) 
		bPause = TONG_GetPauseState(nTongID) 
		nCurLevel = TWS_GetLevel(nTongID, nWorkshopID) 
		nUseLevel = TWS_GetUseLevel(nTongID, nWorkshopID)
		nOpenFund = wsGetOpenCost(nTongID, nType, nUseLevel) 
		nMaintainFund = wsGetMaintainCost(nTongID, nType, nUseLevel, bOpen)  
		if(nUseLevel > 0)then
			nScale = format("%.1f",aLevelScale[nUseLevel] / 10)
			dStoneCount = format("%.2f", aLevelCoef[nUseLevel] / aLevelCoef[1])	
			nPrice = aLevelLingPaiPrice[nUseLevel]
			dTokenCount = format("%.2f", aLevelCoef[nUseLevel] / aLevelCoef[1])	
			nDoubleOdds = 160 - (nUseLevel - 1) * 10
		else
			nScale = "--"
			dStoneCount = "--"
			nPrice = "--"
			dTokenCount = "--"
			nDoubleOdds = "--"
		end
	else	--作坊未建立时只显示下一级信息
		nCurLevel = 0
		bOpen = 1
		nUseLevel = 0
	end
	--下级信息
	local nUpgradeCostFund, nNextMaintainFund, nNextScale, nNextOpenFund, dNextStoneCount, nNextPrice, dNextTokenCount,nNextDoubleOdds
	if (nCurLevel < wsGetMaxLevel(nTongID, nType))then
		nUpgradeCostFund = wsGetUpgradeCostFund(nTongID, nType, nCurLevel)  --升级消耗
	else
		nUpgradeCostFund = "--"	
	end
	if (nUseLevel < wsGetMaxLevel(nTongID, nType))then
		nNextMaintainFund = wsGetMaintainCost(nTongID, nType, nUseLevel+1, bOpen)  --下级维护消耗
		nNextOpenFund = wsGetOpenCost(nTongID, nType, nUseLevel+1) 	--下级开启消耗
		nNextScale = format("%.1f",aLevelScale[nUseLevel + 1] / 10) --下级换取镇帮之石折扣
		dNextStoneCount = format("%.2f", aLevelCoef[nUseLevel + 1] / aLevelCoef[1]) --下级每日换取镇帮之石总量提高
		nNextPrice = aLevelLingPaiPrice[nUseLevel + 1] --下级换取boss召唤符的建设基金
		dNextTokenCount = format("%.2f", aLevelCoef[nUseLevel + 1] / aLevelCoef[1]) --下级每日boss召唤符产出总量提高
		nNextDoubleOdds = 160 - nCurLevel * 10 --下级召唤出2个黄金Boss的几率
	else
		nNextMaintainFund = "--"
		nNextOpenFund = "--"
		nNextScale = "--"
		dNextStoneCount = "--"
		nNextPrice = "--"
		dNextTokenCount = "--"
		nNextDoubleOdds = "--"
	end	
	if (nWorkshopID ~= 0)then
		local state 
		if bPause == 1 then state="<color=yellow>T筸 ng鮪g" elseif bOpen == 1 then state="<color=green>Khai m�" else state="<color=red>сng c鯽" end
		local szMsg = "Tr筺g th竔 t竎 phng: "..state.."<color>\n"..
			"Ъng c蕄 t竎 phng: <color=gold>"..nCurLevel.."<color>\n"..
			"Ъng c蕄 s� d鬾g hi謓 t筰: <color=gold>"..nUseLevel.."<color>\n"..
			"S� lng tr蕁 bang chi th筩h m鏸 ng祔 t╪g l猲: <color=gold>"..dStoneCount.."<color> l莕\n"..		
			"Gi� 璾 i i Tr蕁 Bang Chi Th筩h: <color=gold>"..nScale.."<color> ph莕 tr╩\n"..
			"S� l謓h b礽 g鋓 Boss t筼 ra m鏸 ng祔 t╪g l猲: <color=gold>"..dTokenCount.."<color> l莕\n"..	
			"X竎 su蕋 l謓h b礽 g鋓 ra Boss th� 2: <color=gold>1/"..nDoubleOdds.."<color>\n"..		
			"Ng﹏ s竎h ki課 thi誸 c莕  i l謓h b礽 g鋓 Boss: <color=gold>"..nPrice.." v筺<color>\n"..
			"Ng﹏ s竎h chi課 b� chi cho ph� b秓 tr� bang m鏸 ng祔: <color=gold>"..nMaintainFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 ban u: <color=gold>"..nOpenFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸  n﹏g c蕄: <color=gold>"..nUpgradeCostFund.." v筺<color>\n"..
			"<color=green>Ъng c蕄 s� d鬾g k� ti誴 <color>\n"..
			"<color=water>S秐 lng tr蕁 bang chi th筩h m鏸 ng祔 t╪g l猲: <color=Violet>"..dNextStoneCount.."<color> l莕\n"..	
			"фi 甶觤 璾 i Tr蕁 bang chi th筩h: <color=Violet>"..nNextScale.."<color> ph莕 tr╩\n"..
			"X竎 su蕋 l謓h b礽 g鋓 ra Boss th� 2: <color=Violet>1/"..nNextDoubleOdds.."<color>\n"..	
			"Ng﹏ s竎h ki課 thi誸 c莕  i l謓h b礽 g鋓 Boss: <color=Violet>"..nNextPrice.." v筺<color>\n"..
			"Ng﹏ s竎h chi課 b� chi cho ph� b秓 tr� bang m鏸 ng祔: <color=Violet>"..nNextMaintainFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 ban u: <color=Violet>"..nNextOpenFund.." v筺<color>\n"
		return szMsg
	else
		local szMsg = "Tr筺g th竔 t竎 phng: <color=water>Ch璦 th祅h l藀<color>\n"..
			"Ng﹏ s竎h ki課 th誸 c莕  x﹜ d鵱g: <color=gold>"..nUpgradeCostFund.." v筺<color>\n"..
			"<color=green>Ъng c蕄 k� ti誴 <color>\n"..
			"<color=water>S秐 lng tr蕁 bang chi th筩h m鏸 ng祔 t╪g l猲: <color=Violet>"..dNextStoneCount.."<color> l莕\n"..	
			"фi 甶觤 璾 i Tr蕁 bang chi th筩h: <color=Violet>"..nNextScale.."<color> ph莕 tr╩\n"..
			"X竎 su蕋 l謓h b礽 g鋓 ra Boss th� 2: <color=Violet>1/"..nNextDoubleOdds.."<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 c莕  i l謓h b礽 g鋓 Boss: <color=Violet>"..nNextPrice.." v筺<color>\n"..
			"Ng﹏ s竎h chi課 b� chi cho ph� b秓 tr� bang m鏸 ng祔: <color=Violet>"..nNextMaintainFund.." v筺<color>\n"..
			"Ng﹏ s竎h ki課 thi誸 ban u: <color=Violet>"..nNextOpenFund.." v筺<color>\n"
		return szMsg
	end
end
------------------------------
end