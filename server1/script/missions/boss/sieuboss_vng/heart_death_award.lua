Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\sharedata.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")



local tbItemNewBossDropAward = {

		-- {{szName="H�nh Hi�p L�nh",tbProp={6,1,4981,1,0,0},nCount=100,},},
		-- {{szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,4982,1,0,0},nCount=100,},},
		-- {{szName="Xu",tbProp={4,417,1,1,0},nCount=5000,},},
		-- {{szName="M�nh V� Chi�n M�",tbProp={6,1,4984,1,0,0},nCount=300,nRate=12},},
		-- {{szName="M�nh �� Ph� Trang B�",tbProp={6,1,4985,1,0,0},nCount=500,nRate=50},},
		-- {{szName="M�nh Trang S�c",tbProp={6,1,4986,1,0,0},nCount=300,nRate=13},},
		-- {{szName="M�nh �n",tbProp={6,1,4987,1,0,0},nCount=300,nRate=12},},
		-- {{szName="M�nh Phi Phong",tbProp={6,1,4988,1,0,0},nCount=300,nRate=13},},
		
		
		
		-- {{szName="B� K�p 150 21 c�p",tbProp={6,1,4696,1,0,0},nCount=1,nExpiredTime=0,nRate=5},},
		-- {{szName="B� K�p 150 22 c�p",tbProp={6,1,4635,1,0,0},nCount=1,nExpiredTime=0,nRate=2},},
		-- {{szName="B� K�p 150 23 c�p",tbProp={6,1,4697,1,0,0},nCount=1,nExpiredTime=0,nRate=1},},
		-- {{szName="B� K�p 150 24 c�p",tbProp={6,1,4673,1,0,0},nCount=1,nExpiredTime=0,nRate=0.5},},
		--{{szName="B� K�p 150 25 c�p",tbProp={6,1,4698,1,0,0},nCount=1,nExpiredTime=0,nRate=1},},
		--{{szName="B� K�p 150 26 c�p",tbProp={6,1,4703,1,0,0},nCount=1,nExpiredTime=0,nRate=0.5},},
		-- {{szName="Huy�t chi�n l� bao",tbProp={6,1,4907,1,0,0},nCount=10,nRate=100},},
		-- {{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1,nRate=1},},
		-- {{szName="T�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nCount=1,nRate=2},},
		-- {{szName="Tinh Ng�c",tbProp={6,1,4941,1,0,0},nCount=50,nRate=100},},
		-- {{szName="H�nh Hi�p L�nh",tbProp={6,1,2566,1,0,0},nCount=1000,nRate=100},},
		-- {{szName="K�t Tinh",tbProp={6,1,random(2598,2602),1,0,0},nCount=10,nRate=100},},
       --{{szName="B�o r��ng Nguy�t Khuy�t Kh�i (T�i Th��ng)",tbProp={6,1,4919,1,0,0},nCount=1,nRate=1,tbParam={2,0,0,0,0,0},},},
       -- {{szName="B�o r��ng Nguy�t Khuy�t Y (T�i Th��ng)",tbProp={6,1,4920,1,0,0},nCount=1,nRate=1,tbParam={6,0,0,0,0,0},},},
       -- {{szName="B�o r��ng Nguy�t Khuy�t H�i (T�i Th��ng)",tbProp={6,1,4921,1,0,0},nCount=1,nRate=3,tbParam={8,0,0,0,0,0},},},
       -- {{szName="B�o r��ng Nguy�t Khuy�t Y�u ��i (T�i Th��ng)",tbProp={6,1,4922,1,0,0},nCount=1,nRate=3,tbParam={5,0,0,0,0,0},},},
       -- {{szName="B�o r��ng Nguy�t Khuy�t H� Uy�n (T�i Th��ng)",tbProp={6,1,4923,1,0,0},nCount=1,nRate=3,tbParam={4,0,0,0,0,0},},},
       -- {{szName="B�o r��ng Nguy�t Khuy�t H�ng Li�n (T�i Th��ng)",tbProp={6,1,4924,1,0,0},nCount=1,nRate=3,tbParam={1,0,0,0,0,0},},},
       -- {{szName="B�o r��ng Nguy�t Khuy�t B�i (T�i Th��ng)",tbProp={6,1,4925,1,0,0},nCount=1,nRate=3,tbParam={9,0,0,0,0,0},},},
       -- {{szName="B�o r��ng Nguy�t Khuy�t Th��ng Gi�i (T�i Th��ng)",tbProp={6,1,4926,1,0,0},nCount=1,nRate=3,tbParam={3,0,0,0,0,0},},},
       -- {{szName="B�o r��ng Nguy�t Khuy�t H� Gi�i (T�i Th��ng)",tbProp={6,1,4927,1,0,0},nCount=1,nRate=3,tbParam={10,0,0,0,0,0},},},
       -- {{szName="B�o R��ng Nguy�t Khuy�t V� Kh� (T�i Th��ng)",tbProp={6,1,4928,1,0,0},nCount=1,nRate=1,tbParam={7,0,0,0,0,0},},},
}
function OnDeath(nNpcIndex)
	tenboss=GetNpcName(nNpcIndex)
	if (PlayerIndex == nil or PlayerIndex == 0) then
		return
	end
	local nTeamSize = GetTeamSize();
	local szName;
	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, 4000000000, 0, format("%s ph�n th��ng","Kinh nghi�m �anh b�i Thi�n Ma Th�n Qu�n"));
		end

		szName = GetName();
		PlayerFunLib:AddExp(4000000000, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i Thi�n Ma Th�n Qu�n"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 2000000000, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c Thi�n Ma Th�n Qu�n b� ti�u di�t"));
	end
	szNews = format("��i Hi�p <color=green>"..GetName().."<color> �� ��nh b�i <color=orange>Thi�n Ma Th�n Qu�n<color>, t�n tu�i s� vang v�ng giang h� !");
	AddGlobalNews(szNews);

	-- tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbItemNewBossDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
		tbAwardTemplet:GiveAwardByList({{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=5000,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,4982,1,0},nCount=100,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="H�nh Hi�p L�nh",tbProp={6,1,4981,1,0},nCount=100,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M�nh Phi Phong",tbProp={6,1,4988,1,0},nCount=300,nRate=12},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M�nh �n",tbProp={6,1,4987,1,0},nCount=300,nRate=13},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M�nh Trang S�c",tbProp={6,1,4986,1,0},nCount=300,nRate=12},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M�nh �� Ph� Trang B�",tbProp={6,1,4985,1,0},nCount=300,nRate=50},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M�nh V� Chi�n M�",tbProp={6,1,4984,1,0},nCount=300,nRate=13},}, "test", 1);	
	   	-- tbAwardTemplet:GiveAwardByList({{szName = "T�i nguy�n li�u",tbProp={6,1,4998,1,0},nCount=300},}, "test", 1);
	   	-- tbAwardTemplet:GiveAwardByList({{szName = "H�p v�t li�u l�ng ��n",tbProp={6,1,5006,1,0},nCount=300},}, "test", 1);
		
				-- {{szName="H�nh Hi�p L�nh",tbProp={6,1,4981,1,0,0},nCount=100,},},
		-- {{szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,4982,1,0,0},nCount=100,},},
		-- {{szName="Xu",tbProp={4,417,1,1,0},nCount=3000,},},
		-- {{szName="M�nh V� Chi�n M�",tbProp={6,1,4984,1,0,0},nCount=300,nRate=12},},
		-- {{szName="M�nh �� Ph� Trang B�",tbProp={6,1,4985,1,0,0},nCount=500,nRate=50},},
		-- {{szName="M�nh Trang S�c",tbProp={6,1,4986,1,0,0},nCount=300,nRate=13},},
		-- {{szName="M�nh �n",tbProp={6,1,4987,1,0,0},nCount=300,nRate=12},},
		-- {{szName="M�nh Phi Phong",tbProp={6,1,4988,1,0,0},nCount=300,nRate=13},},
		
       -- tbAwardTemplet:GiveAwardByList({tbProp = {6,1,3036,1,0,0}, nExpiredTime=0}, "test", 5);
	-- add_npchoatdong()
	-- Msg2SubWorld("<color=yellow>B�o R��ng Ho�ng Kim<color> c�a <color=orange>Thi�n Ma Th�n Qu�n<color> �� ��nh r�i t�i <color=green>Bi�n Kinh<color> hay mau ��n �� t�m nh�ng v�t ph�m qu� gi�")
end

function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end
