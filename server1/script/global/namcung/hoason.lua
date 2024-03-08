IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\global\\map_helper.lua")
Include("\\script\\lib\\log.lua")
npc_name = "Hoa S¬n KiÕm Kh¸ch "

function main()
	dialog_main()
end

function dialog_main()
	local nNpcIndex = GetLastDiagNpc();
	local player_Faction = GetFaction()
	if (GetLastFactionNumber() == 5) then		-- ±¾ÃÅ
		Say("Tõ l©u nghe tiÕng c¸c c« n­¬ng Thóy Yªn ®Ñp nh­ tiªn n÷, vŞ c« n­¬ng nµy cho ¨n mµy ta İt tiÒn uèng r­îu ®­îc ch¨ng?",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 4) then				
		Say("Xinh ®Ñp nh­ hoa t­¬i mµ h»ng ngµy cø ®èi diÖn víi Thanh §¨ng Cæ PhËt!  Ta kh«ng thİch c¸c ng­¬i ë ®iÓm nµy!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 2) then
		Say("Hai ph¸i chóng ta liªn minh l¹i, kh«ng cÇn ph¶i ph©n tranh n÷a! Ch¼ng ph¶i lµ hû sù ­?",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 3) then
		Say("Ta ghĞt nhÊt lµ c¸i bän len lĞn h¹ ®éc h¹i ng­êi!  Êy!  Kh«ng ph¶i ta nãi ng­¬i!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 1) then
		Say("D­¬ng Hå cña Thiªn V­¬ng bang c¸c ng­¬i cßn kĞm xa b¶n m«n cña ta, Thiªn V­¬ng qu¶ nhiªn ch¼ng ra g× hÕt! ",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 0) then
		Say("Hßa th­îng ®Çu träc sao l¹i ®Õn n¬i th©m s¬n cïng cèc thÕ nµy?!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 8) then
		Say("Quı m«n lÊy hiÖp nghÜa lµm träng, nh­ng kh«ng biÕt §¬n T­ Nam cã biÕt hæ thÑn hay kh«ng mµ cø muèn so tµi víi vâ c«ng cña chóng ta",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 9) then
		Say("C«n L«n ph¸i ph¸t triÓn thÇn tèc! T¹i h¹ rÊt ng­ìng mé!?",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 7) then
		Say("Ai lµm hoµng ®Õ th× còng mÆc!  Nh­ng c¸c ng­¬i tµn s¸t sinh linh th× t¹i h¹ kh«ng bá qua!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 6) then
		Say("§¹i hiÖp!  §õng qua ®©y!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 11) then
		Say("Quı m«n lÊy hiÖp nghÜa lµm träng, nh­ng kh«ng biÕt Nh¹c Phi cã biÕt hæ thÑn hay kh«ng mµ cø muèn so tµi víi vâ c«ng cña chóng ta",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 10) then 
		Say("Cã lêi g× muèn nãi víi bang chñ kh«ng? Hay muèn ta ®­a vÒ Hoa S¬n?",5,"Xin ®­a t¹i h¹ vÒ Hoa S¬n!/return_yes","Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(10)","T×m hiÓu khu vùc luyÖn c«ng/map_help","T×m hiÓu vâ nghÖ bæn m«n/skill_help","Xin chuyÓn dïm lêi hái th¨m s­ phô/no")
		return
	end

	if GetCamp() == 0 then
		Say("NÕu muèn gia nhËp bæn ph¸i ph¶i thay ®æi t©m tİnh, chuyÓn t©m tu hµnh, t­¬ng lai cã rÊt nhiÒu c¬ héi chê ®ãn ng­¬i!", 3, "Gia nhËp Hoa S¬n/vaohoason", "§Ó ta suy nghÜ kü l¹i xem/no")
	end
end

function vaohoason()
		if GetLevel()<10 then
			Talk(1,"","Bæn bang ®· cã danh x­ng Thiªn h¹ ®Ö nhÊt bang, danh chÊn giang hå.Nh©n tµi ngäa Hæ tµng Long, thêi nµo còng cã")
			Talk(1,"","Tr­íc tiªn ng­¬i h·y luyÖn tËp l¹i c¨n b¶n, ®¹t ®Õn <color=Red>cÊp 10<color> råi h·y t×m ta!")
		return
		end
		if GetSex() == 0 then
			SetSeries(2)
		end
		SetFaction("huashan")   			--Íæ¼Ò¼ÓÈë¶ëáÒÅÉ
		SetCamp(3)
		SetCurCamp(3)
		SetRank(89)	
		SetLastFactionNumber(10)
		Msg2Player("Hoan nghªnh b¹n gia nhËp Hoa S¬n ph¸i")
		AddNote("gia nhËp Hoa S¬n Ph¸i")
		Msg2Faction("huashan",GetName().."tõ h«m nay gia nhËp Hoa S¬n ph¸i. Mong c¸c vŞ quan t©m chØ gi¸o!",GetName())	
		AddMagic(1347) --Skill Hoa son
		AddMagic(1372) --Skill Hoa son
		AddMagic(1349) --Skill Hoa son
		AddMagic(1374) --Skill Hoa son
		AddMagic(1350) --Skill Hoa son
		AddMagic(1375) --Skill Hoa son
		AddMagic(1351) --Skill Hoa son
		AddMagic(1376) --Skill Hoa son
		AddMagic(1354) --Skill Hoa son
		AddMagic(1378) --Skill Hoa son
		AddMagic(1355) --Skill Hoa son
		AddMagic(1379) --Skill Hoa son
		AddMagic(1358) --Skill Hoa son
		AddMagic(1360) --Skill Hoa son
		AddMagic(1380) --Skill Hoa son
		AddMagic(1364,20) --Skill Hoa son --9x
		AddMagic(1382,20) --Skill Hoa son --9x
		AddMagic(1365,20) --Skill Hoa son --120
		AddMagic(1369,20) --Skill Hoa son --150
		AddMagic(1384,20) --Skill Hoa son --150
		AddMagic(210,1) --Skill Vò Hån	--9x
		

end

function return_yes()
	do 
		Talk(1,"","Bæn m«n dang tu söa kh«ng tiÖn ra vµo ! h·y mau mau ®i luyÖn tËp ®i !")
		return 
	end
	NewWorld(987, 1328, 3136)
end;


function no()
end;