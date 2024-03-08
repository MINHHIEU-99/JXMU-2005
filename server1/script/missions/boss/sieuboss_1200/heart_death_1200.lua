Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
IncludeLib("LEAGUE")

-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------

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
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, 4000000000, 0, format("%s ph�n th��ng","Kinh nghi�m �anh b�i Ki�m Ti�n L� B�ch"));
		end

		szName = GetName();
		PlayerFunLib:AddExp(4000000000, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i Ki�m Ti�n L� B�ch"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 2000000000, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c Ki�m Ti�n L� B�ch b� ti�u di�t"));
	end
	szNews = format("��i Hi�p <color=green>"..GetName().."<color> �� ��nh b�i <color=orange>Ki�m Ti�n L� B�ch<color>, t�n tu�i s� vang v�ng giang h� !");
	AddGlobalNews(szNews);

		tbAwardTemplet:GiveAwardByList({{szName="Kim Nguy�n B�o",tbProp={4,1496,1,1,0,0},nCount=200,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="T� Tinh Kho�ng Th�ch",tbProp={6,1,8000,1,0},nCount=300,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (V� kh�)",tbProp={6,1,8001,1,0},nCount=1,nRate=0.02},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (Nh�n)",tbProp={6,1,8002,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (Y)",tbProp={6,1,8003,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (B�i)",tbProp={6,1,8004,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (H� Uy�n)",tbProp={6,1,8005,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (Gi�y)",tbProp={6,1,8006,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (D�y Chuy�n)",tbProp={6,1,8007,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (�ai)",tbProp={6,1,8008,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Minh Ph��ng (N�n)",tbProp={6,1,8009,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Thu�n th� quy�n",tbProp={6,1,8010,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Trang S�c",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� �n",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="�� Ph� Phi Phong",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Th�y Tinh",tbProp={4,random(238,240),1,1,0,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="X� L�i kim ��n",tbProp={6,1,2620,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="T�y T�y Kinh",tbProp={6,1,22,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="B�n Nh��c T�m Kinh",tbProp={6,1,12,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Nh�t K� C�n Kh�n Ph�",tbProp={6,1,2126,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="H�n Thi�t Ng�n N�m",tbProp={6,1,8014,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n",tbProp={6,1,1390,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="M�t t�ch K� N�ng 150 C�p 21",tbProp={6,1,4369,1,0},nCount=1,nRate=0.05},}, "test", 1);	
		logplayer("dulieu/boss/sieuboss.txt",format("Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] an sieu boss ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end


function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
