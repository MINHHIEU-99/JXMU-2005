Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")

TASKHOLO = 5345
TASKBANHKEM = 5346
TASKMUTNHO = 5347
TASKMUTTO = 5348


function main(sel)
dofile("script/global/quanlygame/sukien/quoctethieunhi/banhkem.lua");

--	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	--if nDate >= 20190517 then
		--Say("Event �� h�t, kh�ng th� s� d�ng.", 0);
		--return 1;
	--end;
if GetLevel() < 10 then
	Say("Ng��i ch�i ch�a ��t c�p 10 kh�ng th� s� d�ng event.", 0);
		return 1;
       end
	   		local checkexp = GetExpPercent()
if checkexp < 0 then
Say("Hi�n t�i �i�m kinh nghi�m b� �m ch� c� th� s� d�ng b�n nh��c r�i h�y ti�p t�c.")
return 1
end

	local nTask = GetTask(5346)
	if nTask >= 300 then
		 Say("��i hi�p ��y �� max event r�i.")
		return 1
	end
		if nTask == 149 or nTask ==249   or nTask ==277 then
tbAwardTemplet:GiveAwardByList({{szName="l� bao by k�p",tbProp={4,4347,1,1,0},nCount=1,nRate=25,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thi�t la h�n",tbProp={6,1,23,1,1},nCount=1,nRate=50,},}, "test", 1);

end
		if nTask == 250 or nTask == 211 then
tbAwardTemplet:GiveAwardByList({{szName="H�O QUANG L� BAO",tbProp={6,1,4566,1,1},nCount=1,nRate=80,},}, "test", 1);
end
		if nTask == 280 then
tbAwardTemplet:GiveAwardByList({{szName="N�n may m�n",tbProp={6,1,4399,1,1},nCount=1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thi�t la h�n",tbProp={6,1,23,1,1},nCount=1,nRate=50,},}, "test", 1);

end
		if nTask == 180 then
tbAwardTemplet:GiveAwardByList({{szName="N�n H�nh Ph�c",tbProp={6,1,4400,1,1},nCount=1,},}, "test", 1);
end		
	if nTask == 11 or nTask ==21  or nTask ==41 or nTask ==51 or nTask ==71 or nTask ==81  or nTask ==101   or nTask ==111   or nTask ==131   or nTask ==151    then
tbAwardTemplet:GiveAwardByList({{szName="thu�c lag",tbProp={6,0,3,1,0},nCount=1,nRate=75},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="thu�c lag",tbProp={6,0,6,1,0},nCount=1,nRate=55},}, "test", 1);

end	
		--if nTask == 154 or nTask ==254  then
				if  nTask ==103 or  nTask ==203 or nTask ==263 then

tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,random(177,185)},nCount=1,nQuality=1,nRate=50},}, "test", 1);
end	
		if nTask == 121 or nTask ==221 or nTask ==288 or nTask ==298  then
tbAwardTemplet:GiveAwardByList({{szName="S�t th� l�nh",tbProp={6,1,4564,1,1},nCount=1,nRate=35,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thi�t la h�n",tbProp={6,1,23,1,1},nCount=1,nRate=40,},}, "test", 1);

end
			if nTask == 31 or nTask ==231 or nTask ==271 or nTask ==278  then
					tbAwardTemplet:GiveAwardByList({{szName="Hoa",tbProp={6,0,20,1,1},nCount=1,nRate=75},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="T�ng kim t�ch l�y ��n",tbProp={6,1,4570,1,1},nCount=1,nRate=40,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ti�n th� l� ��c bi�t",tbProp={6,1,1765,1,1},nCount=1,nRate=6,},}, "test", 1);

end
			if nTask == 18 or  nTask ==48 or  nTask ==188 or  nTask ==298   then
		tbAwardTemplet:GiveAwardByList({{szName="Hoa",tbProp={6,0,20,1,1},nCount=1,nRate=75},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Hi�p C�t C�m Nang",tbProp={6,1,1250,1,1},nCount=1,},}, "test", 1);
end
			if nTask == 126 or  nTask ==119  or  nTask == 219   or  nTask == 209 or  nTask == 279 then
tbAwardTemplet:GiveAwardByList({{szName="Tui ng�n l��ng",tbProp={6,1,4579,1,1},nCount=1,nRate=90,},}, "test", 1);
end
			if nTask == 90  or nTask ==189 then
			tbAwardTemplet:GiveAwardByList({{szName="Thi�n s�n b�o l�",tbProp={6,1,72,1,1},nCount=1,nRate=80,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="m�t n�",tbProp={0,11,random(900,904),1,0},nCount=1,nExpiredTime=4320,},}, "test", 1);
end
			if nTask == 8 or nTask ==78 or nTask ==178 or nTask ==218  or nTask ==238  or nTask ==248 or nTask ==258  or nTask ==268  then
tbAwardTemplet:GiveAwardByList({{szName="k�o m�t nh�",tbProp={6,1,4603,1,1},nCount=1,nExpiredTime=4320,nRate=45,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="B�ch qu� l�",tbProp={6,1,73,1,1},nCount=1,nRate=30,},}, "test", 1);

end
			if nTask == 5 or nTask ==25 or nTask ==35 or nTask ==45  or nTask ==55  or nTask ==65 or nTask ==75  or nTask ==85  then
			tbAwardTemplet:GiveAwardByList({{szName="Tinh h�ng",tbProp={4,353,1,1},nCount=1,nRate=15,},}, "test", 1);
end
			if nTask == 95 or nTask ==105 or nTask ==135 or nTask ==145  or nTask ==155  or nTask ==165 or nTask ==175  or nTask ==185  then
tbAwardTemplet:GiveAwardByList({{szName="Th�y tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=20,},}, "test", 1);
end
			if nTask == 68  or nTask ==168 then
tbAwardTemplet:GiveAwardByList({{szName="l� bao b� k�p",tbProp={6,1,4347,1,0},nCount=1,},}, "test", 1);
end
			if nTask == 95 or nTask ==105 or nTask ==135 or nTask ==145  or nTask ==155  or nTask ==165 or nTask ==175  or nTask ==185  then
tbAwardTemplet:GiveAwardByList({{szName="Qu� hoa t�",tbProp={6,1,125,1,1},nCount=1,nRate=30,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Ti�n th� l� 1h",tbProp={6,1,71,1,1},nCount=1,nRate=80,},}, "test", 1);
end
			if nTask == 71 or nTask ==81 or nTask ==91 or nTask ==191  or nTask ==201  or nTask ==221 or nTask ==231  or nTask ==251  then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c duy�n",tbProp={6,1,random(122,124),1,1},nCount=1,nRate=80,},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName="Thi�n s�n b�o l�",tbProp={6,1,72,1,1},nCount=1,nRate=20,},}, "test", 1);

end
			if nTask == 211  then
tbAwardTemplet:GiveAwardByList({{szName="Ngua",tbProp={0,10,5,5,0},nCount=1,nRate=50,nExpiredTime=43200},}, "test", 1);
end
			if nTask == 171  then
tbAwardTemplet:GiveAwardByList({{szName="Ngua",tbProp={0,10,5,7,0},nCount=1,nRate=50,nExpiredTime=43200},}, "test", 1);
end
	 SetTask(5346,GetTask(5346)+1)
StackExp(3000000)
--thuongngaunhien30()
end

function tangbaodoxx()
DynamicExecuteByPlayer(PlayerIndex, "\\script\\task\\random\\treasure_head.lua", "CreateTreasureMap")
end


function thuongngaunhien30()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi S� D�ng �o tr��ng s�n><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

--local nganluong = random(1,50)
--local muctienvan= nganluong *10000
--local manhhc= random(1336,1336) --hiepcot
local manhnt= random(1337,1338) --nhutinh
local manhdinhquoc= random(1332,1334)
--local manhnt2= random(1341) --nhutinh



local tbthuongitem30 = {

					--	{szName= "Money", nJxb=muctienvan, nCount=1,nRate=2,},
			{szName = "Hoa Hong",tbProp={6,0,20,1,1},nCount=1,nRate=1.3,},
						--{szName = "Ph�c Duy�n Ti�u",tbProp={6,1,122,1,1},nCount=1,nRate=3,},
		--	{szName = "Ph�c Duy�n Trung",tbProp={6,1,123,1,1},nCount=1,nRate=2,},
		--	{szName = "Ph�c Duy�n Dai",tbProp={6,1,124,1,1},nCount=1,nRate=0.6,},
		--	{szName = "B�n Nh��c",tbProp={6,1,12,1,1},nCount=1,nRate=0.4,},
			--{szName = "Huy Ch��ng ��c L�p",tbProp={6,1,4409,1,1},nCount=1,nRate=1.8,},
			--{szName = "Qu� Hoa T�u",tbProp={6,1,125,1,1},nCount=1,nRate=1,},
					--	{szName = "t�i ng�n l��ng",tbProp={6,1,4589,1,1},nCount=1,nRate=1,},

		--	{szName = "Thi�n S�n B�o L�",tbProp={6,1,72,1,1},nCount=1.3,nRate=2,},
		--	{szName = "b�ch qu� l�",tbProp={6,1,73,1,1},nCount=1,nRate=3,},
		{szName = "��i L�c",tbProp={6,0,3,1,1},nCount=1,nRate=3.5,},
		{szName = "Phi T�c",tbProp={6,0,6,1,1},nCount=1,nRate=3.5,},
			--{szName = "T��ng �nh ph�",tbProp={6,1,18,1,1},nCount=1,nRate=1,},
		--	{szName = "Ti�n Th� L�",tbProp={6,1,71,1,1},nCount=1,nRate=4,},
		--	{szName = "Tinh h�ng",tbProp={4,353,1,1},nCount=1,nRate=0.6,},
		--	{szName = "L�c Th�y Tinh",tbProp={4,238,1,1},nCount=1,nRate=0.3,},
		--	{szName = "T� Th�y Tinh",tbProp={4,239,1,1},nCount=1,nRate=0.3,},
			--{szName = "Lam Th�y Tinh",tbProp={4,240,1,1},nCount=1,nRate=0.3,},
		--	{szName = "L� Bao B� K�p",tbProp={6,1,4347,1,1},nCount=1,nRate=1,},
		--	{szName = "Ti�n Th� L� db",tbProp={6,1,1765,1,1},nCount=1,nRate=0.4,nExpiredTime=10080*2,},
		--	{szName = "Thi�t La h�n",tbProp={6,1,23,1,1},nCount=1,nRate=1.8,},
		--		{szName = "sat thu lenh",tbProp={6,1,4564,1,1},nCount=1,nRate=0.4,nExpiredTime=43200,},
			--{szName = "Th�n th�nh ph�",tbProp={6,1,1266,1,1},nCount=1,nRate=0.4,nExpiredTime=43200,},
			--{szName = "H�i th�nh ph�",tbProp={6,1,1083,1,1},nCount=1,nRate=0.1,nExpiredTime=43200,},
			--	{szName = "tui danh vong",tbProp={6,1,4338,1,1},nCount=1,nRate=2.1,},
		--	{szName = "M�nh",tbProp={4,1337,1,1},nCount=1,nRate=0.7,},--Hi�p C�t Thi�t Huy�t Sam
		--	{szName = "M�nh",tbProp={4,1341,1,1},nCount=1,nRate=1.3,}, --nhu tinh day chuyen
		--	--{szName = "M�nh",tbProp={4,1337,1,1},nCount=1,nRate=2,}, --Hi�p C�t Thi�t Huy�t Sam
		--	{szName = "M�nh",tbProp={4,1338,1,1},nCount=1,nRate=0.2,}, --Hi�p C�t T�nh � K�t
		--	{szName = "M�nh",tbProp={4,1340,1,1},nCount=1,nRate=1.5,}, --Nhan Hi�p C�t T�nh � K�t
		--	{szName = "M�nh",tbProp={4,1335,1,1},nCount=1,nRate=0.4,},--Nhu tinh ao
		--	{szName = "M�nh",tbProp={4,1336,1,1},nCount=1,nRate=0.6,},--Nhu tinh ngoc boi
			{szName = "M�nh",tbProp={4,1330,1,1},nCount=1,nRate=0.9,},--ao dinh quoc
			{szName = "M�nh",tbProp={4,1331,1,1},nCount=1,nRate=0.35,},--non dinh quoc
			{szName = "M�nh",tbProp={4,1329,1,1},nCount=1,nRate=0.25,},--day chuyen an bang
			{szName = "M�nh",tbProp={4,1327,1,1},nCount=1,nRate=0.15,},--nhan AB hoa

			--{szName = "M�nh",tbProp={4,manhnt,1,1},nCount=1,nRate=1,},
			{szName = "M�nh",tbProp={4,manhdinhquoc,1,1},nCount=1,nRate=2.8,},
						{szName = "M�nh AB",tbProp={4,1328,1,1},nCount=1,nRate=1,}, ----ngic boi ab
												{szName = "M�nh AB",tbProp={4,1326,1,1},nCount=1,nRate=0.5,}, --nhanthuy an bang

						--{szName = "M�nh 5 nb hiepcot",tbProp={4,775,1,1},nCount=1,nRate=0.01,},
						--{szName = "M�nh 2 nb nhutinh",tbProp={4,924,1,1},nCount=1,nRate=0.01,},
		--	{szName = "Tuy�t �nh",tbProp={0,10,5,3,0,0,0},nCount=1,nRate=0.07,nExpiredTime=10080*4,},
		--	{szName = "� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=0.7,nRate=1,nExpiredTime=10080*4,},
		--	{szName = "Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1,nRate=0.07,nExpiredTime=10080*4,},
		--	{szName = "X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1,nRate=0.07,nExpiredTime=10080*4,},
		--	{szName = "��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1,nRate=0.07,nExpiredTime=10080*4,},

			
}
tbAwardTemplet:Give(tbthuongitem30, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
end





function mocmaxaotruongson1()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>L�nh B�nh Bao <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi Max 400 �o tr��ng s�n><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
tbAwardTemplet:GiveAwardByList({{szName = "Hi�p C�t Thi�t Huy�t Sam",tbProp={0,186},nCount=1,nQuality=1,},}, "test", 1);
ghilog()
end

function mocmaxaotruongson2()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>L�nh B�nh Bao <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi Max 400 �o tr��ng s�n><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
tbAwardTemplet:GiveAwardByList({{szName = "Hi�p C�t Thi�t Huy�t Sam",tbProp={0,186},nCount=1,nQuality=1,},}, "test", 1);
ghilog()
end

function mocmaxaotruongson3()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>L�nh B�nh Bao <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi Max 400 �o tr��ng s�n><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
tbAwardTemplet:GiveAwardByList({{szName = "Hi�p C�t Thi�t Huy�t Sam",tbProp={0,186},nCount=1,nQuality=1,},}, "test", 1);
ghilog()
end

function mocnhutinh()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>L�nh B�nh Bao <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi Max 400 �o tr��ng s�n><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
tbAwardTemplet:GiveAwardByList({{szName = "Nhu t�nh ng�c b�i",tbProp={0,193},nCount=1,nQuality=1,},}, "test", 1);
ghilog()
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end


function ghilog()
doclog()
dem = nValue + 1
szPath = "dulieu/demevent.txt"
	handle = openfile(szPath, "w+")
	write(handle, dem)	
	closefile(handle)
end

function doclog()
szPath = "dulieu/demevent.txt"
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

function showlog()
doclog()
Msg2Player(""..nValue.."")
end

function manhso4()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi S� D�ng �o tr��ng s�n><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
tbAwardTemplet:GiveAwardByList({{szName = "M�nh nhu t�nh",tbProp={4,780,1,1},nCount=1,},}, "test", 1);
ghilog()
end
