--Create by mengfan ,2004-9-14
--����ܽ��
--���ã�����߼��±�֮һ������ͬϴ�辭��80���������ʹ�ã�����5��Ǳ�ܵ㡣
--��������������ô���Ʒ����Ҫ�����е��֡�
--����˵��������ƷҪ������ȼ�80��ʱʹ����Ч��ÿ�����ʹ��3�Ρ�
--�������701��4λ��ʾʹ�ø���Ʒ�Ĵ���



function main(sel)
	if ( GetLevel() <= 120  ) then
		Say("��ng c�p y�u c�u t� 120 m�i c� th� s� d�ng !",0);
		return 1;
	end
	if GetTask(5091) >= 10 then
		Say("��i hi�p �� s� d�ng qu� nhi�u m�t t�ch r�i, kh�ng th� s� d�ng th�m !",0);
		return 1
	end
		AddMagicPoint(10) 
		SetTask(5091,GetTask(5091)+1)
		Msg2Player("Ch�c m�ng b�n nh�n ���c 10 �i�m k� n�ng.")
		return 0
end