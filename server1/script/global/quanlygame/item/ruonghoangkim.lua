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
dofile("script/global/quanlygame/item/ruonghoangkim.lua")
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
	--	local nCount = CalcItemCount(3, 6, 1, 4297, -1)
		--if nCount >= 1 then
			tbProgressBar:OpenByConfig(11, %_GetFruit,{nItemIndex,P}, %_OnBreak)
	--	else
			--Talk(1, "", "C�n <color=green>Ch�a Kh�a Ho�ng Kim<color> m�i m� ���c <color=yellow>B�o R��ng Ho�ng Kim M�n Ph�i<color>");
			return 1;
		end
end
	
	--return 1;
--end




function ruongthieulam()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng <color=0xa9ffe0>��i hi�p %s nh�n ���c <color=white><%s><enter><color=0xa9ffe0>< Khi m� b�o r��ng ho�ng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,40)

if n >= 1 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Huy�n Ti Ph�t ��i",tbProp={0,3},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 11 and n <= 20 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={0,7},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
if n >= 21 and n <= 30 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma � Kim Nhuy�n �i�u",tbProp={0,8},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 31 and n <= 40 then
tbAwardTemplet:GiveAwardByList({{szName="M�ng Long ��t Ma T�ng h�i",tbProp={0,5},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
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

local n = random(1,19)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�ch H� V� Song kh�u",tbProp={0,23},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
if n >= 2 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Chi�n Th�n Phi Qu�i gi�p",tbProp={0,27},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
if n >= 11 and n <= 19 then
tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n V� Th�n T��ng Kim Gi�p",tbProp={0,17},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

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

local n = random(1,23)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="V� Gian Thanh Phong Truy Y",tbProp={0,32},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="V� Gian C�m V�n H� Uy�n",tbProp={0,34},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 23 then
tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Ng�c N� T� T�m qu�n",tbProp={0,41},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
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

local n = random(1,32)

if n >= 1 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Th�y Ng�c Ch� Ho�n",tbProp={0,50},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);


end;
if n >= 13 and n <= 21 then
tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng B�ng Tung C�m uy�n",tbProp={0,49},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);


end;
if n >= 22 and n <= 32 then
tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Khi�n T� Ch� ho�n",tbProp={0,55},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

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

local n = random(1,14)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="Minh �o U ��c �m Y",tbProp={0,62},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 14 then
tbAwardTemplet:GiveAwardByList({{szName="U Lung M�c Th� Nhuy�n L�",tbProp={0,60},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

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

local n = random(1,14)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch Kh�u T�m tr�c",tbProp={0,89},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
if n >= 8 and n <= 14 then
tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Huy�n Y Th�c Gi�p",tbProp={0,72},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
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

local n = random(1,25)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i C�u ��i C�i Y",tbProp={0,97},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 2 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i Tri�n M�ng y�u ��i",tbProp={0,98},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 25 then
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

local n = random(1,19)

if n >= 1 and n <= 9 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng Kim Gi�p Kh�i",tbProp={0,106},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 10 and n <= 18 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng ��ng ��p Ngoa",tbProp={0,110},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 19 then
tbAwardTemplet:GiveAwardByList({{szName="Ma S�t X�ch K� T�a Y�u Kh�u",tbProp={0,103},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
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
tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Huy�n Ti Tam �o�n c�m",tbProp={0,123},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);


end;
if n >= 2 and n <= 19 then
tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c N� L�i Gi�i",tbProp={0,118},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

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

local n = random(1,15)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung C�u Thi�n D�n L�i gi�i",tbProp={0,135},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="L�i Khung Phong L�i Thanh C�m ��i",tbProp={0,133},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end