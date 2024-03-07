--description: 唐门江津村唐元 50级任务
--author: yuanlan	
--date: 2003/3/12
-- Update: Dan_Deng(2003-08-13)

Include("\\script\\global\\repute_head.lua")

function main()
	UTask_tm = GetTask(2);
	Uworld123 = GetTask(123)
	Uworld37 = GetByte(GetTask(37),1)
	if (GetLevel() >= 90) and (Uworld123 < 10) and (Uworld37 == 127) and (GetReputeLevel(GetRepute()) >= 5) and (GetFaction() ~= "tangmen") then		-- 任务启动条件：90级、是唐门记名弟子、任务未做过、声望等级5级
		Talk(2,"U123_get","G莕 y B蕋 Nhi詍 s� huynh h祅h tung k� l�, c� l� ta qu� 產 nghi ch╪g? Ta lu玭 c秏 th蕐 c� m閠 m鑙 nguy hi觤 產ng 萵 ch鴄 b猲 trong!","V藋 sao? Ta h譶h nh� kh玭g c秏 th蕐!")
	elseif (Uworld123 >= 10) and (Uworld123 < 255) then			-- 任务进行中
		Talk(1,"","Nh鱪g l阨  ng bao gi�  truy襫 ra ngo礽, B蕋 Nhi詍 s� huynh l� a con m� m玭 ch� nh蕋 m鵦 y猽 thng. N誹 n tay 玭g ta, ch髇g ta e r籲g kh玭g to祅 m筺g!")
	elseif (UTask_tm == 50*256+40) then  				--50级任务
		Talk(7, "", "T譵 ta c� vi謈 g蕄 g� kh玭g?", "Ng� s� huynh, t鑙 qua huynh c� 甶 qua ph遪g 竚 kh� kh玭g?", "�, ta v祇 d鋘 d裵, qu衪 nh� xong th� 甶 ra!", "Huynh c� th蕐 Tam S� huynh kh玭g?", "N鉯 ra th藅 l�! T鑙 qua ta th蕐 m閠 ngi r蕋 gi鑞g Tam s� huynh ph輆 sau ph遪g 竚 kh�. Ta c� g鋓 1 ti課g. N祇 ng� huynh 蕐 v閕 v� b� 甶, ta c遪 cho l� m譶h nh譶 l莔!", "Huynh c� bi誸 Tam s� huynh b﹜ gi� � u kh玭g?", "S竛g nay khi ta ra ngo礽, tr玭g th蕐 huynh 蕐 甶 v� hng <color=Red>Thanh Th祅h s琻<color>, c� th� 甶 <color=Red>Hng Th駓 ng <color>, nghe n鉯 c� v礽 ngi b筺 c馻 huynh 蕐 � .")
		SetTask(2, 50*256+60)
		Msg2Player("� Giang T﹏ th玭 t譵 頲 Л阯g Nguy猲, bi誸 頲 Л阯g H遖 甶 n Hng Thu� ng c馻 Thanh Th祅h s琻 ")
		AddNote("� Giang T﹏ th玭 t譵 頲 Л阯g Nguy猲, bi誸 頲 Л阯g H遖 甶 n Hng Thu� ng c馻 Thanh Th祅h s琻 ")
	elseif (UTask_tm == 50*256+60) then  
		Talk(1,"","Tam s� huynh c� th� 甶 <color=Red>Hng Th駓 ng<color>, nghe n鉯 c� v礽 ngi b筺 c馻 huynh � .")
	else
		Talk(1,"","Cha m� ta m蕋 s韒, nh� ngi c藆 nu玦 n蕁g n猲 ngi, c藆 l� ngi th﹏ thu閏 nh蕋 c馻 ta.")
	end
end;

function U123_get()
	if (GetCamp() == 0) and (GetTask(75) < 255) then		-- 白名未学野球拳的，不允许接任务
		Talk(1,"","B� 甶! Ngi ch糿g ph秈 b秐 l躰h g�, n鉯 ra nh鱪g l阨 n祔 ch� th猰 phi襫 ph鴆 m� th玦!")
	else
		Say("G莕 y dng nh� 玭g t﹎ th莕 thng b蕋 鎛�.",2,"Nghe m閠 l骳  b総 u tin m閠 ch髏 /U123_get_yes","Chuy謓 c馻 ngi kh竎 kh玭g c莕 qu�  t﹎ /no")
	end
end

function U123_get_yes()
	SetTask(123,10)
	Msg2Player("Nhi謒 v� gi� ho� Nh蕋 Tr莕 b総 u: 襲 tra h祅h tung k� qu竔 c馻 Л阯g B蕋 Nhi詍 ")
	AddNote("Nhi謒 v� gi� ho� Nh蕋 Tr莕 b総 u: 襲 tra h祅h tung k� qu竔 c馻 Л阯g B蕋 Nhi詍 ")
end

function no()
end
