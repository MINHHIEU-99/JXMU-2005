--�������
Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
	["6,1,2527"] = {szName="H�i Thi�n T�i T�o ��n", tbProp={1,2,0,5,0,0,0}},
}
	

function main(nItemIndex)


	return 1
end



function GetDesc(nItemIndex)
	local nSolo= GetItemParam(nItemIndex, 1);
	local nHeso= GetItemParam(nItemIndex, 2);
	local nDay= GetItemParam(nItemIndex, 3);
	local nMon= GetItemParam(nItemIndex, 4);
	return format("S� may m�n : <color=yellow>%d<color>\nH� s� : <color=green>x%d<color>\nQuay ng�y : <color=orange>%d-%d<color>",nSolo,nHeso,nDay,nMon)
end