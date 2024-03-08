-- »ªÉ½ÀÞÌ¨¶Ô»°
--Include("\\script\\global\\quanlygame\\thuonghoatdong.lua");
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\missions\\huashanqunzhan\\high_grade\\ready\\readyclass.lua")
Include("\\script\\missions\\huashanqunzhan\\mid_grade\\ready\\readyclass.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
IncludeLib("LEAGUE")
IncludeLib("TIMER")


function huashanqunzhan_SignUpMain(nStep)
	local tbSay = nil
	local nPlayerLevel = GetLevel()
	
	local tbReadyMission = nil
	if nPlayerLevel < 90 then
		tbReadyMission = nil
	elseif nPlayerLevel >= 90 then
		tbReadyMission = huashanqunzhan_tbReady_H
	end
	
	local nState = tbReadyMission and tbReadyMission:CheckMathState() or nil
	if nStep == 1 then
		if nState == 1 then
			tbSay = 
			{
				format("<dec><npc>L«i §µi Lo¹n ChiÕn b¾t ®Çu b¸o danh ®¹i hiÖp cã ®ång ý tham gia kh«ng?"),
				 "B¸o danh tham gia/#huashanqunzhan_SignUpMain(2)",
			}
		elseif nState == 0 or nState == -1 then
			local tbWorld = 
			{

				{"TrËn ®Êu","Ch­a Tíi Giê","B¾t §Çu"},
			}
			local szMsg = nState == 0 and "TrËn ®Êu vÉn ch­a b¾t ®Çu." or "TrËn ®Êu ®ang ®­îc tiÕn hµnh."
			tbSay = 
			{
				"<dec><npc>"..szMsg.."Thêi gian thi ®Êu nh­ sau:<enter>"..huashanqunzhan_drawtable(tbWorld),
			}
		elseif nState == -2 then
			local tbMacthMission	= tbReadyMission.tbRef
		
			local szWinerName		= tbMacthMission:GetMissionS(tbMacthMission.tbMissionS.WINER_INDEX)
			local szMsg				= (szWinerName and szWinerName ~= "")  and format("Ng­êi chiÕn th¾ng: <color=yellow>%s<color>", szWinerName) or "TrËn nµy kh«ng cã Ng­êi chiÕn th¾ng"
			
			tbSay = 
			{
				format("<dec><npc>L«i §µi Lo¹n ChiÕn ®· ph©n th¾ng b¹i, %s", szMsg),
				
			}
		elseif nState == nil then
			tbSay = 
			{
				"<dec><npc>Ng­êi ch¬i cÊp trªn 50 ®· n¹p thÎ míi cã thÓ tham gia §Êu Tr­êng. CÊp tõ 50 ®Õn 119 cã thÓ tham gia §Êu Tr­êng  trung cÊp; cÊp 120 trë lªn cã thÓ tham gia §Êu Tr­êng  cao cÊp. Ng­¬i ch­a ®ñ ®¼ng cÊp ®Ó tham gia.",
			}
		end		
	elseif nStep == 2 then
		if GetCash() < tbReadyMission.nMoney then
			return Say(format("PhÝ b¸o danh lµ %d l­îng, ng©n l­îng trªn ng­êi kh«ng ®ñ.", tbReadyMission.nMoney), 0)
		end
		
		
		if tbReadyMission == nil then
			return Say("§¼ng cÊp ch­a ®ñ 50, kh«ng thÓ tham gia b¸o danh.", 0)
		else
			return huashanqunzhan_SignUpStep(tbReadyMission)
		end
	end
	
	if  huashanqunzhan_CheckGetAward(tbReadyMission.tbRef) then
		tinsert(tbSay,2,"PhÇn th­ëng cho ng­êi chiÕn th¾ng./huashanqunzhan_GetAward")
	end
	
	tinsert(tbSay, "KÕt thóc ®èi tho¹i/OnCancel")
	CreateTaskSay(tbSay)
end


function huashanqunzhan_SignUpStep(tbMission)
	local nState = tbMission:CheckMathState()
	if nState == 1 then
	tbMission:GotoReadyPlace()
	local szNews = format("§¹i hiÖp <color=green>"..GetName().."<color=yellow> §· vµo L«i §µi Lo¹n ChiÕn");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	mautrogiup()
	elseif nState == 0 then
		Say("TrËn ®Êu vÉn ch­a b¾t ®Çu.", 0)
	elseif nState == -1 then
		Say("TrËn ®Êu ®ang tiÕn hµnh, xin ®îi ®Õn trËn sau.", 0)
	elseif nState == -2 then
		
		local tbMacthMission	= tbMission.tbRef
		local szWinerName		= tbMacthMission:GetMissionS(tbMacthMission.tbMissionS.WINER_INDEX)
		local szMsg				= szWinerName and format("Ng­êi chiÕn th¾ng: <color=yellow>%s<color>", szWinerName) or "TrËn nµy kh«ng cã Ng­êi chiÕn th¾ng"
		local tbSay = 
		{
			format("<dec><npc>TrËn L«i §µi ®· ph©n th¾ng b¹i, %s", szMsg),
			"KÕt thóc ®èi tho¹i/OnCancel"
		}
		CreateTaskSay(tbSay)
	end
end

function mautrogiup()
	local totalcount =CalcFreeItemCellCount();
	if totalcount == 0 then 
	return
	end	
	for k=1,totalcount do 		
	AddItem(1,2,0,5,0,0,0,0);
	end
end

function huashanqunzhan_GetAward()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=yellow>Chóc mõng ®¹i cao thñ <color=green>%s<enter><color=yellow> <pic=26><pic=125>®· nhËn  <color=pink><%s><color=yellow><enter>PhÇn th­ëng <color=green>< §Ö NhÊt §Êu Tr­êng ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
	local tbAward =
	{

		--{szName="Tiªn thæ lé",tbProp={6,1,1765,1,0,0},nCount=1, CallBack= _Message},
		--{szName="quÕ hoa t­u",tbProp={6,1,125,1,0,0},nCount=1, CallBack= _Message},
		--{szName="quÕ hoa t­u",tbProp={6,1,125,1,0,0},nCount=4, },
				--{szName="TiÒn",tbProp={4,417,1,1,0,0},nCount=1, },
			--	{szName="TiÒn",tbProp={4,417,1,1,0,0},nCount=99, CallBack= _Message, },

				--{szName="thiÕt la h¸n lÔ bao",tbProp={6,1,1665,1,0,0},nCount=1, CallBack= _Message},
				{szName="TTL db",tbProp={6,1,1765,1,0,0},nCount=1, CallBack= _Message},

		--{szName="huyÕt ngäc",tbProp={6,1,4455,1,0,0},nCount=9,},

	}
	local nCount = GetTask(huashanqunzhan.TSK_Winer)
	
	tinsert(tbAward, { nJxb = 10 * nCount})
	--tbAwardTemplet:GiveAwardByList({{szName="R­¬ng lo¹i 2",tbProp={6,1,4489,1,0,0},nCount=5,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "mat na ngu hanh",tbProp={0,11,883,1,0,0},nCount=1,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Vâ hån chu t­íc",tbProp={6,1,4465,1,1},nCount=100,},}, "test", 1);	
--tbAwardTemplet:GiveAwardByList({{szName="MËt th­",tbProp={6,1,1477,1,1},nCount=3,},}, "test", 1);	
--tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,1326,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,1327,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,1328,1,1,0},nCount=1,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "M¶nh",tbProp={4,1329,1,1,0},nCount=1,},}, "test", 1);
	tbAwardTemplet:GiveAwardByList(tbAward, "L«i §µi Sinh Tö")
	SetTask(huashanqunzhan.TSK_Winer, 0)
--SetTask(5110,GetTask(5110)+20)
--Msg2Player("<color=green>Chóc mõng ®¹i hiÖp nhËn ®­îc<color=pink> 20 ®iÓm n¨ng ®éng.")	
StackExp(10000000);
--Earn(150000)
PlayerFunLib:AddSkillState(1551,1,3,1555200,1)
PlayerFunLib:AddSkillState(1552,1,3,1555200,1)
PlayerFunLib:AddSkillState(1564,1,3,1555200,1)

vongsangtop1()
end





function huashanqunzhan_CheckGetAward(tbMission)
	local nState = tbMission:GetMissionState()
	local nPlayerMathId = GetTask(tbMission.TSK_MatchId)
	local nMathId = tbMission:GetMissionV(tbMission.tbMissionV.MATCH_ID)
	if nPlayerMathId == nMathId and nState == 2 and GetTask(tbMission.TSK_Winer) > 0 then
		
		return 1
	end
	return nil
end

function OnCancel()
	
end

function vongsangtop1()
n_title = 374 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 1*24*60*60;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
end


function huashanqunzhan_drawtable(tbWord)
	local nLen = 0
	local str = ""
	for _, tb2 in tbWord do
		for _, sz in tb2 do
			if sz and nLen < strlen(sz) then
				nLen = strlen(sz)
			end
		end
	end
	for _, tb2 in tbWord do
		local str_space
		for j, sz in tb2 do
			if sz ~= "-" or ( sz == "-" and j==1 )then
				str = str.."|"
			else
				str = str.."-"
			end
			 str_space = sz == "-" and "-" or " "
			str = str..strfill_center(sz,nLen, str_space)
		end
		str = str.."|"
	
		str = str.."<enter>"
	end
	return str
end


function OnTimer()
local nHour = tonumber(GetLocalDate("%H%M"))
if nHour < 2159 or nHour > 2210 then
return
end
huashanqunzhan_SignUpMain(2)
end