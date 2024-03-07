Include("\\script\\global\\login_head.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\global\\mrt\\configserver\\configall.lua")


function CGSupportNewPlayer_Login()
	local szAccount = GetAccount()
	if szAccount=="administrator" then
		return
	end
	if GetLevel() == 1 and GetTask(5003) == 0 then 
		local nLevelUp = CapKhiLoginVaoServer
		ST_LevelUp(nLevelUp) -- lªn 9 cÊp
		-- Earn(100000)
		AddLeadExp(100000000) -- 1 triÖu ®iÓm  = 77 ®iÓm l·nh ®¹o

		local tanthu =
		{
			{szName="<color=yellow>ThÇn Hµnh Phï", tbProp={6,1,1266}, nCount = 1, nBindState = -2, nExpiredTime = 7*1440},
			{szName="<color=yellow>Håi thµnh phï", tbProp={6,1,1083}, nCount = 1, nBindState = -2, nExpiredTime = 7*1440},
			--	{szName="<color=yellow> NhÉn T©n Thñ ", tbProp={0,7125},nCount = 1 , nBindState = -2 },
			{szName="<color=yellow> NhÉn T©n Thñ JX ", tbProp={0,7125},nQuality = 1, nBindState = -2 ,nExpiredTime = 3*1440 },
			--	 {szName="<color=yellow> trang søc", tbProp={0,4483},nQuality = 1, nBindState = -2 },
		--	{szName="<color=yellow> B«n tiªu", tbProp={0,10,6,9,0,0}, nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>Tiªn Th¶o Lé x4", tbProp={6,1,4888}, nCount = 5, nBindState = -2},
			-- {szName="<color=yellow>TÝnh Danh Chi LÖnh",tbProp={6,1,4919,1,0,0},nCount = 1, nBindState = -2},
		--	{szName="<color=yellow>Kim Phong b¶o r­¬ng",tbProp={6,1,4941,1,0,0},nCount = 1, nBindState = -2, tbParam = { -2, 14 }},
			{szName="<color=yellow>LÖnh bµi t©n thñ",tbProp={6,1,4851,1,0,0},nCount = 1, nBindState = -2},
			{szName="<color=Blue>LB - GM",tbProp={6,1,4906,1,0,0},nCount=1,nBindState = -2},
			-- {szName="<color=yellow>B¶o r­¬ng vò khÝ HKMP",tbProp={6,1,4895,1,0,0},nCount = 1, nBindState = -2, tbParam = { -2,30 }},
			-- {szName="<color=yellow>BÝ quyÕt kü n¨ng cÊp 120",tbProp={6,1,1125,1,0,0},nCount = 1, nBindState = -2, tbParam = { -2,30 }},
			-- {szName="<color=yellow>Tö MÉu LÖnh",tbProp={6,1,1427,1,0,0},nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>§¹i Thµnh BÝ KÝp 90",tbProp={6,1,2424,1,0,0},nCount = 3, nBindState = -2},
			 {szName="<color=yellow>S¸ch Kü n¨ng 120",tbProp={6,1,1125,1,0,0},nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>§¹i Thµnh BÝ KÝp 15x",tbProp={6,1,30446,1,0,0},nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>Vâ Häc Kinh Nhu",tbProp={6,1,2921,1,0,0},nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>M· bµi - ChiÕu D¹ Ngäc S­ Tö",tbProp={6,1,2332,1,0,0},nCount = 1, nBindState = -2,nExpiredTime = 43200},
		}
		tbAwardTemplet:GiveAwardByList(tanthu, "T©n Thñ")
		
		Msg2SubWorld("Chµo mõng t©n thñ <color=yellow>"..GetName().."<color> ®· tham gia vµo <color=green>vâ l©m §am Mª<color>, xin Mêi NhËn Code t¹i <color=green>web jxmu.vn/codetanthu<color>");
		-- Msg2SubWorld("Lé tr×nh hiÖn t¹i<color=green>HKMP - Siªu nh©n 1 Lo¹i Trang BÞ- 10 ph¸i -seasion 1 - <color>");
		-- Msg2SubWorld(" <color=green>Tiªu Dao XuÊt ThÕ<color>\nReset nhËn tiÒm n¨ng kh«ng Giíi h¹n");
		
		Msg2SubWorld("<color=green>§­êng m«n t¨ng th©n ph¸p lªn dame<color>\n==================");

		Msg2SubWorld("Ngò ®éc kh«ng lçi dame");
		
		Msg2SubWorld("<color=green>Cã AnTiGame Nhµ Lµm miniBuff<color>\n=====================");

		Msg2SubWorld("Auto Nhµ Tù lµm PK M­ît Train tèt");
		
		Msg2SubWorld("Ho¹t §éng Pk Ngµy §ªm\n=========================== ");

		-- Msg2SubWorld("<color=green>Hç trî ng­êi míi gÇn b»ng ng­êi cò<color> ");
		
		Msg2SubWorld("Lé tr×nh dµi l©u kh«ng nhµm ch¸n\n=================================");

		Msg2SubWorld("<color=green>TÊt c¶ cã trong vâ l©m §am Mª <color>");
		SetLastFactionNumber(-1)
		SetTask(5003,20)
	end 
end
-- MrChuBo-Comment: Sau khi t¹o nh©n vËt th× sÏ gäi hµm nµy
if login_add then login_add(CGSupportNewPlayer_Login,1) end
------Mod-----
function Mod()
	local gmItem =
	{
		{szName="<color=yellow>LÖnh Bµi Admin", tbProp={6,1,4850}, nCount = 1, nBindState = -2},
	}
	local szAccount = GetAccount()
	if (isGMAccount(szAccount) == 1 or isAdminAccount(szAccount) == 1) then
		if GetTask(5002) == 0 then 
			tbAwardTemplet:GiveAwardByList(gmItem, "GameMaster")
			SetTask(5002,20)
		end
	end
end
