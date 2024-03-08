Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")


TASKHOAHONG = 5320


function main(sel)
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate >= 20190331 then
		Say("Ho�t ��ng �� k�t th�c, kh�ng th� s� d�ng.", 0);
		return 1;
	end;
if GetLevel() < 40 then
		Say("Ng��i ch�i ch�a ��t c�p 40 kh�ng th� s� d�ng event.", 0);
		return 1;
                        end
	local nTask = GetTask(TASKHOAHONG)
	if nTask > 300 then
		 Say("B�n �� s� d�ng �� m�c 300 Hoa H�ng Ho�n M� kh�ng th� ti�p t�c !")
		return 1
	end
	 SetTask(TASKHOAHONG,GetTask(TASKHOAHONG)+1)
AddOwnExp(600000)
Msg2Player("B�n s� d�ng 1 <color=yellow>Hoa H�ng Ho�n M�.");
phanthuongphu()
end




function phanthuongphu()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> May m�n nh�n ���c <color=pink><%s><color=green><enter><color=yellow>< Khi S� D�ng Event 8 Th�ng 3 ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local nAward = random(1,15)
local s = random(1,27)

if s==1 then
Earn(nAward*10000)
end;
if s==2 then
AddRepute(1)
Msg2Player("B�n nh�n ���c 1 �i�m danh v�ng.");
end;
if s==3 then
--AddItem(6,0,20,1,0,0,0) --hoahong
tbAwardTemplet:GiveAwardByList({{szName="Hoa h�ng",tbProp={6,0,20,1,1},nCount=1,nRate=50,},}, "test", 1);
end;
if s==4 then
--AddItem(6,1,23,1,0,0,0)  --thiet la han
tbAwardTemplet:GiveAwardByList({{szName="Thi�t La h�n",tbProp={6,1,23,1,1},nCount=1,nRate=15,},}, "test", 1);
end;
if s==5 then
--AddItem(6,1,71,1,0,0,0)  --tien tho lo 1h
tbAwardTemplet:GiveAwardByList({{szName="Ti�n Th� L�",tbProp={6,1,71,1,1},nCount=1,nRate=30,},}, "test", 1);
end;
if s==6 then
--AddItem(6,1,1181,1,0,0,0) --tien tho lo 8h
tbAwardTemplet:GiveAwardByList({{szName="Ti�n Th� L� ��c Bi�t",tbProp={6,1,1181,1,1},nCount=1,nRate=2,CallBack= _Message,},}, "test", 1);
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="Tuy�t �nh",tbProp={0,10,5,3,0,0,0},nCount=1,nRate=0.5,nExpiredTime=10080,CallBack= _Message,},}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1,nRate=0.5,nExpiredTime=10080,CallBack= _Message},}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1,nRate=0.5,nExpiredTime=10080,CallBack= _Message},}, "test", 1);
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1,nRate=0.5,nExpiredTime=10080,CallBack= _Message},}, "test", 1);
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1,nRate=0.5,nExpiredTime=10080,CallBack= _Message},}, "test", 1);
end;
if s==12 then
--AddItem(6,1,18,1,0,0,0) -- tam tam tuong anh phu
tbAwardTemplet:GiveAwardByList({{szName="T��ng �nh ph�",tbProp={6,1,18,1,1},nCount=1,nRate=50,},}, "test", 1);

end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Th� ��a Ph�",tbProp={6,1,438,1,1},nCount=1,nRate=5,nExpiredTime=43200},}, "test", 1);
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Th�n Th�nh Ph�",tbProp={6,1,1266,1,1},nCount=1,nRate=5,nExpiredTime=10080},}, "test", 1);
end;
if s==15 then
--AddItem(6,0,3,1,0,0,0)  --dai luc
tbAwardTemplet:GiveAwardByList({{szName="��i L�c",tbProp={6,0,3,1,1},nCount=1,nRate=50,},}, "test", 1);

end;
if s==16 then
--AddItem(6,0,6,1,0,0,0) -- phi toc
tbAwardTemplet:GiveAwardByList({{szName="Phi T�c",tbProp={6,0,6,1,1},nCount=1,nRate=50,},}, "test", 1);
end;
if s==17 then
--AddItem(6,1,12,1,0,0,0) -- ban nhuoc
tbAwardTemplet:GiveAwardByList({{szName="B�n Nh��c",tbProp={6,1,12,1,1},nCount=1,nRate=10,CallBack= _Message,},}, "test", 1);

end;
if s==18 then
--AddItem(6,1,125,1,0,0,0) -- que hoa tau
tbAwardTemplet:GiveAwardByList({{szName="Qu� Hoa T�u",tbProp={6,1,125,1,1},nCount=1,nRate=30,},}, "test", 1);

end;
if s==19 then
--AddItem(6,1,72,1,0,0,0) -- thien son bao lo
tbAwardTemplet:GiveAwardByList({{szName="Thi�n S�n B�o L�",tbProp={6,1,72,1,1},nCount=1,nRate=50,},}, "test", 1);

end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="L�c Th�y Tinh",tbProp={4,238,1,1},nCount=1,nRate=5,CallBack= _Message},}, "test", 1);
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="T� Th�y Tinh",tbProp={4,239,1,1},nCount=1,nRate=5,CallBack= _Message},}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="Lam Th�y Tinh",tbProp={4,240,1,1},nCount=1,nRate=5,CallBack= _Message},}, "test", 1);
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="Tinh H�ng",tbProp={4,353,1,1},nCount=1,nRate=10,CallBack= _Message},}, "test", 1);
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Duy�n Ti�u",tbProp={6,1,122,1,1},nCount=1,nRate=25,},}, "test", 1);
end;
if s==25 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Duy�n Trung",tbProp={6,1,123,1,1},nCount=1,nRate=20,},}, "test", 1);
end;
if s==26 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c Duy�n ��i",tbProp={6,1,124,1,1},nCount=1,nRate=15,},}, "test", 1);

end;
if s==27 then
tbAwardTemplet:GiveAwardByList({{szName="L� Bao B� K�p",tbProp={6,1,4347,1,1},nCount=1,nRate=5,CallBack= _Message},}, "test", 1);
end;
end



function nguangaunhien()
local t = random(1,5)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="Tuy�t �nh",tbProp={0,10,5,3,0,0,0},nCount=1,nRate=25,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1,nRate=25,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1,nRate=25,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1,nRate=25,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1,nRate=25,},}, "test", 1);
end;
end
