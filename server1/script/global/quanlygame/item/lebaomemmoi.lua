Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("LEAGUE")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")








function main()
dofile("script/global/quanlygame/item/lebaomemmoi.lua")

		if GetLevel() >= 92 then
		Say("��ng c�p t� 92 tr� l�n 0 th� nh�n.")
		return
	end
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� m�.")
		return 1;
end
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y m�.",0);
		return 1;
end
tbAwardTemplet:GiveAwardByList({{szName = "n� Nhi H�ng",tbProp={6,1,4530,1,1},nCount=5,nExpiredTime=43200,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "th�n th�nh",tbProp={6,1,1266,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "th� ��a",tbProp={6,1,438,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "H�nh Hi�p L�nh",tbProp={6,1,4527,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "H�t M�u L�nh",tbProp={6,1,4529,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Trung Th�nh BK",tbProp={6,1,4544,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Thanh D��ng Kh�i",tbProp={0,177},nCount=1,nQuality = 1,nExpiredTime=10080,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName="Kim Phong K� L�n Huy�t",tbProp={0,178},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Tr�c Li�n Quang",tbProp={0,179},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong C�ng C�n Tam Th�n",tbProp={0,180},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong �o�t H�n Ng�c ��i",tbProp={0,181},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong H�u Ngh� d�n cung",tbProp={0,182},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Lan ��nh Ng�c",tbProp={0,183},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);


tbAwardTemplet:GiveAwardByList({{szName="Kim Phong Thi�n L� Th�o Th��ng Phi",tbProp={0,184},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong ��ng T��c Xu�n Th�m",tbProp={0,185},nCount=1,nQuality = 1,nExpiredTime=10080,nBindState=-2,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "Chi�u D�",tbProp={0,10,5,10,0,0},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);

ST_LevelUp(92-GetLevel())


	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> m� th�nh c�ng.<color=pink> (L� H�p T�n Th� H� Tr� Mem M�i)");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end




