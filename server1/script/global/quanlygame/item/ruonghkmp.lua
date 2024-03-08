Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Chóc mõng cao thñ <color=yellow>%s<color=green> ®· nhËn ®­îc <color=gold><%s><color=green><enter>PhÇn th­ëng khi më <color=yellow>< Hoµng Kim B¶o R­¬ng ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end




local _GetFruit = function(nItemIndex,P)
--	if ConsumeItem(3, 1, 6, 1, 4297, -1) ~= 1 then
	--	Talk(1, "", "CÇn <color=green>Ch×a Khãa Hoµng Kim<color> míi më ®­îc <color=yellow>R­¬ng Hoµng Kim<color>");
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
	Msg2Player("Më r­¬ng gi¸n ®o¹n!")
end


function main(nItemIndex)
dofile("script/global/quanlygame/item/ruonghkmp.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("VËt phÈm ®· qu¸ h¹n sö dông")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	
	if (G ~= 6) then
		return 1;
	end

	if (0 == nPlayerfaction ) then
		Msg2Player("B¹n ch­a gia nhËp m«n ph¸i, kh«ng thÓ më r­¬ng.")
		return
	end

	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 10 « trë lªn nhÐ.");
		return 1;
	end
	if P >= 4514 and P <= 4523 then
		--local nCount = CalcItemCount(3, 6, 1, 4297, -1)
	--	if nCount >= 1 then
			tbProgressBar:OpenByConfig(11, %_GetFruit,{nItemIndex,P}, %_OnBreak)
		else
			Talk(1, "", "CÇn <color=green>míi më ®­îc <color=yellow>B¶o R­¬ng Hoµng Kim M«n Ph¸i<color>");
			return 1;
		end	
	return 1;
end





function ruongthieulam()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,30)

if n >= 1 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma Phæ §é T¨ng hµi",tbProp={0,10},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 11 and n <= 20 then
tbAwardTemplet:GiveAwardByList({{szName="Tø Kh«ng Hé ph¸p Yªu ®¸i",tbProp={0,13},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 21 and n <= 30 then
tbAwardTemplet:GiveAwardByList({{szName="Phôc Ma HuyÒn Hoµng Cµ Sa",tbProp={0,7},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongthienvuong()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,20)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",tbProp={0,22},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 2 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",tbProp={0,25},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 11 and n <= 19 then
tbAwardTemplet:GiveAwardByList({{szName="Ngù Long Thiªn M«n Thóc Yªu hoµn",tbProp={0,28},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 20 then
tbAwardTemplet:GiveAwardByList({{szName="H¸m Thiªn Uy Vò Thóc yªu ®¸i",tbProp={0,18},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongngami()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,25)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="V« Gian PhÊt V©n Ti ®¸i",tbProp={0,33},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="V« Ma Ma Ni qu¸n",tbProp={0,36},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 23 then
tbAwardTemplet:GiveAwardByList({{szName="V« Ma Tö Kh©m Cµ Sa",tbProp={0,37},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 24 or n==25 then
tbAwardTemplet:GiveAwardByList({{szName="V« TrÇn PhËt Quang ChØ Hoµn",tbProp={0,45},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongthuyyen()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,42)

if n >= 1 and n <= 10 then
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Hoµn Ch©u Vò Liªn",tbProp={0,52},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 13 and n <= 21 then
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng TuÖ T©m Khinh Sa",tbProp={0,47},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 22 and n <= 32 then
tbAwardTemplet:GiveAwardByList({{szName="Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",tbProp={0,48},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 33 and n <= 42 then
tbAwardTemplet:GiveAwardByList({{szName="BÝch H¶i Hång Linh Kim Ti ®¸i",tbProp={0,53},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongngudoc()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,43)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o Hñ Cèt Hé uyÓn",tbProp={0,64},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 14 then
tbAwardTemplet:GiveAwardByList({{szName="Minh ¶o Song Hoµn Xµ Hµi",tbProp={0,65},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 15 and n <= 21 then
tbAwardTemplet:GiveAwardByList({{szName="U Lung Thanh Ng« TriÒn yªu",tbProp={0,58},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 22 then
tbAwardTemplet:GiveAwardByList({{szName="U Lung XÝch YÕt MËt trang",tbProp={0,57},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 23 and n <= 29 then
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc Ph¸ gi¸p ®Çu hoµn",tbProp={0,66},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 30 and n <= 36 then
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc Xuyªn T©m §éc UyÓn",tbProp={0,69},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 37 and n <= 43 then
tbAwardTemplet:GiveAwardByList({{szName="Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",tbProp={0,70},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end




function ruongduongmon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,41)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",tbProp={0,86},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 14 then
tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",tbProp={0,87},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 15 and n <= 21 then
tbAwardTemplet:GiveAwardByList({{szName="§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",tbProp={0,90},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 22 then
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn T©m TiÔn Yªu KhÊu",tbProp={0,73},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 23 and n <= 29 then
tbAwardTemplet:GiveAwardByList({{szName="B¨ng Hµn NguyÖt ¶nh Ngoa",tbProp={0,75},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n ==30 then
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",tbProp={0,82},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 31 and n <= 35 then
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={0,83},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 36 and n <= 41 then
tbAwardTemplet:GiveAwardByList({{szName="S©m Hoang Tinh VÉn Phi Lý",tbProp={0,85},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongcaibang()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,29)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu Gi¸ng Long C¸i Y",tbProp={0,92},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 2 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="§ång Cõu TiÒm Long Yªu §¸i",tbProp={0,93},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 29 then
tbAwardTemplet:GiveAwardByList({{szName="§Þch Kh¸i CÈu TÝch B× Hé uyÓn",tbProp={0,99},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongthiennhan()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,21)

if n >= 1 and n <= 9 then
tbAwardTemplet:GiveAwardByList({{szName="Ma Hoµng Khª Cèc Thóc yªu ®¸i",tbProp={0,108},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 10 and n <= 18 then
tbAwardTemplet:GiveAwardByList({{szName="Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={0,102},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 19 then
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={0,114},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 20 or n==21 then
tbAwardTemplet:GiveAwardByList({{szName="Ma ThÞ LÖ Ma PhÖ T©m Liªn",tbProp={0,112},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end


function ruongvodang()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,19)

if n == 1 then
tbAwardTemplet:GiveAwardByList({{szName="CËp Phong Thóy Ngäc HuyÒn Hoµng Bé",tbProp={0,124},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 2 and n <= 19 then
tbAwardTemplet:GiveAwardByList({{szName="L¨ng Nh¹c V« Ng· ®¹o bµo",tbProp={0,117},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end



function ruongconlon()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Chóc mõng <color=0xa9ffe0>§¹i hiÖp %s nhËn ®­îc <color=white><%s><enter><color=0xa9ffe0>< Khi më b¶o r­¬ng hoµng kim><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RestoreOwnFeature()
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local n = random(1,24)

if n >= 1 and n <= 7 then
tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o Ki B¸n phï chó",tbProp={0,137},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 8 and n <= 15 then
tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",tbProp={0,139},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n >= 16 and n <= 23 then
tbAwardTemplet:GiveAwardByList({{szName="Vô ¶o Tung Phong TuyÕt ¶nh ngoa",tbProp={0,140},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
if n == 24 then
tbAwardTemplet:GiveAwardByList({{szName="L«i Khung Thiªn §Þa Hé phï",tbProp={0,132},nCount=1,nQuality=1,CallBack= _Message},}, "test", 1);
end;
end