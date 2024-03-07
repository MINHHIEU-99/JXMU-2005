local _Message =  function (nItemIndex)
local Msg = format("<color=green>Chóc Mõng Cao Thñ <color=yellow>%s<color> §· May M¾n NhËn §­îc <color=violet>[%s]<color>", GetName(), GetItemName(nItemIndex))
Msg2SubWorld(Msg)
end

--===============================================================================================================--
tbAwardRank = {
	[1] = {
		{szName="§éc C« Giíi ChØ",tbProp={0,6562},nQuality=1,nCount=1},
	},
	[2] = {
		{szName="NhÉn L«ng Voi B¹c",tbProp={0,6563},nQuality=1,nCount=1},
	},
	[3] = {
		{szName="[Cùc phÈm] An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,408},nQuality=1,nCount=1},
		{szName="[Cùc phÈm] An Bang Cóc Hoa Th¹ch ChØ Hoµn",tbProp={0,409},nQuality=1,nCount=1},
		{szName="[Cùc phÈm] An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,410},nQuality=1,nCount=1},
		{szName="[Cùc phÈm] An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,411},nQuality=1,nCount=1},
	},
	[4] = {
		{szName="Kim b¶o r­¬ng cÊp 7",tbProp={6,1,4915,1,0,0},nCount=4},
	},
	[5] = {
		{szName="Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,0,0},nCount=1},
	},
	[6] = {
		{szName="S­ tö",tbProp={0,6565},nQuality=1,nCount=1},
	},
	[7] = {
		{szName="Phiªn Vò",tbProp={0,10,7,10,0,0},nCount=1},
	},
	[8] = {
		{szName="Kim b¶o r­¬ng cÊp 6",tbProp={6,1,4914,1,0,0},nCount=5},
	},
	[9] = {
		{szName="Kim b¶o r­¬ng cÊp 5",tbProp={6,1,4912,1,0,0},nCount=5},
	},
	[10] = {
		{szName="Boss TriÖu Ho¸n Phï",tbProp={6,1,1022,1,0,0},nCount=20},
	},
}

--================================================================================================--
tbAward = {
	[1] = {  --Quµ Quèc Kh¸nh Th­êng
	{szName="§iÓm Kinh NghiÖm",nExp_tl=20000000},
		{
			{szName="Boss TriÖu Ho¸n Phï",tbProp={6,1,1022,1,0,0},nCount=5,nRate=0.002},
			{szName="Xu x2",tbProp={4,417,1,0,0,0},nCount=2,nRate=0.002},
			{szName="ThËp toµn ®¹i bæ thÇn ®an",tbProp={6,1,1399,1,0,0},nCount=5,nRate=0.003},
			{szName="Thiªn S¬n TuyÕt Liªn (MU)",tbProp={6,1,4901,1,0,0},nCount=1,nRate=0.001},
			{szName="Kim b¶o r­¬ng cÊp 3",tbProp={6,1,4910,1,0,0},nCount=1,nRate=0.001},
			{szName="Tói An Bang",tbProp={6,1,4930,1,0,0},nCount=1,nRate=0.001},
			{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nRate=0.1},
			{szName="Lôc Thñy Tinh",tbProp={4,240,1,0,0,0},nCount=10,nRate=0.1},
			{szName="Lam Thñy Tinh",tbProp={4,238,1,0,0,0},nCount=10,nRate=0.1},
			{szName="Kim b¶o r­¬ng cÊp 2",tbProp={6,1,4909,1,0,0},nCount=2,nRate=0.1},
			{szName="Tö Thñy Tinh",tbProp={4,239,1,0,0,0},nCount=10,nRate=0.1},
			{szName="Kim b¶o r­¬ng cÊp 1",tbProp={6,1,4908,1,0,0},nCount=1,nRate=0.1},
			{szName="Tói thÇn hµnh phï",tbProp={6,1,4917,1,0,0},nCount=1,nRate=0.1},
			{szName="Tói thæ ®Þa phï",tbProp={6,1,4918,1,0,0},nCount=1,nRate=0.1},
			{szName="Tiªn Th¶o Lé (x3)",tbProp={6,1,4887,1,0,0},nCount=1,nRate=2},
			{szName="Tiªn Th¶o Lé (x4)",tbProp={6,1,4888,1,0,0},nCount=1,nRate=2},
			{szName="Tói ng©n l­îng",tbProp={6,1,4892,1,0,0},nCount=1,nRate=2},
			{szName="ThËp toµn ®¹i bæ thÇn ®an",tbProp={6,1,1399,1,0,0},nCount=2,nRate=2},
			{szName="Tö Thñy Tinh",tbProp={4,239,1,0,0,0},nCount=2,nRate=3},
			{szName="Lôc Thñy Tinh",tbProp={4,240,1,0,0,0},nCount=2,nRate=4},
			{szName="Lam Thñy Tinh",tbProp={4,238,1,0,0,0},nCount=2,nRate=5},
			{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,0,0,0},nCount=4,nRate=6},
			{szName="LÖnh bµi Phong L¨ng §é",tbProp={4,489,1,0,0,0},nCount=1,nRate=7},
			{szName="§¹i lùc hoµn lÔ bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=8},
			{szName="S¸t Thñ Gi¶n lÔ hép",tbProp={6,1,2339,1,0,0},nCount=1,nRate=9},
			{szName="Tói vËt phÈm sù kiÖn x4",tbProp={6,1,4916,1,0,0},nCount=4,nRate=10.19},
			{szName="Tói vËt phÈm sù kiÖn x3",tbProp={6,1,4916,1,0,0},nCount=3,nRate=11},
			{szName="S¸t thñ truy n· lÖnh",tbProp={6,1,4897,1,0,0},nCount=1,nRate=12},
			{szName="Bao Håi thiªn",tbProp={6,1,4932,1,0,0},nCount=1,nRate=16},
		}
	},	
	[2] = {  --Quµ Quèc Kh¸nh §Æc BiÖt
	{szName="§iÓm Kinh NghiÖm",nExp_tl=50000000},
		{
			{szName="M· bµi - Phiªn Vò",tbProp={6,1,2334,1,0,0},nCount=1,nRate=0.002},
			{szName="LÖnh bµi MU",tbProp={6,1,4902,1,0,0},nCount=1,nRate=0.002},
			{szName="NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,0,0},nCount=1,nRate=0.003},
			{szName="Thiªn Hoµng b¶o r­¬ng",tbProp={6,1,4890,1,0,0},nCount=1,nRate=0.001},
			{szName="MU LÖnh (tuÇn)",tbProp={6,1,4884,1,0,0},nCount=1,nRate=0.001},
			{szName="Tói nhÉn thuÇn tÞnh",tbProp={6,1,4931,1,0,0},nCount=1,nRate=0.001},
			{szName="Xu x3",tbProp={4,417,1,0,0,0},nCount=3,nRate=0.1},
			{szName="Xu x2",tbProp={4,417,1,0,0,0},nCount=2,nRate=0.1},
			{szName="Tiªn Th¶o Lé (x10)",tbProp={6,1,4903,1,0,0},nCount=2,nRate=0.1},
			{szName="Kim b¶o r­¬ng cÊp 5",tbProp={6,1,4912,1,0,0},nCount=2,nRate=0.1},
			{szName="Hång ¶nh B¶o R­¬ng",tbProp={6,1,4889,1,0,0},nCount=1,nRate=0.1},
			{szName="LÔ Bao MÆt N¹",tbProp={6,1,2428,1,0,0},tbParam={1,3},nCount=1,nRate=0.1},
			{szName="Boss TriÖu Ho¸n Phï",tbProp={6,1,1022,1,0,0},nCount=1,nRate=0.1},
			{szName="Thiªn S¬n TuyÕt Liªn (MU)",tbProp={6,1,4901,1,0,0},nCount=1,nRate=0.1},
			{szName="Tiªn Th¶o Lé (x10)",tbProp={6,1,4903,1,0,0},nCount=1,nRate=2},
			{szName="Bao CÈm nang thay ®æi trêi ®Êt",tbProp={6,1,4933,1,0,0},nCount=1,nRate=2},
			{szName="Tói ng©n l­îng x4",tbProp={6,1,4892,1,0,0},nCount=4,nRate=2},
			{szName="ThËp toµn ®¹i bæ thÇn ®an",tbProp={6,1,1399,1,0,0},nCount=4,nRate=2},
			{szName="Kim b¶o r­¬ng cÊp 4",tbProp={6,1,4911,1,0,0},nCount=1,nRate=3},
			{szName="Kim b¶o r­¬ng cÊp 3",tbProp={6,1,4910,1,0,0},nCount=1,nRate=4},
			{szName="M· bµi - B«n Tiªu ",tbProp={6,1,2333,1,0,0},nCount=1,nRate=5},
			{szName="Tói ng©n l­îng",tbProp={6,1,4892,1,0,0},nCount=1,nRate=6},
			{szName="Tiªn Th¶o Lé (x4)",tbProp={6,1,4888,1,0,0},nCount=1,nRate=7},
			{szName="Tinh Hång B¶o Th¹ch",tbProp={4,353,1,0,0,0},nCount=5,nRate=8},
			{szName="Lam Thñy Tinh",tbProp={4,238,1,0,0,0},nCount=5,nRate=9},
			{szName="Lôc Thñy Tinh",tbProp={4,240,1,0,0,0},nCount=5,nRate=10.19},
			{szName="Tö Thñy Tinh",tbProp={4,239,1,0,0,0},nCount=5,nRate=11},
			{szName="ThËp toµn ®¹i bæ thÇn ®an",tbProp={6,1,1399,1,0,0},nCount=2,nRate=12},
			{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nRate=16},			
		}
	},	
	[3] = {  --Mèc Quµ Quèc Kh¸nh Th­êng 10000
		{szName="An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,164},nQuality=1,nCount=1},
		{szName="An Bang Cóc Hoa Th¹ch ChØ Hoµn",tbProp={0,165},nQuality=1,nCount=1},
		{szName="An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,166},nQuality=1,nCount=1},
		{szName="An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,167},nQuality=1,nCount=1},
	},
	[4] = {  --Mèc Quµ Quèc Kh¸nh §Æc BiÖt 5000
		{szName="Tói nhÉn thuÇn tÞnh(vÜnh viÔn)",tbProp={6,1,4934,1,0,0},nCount=1},
	},
	[5] = {  --Mèc Quµ Quèc Kh¸nh §Æc BiÖt 10000
		{szName="S­ Tö",tbProp={0,6565},nQuality=1,nCount=1},
	},
	[6] = {  --Mèc Quµ Quèc Kh¸nh §Æc BiÖt 15000
		{szName="Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,0,0},nCount=1},
	},
	[7] = {  --Mèc Quµ Quèc Kh¸nh §Æc BiÖt 35000
			{szName="Tói NhÉn L«ng Voi B¹c",tbProp={6,1,4935,1,0,0},nCount=1},
			{szName="[Cùc phÈm] An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={0,408},nQuality=1,nCount=1},
			{szName="[Cùc phÈm] An Bang Cóc Hoa Th¹ch ChØ Hoµn",tbProp={0,409},nQuality=1,nCount=1},
			{szName="[Cùc phÈm] An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,410},nQuality=1,nCount=1},
			{szName="[Cùc phÈm] An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={0,411},nQuality=1,nCount=1},
	},
}
--=====================================================================================================================================================================================================--