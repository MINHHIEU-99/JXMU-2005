Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\sharedata.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")



local tbItemNewBossDropAward = {

		-- {{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4981,1,0,0},nCount=100,},},
		-- {{szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,4982,1,0,0},nCount=100,},},
		-- {{szName="Xu",tbProp={4,417,1,1,0},nCount=5000,},},
		-- {{szName="M¶nh Vì ChiÕn M·",tbProp={6,1,4984,1,0,0},nCount=300,nRate=12},},
		-- {{szName="M¶nh §å Phæ Trang BÞ",tbProp={6,1,4985,1,0,0},nCount=500,nRate=50},},
		-- {{szName="M¶nh Trang Søc",tbProp={6,1,4986,1,0,0},nCount=300,nRate=13},},
		-- {{szName="M¶nh Ên",tbProp={6,1,4987,1,0,0},nCount=300,nRate=12},},
		-- {{szName="M¶nh Phi Phong",tbProp={6,1,4988,1,0,0},nCount=300,nRate=13},},
		
		
		
		-- {{szName="BÝ KÝp 150 21 cÊp",tbProp={6,1,4696,1,0,0},nCount=1,nExpiredTime=0,nRate=5},},
		-- {{szName="BÝ KÝp 150 22 cÊp",tbProp={6,1,4635,1,0,0},nCount=1,nExpiredTime=0,nRate=2},},
		-- {{szName="BÝ KÝp 150 23 cÊp",tbProp={6,1,4697,1,0,0},nCount=1,nExpiredTime=0,nRate=1},},
		-- {{szName="BÝ KÝp 150 24 cÊp",tbProp={6,1,4673,1,0,0},nCount=1,nExpiredTime=0,nRate=0.5},},
		--{{szName="BÝ KÝp 150 25 cÊp",tbProp={6,1,4698,1,0,0},nCount=1,nExpiredTime=0,nRate=1},},
		--{{szName="BÝ KÝp 150 26 cÊp",tbProp={6,1,4703,1,0,0},nCount=1,nExpiredTime=0,nRate=0.5},},
		-- {{szName="HuyÕt chiÕn lÔ bao",tbProp={6,1,4907,1,0,0},nCount=10,nRate=100},},
		-- {{szName="Cµn Kh«n Song TuyÖt Béi",tbProp={6,1,2219,1,0,0},nCount=1,nRate=1},},
		-- {{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nRate=2},},
		-- {{szName="Tinh Ngäc",tbProp={6,1,4941,1,0,0},nCount=50,nRate=100},},
		-- {{szName="Hµnh HiÖp LÖnh",tbProp={6,1,2566,1,0,0},nCount=1000,nRate=100},},
		-- {{szName="KÕt Tinh",tbProp={6,1,random(2598,2602),1,0,0},nCount=10,nRate=100},},
       --{{szName="B¶o r­¬ng NguyÖt KhuyÕt Kh«i (Tèi Th­îng)",tbProp={6,1,4919,1,0,0},nCount=1,nRate=1,tbParam={2,0,0,0,0,0},},},
       -- {{szName="B¶o r­¬ng NguyÖt KhuyÕt Y (Tèi Th­îng)",tbProp={6,1,4920,1,0,0},nCount=1,nRate=1,tbParam={6,0,0,0,0,0},},},
       -- {{szName="B¶o r­¬ng NguyÖt KhuyÕt Hµi (Tèi Th­îng)",tbProp={6,1,4921,1,0,0},nCount=1,nRate=3,tbParam={8,0,0,0,0,0},},},
       -- {{szName="B¶o r­¬ng NguyÖt KhuyÕt Yªu §¸i (Tèi Th­îng)",tbProp={6,1,4922,1,0,0},nCount=1,nRate=3,tbParam={5,0,0,0,0,0},},},
       -- {{szName="B¶o r­¬ng NguyÖt KhuyÕt Hé UyÓn (Tèi Th­îng)",tbProp={6,1,4923,1,0,0},nCount=1,nRate=3,tbParam={4,0,0,0,0,0},},},
       -- {{szName="B¶o r­¬ng NguyÖt KhuyÕt H¹ng Liªn (Tèi Th­îng)",tbProp={6,1,4924,1,0,0},nCount=1,nRate=3,tbParam={1,0,0,0,0,0},},},
       -- {{szName="B¶o r­¬ng NguyÖt KhuyÕt Béi (Tèi Th­îng)",tbProp={6,1,4925,1,0,0},nCount=1,nRate=3,tbParam={9,0,0,0,0,0},},},
       -- {{szName="B¶o r­¬ng NguyÖt KhuyÕt Th­îng Giíi (Tèi Th­îng)",tbProp={6,1,4926,1,0,0},nCount=1,nRate=3,tbParam={3,0,0,0,0,0},},},
       -- {{szName="B¶o r­¬ng NguyÖt KhuyÕt H¹ Giíi (Tèi Th­îng)",tbProp={6,1,4927,1,0,0},nCount=1,nRate=3,tbParam={10,0,0,0,0,0},},},
       -- {{szName="B¶o R­¬ng NguyÖt KhuyÕt Vò KhÝ (Tèi Th­îng)",tbProp={6,1,4928,1,0,0},nCount=1,nRate=1,tbParam={7,0,0,0,0,0},},},
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
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, 4000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®anh b¹i Thiªn Ma ThÇn QuÇn"));
		end

		szName = GetName();
		PlayerFunLib:AddExp(4000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i Thiªn Ma ThÇn QuÇn"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 2000000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc Thiªn Ma ThÇn QuÇn bÞ tiªu diÖt"));
	end
	szNews = format("§¹i HiÖp <color=green>"..GetName().."<color> ®· ®¸nh b¹i <color=orange>Thiªn Ma ThÇn QuÇn<color>, tªn tuæi sÏ vang väng giang hå !");
	AddGlobalNews(szNews);

	-- tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbItemNewBossDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
		tbAwardTemplet:GiveAwardByList({{szName="TiÒn ®ång",tbProp={4,417,1,1,0,0},nCount=5000,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,4982,1,0},nCount=100,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4981,1,0},nCount=100,},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M¶nh Phi Phong",tbProp={6,1,4988,1,0},nCount=300,nRate=12},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M¶nh Ên",tbProp={6,1,4987,1,0},nCount=300,nRate=13},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M¶nh Trang Søc",tbProp={6,1,4986,1,0},nCount=300,nRate=12},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M¶nh §å Phæ Trang BÞ",tbProp={6,1,4985,1,0},nCount=300,nRate=50},}, "test", 1);
	   tbAwardTemplet:GiveAwardByList({{szName="M¶nh Vì ChiÕn M·",tbProp={6,1,4984,1,0},nCount=300,nRate=13},}, "test", 1);	
	   	-- tbAwardTemplet:GiveAwardByList({{szName = "Tói nguyªn liÖu",tbProp={6,1,4998,1,0},nCount=300},}, "test", 1);
	   	-- tbAwardTemplet:GiveAwardByList({{szName = "Hép vËt liÖu lång ®Ìn",tbProp={6,1,5006,1,0},nCount=300},}, "test", 1);
		
				-- {{szName="Hµnh HiÖp LÖnh",tbProp={6,1,4981,1,0,0},nCount=100,},},
		-- {{szName="Tö Tinh Kho¸ng Th¹ch",tbProp={6,1,4982,1,0,0},nCount=100,},},
		-- {{szName="Xu",tbProp={4,417,1,1,0},nCount=3000,},},
		-- {{szName="M¶nh Vì ChiÕn M·",tbProp={6,1,4984,1,0,0},nCount=300,nRate=12},},
		-- {{szName="M¶nh §å Phæ Trang BÞ",tbProp={6,1,4985,1,0,0},nCount=500,nRate=50},},
		-- {{szName="M¶nh Trang Søc",tbProp={6,1,4986,1,0,0},nCount=300,nRate=13},},
		-- {{szName="M¶nh Ên",tbProp={6,1,4987,1,0,0},nCount=300,nRate=12},},
		-- {{szName="M¶nh Phi Phong",tbProp={6,1,4988,1,0,0},nCount=300,nRate=13},},
		
       -- tbAwardTemplet:GiveAwardByList({tbProp = {6,1,3036,1,0,0}, nExpiredTime=0}, "test", 5);
	-- add_npchoatdong()
	-- Msg2SubWorld("<color=yellow>B¶o R­¬ng Hoµng Kim<color> cña <color=orange>Thiªn Ma ThÇn QuÇn<color> §· ®¸nh r¬i t¹i <color=green>BiÖn Kinh<color> hay mau ®Õn ®ã t×m nh÷ng vËt phÈm quÝ gi¸")
end

function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end
