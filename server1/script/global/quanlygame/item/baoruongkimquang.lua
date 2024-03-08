Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")





function main(sel)
dofile("script/global/quanlygame/item/baoruongkimquang.lua")
 --   local  kimquanbg =random(198,203)
	--local nSilverCount = CalcEquiproomItemCount(6,1,4481,1) ;
	--if(nSilverCount < 1) then -- gia xu
	--Talk(1,"","CÇn cã 1 ch×a khãa cùc phÈm mua t¹i kú tr©n c¸c míi më ®­îc..") -- go
	--return 1
--end
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Më B¶o R­¬ng Kim Quang><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
moruongok()
--ConsumeEquiproomItem(1,6,1,4481,1)

logplayer("dulieu/ruongkimquang.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thµnh c«ng r­¬ng kim quang ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function moruongok()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Më B¶o R­¬ng Kim Quang><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
	end
local s = random(1,20)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang §­êng Nghª Gi¸p",tbProp={0,195},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang §­êng Nghª Gi¸p",tbProp={0,195},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Lôc PhØ Thóy Hé Th©n Phï",tbProp={0,196},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang B¹ch Kim Yªu §¸i",tbProp={0,198},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thiªn Tµm Ngoa",tbProp={0,201},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thiªn Tµm Hé UyÓn",tbProp={0,199},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Ngò S¾c Ngäc Béi",tbProp={0,200},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Ngò S¾c Ngäc Béi",tbProp={0,200},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thiªn Tµm Ngoa",tbProp={0,201},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thiªn Tµm Ngoa",tbProp={0,201},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Kim Quang B«n L«i Toµn Long Th­¬ng",tbProp={0,203},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang §­êng Nghª Gi¸p",tbProp={0,195},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Lôc PhØ Thóy Hé Th©n Phï",tbProp={0,196},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Ngò S¾c Ngäc Béi",tbProp={0,200},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang TrÝch Tinh Hoµn",tbProp={0,194},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);

end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang TrÝch Tinh Hoµn",tbProp={0,194},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);

end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Ngò S¾c Ngäc Béi",tbProp={0,200},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Lôc PhØ Thóy Hé Th©n Phï",tbProp={0,196},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang B¹ch Kim Yªu §¸i",tbProp={0,198},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);


end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thiªn Tµm Ngoa",tbProp={0,201},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang B¹ch Kim Yªu §¸i",tbProp={0,198},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Quang Thiªn Tµm Hé UyÓn",tbProp={0,199},nCount=1,nQuality=1, CallBack= _Message},}, "test", 1);
end;
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end