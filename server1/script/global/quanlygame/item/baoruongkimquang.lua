Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")





function main(sel)
dofile("script/global/quanlygame/item/baoruongkimquang.lua")
 --   local  kimquanbg =random(198,203)
	--local nSilverCount = CalcEquiproomItemCount(6,1,4481,1) ;
	--if(nSilverCount < 1) then -- gia xu
	--Talk(1,"","C�n c� 1 ch�a kh�a c�c ph�m mua t�i k� tr�n c�c m�i m� ���c..") -- go
	--return 1
--end
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi M� B�o R��ng Kim Quang><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
moruongok()
--ConsumeEquiproomItem(1,6,1,4481,1)

logplayer("dulieu/ruongkimquang.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng r��ng kim quang ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function moruongok()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi M� B�o R��ng Kim Quang><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
	end
local s = random(1,20)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang ���ng Ngh� Gi�p",tbProp={0,195},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang ���ng Ngh� Gi�p",tbProp={0,195},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang L�c Ph� Th�y H� Th�n Ph�",tbProp={0,196},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang B�ch Kim Y�u ��i",tbProp={0,198},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thi�n T�m Ngoa",tbProp={0,201},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thi�n T�m H� Uy�n",tbProp={0,199},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Ng� S�c Ng�c B�i",tbProp={0,200},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Ng� S�c Ng�c B�i",tbProp={0,200},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thi�n T�m Ngoa",tbProp={0,201},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thi�n T�m Ngoa",tbProp={0,201},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Kim Quang B�n L�i To�n Long Th��ng",tbProp={0,203},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang ���ng Ngh� Gi�p",tbProp={0,195},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang L�c Ph� Th�y H� Th�n Ph�",tbProp={0,196},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Ng� S�c Ng�c B�i",tbProp={0,200},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Tr�ch Tinh Ho�n",tbProp={0,194},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);

end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Tr�ch Tinh Ho�n",tbProp={0,194},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);

end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Ng� S�c Ng�c B�i",tbProp={0,200},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang L�c Ph� Th�y H� Th�n Ph�",tbProp={0,196},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang B�ch Kim Y�u ��i",tbProp={0,198},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);


end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thi�n T�m Ngoa",tbProp={0,201},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang B�ch Kim Y�u ��i",tbProp={0,198},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thi�n T�m H� Uy�n",tbProp={0,199},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end