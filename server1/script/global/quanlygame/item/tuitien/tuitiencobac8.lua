IncludeLib("ITEM");
Include("\\script\\lib\\award.lua")

function main(ItemIndex)
	if CalcFreeItemCellCount() < 8 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 8 � tr�ng r�i h�y m�.",0);
		return 1
	end
AddStackItem(500,4,417,1,1,0,0,0)
AddStackItem(277,4,417,1,1,0,0,0)
Msg2Player("B�n nh�n ���c 777 Ti�n ��ng �� t�nh thu�  x�u s�ng 3%")
end