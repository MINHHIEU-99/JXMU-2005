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
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, 4000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®anh b¹i KiÕm Tiªn Lý B¹ch"));
		end

		szName = GetName();
		PlayerFunLib:AddExp(4000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i KiÕm Tiªn Lý B¹ch"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 2000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc KiÕm Tiªn Lý B¹ch bÞ tiªu diÖt"));
	end
	szNews = format("§¹i HiÖp <color=green>"..GetName().."<color> ®· ®¸nh b¹i <color=orange>KiÕm Tiªn Lý B¹ch<color>, tªn tuæi sÏ vang väng giang hå !");
	AddGlobalNews(szNews);

		tbAwardTemplet:GiveAwardByList({{szName="Kim Nguyªn B¶o",tbProp={4,1496,1,1,0,0},nCount=200,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,8000,1,0},nCount=300,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Vò khÝ)",tbProp={6,1,8001,1,0},nCount=1,nRate=0.02},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (NhÉn)",tbProp={6,1,8002,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Y)",tbProp={6,1,8003,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Béi)",tbProp={6,1,8004,1,0},nCount=1,nRate=5},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Hé UyÓn)",tbProp={6,1,8005,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Giµy)",tbProp={6,1,8006,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (D©y ChuyÒn)",tbProp={6,1,8007,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (§ai)",tbProp={6,1,8008,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Minh Ph­îng (Nãn)",tbProp={6,1,8009,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="ThuÇn thó quyÓn",tbProp={6,1,8010,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Trang Søc",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Ên",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="§å Phæ Phi Phong",tbProp={6,1,8010,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Thñy Tinh",tbProp={4,random(238,240),1,1,0,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Tinh Hång B¶o Th¹ch", tbProp={4,353,1,1,0,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="X¸ Lîi kim ®¬n",tbProp={6,1,2620,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="TÈy Tñy Kinh",tbProp={6,1,22,1,0},nCount=1,nRate=5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Vâ L©m MËt TÞch",tbProp={6,1,26,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Bµn Nh­îc T©m Kinh",tbProp={6,1,12,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="NhÊt Kû Cµn Kh«n Phï",tbProp={6,1,2126,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Hµn ThiÕt Ngµn N¨m",tbProp={6,1,8014,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="B¾c §Èu Tr­êng Sinh ThuËt - C¬ Së Thiªn",tbProp={6,1,1390,1,0},nCount=1,nRate=0.5},}, "test", 1);	
	   tbAwardTemplet:GiveAwardByList({{szName="MËt tÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,0},nCount=1,nRate=0.05},}, "test", 1);	
		logplayer("dulieu/boss/sieuboss.txt",format("Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] an sieu boss ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
