Include("\\script\\lib\\awardtemplet.lua")
tbItem = 
{
	{szName="��ng S�t B�ch Kim �i�u Long Gi�i", nQuality=1, tbProp={0, 360}},
	{szName="��ng S�t B�ch Ng�c C�n Kh�n B�i", nQuality=1, tbProp={0, 361}},
	{szName="��ng S�t B�ch Kim T� Ph�ng Gi�i", nQuality=1, tbProp={0, 362}},
	{szName="��ng S�t Ph� Th�y Ng�c H�ng Khuy�n", nQuality=1, tbProp={0, 363}},
}
function main()
	
	if  CountFreeRoomByWH(2, 5, 1) < 1 then
		Talk(1, "", format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", 1, 2, 5))
		return 1
	end

	tbAwardTemplet:GiveAwardByList(tbItem, "dongsatbaoruong")
	
end