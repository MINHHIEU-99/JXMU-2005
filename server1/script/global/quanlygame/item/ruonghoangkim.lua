Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>ChÛc mıng cao thÒ <color=yellow>%s<color=green> Æ∑ nhÀn Æ≠Óc <color=gold><%s><color=green><enter>Ph«n th≠Îng khi mÎ <color=yellow>< Hoµng Kim B∂o R≠¨ng ><color>" ,GetName(),GetItemName(nItemIndex))
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
	Msg2Player("MÎ r≠¨ng gi∏n Æoπn!")
end


function main(nItemIndex)
dofile("script/global/quanlygame/item/ruonghoangkim.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("VÀt ph»m Æ∑ qu∏ hπn sˆ dÙng")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	
	if (G ~= 6) then
		return 1;
	end

	if (0 == nPlayerfaction ) then
		Msg2Player("Bπn ch≠a gia nhÀp m´n ph∏i, kh´ng th” mÎ r≠¨ng.")
		return
	end

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Xin h∑y sæp x’p lπi hµnh trang! NhÌ Æ” trËng 10 ´ trÎ l™n nh–.");
		return 1;
	end
	if P >= 4514 and P <= 4523 then
	--	local nCount = CalcItemCount(3, 6, 1, 4297, -1)
		--if nCount >= 1 then
			tbProgressBar:OpenByConfig(11, %_GetFruit,{nItemIndex,P}, %_OnBreak)
	--	else
			--Talk(1, "", "C«n <color=green>Ch◊a Kh„a Hoµng Kim<color> mÌi mÎ Æ≠Óc <color=yellow>B∂o R≠¨ng Hoµng Kim M´n Ph∏i<color>");
			return 1;
		end
end
	
	--return 1;
--end




function ruongthieulam()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,40)

if n >= 1 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="MÈng Long Huy“n Ti Ph∏t Æ∏i",tbProp={0,3},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 11 and n <= 20 then
tbAwardTemplet:GiveAwardByList({{szName="PhÙc Ma Huy“n Hoµng Cµ Sa",tbProp={0,7},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
if n >= 21 and n <= 30 then
tbAwardTemplet:GiveAwardByList({{szName="PhÙc Ma § Kim Nhuy‘n ßi“u",tbProp={0,8},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 31 and n <= 40 then
tbAwardTemplet:GiveAwardByList({{szName="MÈng Long ßπt Ma T®ng hµi",tbProp={0,5},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongthienvuong()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,19)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="K’ Nghi÷p Bπch HÊ V´ Song kh u",tbProp={0,23},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
if n >= 2 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="Ng˘ Long Chi’n Th«n Phi Qu∂i gi∏p",tbProp={0,27},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
if n >= 11 and n <= 19 then
tbAwardTemplet:GiveAwardByList({{szName="H∏m Thi™n VÚ Th«n T≠¨ng Kim Gi∏p",tbProp={0,17},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
end



function ruongngami()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,23)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="V´ Gian Thanh Phong Truy Y",tbProp={0,32},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="V´ Gian C«m VÀn HÈ Uy”n",tbProp={0,34},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 23 then
tbAwardTemplet:GiveAwardByList({{szName="V´ Tr«n Ng‰c N˜ TË T©m qu∏n",tbProp={0,41},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongthuyyen()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,32)

if n >= 1 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="T™ Hoµng ThÛy Ng‰c Chÿ Hoµn",tbProp={0,50},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);


end;
if n >= 13 and n <= 21 then
tbAwardTemplet:GiveAwardByList({{szName="T™ Hoµng B®ng Tung C»m uy”n",tbProp={0,49},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);


end;
if n >= 22 and n <= 32 then
tbAwardTemplet:GiveAwardByList({{szName="B›ch H∂i Khi™n T’ Chÿ hoµn",tbProp={0,55},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;

end



function ruongngudoc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,14)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="Minh ∂o U ßÈc ∏m Y",tbProp={0,62},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 14 then
tbAwardTemplet:GiveAwardByList({{szName="U Lung M∆c ThÔ Nhuy‘n L˝",tbProp={0,60},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
end




function ruongduongmon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,14)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="ßﬁa Ph∏ch Kh u T©m trπc",tbProp={0,89},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;
if n >= 8 and n <= 14 then
tbAwardTemplet:GiveAwardByList({{szName="B®ng Hµn Huy“n Y ThÛc Gi∏p",tbProp={0,72},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;

end



function ruongcaibang()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,25)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="ßﬁch Kh∏i Cˆu ßπi C∏i Y",tbProp={0,97},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 2 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="ßﬁch Kh∏i Tri“n M∑ng y™u Æ∏i",tbProp={0,98},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 25 then
tbAwardTemplet:GiveAwardByList({{szName="ßﬁch Kh∏i C»u T›ch B◊ HÈ uy”n",tbProp={0,99},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongthiennhan()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,19)

if n >= 1 and n <= 9 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng Kim Gi∏p Kh´i",tbProp={0,106},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 10 and n <= 18 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng ß®ng ßπp Ngoa",tbProp={0,110},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 19 then
tbAwardTemplet:GiveAwardByList({{szName="Ma S∏t X›ch K˝ T·a Y™u Kh u",tbProp={0,103},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongvodang()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,19)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="CÀp Phong Huy“n Ti Tam ßoπn c»m",tbProp={0,123},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);


end;
if n >= 2 and n <= 19 then
tbAwardTemplet:GiveAwardByList({{szName="L®ng Nhπc NÈ L´i GiÌi",tbProp={0,118},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);

end;

end



function ruongconlon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("ChÛc mıng <color=0xa9ffe0>ßπi hi÷p %s nhÀn Æ≠Óc <color=white><%s><enter><color=0xa9ffe0>< Khi mÎ b∂o r≠¨ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,15)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="L´i Khung Cˆu Thi™n D…n L´i giÌi",tbProp={0,135},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="L´i Khung Phong L´i Thanh C»m Æ∏i",tbProp={0,133},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end