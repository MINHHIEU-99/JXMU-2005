-- 随机宝箱物品（随机获得一样物品）
-- By: Wangjingjun(2011-02-17)

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch骳 m鮪g cao th� <color=yellow>%s<color=green>  nh薾 頲 <color=yellow><%s><color=green> t� <color=yellow><T鑞g Kim B� B秓><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end



nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)
dofile("script\item\songjinmibao.lua")
	if GetLevel() < 80 then
		Say("Ъng c蕄 80 tr� l猲 m韎 c� th� s� d鬾g")
		return 1
	end

	local SLSD5LoaiBaoRuong = 20
	local nDate = tonumber(GetLocalDate("%m%d"))
	if ( GetTask(3912) ~= nDate ) then
		SetTask(3912, nDate)
		SetTask(3913, 0)
	end

	if ( GetTask(3913) >= SLSD5LoaiBaoRuong ) then
		Say("H玬 nay i hi謕  s� d鬾g "..SLSD5LoaiBaoRuong.." b秓 rng c竎 lo筰, v� c玭g th╪g ti課 qu� nhanh d� g﹜ t竎 d鬾g ph秐 ngh辌h, ng祔 mai h穣 ti誴 t鬰 v藋.")
		return 1
	end

	----------------------------------------------------------------------------------------------------------------------------------------------
local b = random(1,30)
if b==5 then
	tbAwardTemplet:GiveAwardByList({{szName = "Hoi Thien",tbProp={6,1,2527,1,1},nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local m = random(1,500)
if m==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "B筩h Ng鋍",tbProp={6,1,2390,1,1},nCount=1,},}, "test", 1);
end;


local n = random(1,500)
if n==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "T� Ng鋍",tbProp={6,1,2391,1,1},nCount=1,},}, "test", 1);
end;

local p = random(1,500)
if p==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Xuy猲 Y Ph� Gi竝 2",tbProp={0,3989},nQuality=1,nCount=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local q = random(1,500)
if q==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ng� H祅h 蕁 2 ",tbProp={0,3951},nQuality=1,nExpiredTime=14*24*60},}, "test", 1);
end;

local g = random(1,10)
if g==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ng鋍",tbProp={6,1,4808,1,1},nCount=1,},}, "test", 1);
end;

local e = random(1,400)
if e==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Ngu Linh Kiem Dinh Phu",tbProp={6,1,3007,1,1},nCount=1,},}, "test", 1);
end;

local f = random(1,360)
if f==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Quy Nguyen Kiem Dinh Phu",tbProp={6,1,3008,1,1},nCount=1,},}, "test", 1);
end;

local h = random(1,20000)
if h==100 then
	tbAwardTemplet:GiveAwardByList({{szName = "Nh蕋 K� C祅 Kh玭 Ph�",tbProp={6,1,2126,1,1},nCount=1,},}, "test", 1);
end;

local a = random(1,5)
if a==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "T� Tinh Kho竛g Th筩h ",tbProp={6,1,4885,1,1},nCount=1,},}, "test", 1);
end;


local s = random(1,100)
if s==100 then
--tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e6}}, "test", 1);
end;

tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e6}}, "test", 1);
SetTask(3913,GetTask(3913)+1)

	return 0
end
function Oncancel()end

function VnSJBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbSJ_Key_Require[strKeyType]
	local tbAward = tbSJNewAward[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if nt_getTask(747)< 10000 then
		Say("觤 T?ch L?y >10.000 m韎 c? th� m� 頲 T鑞g Kim B� B秓", 1, "сng/no")
	return 1;
	end

	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C莕 ph秈 c� Ch譨 Kh鉧 V祅g ho芻 Ch譨 Kh鉧 Nh� � m韎 c� th� m� 頲 T鑞g Kim B� B秓", 1, "сng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2741, -1) ~= 1 then
		Say("Kh玭g t譵 th蕐 T鑞g Kim B� B秓", 1, "сng/no")
		return
	end
	tbAwardTemplet:Give(tbAward, 1, {"SongJin", "use songjingmibao"})	
	nt_setTask(747, floor(nt_getTask(747) - 10000));
	AddStatData("baoxiangxiaohao_kaisongjinmibao", 1)	
	Msg2SubWorld("Ch骳 m鮪g i hi謕 <color=green>"..GetName().."<color> m� T鑞g Kim B� B秓 b籲g ch譨 kh鉧 nh� � <color=yellow>nh薾 頲 nhi襲 ph莕 thng")
	SetTask(3913, GetTask(3913) + 1)
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end