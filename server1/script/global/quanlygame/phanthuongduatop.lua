IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function duatop()
--Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y m�.",0);
local Name=GetName()
if CalcFreeItemCellCount() < 40 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 40 � tr�ng r�i h�y m�.",0);
	return 1;
end
if (GetTask(506) >= 1) then
	Talk(1,"","B�n �� nh�n <bclr=red>Ph�n th��ng<bclr> r�i c� m�. Xin h�y ki�m tra l�i. Ch�c b�n ch�i game <bclr=violet>Vui V�<bclr> v� g�p th�t nhi�u <bclr=violet>May M�n<bclr>.")
return 1;
end

	if (Name == "") or (Name == "") or (Name == "") or (Name == "") or (Name == "") or (Name == "") or (Name == "") or (Name == "") then 	-- top 8 mon phai con lai
for i = 1,5 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n �� nh�n ���c ph�n th��ng �ua t�p M�n Ph�i.")

	elseif (Name == "") or (Name == "") then	--top thuy yen va thien vuong
for i = 1,10 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n �� nh�n ���c ph�n th��ng �ua t�p M�n Ph�i.")

	elseif (Name == "") then	--- top 1

--for i = 1, 4 do
--AddGoldItem(unpack(AnBangMini[i].ValItem))
--end
for j = 1,20 do
AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 1. Th�t x�ng ��ng.")

	elseif (Name == "") then	 --- top 2

--for i = 1, 5 do
--AddGoldItem(unpack(DinhQuoc[i].ValItem))
--end
for j = 1,20 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 2. Th�t x�ng ��ng.")

	elseif (Name == "") then	 --- top 3

--for i = 1, 4 do
--AddGoldItem(unpack(HiepCot[i].ValItem))
--end
for j = 1,20 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 3. Th�t x�ng ��ng.")

	elseif (Name == "") then	 --- top 4

--for i = 1, 1 do
--AddItem(unpack(ChieuDa[i].ValItem))
--end
for j = 1,10 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 4. Th�t x�ng ��ng.")

	elseif (Name == "") then	 --- top 5

for i = 1, 10 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 5. Th�t x�ng ��ng.")

	elseif (Name == "") then	 --- top 6

for i = 1, 9 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 6. Th�t x�ng ��ng.")

	elseif (Name == "") then	 --- top 7

for i = 1, 8 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 7. Th�t x�ng ��ng.")

	elseif (Name == "") then	 --- top 8

for i = 1, 7 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 8. Th�t x�ng ��ng.")

	elseif (Name == "") then	 --- top 9

for i = 1, 6 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 9. Th�t x�ng ��ng.")

	elseif (Name == "") then	 --- top 10

for i = 1, 5 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Ch�c m�ng b�n nh�n ���c ph�n th��ng �ua t�p cao th� v� th� 10. Th�t x�ng ��ng.")

	else
		Talk(1,"","B�n kh�ng c� <bclr=red>T�p<bclr>. N�n kh�ng nh�n ���c <bclr=pink>Ph�n th��ng<bclr> Ch�c b�n ch�i game <bclr=violet>Vui V�<bclr> v� g�p th�t nhi�u <bclr=violet>May M�n<bclr>.")
	end
end

DinhQuoc =
{
--	[1] = {ValItem = {0,159}, NameItem = "Ho�ng Kim - ��nh Qu�c Thanh Sa Tr��ng Sam",},
--	[2] = {ValItem = {0,160}, NameItem = "Ho�ng Kim - ��nh Qu�c � Sa Ph�t Qu�n",},
--	[3] = {ValItem = {0,161}, NameItem = "Ho�ng Kim - ��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",},
--	[4] = {ValItem = {0,162}, NameItem = "Ho�ng Kim - ��nh Qu�c T� ��ng H� uy�n",},
--	[5] = {ValItem = {0,163}, NameItem = "Ho�ng Kim - ��nh Qu�c Ng�n T�m Y�u ��i",},
}

AnBangMini =
{
--	[1] = {ValItem = {0,216}, NameItem = "An Bang B�ng Tinh Th�ch H�ng Li�n",},
	[2] = {ValItem = {0,217}, NameItem = "An Bang C�c Hoa Th�ch Ch� Ho�n",},
	[3] = {ValItem = {0,218}, NameItem = "An Bang �i�n Ho�ng Th�ch Ng�c B�i",},
	[4] = {ValItem = {0,219}, NameItem = "An Bang K� Huy�t Th�ch Gi�i Ch�",},
}

HiepCot =
{
	[1] = {ValItem = {0,186}, NameItem = "Hi�p C�t Thi�t Huy�t Sam",},
	[2] = {ValItem = {0,187}, NameItem = "Hi�p C�t �a T�nh Ho�n",},
	[3] = {ValItem = {0,188}, NameItem = "Hi�p C�t �an T�m Gi�i",},
	[4] = {ValItem = {0,189}, NameItem = "Hi�p C�t T�nh � K�t",},
}

ChieuDa =
{
	[1] = {ValItem = {0,10,5,5,0,0}, NameItem = "Chi�u d� ng�c s� t�",},
}
