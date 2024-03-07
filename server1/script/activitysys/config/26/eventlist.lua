local _Message =  function (nItemIndex)
local Msg = format("<color=green>Ch�c M�ng Cao Th� <color=yellow>%s<color> �� May M�n Nh�n ���c <color=violet>[%s]<color>", GetName(), GetItemName(nItemIndex))
Msg2SubWorld(Msg)
end

--===============================================================================================================--
tbAwardRank = {
	[1] = {
		{szName="��c C� Gi�i Ch�",tbProp={0,6562},nQuality=1,nCount=1},
	},
	[2] = {
		{szName="Nh�n L�ng Voi B�c",tbProp={0,6563},nQuality=1,nCount=1},
	},
	[3] = {
		{szName="[C�c ph�m] An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,408},nQuality=1,nCount=1},
		{szName="[C�c ph�m] An Bang C�c Hoa Th�ch Ch� Ho�n",tbProp={0,409},nQuality=1,nCount=1},
		{szName="[C�c ph�m] An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={0,410},nQuality=1,nCount=1},
		{szName="[C�c ph�m] An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,411},nQuality=1,nCount=1},
	},
	[4] = {
		{szName="Kim b�o r��ng c�p 7",tbProp={6,1,4915,1,0,0},nCount=4},
	},
	[5] = {
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1},
	},
	[6] = {
		{szName="S� t�",tbProp={0,6565},nQuality=1,nCount=1},
	},
	[7] = {
		{szName="Phi�n V�",tbProp={0,10,7,10,0,0},nCount=1},
	},
	[8] = {
		{szName="Kim b�o r��ng c�p 6",tbProp={6,1,4914,1,0,0},nCount=5},
	},
	[9] = {
		{szName="Kim b�o r��ng c�p 5",tbProp={6,1,4912,1,0,0},nCount=5},
	},
	[10] = {
		{szName="Boss Tri�u Ho�n Ph�",tbProp={6,1,1022,1,0,0},nCount=20},
	},
}

--================================================================================================--
tbAward = {
	[1] = {  --Qu� Qu�c Kh�nh Th��ng
	{szName="�i�m Kinh Nghi�m",nExp_tl=20000000},
		{
			{szName="Boss Tri�u Ho�n Ph�",tbProp={6,1,1022,1,0,0},nCount=5,nRate=0.002},
			{szName="Xu x2",tbProp={4,417,1,0,0,0},nCount=2,nRate=0.002},
			{szName="Th�p to�n ��i b� th�n �an",tbProp={6,1,1399,1,0,0},nCount=5,nRate=0.003},
			{szName="Thi�n S�n Tuy�t Li�n (MU)",tbProp={6,1,4901,1,0,0},nCount=1,nRate=0.001},
			{szName="Kim b�o r��ng c�p 3",tbProp={6,1,4910,1,0,0},nCount=1,nRate=0.001},
			{szName="T�i An Bang",tbProp={6,1,4930,1,0,0},nCount=1,nRate=0.001},
			{szName="T�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nCount=1,nRate=0.1},
			{szName="L�c Th�y Tinh",tbProp={4,240,1,0,0,0},nCount=10,nRate=0.1},
			{szName="Lam Th�y Tinh",tbProp={4,238,1,0,0,0},nCount=10,nRate=0.1},
			{szName="Kim b�o r��ng c�p 2",tbProp={6,1,4909,1,0,0},nCount=2,nRate=0.1},
			{szName="T� Th�y Tinh",tbProp={4,239,1,0,0,0},nCount=10,nRate=0.1},
			{szName="Kim b�o r��ng c�p 1",tbProp={6,1,4908,1,0,0},nCount=1,nRate=0.1},
			{szName="T�i th�n h�nh ph�",tbProp={6,1,4917,1,0,0},nCount=1,nRate=0.1},
			{szName="T�i th� ��a ph�",tbProp={6,1,4918,1,0,0},nCount=1,nRate=0.1},
			{szName="Ti�n Th�o L� (x3)",tbProp={6,1,4887,1,0,0},nCount=1,nRate=2},
			{szName="Ti�n Th�o L� (x4)",tbProp={6,1,4888,1,0,0},nCount=1,nRate=2},
			{szName="T�i ng�n l��ng",tbProp={6,1,4892,1,0,0},nCount=1,nRate=2},
			{szName="Th�p to�n ��i b� th�n �an",tbProp={6,1,1399,1,0,0},nCount=2,nRate=2},
			{szName="T� Th�y Tinh",tbProp={4,239,1,0,0,0},nCount=2,nRate=3},
			{szName="L�c Th�y Tinh",tbProp={4,240,1,0,0,0},nCount=2,nRate=4},
			{szName="Lam Th�y Tinh",tbProp={4,238,1,0,0,0},nCount=2,nRate=5},
			{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,0,0,0},nCount=4,nRate=6},
			{szName="L�nh b�i Phong L�ng ��",tbProp={4,489,1,0,0,0},nCount=1,nRate=7},
			{szName="��i l�c ho�n l� bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=8},
			{szName="S�t Th� Gi�n l� h�p",tbProp={6,1,2339,1,0,0},nCount=1,nRate=9},
			{szName="T�i v�t ph�m s� ki�n x4",tbProp={6,1,4916,1,0,0},nCount=4,nRate=10.19},
			{szName="T�i v�t ph�m s� ki�n x3",tbProp={6,1,4916,1,0,0},nCount=3,nRate=11},
			{szName="S�t th� truy n� l�nh",tbProp={6,1,4897,1,0,0},nCount=1,nRate=12},
			{szName="Bao H�i thi�n",tbProp={6,1,4932,1,0,0},nCount=1,nRate=16},
		}
	},	
	[2] = {  --Qu� Qu�c Kh�nh ��c Bi�t
	{szName="�i�m Kinh Nghi�m",nExp_tl=50000000},
		{
			{szName="M� b�i - Phi�n V�",tbProp={6,1,2334,1,0,0},nCount=1,nRate=0.002},
			{szName="L�nh b�i MU",tbProp={6,1,4902,1,0,0},nCount=1,nRate=0.002},
			{szName="Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,0,0},nCount=1,nRate=0.003},
			{szName="Thi�n Ho�ng b�o r��ng",tbProp={6,1,4890,1,0,0},nCount=1,nRate=0.001},
			{szName="MU L�nh (tu�n)",tbProp={6,1,4884,1,0,0},nCount=1,nRate=0.001},
			{szName="T�i nh�n thu�n t�nh",tbProp={6,1,4931,1,0,0},nCount=1,nRate=0.001},
			{szName="Xu x3",tbProp={4,417,1,0,0,0},nCount=3,nRate=0.1},
			{szName="Xu x2",tbProp={4,417,1,0,0,0},nCount=2,nRate=0.1},
			{szName="Ti�n Th�o L� (x10)",tbProp={6,1,4903,1,0,0},nCount=2,nRate=0.1},
			{szName="Kim b�o r��ng c�p 5",tbProp={6,1,4912,1,0,0},nCount=2,nRate=0.1},
			{szName="H�ng �nh B�o R��ng",tbProp={6,1,4889,1,0,0},nCount=1,nRate=0.1},
			{szName="L� Bao M�t N�",tbProp={6,1,2428,1,0,0},tbParam={1,3},nCount=1,nRate=0.1},
			{szName="Boss Tri�u Ho�n Ph�",tbProp={6,1,1022,1,0,0},nCount=1,nRate=0.1},
			{szName="Thi�n S�n Tuy�t Li�n (MU)",tbProp={6,1,4901,1,0,0},nCount=1,nRate=0.1},
			{szName="Ti�n Th�o L� (x10)",tbProp={6,1,4903,1,0,0},nCount=1,nRate=2},
			{szName="Bao C�m nang thay ��i tr�i ��t",tbProp={6,1,4933,1,0,0},nCount=1,nRate=2},
			{szName="T�i ng�n l��ng x4",tbProp={6,1,4892,1,0,0},nCount=4,nRate=2},
			{szName="Th�p to�n ��i b� th�n �an",tbProp={6,1,1399,1,0,0},nCount=4,nRate=2},
			{szName="Kim b�o r��ng c�p 4",tbProp={6,1,4911,1,0,0},nCount=1,nRate=3},
			{szName="Kim b�o r��ng c�p 3",tbProp={6,1,4910,1,0,0},nCount=1,nRate=4},
			{szName="M� b�i - B�n Ti�u ",tbProp={6,1,2333,1,0,0},nCount=1,nRate=5},
			{szName="T�i ng�n l��ng",tbProp={6,1,4892,1,0,0},nCount=1,nRate=6},
			{szName="Ti�n Th�o L� (x4)",tbProp={6,1,4888,1,0,0},nCount=1,nRate=7},
			{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,0,0,0},nCount=5,nRate=8},
			{szName="Lam Th�y Tinh",tbProp={4,238,1,0,0,0},nCount=5,nRate=9},
			{szName="L�c Th�y Tinh",tbProp={4,240,1,0,0,0},nCount=5,nRate=10.19},
			{szName="T� Th�y Tinh",tbProp={4,239,1,0,0,0},nCount=5,nRate=11},
			{szName="Th�p to�n ��i b� th�n �an",tbProp={6,1,1399,1,0,0},nCount=2,nRate=12},
			{szName="T�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nCount=1,nRate=16},			
		}
	},	
	[3] = {  --M�c Qu� Qu�c Kh�nh Th��ng 10000
		{szName="An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,164},nQuality=1,nCount=1},
		{szName="An Bang C�c Hoa Th�ch Ch� Ho�n",tbProp={0,165},nQuality=1,nCount=1},
		{szName="An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={0,166},nQuality=1,nCount=1},
		{szName="An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,167},nQuality=1,nCount=1},
	},
	[4] = {  --M�c Qu� Qu�c Kh�nh ��c Bi�t 5000
		{szName="T�i nh�n thu�n t�nh(v�nh vi�n)",tbProp={6,1,4934,1,0,0},nCount=1},
	},
	[5] = {  --M�c Qu� Qu�c Kh�nh ��c Bi�t 10000
		{szName="S� T�",tbProp={0,6565},nQuality=1,nCount=1},
	},
	[6] = {  --M�c Qu� Qu�c Kh�nh ��c Bi�t 15000
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1},
	},
	[7] = {  --M�c Qu� Qu�c Kh�nh ��c Bi�t 35000
			{szName="T�i Nh�n L�ng Voi B�c",tbProp={6,1,4935,1,0,0},nCount=1},
			{szName="[C�c ph�m] An Bang B�ng Tinh Th�ch H�ng Li�n",tbProp={0,408},nQuality=1,nCount=1},
			{szName="[C�c ph�m] An Bang C�c Hoa Th�ch Ch� Ho�n",tbProp={0,409},nQuality=1,nCount=1},
			{szName="[C�c ph�m] An Bang �i�n Ho�ng Th�ch Ng�c B�i",tbProp={0,410},nQuality=1,nCount=1},
			{szName="[C�c ph�m] An Bang K� Huy�t Th�ch Gi�i Ch�",tbProp={0,411},nQuality=1,nCount=1},
	},
}
--=====================================================================================================================================================================================================--