Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")





function main(sel)
dofile("script/global/quanlygame/item/ruongcucpham.lua")
	local nSilverCount = CalcEquiproomItemCount(6,1,4481,1) ;
	if(nSilverCount < 1) then -- gia xu
	Talk(1,"","C�n c� 1 ch�a kh�a c�c ph�m mua t�i k� tr�n c�c m�i m� ���c..") -- go
	return 1
end
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi M� B�o R��ng C�c Ph�m><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end

ConsumeEquiproomItem(1,6,1,4481,1)
--tbAwardTemplet:GiveAwardByList({{szName="b�n Ti�u",tbProp={0,10,6,10,0},nCount=1,nExpiredTime=86400, CallBack= _Message},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,honganh},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="C�n Kh�n vv",tbProp={6,1,4482,1,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="D�y Chuy�n An Bang",tbProp={0,164},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="v�n l� �an",tbProp={6,1,4503,1,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="t�n v�t",tbProp={6,1,1670,1,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Vinh Di�u Chi Y",tbProp={0,214},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Tinh Chu�n Chi Ngoa",tbProp={0,216},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Tu� Thanh",tbProp={0,208},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Duy�n Qu�n",tbProp={0,209},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
logplayer("dulieu/ruongcucpham.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th�nh c�ng r��ng c�c ph�m ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
local s = docguong()
if s > 24 then
	Talk(1,"","T�i �a l�u h�nh trong game ch� 24 r��ng th�i nh� ng��i t�m g��ng n�y � ��u..") -- go
	return 1
end
if s==1 or s == 6 then
tbAwardTemplet:GiveAwardByList({{szName="b�n Ti�u",tbProp={0,10,6,10,0},nCount=1,nExpiredTime=86400, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,204},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,205},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,206},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="H�ng �nh",tbProp={0,207},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==3 or s == 5 or s==8 or s==10 then
tbAwardTemplet:GiveAwardByList({{szName="C�n Kh�n vv",tbProp={6,1,4482,1,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==11 or s==14 then
tbAwardTemplet:GiveAwardByList({{szName="D�y Chuy�n An Bang",tbProp={0,164},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==12 or s==15 or s==17 or s==19 then
tbAwardTemplet:GiveAwardByList({{szName="v�n l� �an",tbProp={6,1,4503,1,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==13 or s==18 then
tbAwardTemplet:GiveAwardByList({{szName="Vinh Di�u Chi Y",tbProp={0,214},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==16 or s==21 then
tbAwardTemplet:GiveAwardByList({{szName="Tinh Chu�n Chi Ngoa",tbProp={0,215},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==20 or s==23 then
tbAwardTemplet:GiveAwardByList({{szName="Tu� Thanh",tbProp={0,208},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
if s==22 or s==24 then
tbAwardTemplet:GiveAwardByList({{szName="Duy�n Qu�n",tbProp={0,209},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
ghiruong()
end;
end


function ghiruong()
docguong()
dem = nValue + 1
szPath = "dulieu/diemruongcucpham.txt"
	handle = openfile(szPath, "w+")
	write(handle, dem)	
	closefile(handle)
end

function docguong()
szPath = "dulieu/diemruongcucpham.txt"
		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tonumber(nValue)
		end
		closefile(handle)	
		return nValue		
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end