IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\global\\map_helper.lua")
Include("\\script\\lib\\log.lua")
npc_name = "Vò Hån §­êng Chñ"

function main()
	dialog_main()
end

function dialog_main()
	local nNpcIndex = GetLastDiagNpc();
	local player_Faction = GetFaction()
	if (GetLastFactionNumber() == 5) then		-- ±¾ÃÅ
		Say("Tõ l©u nghe tiÕng c¸c c« n­¬ng Thóy Yªn ®Ñp nh­ tiªn n÷, vÞ c« n­¬ng nµy cho ¨n mµy ta Ýt tiÒn uèng r­îu ®­îc ch¨ng?",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 4) then				
		Say("Xinh ®Ñp nh­ hoa t­¬i mµ h»ng ngµy cø ®èi diÖn víi Thanh §¨ng Cæ PhËt!  Ta kh«ng thÝch c¸c ng­¬i ë ®iÓm nµy!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 2) then
		Say("Hai ph¸i chóng ta liªn minh l¹i, kh«ng cÇn ph¶i ph©n tranh n÷a! Ch¼ng ph¶i lµ hû sù ­?",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 3) then
		Say("Ta ghÐt nhÊt lµ c¸i bän len lÐn h¹ ®éc h¹i ng­êi!  Êy!  Kh«ng ph¶i ta nãi ng­¬i!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 1) then
		Say("D­¬ng Hå cña Thiªn V­¬ng bang c¸c ng­¬i cßn kÐm xa b¶n m«n cña ta, Thiªn V­¬ng qu¶ nhiªn ch¼ng ra g× hÕt! ",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 0) then
		Say("Hßa th­îng ®Çu träc sao l¹i ®Õn n¬i th©m s¬n cïng cèc thÕ nµy?!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 8) then
		Say("Quý m«n lÊy hiÖp nghÜa lµm träng, nh­ng kh«ng biÕt §¬n T­ Nam cã biÕt hæ thÑn hay kh«ng mµ cø muèn so tµi víi vâ c«ng cña chóng ta",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 9) then
		Say("C«n L«n ph¸i ph¸t triÓn thÇn tèc! T¹i h¹ rÊt ng­ìng mé!?",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 7) then
		Say("Ai lµm hoµng ®Õ th× còng mÆc!  Nh­ng c¸c ng­¬i tµn s¸t sinh linh th× t¹i h¹ kh«ng bá qua!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 6) then
		Say("§¹i hiÖp!  §õng qua ®©y!",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 10) then
		Say("Quý m«n lÊy hiÖp nghÜa lµm träng, nh­ng kh«ng biÕt Nam Cung Phi cã biÕt hæ thÑn hay kh«ng mµ cø muèn so tµi víi vâ c«ng cña chóng ta",2,"Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","Xin chuyÓn dïm lêi hái th¨m ®Õn Ch­ëng M«n/no")
		return
	elseif (GetLastFactionNumber() == 11) then 
		Say("Cã lêi g× muèn nãi víi Trang Chñ kh«ng? Hay muèn ta ®­a vÒ Vò Hån §­êng?",5,"Xin ®­a t¹i h¹ vÒ Vò Hån §­êng!/return_yes","Hái th¨m vÊn ®Ò kh¸c ! /#daiyitoushi_main(11)","T×m hiÓu khu vùc luyÖn c«ng/map_help","T×m hiÓu vâ nghÖ bæn m«n/skill_help","Xin chuyÓn dïm lêi hái th¨m s­ phô/no")
		return
	end

	if GetCamp() == 0 then
		Say("NÕu muèn gia nhËp bæn ph¸i ph¶i thay ®æi t©m tÝnh, chuyÓn t©m tu hµnh, t­¬ng lai cã rÊt nhiÒu c¬ héi chê ®ãn ng­¬i!", 3, "Gia nhËp Vò Hån §­êng/vaohoason", "§Ó ta suy nghÜ kü l¹i xem/no")
	end
end

function vaohoason()
		if GetLevel()<10 then
			Talk(1,"","Bæn bang ®· cã danh x­ng Thiªn h¹ ®Ö nhÊt bang, danh chÊn giang hå.Nh©n tµi ngäa Hæ tµng Long, thêi nµo còng cã")
			Talk(1,"","Tr­íc tiªn ng­¬i h·y luyÖn tËp l¹i c¨n b¶n, ®¹t ®Õn <color=Red>cÊp 10<color> råi h·y t×m ta!")
			return
		end	
		SetFaction("wuhun")   			
		SetCamp(1)
		SetCurCamp(1)
		SetRank(97)
		SetSeries(3)	
		SetLastFactionNumber(11)
		Msg2Player("Hoan nghªnh b¹n gia nhËp Vò Hån §­êng")
		AddNote("gia nhËp Vò Hån §­êng")
		Msg2Faction("wuhun",GetName().."tõ h«m nay gia nhËp Vò Hån §­êng. Mong c¸c vÞ quan t©m chØ gi¸o!",GetName())	
		AddMagic(1972) --Skill Vò Hån
		AddMagic(1974) --Skill Vò Hån
		AddMagic(1964) --Skill Vò Hån
		AddMagic(1975) --Skill Vò Hån
		AddMagic(1976) --Skill Vò Hån
		AddMagic(1965) --Skill Vò Hån
		AddMagic(1977) --Skill Vò Hån
		AddMagic(1963) --Skill Vò Hån
		AddMagic(1979) --Skill Vò Hån
		AddMagic(1980) --Skill Vò Hån
		AddMagic(1982) --Skill Vò Hån
		AddMagic(1971) --Skill Vò Hån
		AddMagic(1981) --Skill Vò Hån	
		AddMagic(1967,20) --Skill Vò Hån	--9x
		AddMagic(1983,20) --Skill Vò Hån --9x
		AddMagic(1984,20) --Skill Vò Hån --120
		AddMagic(1969,20) --Skill Vò Hån -150
		AddMagic(1985,20) --Skill Vò Hån --150
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