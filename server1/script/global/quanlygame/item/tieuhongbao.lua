IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

function main()
dofile("script/global/quanlygame/item/tieuhongbao.lua")
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=gold><%s><color=green><enter>Ph�n th��ng khi m� <color=yellow>< Ti�u h�ng bao ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local s = random(1,100)
local tienvan = random(1,15)
if s>=1 and s<31 then
Earn(10000*tienvan)
Msg2Player("B�n nh�n ���c <color=green>"..tienvan.."<color> v�n l��ng b�c");
end;
if s>=31 and s<55 then
tbAwardTemplet:GiveAwardByList({{szName="ph�c duy�n",tbProp={6,1,random(122,124),1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=55 and s<61 then
tbAwardTemplet:GiveAwardByList({{szName="le bao bk",tbProp={6,1,4347,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=61 and s<71 then
tbAwardTemplet:GiveAwardByList({{szName="t�i danh v�ng",tbProp={6,1,4338,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=71 and s<81 then
tbAwardTemplet:GiveAwardByList({{szName="ti�n th� l� 1h",tbProp={6,1,71,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=81 and s<83 then
tbAwardTemplet:GiveAwardByList({{szName="qu� hoa t�u",tbProp={6,1,125,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=83 and s<101 then
tbAwardTemplet:GiveAwardByList({{szName="thi�n s�n b�o l�",tbProp={6,1,72,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
end