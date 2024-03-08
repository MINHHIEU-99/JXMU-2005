Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")



function main(sel)
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Më B¶o R­¬ng §éc C«><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local s = random(1,28)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,159},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,161},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,162},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,163},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==5  then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,165},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,166},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,167},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,159},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,161},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,162},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,163},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==12  then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,165},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,166},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,167},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,159},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,161},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,162},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,163},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==19  then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,165},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,166},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,167},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,159},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,161},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,162},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==25 then
tbAwardTemplet:GiveAwardByList({{szName="§Þnh Quèc",tbProp={0,163},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==26  then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,165},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==27 then
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,166},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);

end;
if s==28 then
tbAwardTemplet:GiveAwardByList({{szName="AB",tbProp={0,164},nCount=1,nQuality = 1,CallBack= _Message},}, "test", 1);
end;
end

