IncludeLib("ITEM");
Include("\\script\\lib\\award.lua")

function main(ItemIndex)
	if CalcFreeItemCellCount() < 6 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 6 � tr�ng r�i h�y m�.",0);
		return 1
	end
AddStackItem(500,4,417,1,1,0,0,0)
AddStackItem(84,4,417,1,1,0,0,0)
Msg2Player("B�n nh�n ���c 584 Ti�n ��ng �� t�nh thu�  x�u s�ng 3%")
end