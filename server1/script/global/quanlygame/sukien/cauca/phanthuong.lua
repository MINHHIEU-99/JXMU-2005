Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")

---------Chinh vat pham-----------
TaskExpCauCa	= 4321
TaskDateCauCa 	= 4322
MaxExpMoiNgay 	=  20000000

function main(nItemIdx)
if GetLevel() < 80 then
		Say("Ng��i ch�i ch�a ��t c�p 80 kh�ng th� s� d�ng.", 0);
		return 1;
		end
		local checkexp = GetExpPercent()
if checkexp < 0 then
Say("Hi�n t�i �i�m kinh nghi�m b� �m ch� c� th� s� d�ng b�n nh��c r�i h�y ti�p t�c.")
return 1
end
	local G,D,P,nLevel = GetItemProp(nItemIdx);
	if (G ~= 6) then
		return 1;
	end

	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 6 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	if CheckGioiHan()==1 then
		return 1;
	end
	if P >= 4350 and P <= 4356 then
		Exp(P)
		return 0;
	end
phanthuongphu()
		--Say("<pic=26>Th�t T�m C� Th�t L� Ngon.", 0);

end


tbAWard=
{
	[4350]={szName = "�i�m kinh nghi�m", nExp_tl=300000},	-- c� l�c
	[4351]={szName = "�i�m kinh nghi�m", nExp_tl=100000}, -- c� r�
	[4352]={szName = "�i�m kinh nghi�m", nExp_tl=100000},	-- C� Tr�
	[4353]={szName = "�i�m kinh nghi�m", nExp_tl=200000}, -- C� B�ng
	[4354]={szName = "�i�m kinh nghi�m", nExp_tl=400000},	--L��ng
	[4355]={szName = "�i�m kinh nghi�m", nExp_tl=500000},	--T�m C�ng Xanh
	[4356]={szName = "�i�m kinh nghi�m", nExp_tl=600000},	--Cua C�ng K�nh

}

function Exp(P)
	if (P >= 4350 and P <= 4356) then
		tbAwardTemplet:GiveAwardByList(tbAWard[P], "Nh�n th��ng �i�m kinh nghi�m")
		nExp = tbAWard[P].nExp_tl
		Msg2Player("Ch�c m�ng b�n nh�n "..nExp.." �i�m kinh nghi�m")
		SetTask(TaskExpCauCa,(nExp+GetTask(TaskExpCauCa)))
		phanthuongphu()
end
end

function CheckGioiHan()
	old_date = GetByte(GetTask(TaskDateCauCa), 1)
	old_month = GetByte(GetTask(TaskDateCauCa), 2)
	old_year = GetByte(GetTask(TaskDateCauCa), 3)

	now_date = tonumber(date("%d"))
	now_month = tonumber(date("%m"))
	now_year = tonumber(date("%y"))

	if old_date == now_date and old_month == now_month and old_year == now_year then
		if GetTask(TaskExpCauCa) > MaxExpMoiNgay then
			Msg2Player("M�i ng�y ch� s� d�ng t�i �a "..MaxExpMoiNgay.." �i�m kinh nghi�m")
			return 1;
		end
	else
		SetTask(TaskDateCauCa, SetByte(GetTask(TaskDateCauCa), 1, now_date))
		SetTask(TaskDateCauCa, SetByte(GetTask(TaskDateCauCa), 2, now_month))
		SetTask(TaskDateCauCa, SetByte(GetTask(TaskDateCauCa), 3, now_year))
		SetTask(TaskExpCauCa,0)
		return 0;
	end
end

function phanthuongphu()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> May m�n nh�n ���c <color=pink><%s><color=green><enter><color=yellow>< Khi S� D�ng C� C�u ���c ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local s = random(1,23)
--local manhhkk= random(1326,1338)
SetTask(3334,GetTask(3334)+1)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="thien son",tbProp={6,1,72,1,1},nCount=1,nRate=10,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="le bao bi kip",tbProp={6,1,4347,1,1},nCount=1,nRate=25,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="thien son",tbProp={6,1,72,1,1},nCount=1,nRate=10,},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="Chi�u d�",tbProp={0,10,5,5,0},nCount=1,nRate=15,nExpiredTime=4320},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="tinh h�ng",tbProp={4,353,1,1,0},nCount=1,nRate=1,},}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="ttl",tbProp={6,1,71,1,1},nCount=1,nRate=10,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="th�y tinh",tbProp={4,238,1,1,0},nCount=1,nRate=1,},}, "test", 1);
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="ttl",tbProp={6,1,71,1,1},nCount=1,nRate=10,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="th�y tinh",tbProp={4,239,1,1,0},nCount=1,nRate=1,},}, "test", 1);
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="ttl",tbProp={6,1,71,1,1},nCount=1,nRate=10,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="th�y tinh",tbProp={4,240,1,1,0},nCount=1,nRate=1,},}, "test", 1);
end;
if s==7 then

tbAwardTemplet:GiveAwardByList({{szName="qu� hoa t�u",tbProp={6,1,125,1,1},nCount=1,nRate=0.02,},}, "test", 1);
end;
if s==8 then
tbAwardTemplet:GiveAwardByList({{szName="Thi�n s�n b�o l�",tbProp={6,1,71,1,1},nCount=1,nRate=5,},}, "test", 1);
end;
if s==9 then
tbAwardTemplet:GiveAwardByList({{szName="b�ch qu� L�",tbProp={6,1,73,1,1},nCount=1,nRate=50,},}, "test", 1);
end;
if s==10 then
tbAwardTemplet:GiveAwardByList({{szName="��i L�c",tbProp={6,0,3,1,1},nCount=1,nRate=100,},}, "test", 1);
end;
if s==11 then
tbAwardTemplet:GiveAwardByList({{szName="thi�t la h�n",tbProp={6,1,23,1,1},nCount=1,nRate=11,},}, "test", 1);
end;
if s==12 then
tbAwardTemplet:GiveAwardByList({{szName="Phi T�c",tbProp={6,0,6,1,1},nCount=1,nRate=100,},}, "test", 1);
end;
if s==13 then
tbAwardTemplet:GiveAwardByList({{szName="Hoa h�ng",tbProp={6,0,20,1,1},nCount=1,nRate=50,},}, "test", 1);
end;
if s==14 then
tbAwardTemplet:GiveAwardByList({{szName="Hoa h�ng",tbProp={6,0,20,1,1},nCount=1,nRate=50,},}, "test", 1);
end;
if s==15 then
tbAwardTemplet:GiveAwardByList({{szName="Hoa h�ng",tbProp={6,0,20,1,1},nCount=1,nRate=50,},}, "test", 1);
end;
if s==16 then
tbAwardTemplet:GiveAwardByList({{szName="Hoa h�ng",tbProp={6,0,20,1,1},nCount=1,nRate=50,},}, "test", 1);
end;
if s==17 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c duy�n ti�u",tbProp={6,1,122,1,1},nCount=1,nRate=50,},}, "test", 1);
end;
if s==18 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c duy�n trung",tbProp={6,1,123,1,1},nCount=1,nRate=20,},}, "test", 1);
end;
if s==19 then
tbAwardTemplet:GiveAwardByList({{szName="Ph�c duy�n ��i",tbProp={6,1,124,1,1},nCount=1,nRate=1,},}, "test", 1);
end;
if s==20 then
tbAwardTemplet:GiveAwardByList({{szName="Phi T�c",tbProp={6,0,6,1,1},nCount=1,nRate=100,},}, "test", 1);
end;
if s==21 then
tbAwardTemplet:GiveAwardByList({{szName="Phi T�c",tbProp={6,0,6,1,1},nCount=1,nRate=100,},}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName="��i L�c",tbProp={6,0,3,1,1},nCount=1,nRate=100,},}, "test", 1);
end;
if s==23 then
tbAwardTemplet:GiveAwardByList({{szName="��i L�c",tbProp={6,0,3,1,1},nCount=1,nRate=100,},}, "test", 1);
end;

end


