IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
	if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Thanh D��ng Kh�i",tbProp={0,177},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName="Kim Phong K� L�n Huy�t",tbProp={0,178},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Tr�c Li�n Quang",tbProp={0,179},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong C�ng C�n Tam Th�n",tbProp={0,180},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong �o�t H�n Ng�c ��i",tbProp={0,181},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong H�u Ngh� d�n cung",tbProp={0,182},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Lan ��nh Ng�c",tbProp={0,183},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Thi�n L� Th�o Th��ng Phi",tbProp={0,184},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong ��ng T��c Xu�n Th�m",tbProp={0,185},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);





end





