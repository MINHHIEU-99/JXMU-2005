IncludeLib("ITEM");
Include("\\script\\lib\\award.lua")

function main(ItemIndex)
	if CalcFreeItemCellCount() < 4 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 4 � tr�ng r�i h�y m�.",0);
		return 1
	end
AddStackItem(196,4,417,1,1,0,0,0)
Msg2Player("B�n nh�n ���c 196 Ti�n ��ng �� t�nh thu�  x�u s�ng 3%")
end