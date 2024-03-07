Include("\\script\\activitysys\\config\\21\\head.lua")
Include("\\script\\activitysys\\config\\21\\variables.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")

function pActivity:AddInitNpc()
	local tbNpcPos = {
		[1] = {53,1631,3181,},
		[2] = {99,1622,3196,},
		[3] = {20,3543,6222,},
	}
	-- local tbNpc = {
	-- 	[1] = {
	-- 		szName = "T��ng ��i", 
	-- 		nLevel = 95,
	-- 		nNpcId = 1785,
	-- 		nIsboss = 0,
	-- 		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	-- 		},
	-- 	[2] = {
	-- 		szName = "H�ng Nga", 
	-- 		nLevel = 95,
	-- 		nNpcId = 1867,
	-- 		nIsboss = 0,
	-- 		szScriptPath = "\\script\\activitysys\\npcdailog.lua",
	-- 		}
	-- }
	local tbNpc = {
			szName = "Nguy�t Nhi", 
			nLevel = 95,
			nNpcId = 1849,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
		}
	for i=1,getn(tbNpcPos) do
		local nMapId, nPosX, nPosY = unpack(tbNpcPos[i])
		basemission_CallNpc(tbNpc, nMapId, nPosX * 32, nPosY * 32)	
	end
end	

function pActivity:SuDungBaoNguyenLieu()
	local tbAward = {
		{szName="B�t m�",tbProp={4,520,1,1,0,0},nCount = 1, nRate = 25,nExpiredTime=20230730},
		{szName="���ng c�t",tbProp={4,521,1,1,0,0},nCount = 1, nRate = 25,nExpiredTime=20230730},
		{szName="Tr�ng",tbProp={4,522,1,1,0,0},nCount = 1, nRate = 25,nExpiredTime=20230730},
		{szName="H�nh nh�n",tbProp={4,525,1,1,0,0},nCount = 1, nRate = 25,nExpiredTime=20230730},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Bao nguy�n li�u b�nh trung thu")
end

function pActivity:SuDungBanhThuong()
	Msg2Player("SuDungBanhThuong")
end

function pActivity:SuDungBanhNhanTrung()
	local nExp = 3000000
	AddOwnExp(nExp)
	local tbAward = {
		{szName="Ti�n Th�o L� x3",tbProp={6,1,4887,1,0,0},nRate=5,nCount=1},
		{szName="Ti�n Th�o L� x4",tbProp={6,1,4887,1,0,0},nRate=4,nCount=1},
		{szName="qu� hoa t�u",tbProp={6,1,125,1,0,0},nRate=5,nCount=1},
		{szName="thi�n s�n b�o l�",tbProp={6,1,72,1,0,0},nRate=5,nCount=1},
		{szName="Bao h�i thi�n t�i t�o l� bao",tbProp={6,1,4932,1,0,0},nRate=5,nCount=1},
		{szName="l� bao t�ng kim",tbProp={6,1,4940,1,0,0},nRate=5,nCount=1},
		{szName="lam th�y tinh",tbProp={4,238,1,1,0,0},nRate=5,nCount=1},
		{szName="l�c th�y tinh",tbProp={4,240,1,1,0,0},nRate=5,nCount=1},
		{szName="t� th�y tinh",tbProp={4,239,1,1,0,0},nRate=5,nCount=1},
		{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=5,nCount=1},
		{szName="Kim b�o r��ng c�p 1",tbProp={6,1,4908,1,0,0},nRate=5,nCount=10},
		{szName="S�t th� truy n� l�nh",tbProp={6,1,4897,1,0,0},nRate=5,nCount=1},
		{szName="S�t Th� Gi�n l� h�p",tbProp={6,1,2339,1,0,0},nRate=5,nCount=1},
		{szName="Long Huy�t Ho�n",tbProp={6,1,2117,1,0,0},nRate=5,nCount=1},
		{szName="�i�m kinh nghi�m",nExp_tl=100000000,nRate=3,nCount=1},
		{szName="Bao C�m nang thay ��i tr�i ��t",tbProp={6,1,4933,1,0,0},nRate=3,nCount=1},
		{szName="Nga Mi  Ph�t Quang Ch��ng M�t T�ch",tbProp={6,1,2117,1,0,0},nRate=3,nCount=1},
		{szName="Kim b�o r��ng c�p 2",tbProp={6,1,4909,1,0,0},nRate=3,nCount=10},
		{szName="Kim b�o r��ng c�p 3",tbProp={6,1,4910,1,0,0},nRate=3,nCount=5},
		{szName="T�i Th� ��a ph�",tbProp={6,1,4918,1,0,0},tbParam={0,3},nRate=3,nCount=1},
		{szName="h�n nguy�n linh l�",tbProp={6,1,2312,1,0,0},nRate=3,nCount=1},
		{szName="T�i Th�n H�nh Ph�",tbProp={6,1,4917,1,0,0},nRate=2.9,nCount=1},
		{szName="th�p to�n ��i b� th�n �an",tbProp={6,1,1399,1,0,0},nRate=2,nCount=1},
		{szName="ng�c ti�m n�ng ( 1 vi�n)",tbProp={6,1,4921,1,0,0},nRate=0.5,nCount=1,nExpiredTime=20230730},
		{szName="t�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nRate=0.5,nCount=1},
		{szName="h�ng �nh b�o r��ng",tbProp={6,1,4889,1,0,0},nRate=0.5,nCount=1},
		{szName="��i th�nh b� k�p 9x",tbProp={6,1,2424,1,0,0},nRate=0.5,nCount=1},
		{szName="M� B�i-Si�u Quang (1 ng�y)",tbProp={6,1,4943,1,0,0},nRate=0.5,nCount=1},
		{szName="L� Bao M�t N� 1 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,1},nRate=0.5,nCount=1},
		{szName="L� Bao M�t N� 1 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,1},nRate=0.5,nCount=1},
		{szName="T� M�u L�nh",tbProp={6,1,1427,1,0,0},nRate=0.35,nCount=1},
		{szName="Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,0,0},nRate=0.3,nCount=1,nExpiredTime=20230730},
		{szName="Ti�n Th�o L� x10",tbProp={6,1,4903,1,0,0},nRate=0.1,nCount=1},
		{szName="��i th�nh b� k�p 12x",tbProp={6,1,2425,1,0,0},nRate=0.06,nCount=1},
		{szName="MU L�nh (tu�n)",tbProp={6,1,4884,1,0,0},nRate=0.05,nCount=1},
		{szName="b� quy�t k� n�ng c�p 120",tbProp={6,1,1125,1,0,0},nRate=0.05,nCount=1},
		{szName="2 vi�n ng�c ti�m n�ng ",tbProp={6,1,4921,1,0,0},nRate=0.05,nCount=2,nExpiredTime=20230730},
		{szName="3 vi�n ng�c ti�m n�ng ",tbProp={6,1,4921,1,0,0},nRate=0.05,nCount=3,nExpiredTime=20230730},
		{szName="4 vi�n ng�c ti�m n�ng ",tbProp={6,1,4921,1,0,0},nRate=0.05,nCount=4,nExpiredTime=20230730},
		{szName="M� B�i-Si�u Quang (3 ng�y)",tbProp={6,1,4944,1,0,0},nRate=0.05,nCount=1},
		{szName="L� Bao M�t N� 3 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,3},nRate=0.05,nCount=1},
		{szName="L� Bao M�t N� 3 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,3},nRate=0.05,nCount=1},
		{szName="[��nh th�i] Th� T�c Ng�n Gi�i ",tbProp={0,379},nQuality=1,nRate=0.005,nCount=1},
		{szName="[��nh th�i] Th� T�c Kim Gi�i",tbProp={0,378},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T�nh C�n Qu�c Ngh� Th��ng",tbProp={0,190},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T�nh Th�c N� H�ng Li�n",tbProp={0,191},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T�nh  Ph�ng Nghi Gi�i Ch�",tbProp={0,192},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T�nh  Tu� T�m Ng�c B�i",tbProp={0,193},nQuality=1,nRate=0.005,nCount=1},
		{szName="Hi�p C�t Thi�t Huy�t Sam",tbProp={0,186},nQuality=1,nRate=0.005,nCount=1},
		{szName="Hi�p C�t �a T�nh Ho�n",tbProp={0,187},nQuality=1,nRate=0.005,nCount=1},
		{szName="Hi�p C�t �an T�m Gi�i",tbProp={0,188},nQuality=1,nRate=0.005,nCount=1},
		{szName="Hi�p C�t T�nh � K�t",tbProp={0,189},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,164},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang C�c hoa Th�ch ch� ho�n",tbProp={0,165},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang �i�n Ho�ng th�ch ng�c b�i",tbProp={0,166},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,167},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c Thanh sa Tr��ng sam",tbProp={0,159},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c � Sa Ph�t Qu�n",tbProp={0,160},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",tbProp={0,161},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c T� ��ng H� Uy�n",tbProp={0,162},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c Ng�n T�m Y�u ��i",tbProp={0,163},nQuality=1,nRate=0.005,nCount=1},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"B�nh Trung Thu Tr�ng")
end

function pActivity:SuDungBanhThapCam()
	local nExp = 10000000
	AddOwnExp(nExp)
	local tbAward = {
		{szName="Ti�n Th�o L� x3",tbProp={6,1,4887,1,0,0},nRate=4,nCount=1},
		{szName="Ti�n Th�o L� x4",tbProp={6,1,4888,1,0,0},nRate=4,nCount=1},
		{szName="qu� hoa t�u",tbProp={6,1,125,1,0,0},nRate=4,nCount=1},
		{szName="thi�n s�n b�o l�",tbProp={6,1,72,1,0,0},nRate=4,nCount=1},
		{szName="Bao h�i thi�n t�i t�o l� bao",tbProp={6,1,4932,1,0,0},nRate=4,nCount=1},
		{szName="l� bao t�ng kim",tbProp={6,1,4940,1,0,0},nRate=4,nCount=1},
		{szName="lam th�y tinh",tbProp={4,238,1,1,0,0},nRate=4,nCount=1},
		{szName="l�c th�y tinh",tbProp={4,240,1,1,0,0},nRate=4,nCount=1},
		{szName="t� th�y tinh",tbProp={4,239,1,1,0,0},nRate=4,nCount=1},
		{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nRate=4,nCount=1},
		{szName="Kim b�o r��ng c�p 1",tbProp={6,1,4908,1,0,0},nRate=4,nCount=10},
		{szName="S�t th� truy n� l�nh",tbProp={6,1,4897,1,0,0},nRate=4,nCount=1},
		{szName="S�t Th� Gi�n l� h�p",tbProp={6,1,2339,1,0,0},nRate=4,nCount=1},
		{szName="Long Huy�t Ho�n",tbProp={6,1,2117,1,0,0},nRate=4,nCount=1},
		{szName="Bao C�m nang thay ��i tr�i ��t",tbProp={6,1,4933,1,0,0},nRate=4,nCount=1},
		{szName="Nga Mi  Ph�t Quang Ch��ng M�t T�ch",tbProp={6,1,2117,1,0,0},nRate=4,nCount=1},
		{szName="Kim b�o r��ng c�p 2",tbProp={6,1,4909,1,0,0},nRate=4,nCount=10},
		{szName="Kim b�o r��ng c�p 3",tbProp={6,1,4910,1,0,0},nRate=4,nCount=5},
		{szName="�i�m kinh nghi�m",nExp_tl=100000000,nRate=3,nCount=1},
		{szName="T�i Th� ��a ph�",tbProp={6,1,4918,1,0,0},tbParam={0,3},nRate=3,nCount=1},
		{szName="T�i Th�n H�nh Ph�",tbProp={6,1,4917,1,0,0},nRate=3,nCount=1},
		{szName="h�n nguy�n linh l�",tbProp={6,1,2312,1,0,0},nRate=3,nCount=1},
		{szName="T� M�u L�nh",tbProp={6,1,1427,1,0,0},nRate=3,nCount=1},
		{szName="Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,0,0},nRate=3,nCount=1,nExpiredTime=20230730},
		{szName="ng�c ti�m n�ng ( 1 vi�n)",tbProp={6,1,4921,1,0,0},nRate=3,nCount=1,nExpiredTime=20230730},
		{szName="th�p to�n ��i b� th�n �an",tbProp={6,1,1399,1,0,0},nRate=2.1,nCount=1},
		{szName="t�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nRate=0.5,nCount=1},
		{szName="h�ng �nh b�o r��ng",tbProp={6,1,4889,1,0,0},nRate=0.5,nCount=1},
		{szName="��i th�nh b� k�p 9x",tbProp={6,1,2424,1,0,0},nRate=0.5,nCount=1},
		{szName="M� B�i-Si�u Quang (1 ng�y)",tbProp={6,1,4943,1,0,0},nRate=0.5,nCount=1},
		{szName="L� Bao M�t N� 1 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,1},nRate=0.5,nCount=1},
		{szName="L� Bao M�t N� 1 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,1},nRate=0.5,nCount=1},
		-- {szName="mu l�nh ng�y",nRate=0.3,nCount=1},
		{szName="Ti�n Th�o L� x10",tbProp={6,1,4903,1,0,0},nRate=0.1,nCount=1},
		{szName="MU L�nh (tu�n)",tbProp={6,1,4884,1,0,0},nRate=0.1,nCount=1},
		{szName="��i th�nh b� k�p 12x",tbProp={6,1,2425,1,0,0},nRate=0.1,nCount=1},
		{szName="b� quy�t k� n�ng c�p 120",tbProp={6,1,1125,1,0,0},nRate=0.1,nCount=1},
		{szName="2 vi�n ng�c ti�m n�ng ",tbProp={6,1,4921,1,0,0},nRate=0.1,nCount=2,nExpiredTime=20230730},
		{szName="3 vi�n ng�c ti�m n�ng ",tbProp={6,1,4921,1,0,0},nRate=0.1,nCount=3,nExpiredTime=20230730},
		{szName="4 vi�n ng�c ti�m n�ng ",tbProp={6,1,4921,1,0,0},nRate=0.1,nCount=4,nExpiredTime=20230730},
		{szName="M� B�i-Si�u Quang (3 ng�y)",tbProp={6,1,4944,1,0,0},nRate=0.1,nCount=1},
		{szName="L� Bao M�t N� 3 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,3},nRate=0.1,nCount=1},
		{szName="L� Bao M�t N� 3 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,3},nRate=0.1,nCount=1},
		{szName="MU L�nh (th�ng)",tbProp={6,1,4885,1,0,0},nRate=0.1,nCount=1},
		{szName="M� B�i-Si�u Quang (7 ng�y)",tbProp={6,1,4945,1,0,0},nRate=0.1,nCount=1},
		{szName="L� Bao M�t N� 7 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,7},nRate=0.1,nCount=1},
		{szName="L� Bao M�t N� 7 ng�y",tbProp={6,1,2428,1,0,0},tbParam={0,7},nRate=0.1,nCount=1},
		{szName="th�n b� kho�ng th�ch",tbProp={6,1,398,1,0,0},nRate=0.055,nCount=1},
		{szName="kim t�",tbProp={4,979,1,1,0,0},nRate=0.05,nCount=1},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nRate=0.005,nCount=1,nExpiredTime=20230730},
		{szName="[��nh th�i] Th� T�c Ng�n Gi�i ",tbProp={0,379},nQuality=1,nRate=0.005,nCount=1},
		{szName="[��nh th�i] Th� T�c Kim Gi�i",tbProp={0,378},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T�nh C�n Qu�c Ngh� Th��ng",tbProp={0,190},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T�nh Th�c N� H�ng Li�n",tbProp={0,191},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T�nh  Ph�ng Nghi Gi�i Ch�",tbProp={0,192},nQuality=1,nRate=0.005,nCount=1},
		{szName="Nhu T�nh  Tu� T�m Ng�c B�i",tbProp={0,193},nQuality=1,nRate=0.005,nCount=1},
		{szName="Hi�p C�t Thi�t Huy�t Sam",tbProp={0,186},nQuality=1,nRate=0.005,nCount=1},
		{szName="Hi�p C�t �a T�nh Ho�n",tbProp={0,187},nQuality=1,nRate=0.005,nCount=1},
		{szName="Hi�p C�t �an T�m Gi�i",tbProp={0,188},nQuality=1,nRate=0.005,nCount=1},
		{szName="Hi�p C�t T�nh � K�t",tbProp={0,189},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,164},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang C�c hoa Th�ch ch� ho�n",tbProp={0,165},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang �i�n Ho�ng th�ch ng�c b�i",tbProp={0,166},nQuality=1,nRate=0.005,nCount=1},
		{szName="An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,167},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c Thanh sa Tr��ng sam",tbProp={0,159},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c � Sa Ph�t Qu�n",tbProp={0,160},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",tbProp={0,161},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c T� ��ng H� Uy�n",tbProp={0,162},nQuality=1,nRate=0.005,nCount=1},
		{szName="��nh Qu�c Ng�n T�m Y�u ��i",tbProp={0,163},nQuality=1,nRate=0.005,nCount=1},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"B�nh Trung Thu Th�p C�m")
end


function pActivity:ResetBanhTrung()
	local nSolanReset = self:GetTask(%nTaskReset_BanhTrung)
	local nXuRequire = 500
	if nSolanReset >= 6 then
		Msg2Player("B�n �� s� d�ng max Event lo�i n�y.")
	else
		if (CalcEquiproomItemCount(4, 417, 1, 1) >= nXuRequire) then
			nSolanReset = nSolanReset+1
			ConsumeEquiproomItem(nXuRequire, 4, 417, 1, 1)
			self:SetTask(%nTaskReset_BanhTrung, nSolanReset)
			local tbAward = {}
			if (nSolanReset <= 5) then
				tbAward = {
					{szName="L�nh b�i �� t�m (trang b�)",tbProp={6,1,4949,1,0,0},nCount=1},
				}
				self:SetTask(%nTask_BanhTrung, 0)
			else
				tbAward = {
					{szName="L�nh b�i �� t�m (v� kh�)",tbProp={6,1,4947,1,0,0},nCount=1},
				}
			end
			tbAwardTemplet:GiveAwardByList(tbAward,"ResetBanhTrung-"..nSolanReset)
		
		else
			Msg2Player("Kh�ng �� ti�n ��ng �� Reset.")
		end
	end
end

function pActivity:ResetBanhThapCam()
	local nSolanReset = self:GetTask(%nTaskReset_BanhThapCam)
	nSolanReset = nSolanReset+1
	local nTienVanRequire = 100000000
	if (GetCash() >= nTienVanRequire) then
        Pay(nTienVanRequire)
		self:SetTask(%nTask_BanhThapCam, 0)
		self:SetTask(%nTaskReset_BanhThapCam, nSolanReset)
		local tbAward = {}
		if (nSolanReset <= 5 ) then
			tbAward = {
				{szName="L�nh b�i �� t�m (trang b�)",tbProp={6,1,4949,1,0,0},nCount=1},
			}
		elseif (nSolanReset <= 10 ) then
			tbAward = {
				{szName="L�nh b�i �� t�m (v� kh�)",tbProp={6,1,4947,1,0,0},nCount=1},
			}
		elseif (nSolanReset <= 14 ) then
			tbAward = {
				{szName="L�nh b�i �� t�m (trang s�c)",tbProp={6,1,4948,1,0,0},nCount=1},
			}
		end
		tbAwardTemplet:GiveAwardByList(tbAward,"ResetBanhThapCam-"..nSolanReset)
    else
        Talk(1,"","Ng��i kh�ng mang �� ti�n")
    end
end