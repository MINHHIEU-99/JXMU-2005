IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")

HOACUCCP = 4576
BOHOAHONGCP = 4577


function main(sel)
dofile("script/global/quanlygame/sukien/quoctephunu/tuyetsac.lua");
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi s� d�ng b� hoa tuy�t s�c><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local nDate = tonumber(GetLocalDate("%Y%m%d"));
if nDate > 20200320 then
	Say("Event �� h�t h� th�ng t� h�y v�t ph�m.", 0);
		return
	end;
	 
 	if (CalcFreeItemCellCount() < 5) then
		Talk(1,"","H�nh trang c�a b�n kh�ng �� 5 � tr�ng!");
		return 1;
	end
	 	if (GetLevel() < 10) then
		Talk(1,"","��ng c�p n�y kh�ng th� s� d�ng");
		return 1;
	end
	
	local nTask = GetTask(4577);
	if nTask >= 300 then
		 Say("�� max 300 c�i kh�ng th� s� d�ng th�m")
		return 1;
	end
		if nTask == 50  or nTask == 150 or nTask == 250  then
		tbAwardTemplet:GiveAwardByList({{szName="Th�y tinh",tbProp={4,random(238,240),1,1,0},nCount=1,Rate=25, CallBack= _Message},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName="Ph�c duy�n",tbProp={6,1,random(122,124),1,0},nCount=1,nRate=90, CallBack= _Message,},}, "test", 1);

	end
			if nTask == 190  or nTask == 290  then
		tbAwardTemplet:GiveAwardByList({{szName="Tinh H�ng",tbProp={4,353,1,1,0},nCount=1,nRate=50,},}, "test", 1);
								tbAwardTemplet:GiveAwardByList({{szName="tti�n th� l�",tbProp={6,1,71,1,1},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);

	end
		if nTask == 40 or  nTask == 80 or nTask == 120 or nTask == 200 or nTask == 240 or nTask == 280  then
		tbAwardTemplet:GiveAwardByList({{szName="Qu� hoa t�u",tbProp={6,1,125,1,0},nCount=1,nRate=10, CallBack= _Message},}, "test", 1);
					tbAwardTemplet:GiveAwardByList({{szName = "L� Bao Ti�n V�n",tbProp={6,1,4579,1,1},nCount=1,nRate=70, CallBack= _Message},}, "test", 1);

	end
		if nTask == 10 or  nTask == 20 or nTask == 30 or nTask == 60 or nTask == 70 or nTask == 90 or nTask == 110 or nTask == 130 or nTask == 140 or nTask == 180 or nTask == 210 or nTask == 230 or nTask == 250 or nTask == 270  then
		tbAwardTemplet:GiveAwardByList({{szName="thi�t la h�n",tbProp={6,1,23,1,1},nCount=1,nRate=20, CallBack= _Message},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName="Hoa h�ng",tbProp={6,0,20,1,1},nCount=1,nRate=10},}, "test", 1);
	end
			if nTask == 10 or  nTask == 20 or nTask == 30 or nTask == 60 or nTask == 70 or nTask == 90 or nTask == 110 or nTask == 130 or nTask == 140 or nTask == 180 or nTask == 210 or nTask == 230 or nTask == 250 or nTask == 270  then
		tbAwardTemplet:GiveAwardByList({{szName="thi�t la h�n",tbProp={6,1,23,1,1},nCount=1,nRate=20, CallBack= _Message},}, "test", 1);
	end
				if  nTask == 25 or nTask == 35 or nTask == 65 or nTask == 85 or nTask == 195 or nTask == 215 or nTask == 235 or nTask == 255   then
		tbAwardTemplet:GiveAwardByList({{szName="Thi�n s�n",tbProp={6,1,72,1,1},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName="b�ch h�a l�",tbProp={6,1,73,1,1},nCount=1,nRate=30, CallBack= _Message},}, "test", 1);
						tbAwardTemplet:GiveAwardByList({{szName="ti�n th� l�",tbProp={6,1,71,1,1},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);

	end
					if  nTask == 77 or nTask == 237  then
		tbAwardTemplet:GiveAwardByList({{szName="l� bao b� ki�p",tbProp={6,1,4347,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
								tbAwardTemplet:GiveAwardByList({{szName="ti�n th� l�",tbProp={6,1,71,1,1},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);

	end
		if nTask == 10 or  nTask == 20 or nTask == 30 or nTask == 60 or nTask == 70 or nTask == 90 or nTask == 110 or nTask == 130 or nTask == 140 or nTask == 180 or nTask == 210 or nTask == 230 or nTask == 250 or nTask == 270  then
		tbAwardTemplet:GiveAwardByList({{szName="t�i danh v�ng",tbProp={6,1,4338,1,0},nCount=1,nRate=20, CallBack= _Message},}, "test", 1);
	end
						if  nTask == 259  then
		tbAwardTemplet:GiveAwardByList({{szName="b�n nh��c",tbProp={6,1,12,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	end
			if nTask == 209 or nTask == 233   then
		tbAwardTemplet:GiveAwardByList({{szName="Ng�a",tbProp={0,10,5,5,0},nCount=1,nExpiredTime=10080,nRate=50, CallBack= _Message},}, "test", 1);
		--nguabayngay()
	end
			if nTask == 38 or  nTask == 78 or nTask == 118 or nTask == 198 or nTask == 238 or nTask == 278  then
		tbAwardTemplet:GiveAwardByList({{szName="Ph�c duy�n",tbProp={6,1,random(122,124),1,0},nCount=1,nRate=70, CallBack= _Message,},}, "test", 1);
	end
			if nTask == 96  or nTask == 196  then
		tbAwardTemplet:GiveAwardByList({{szName="th�n th�nh",tbProp={6,1,1266,1,1,0},nCount=1,nExpiredTime=10080,nRate=90, CallBack= _Message,},}, "test", 1);
	end
				if  nTask == 246  then
		tbAwardTemplet:GiveAwardByList({{szName="th� ��a",tbProp={6,1,438,1,1,0},nCount=1,nExpiredTime=10080, CallBack= _Message,},}, "test", 1);
	end
				if nTask == 38 or  nTask == 78 or nTask == 118 or nTask == 198 or nTask == 238 or nTask == 278  then
		tbAwardTemplet:GiveAwardByList({{szName="S�t th� l�nh",tbProp={6,1,4564,1,0},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);
	end
							if  nTask == 122 or nTask == 222  then
		tbAwardTemplet:GiveAwardByList({{szName="h�o quang l� bao",tbProp={6,1,4566,1,1},nCount=1,nRate=70, CallBack= _Message,},}, "test", 1);
	end
								if  nTask == 144 or nTask == 244  then
										tbAwardTemplet:GiveAwardByList({{szName="N�n h�nh ph�c",tbProp={6,1,4400,1,1,0},nCount=1,nExpiredTime=10080,nRate=70, CallBack= _Message,},}, "test", 1);

		--tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,random(177,185)},nCount=1,},}, "test", 1);
	end
						if  nTask == 166 or nTask == 256  then
		tbAwardTemplet:GiveAwardByList({{szName="n�n may m�n",tbProp={6,1,4399,1,1},nCount=1,nRate=70, CallBack= _Message,},}, "test", 1);

	end
									if  nTask == 299  then
		randommaxeventt()
		StackExp(50000000);

	end

SetTask(4577,GetTask(4577)+1)
StackExp(2000000);
		tbAwardTemplet:GiveAwardByList({{szName="Phi t�c",tbProp={6,0,3,1,0},nCount=1,nRate=5},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName="Phi t�c",tbProp={6,0,6,1,0},nCount=1,nRate=5,},}, "test", 1);

					tbAwardTemplet:GiveAwardByList({{szName="Hoa S�ng",tbProp={6,1,4578,1,1},nCount=1,nRate=3,},}, "test", 1);

end



function randommaxeventt()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local s = random(1,100)

if s>=1 and s < 4  then
			tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s>=4 and s < 8  then
			tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s>=8 and s < 14  then
nguangaunhien()
end;
if s>=14 and s < 24  then
			tbAwardTemplet:GiveAwardByList({{szName = "l�nh b�i boss ti�u",tbProp={6,1,4427,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=24 and s < 35  then
			tbAwardTemplet:GiveAwardByList({{szName = "L� Bao Ti�n V�n",tbProp={6,1,4580,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=35 and s < 46  then
			tbAwardTemplet:GiveAwardByList({{szName = "Tien th� l� ��c bi�t",tbProp={6,1,1765,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=46 and s < 62  then
			tbAwardTemplet:GiveAwardByList({{szName = "��i th�nh",tbProp={6,1,2424,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

end;
if s>=62 and s < 101  then
		tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,random(177,185)},nQuality=1,nCount=1,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "l� bao kim phong",tbProp={6,1,4367,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
logplayer("dulieu/max8thang3.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n th�nh c�ng m�c max 8 thang 3 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end


function nguangaunhien()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> May m�n nh�n ���c <color=pink><%s><color=green><enter><color=yellow>< Khi S� D�ng Max Event ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local t = random(1,5)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="Tuy�t �nh",tbProp={0,10,5,3,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;

end


function nguabayngay()
local t = random(1,5)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="Tuy�t �nh",tbProp={0,10,5,3,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end


