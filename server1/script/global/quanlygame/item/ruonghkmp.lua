Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=gold><%s><color=green><enter>Ph�n th��ng khi m� <color=yellow>< Ho�ng Kim B�o R��ng ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end




local _GetFruit = function(nItemIndex,P)
--	if ConsumeItem(3, 1, 6, 1, 4297, -1) ~= 1 then
	--	Talk(1, "", "C�n <color=green>Ch�a Kh�a Ho�ng Kim<color> m�i m� ���c <color=yellow>R��ng Ho�ng Kim<color>");
	--	return
    --	end

	RemoveItemByIndex(nItemIndex)
	if P == 4514 then
ruongthienvuong()
end
if P == 4515 then
ruongngudoc()
end
if P == 4516 then
ruongthuyyen()
end
if P == 4517 then 
ruongconlon()
end
if P == 4518 then 
ruongthiennhan()
end
if P == 4519 then 
ruongthieulam()
end
if P == 4520 then 
ruongduongmon()
end
if P == 4521 then
ruongngami()
end
if P == 4522 then 
ruongvodang()
end
if P == 4523 then ----can cau
ruongcaibang()
end
end


local _OnBreak = function()
	Msg2Player("M� r��ng gi�n �o�n!")
end


function main(nItemIndex)
dofile("script/global/quanlygame/item/ruonghkmp.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("V�t ph�m �� qu� h�n s� d�ng")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	
	if (G ~= 6) then
		return 1;
	end

	if (0 == nPlayerfaction ) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� m� r��ng.")
		return
	end

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 10 � tr� l�n nh�.");
		return 1;
	end
	if P >= 4514 and P <= 4523 then
		--local nCount = CalcItemCount(3, 6, 1, 4297, -1)
	--	if nCount >= 1 then
			tbProgressBar:OpenByConfig(11, %_GetFruit,{nItemIndex,P}, %_OnBreak)
		else
			Talk(1, "", "C�n <color=green>m�i m� ���c <color=yellow>B�o R��ng Ho�ng Kim M�n Ph�i<color>");
			return 1;
		end	
	return 1;
end





function ruongthieulam()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,30)

if n >= 1 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Ph� �� T�ng h�i",tbProp={0,10},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 11 and n <= 20 then
tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng H� ph�p Y�u ��i",tbProp={0,13},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 21 and n <= 30 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={0,7},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongthienvuong()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,20)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={0,22},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 2 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={0,25},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 11 and n <= 19 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={0,28},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 20 then
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Uy V� Th�c y�u ��i",tbProp={0,18},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongngami()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,25)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="V� Gian Ph�t V�n Ti ��i",tbProp={0,33},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="V� Ma Ma Ni qu�n",tbProp={0,36},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 23 then
tbAwardTemplet:GiveAwardByList({{szName="V� Ma T� Kh�m C� Sa",tbProp={0,37},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 24 or n==25 then
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Ph�t Quang Ch� Ho�n",tbProp={0,45},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongthuyyen()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,42)

if n >= 1 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Ho�n Ch�u V� Li�n",tbProp={0,52},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 13 and n <= 21 then
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Tu� T�m Khinh Sa",tbProp={0,47},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 22 and n <= 32 then
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={0,48},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 33 and n <= 42 then
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i H�ng Linh Kim Ti ��i",tbProp={0,53},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongngudoc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,43)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="Minh �o H� C�t H� uy�n",tbProp={0,64},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 14 then
tbAwardTemplet:GiveAwardByList({{szName="Minh �o Song Ho�n X� H�i",tbProp={0,65},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 15 and n <= 21 then
tbAwardTemplet:GiveAwardByList({{szName="U Lung Thanh Ng� Tri�n y�u",tbProp={0,58},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 22 then
tbAwardTemplet:GiveAwardByList({{szName="U Lung X�ch Y�t M�t trang",tbProp={0,57},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 23 and n <= 29 then
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Ph� gi�p ��u ho�n",tbProp={0,66},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 30 and n <= 36 then
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c Xuy�n T�m ��c Uy�n",tbProp={0,69},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 37 and n <= 43 then
tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c B�ng H�a Th�c C�t Ngoa",tbProp={0,70},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end




function ruongduongmon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,41)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",tbProp={0,86},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 14 then
tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n",tbProp={0,87},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 15 and n <= 21 then
tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch ��a H�nh Thi�n L� Ngoa",tbProp={0,90},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 22 then
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n T�m Ti�n Y�u Kh�u",tbProp={0,73},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 23 and n <= 29 then
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Nguy�t �nh Ngoa",tbProp={0,75},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n ==30 then
tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang KimTi�n Li�n Ho�n Gi�p",tbProp={0,82},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 31 and n <= 35 then
tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang H�n Gi�o Y�u Th�c",tbProp={0,83},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 36 and n <= 41 then
tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang Tinh V�n Phi L�",tbProp={0,85},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongcaibang()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,29)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Gi�ng Long C�i Y",tbProp={0,92},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 2 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ti�m Long Y�u ��i",tbProp={0,93},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 29 then
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i C�u T�ch B� H� uy�n",tbProp={0,99},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongthiennhan()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,21)

if n >= 1 and n <= 9 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng Kh� C�c Th�c y�u ��i",tbProp={0,108},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 10 and n <= 18 then
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={0,102},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 19 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={0,114},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 20 or n==21 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Th� L� Ma Ph� T�m Li�n",tbProp={0,112},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongvodang()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,19)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Th�y Ng�c Huy�n Ho�ng B�",tbProp={0,124},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 2 and n <= 19 then
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c V� Ng� ��o b�o",tbProp={0,117},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongconlon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,24)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="V� �o Ki B�n ph� ch�",tbProp={0,137},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="V� �o Thanh �nh Huy�n Ng�c B�i",tbProp={0,139},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 23 then
tbAwardTemplet:GiveAwardByList({{szName="V� �o Tung Phong Tuy�t �nh ngoa",tbProp={0,140},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 24 then
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung Thi�n ��a H� ph�",tbProp={0,132},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end