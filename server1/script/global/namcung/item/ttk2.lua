--Create by mengfan ,2004-9-14
--����ܽ��
--���ã�����߼��±�֮һ������ͬϴ�辭��80���������ʹ�ã�����5��Ǳ�ܵ㡣
--��������������ô���Ʒ����Ҫ�����е��֡�
--����˵��������ƷҪ������ȼ�80��ʱʹ����Ч��ÿ�����ʹ��3�Ρ�
--�������701��4λ��ʾʹ�ø���Ʒ�Ĵ���



function main(sel)
	if ( GetLevel() <= 120 ) then
		Say("��ng c�p y�u c�u t� 120 m�i c� th� s� d�ng !",0);
		return 1;
	end
	if GetTask(5090) >= 10 then
		Say("��i hi�p �� s� d�ng qu� nhi�u m�t t�ch r�i, kh�ng th� s� d�ng th�m !",0);
		return 1
	end
	AddProp(20) 
	SetTask(5090,GetTask(5090)+1)
	Msg2Player("Ch�c m�ng b�n nh�n ���c 20 �i�m ti�m n�ng.")
	return 0
end	
