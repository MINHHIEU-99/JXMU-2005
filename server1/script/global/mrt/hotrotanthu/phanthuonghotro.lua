
function PhanThuongHoTro()
	local tbSay = {"Ng��i mu�n nh�n ph�n th��ng h� tr� � m�c c�p �� n�o?"};
		tinsert(tbSay, "Ph�n th��ng ��t m�c c�p 20/PhanThuongHoTroCap20")
		tinsert(tbSay, "Ph�n th��ng ��t m�c c�p 30/PhanThuongHoTroCap30")
		tinsert(tbSay, "Ph�n th��ng ��t m�c c�p 40/PhanThuongHoTroCap40")
		tinsert(tbSay, "Ph�n th��ng ��t m�c c�p 50/PhanThuongHoTroCap50")
		tinsert(tbSay, "Ph�n th��ng ��t m�c c�p 60/PhanThuongHoTroCap60")
		tinsert(tbSay, "Ph�n th��ng ��t m�c c�p 70/PhanThuongHoTroCap70")
		tinsert(tbSay, "Ph�n th��ng ��t m�c c�p 80/PhanThuongHoTroCap80")
		tinsert(tbSay, "Ph�n th��ng ��t m�c c�p 90/PhanThuongHoTroCap90")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap20()
	local nLevel = 20;
	if (GetLevel() < nLevel) then
		Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
	--	Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� l�n ��u ti�n, kh�ng th� nh�n ph�n th��ng n�y!")
	--return end

	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	return end
	
	local tbSupportList = {
		{szName="Li�t B�ch M�", tbProp={0,10,2,1,0,0}, nBindState=-2, nExpiredTime=1*24*60},
		{szName="Ti�n Th�o L�", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
		{szName ="Ti�n V�n",nJxb = 20000},	
		{szName = "�i�m Danh V�ng", nRepute=500}, -- �i�m Danh V�ng
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 20");
	--AddLeadExp(3000000) -- T�i L�nh ��o 
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap30()
	local nLevel = 30;
	if (GetLevel() < nLevel) then
		Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� l�n ��u ti�n, kh�ng th� nh�n ph�n th��ng n�y!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 20, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	return end
	
	local tbSupportList = {	
		{szName="Kim Phong Tr�c Li�n Quang", tbProp={0,179}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60 : th�i h�n s� d�ng
		{szName="Kim Phong Thi�n L� Th�o Th��ng Phi", tbProp={0,184}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName ="Ti�n V�n",nJxb = 30000},	
		{szName="B�ch M�", tbProp={0,10,2,3,0,0}, nBindState=-2, nExpiredTime=1*24*60},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 30");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap40()
	local nLevel = 40;
	if (GetLevel() < nLevel) then
		Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� l�n ��u ti�n, kh�ng th� nh�n ph�n th��ng n�y!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 20, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 30, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	return end
	
	local tbSupportList = {
		{szName="B�ch M�", tbProp={0,10,2,5,0,0}, nBindState=-2, nExpiredTime=1*24*60},
		{szName="Ti�n Th�o L�", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
		{szName ="Ti�n V�n",nJxb = 40000},	

		{szName="Kim Phong Thanh D��ng Kh�i", tbProp={0,177}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName="Kim Phong K� L�n Huy�t", tbProp={0,178}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName="Kim Phong Lan ��nh Ng�c", tbProp={0,183}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName="Kim Phong C�ng C�n Tam Th�n", tbProp={0,180}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 40");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap50()
	local nLevel = 50;
	if (GetLevel() < nLevel) then
		Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� l�n ��u ti�n, kh�ng th� nh�n ph�n th��ng n�y!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 20, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 30, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 40, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	return end
	
	local tbSupportList = {
		{szName="��i Uy�n B�ch M�", tbProp={0,10,2,7,0,0}, nBindState=-2, nExpiredTime=1*24*60},
		{szName ="Ti�n V�n",nJxb = 50000},	
		{szName="Ti�n Th�o L�", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
		{szName="Kim Phong �o�t H�n Ng�c ��i", tbProp={0,181}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
		{szName="Kim Phong H�u Ngh� d�n cung", tbProp={0,182}, nQuality=1, nBindState=-2, nExpiredTime=7*24*60}, --, nExpiredTime=20*24*60
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 50");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap60()
	local nLevel = 60;
	if CalcFreeItemCellCount()<10 then
		Say("H�nh trang kh�ng �� 50 � tr�ng.")
		return
	end
	if (GetLevel() < nLevel) then
		Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� l�n ��u ti�n, kh�ng th� nh�n ph�n th��ng n�y!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 20, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 30, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 40, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 50) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 50, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	return end
	
	local tbSupportList = {
		{szName="T�c S��ng", tbProp={0,10,2,9,0,0}, nBindState=-2, nExpiredTime=1*24*60},
		{szName ="Ti�n V�n",nJxb = 60000},	
		{szName="Ti�n Th�o L� (��c bi�t)", tbProp={6,1,1181,1,0,0}, nCount=3, nBindState=-2},
		  --, nExpiredTime=20*24*60
	};
	for i = 1,9 do 
	--	tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0, 167+i},nCount=1,nQuality=1,nBindState=-2,nExpiredTime=60*24*15}}, "test", 1);
		end 
	tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 60");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap70()
	local nLevel = 70;
	if (GetLevel() < nLevel) then
		Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� l�n ��u ti�n, kh�ng th� nh�n ph�n th��ng n�y!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 20, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 30, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 40, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 50) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 50, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 60) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 60, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	return end
	
	local tbSupportList = {
		{szName ="Ti�n V�n",nJxb = 70000},	
	--	{szName="T�c S��ng", tbProp={0,10,2,10,0,0}, nBindState=-2},
		{szName="Ti�n Th�o L� (��c bi�t)", tbProp={6,1,1181,1,0,0}, nCount=5, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 70");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap80()
	local nLevel = 80;
	if (GetLevel() < nLevel) then
		Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� l�n ��u ti�n, kh�ng th� nh�n ph�n th��ng n�y!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 20, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 30, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 40, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 50) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 50, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 60) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 60, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 70) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 70, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	return end
	
	local tbSupportList = {
		{szName ="Ti�n V�n",nJxb = 80000},	
		{szName="Chi�u D� Ng�c S� T� ", tbProp={0,10,5,10,0,0}, nBindState=-2, nExpiredTime=7*24*60}, -- 7: l� s� ng�y s� d�ng
		{szName="B� K�p 9x t�y ch�n ", tbProp={6,1,2426,1,0,0}, nCount=1, nBindState=-2},
		{szName="��i Th�nh 9x ", tbProp={6,1,2424,1,0,0}, nCount=1, nBindState=-2},
		{szName="Ti�n Th�o L� (��c bi�t)", tbProp={6,1,1181,1,0,0}, nCount=5, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 80");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------------------------

function PhanThuongHoTroCap90()
	local nLevel = 90;
	if (GetLevel() < nLevel) then
		Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 1) then
		--Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� l�n ��u ti�n, kh�ng th� nh�n ph�n th��ng n�y!")
	--return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 20) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 20, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 30) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 30, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 40) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 40, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 50) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 50, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 60) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 60, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 70) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 70, kh�ng th� nh�n ph�n th��ng n�y!")
	return end

	if (GetTaskModule(SUPPORT_PLAYER, GetName(), 80) ~= 1) then
		Talk(1,"", "B�n ch�a nh�n h� tr� t�n th� c�p 80, kh�ng th� nh�n ph�n th��ng n�y!")
	return end
	
	if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	return end
	
	local tbSupportList = {
		--{szName="Chi�u D� Ng�c S� T� ", tbProp={0,10,5,10,0,0}, nBindState=-2, nExpiredTime=7*24*60}, -- 7: l� s� ng�y s� d�ng
		{szName ="Ti�n V�n",nJxb = 90000},	
		{szName="Ti�n Th�o L� (��c bi�t)", tbProp={6,1,1181,1,0,0}, nCount=5, nBindState=-2},
	};
	tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 90");
	SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
end

-------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTroCap150()
--	local nLevel = 150;
	--if (GetLevel() < nLevel) then
	--	Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
	--	Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	--return end
	
	--local tbSupportList = {
		--{szName="Tr��ng sinh", tbProp={0,3491}, nQuality=1, nBindState=-2},
		--{szName="B�n Ti�u", tbProp={0,10,2,1,0,0}, nBindState=-2},
		--{szName="T�i phi phong", tbProp={6,1,4865,3,0,0}, nBindState=-2},
		--{szName="T�i ng� h�nh �n", tbProp={6,1,4866,8,0,0}, nBindState=-2},
		--{szName="Ti�n Th�o L�", tbProp={6,1,71,1,0,0}, nBindState=-2},
		--{szN-ame="Lam Th�y Tinh", tbProp={4,238,1,0,0,0}, nBindState=-2},
		--{szName="T� Th�y Tinh", tbProp={4,239,1,0,0,0}, nBindState=-2},
		--{szName="L�c Th�y Tinh", tbProp={4,240,1,0,0,0}, nBindState=-2},
		--{szName="T�nh H�ng B�o Th�ch", tbProp={4,353,1,0,0,0}, nCount=6, nBindState=-2},
		--{szName="Th�n H�nh Ph�", tbProp={6,1,1266,1,0,0}, nCount=6, nBindState=-2},
		--{szName="Th� ��a ph� (s� d�ng v� h�n)", tbProp={6,1,438,1,0,0}, nCount=6, nBindState=-2},
		--{szName="T�i trang b� T� M�ng", tbProp={6,1,4857,1,0,0}, nBindState=-2},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 150");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTroCap180()
	--local nLevel = 150;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), nLevel) ~= 0) then
		--Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	--return end
	
	--local tbSupportList = {
		--{szName="Kim � L�nh", tbProp={6,1,2349,1,0,0}, nCount=5, nBindState=-2},
		--{szName="T�i phi phong", tbProp={6,1,4865,5,0,0}, nBindState=-2},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 150");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro150_TS1()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 1) then
		--Talk(1, "", "Ch� c� nh�n v�t tr�ng sinh 1 m�i nh�n ���c h� tr� n�y")
	--return end
	
	--local nLevel = 150;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel) ~= 0) then
		--Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	--return end
	
	--local tbSupportList = {
		--{szName="L�c �� (10 ng�y)", tbProp={0,10,23,10,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 150 - Tr�ng sinh 1");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro170_TS1()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 11) then
		--Talk(1, "", "Ch� c� nh�n v�t tr�ng sinh 1 m�i nh�n ���c h� tr� n�y")
	--return end
	
	--local nLevel = 170;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel) ~= 0) then
		--Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	--return end
	
	--local tbSupportList = {
		--{szName="B�ch H� L�nh", tbProp={6,1,2357,10,0,0}, nBindState=-2},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 170 - Tr�ng sinh 1");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro190_TS1()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 1) then
		--Talk(1, "", "Ch� c� nh�n v�t tr�ng sinh 1 m�i nh�n ���c h� tr� n�y")
	--return end
	
	--local nLevel = 190;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel) ~= 0) then
		--Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	--return end
	
	--local tbSupportList = {
		--{szName="T�i phi phong (c�p 6)", tbProp={6,1,4865,6,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 190 - Tr�ng sinh 1");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 200+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro150_TS2()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 2) then
		--Talk(1, "", "Ch� c� nh�n v�t tr�ng sinh 2 m�i nh�n ���c h� tr� n�y")
	--return end
	
	--local nLevel = 150;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel) ~= 0) then
		--Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	--return end
	
	--local tbSupportList = {
		--{szName="S� T� (10 ng�y)", tbProp={0,10,22,10,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 150 - Tr�ng sinh 2");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------

--function PhanThuongHoTro150_TS2()
	--local nTransLife = ST_GetTransLifeCount();
	--if (nTransLife < 2) then
		--Talk(1, "", "Ch� c� nh�n v�t tr�ng sinh 2 m�i nh�n ���c h� tr� n�y")
	--return end
	
	--local nLevel = 190;
	--if (GetLevel() < nLevel) then
		--Talk(1, "", "��ng c�p c�a b�n ch�a �� �� nh�n ph�n th��ng n�y!")
	--return end
	
	--if (GetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel) ~= 0) then
		--Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	--return end
	
	--local tbSupportList = {
		--{szName="M�t n� V��ng Gi�", tbProp={0,11,561,1,0,0}, nBindState=-2, nExpiredTime=10*24*60},
	--};
	--tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� c�p 190 - Tr�ng sinh 2");
	--SetTaskModule(SUPPORT_PLAYER, GetName(), 400+nLevel, 1)
--end

-------------------------------------------------------------------------------------------------------------------------------------------------