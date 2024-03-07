--description: 天忍教风堂堂主完颜雪衣
--author: yuanlan	
--date: 2003/5/19
--Dan_Deng(2003-07-22), 加入门派任务的等级要求
-- Update: Dan_Deng(2003-08-14)
-- Update: xiaoyang(2004\4\12) 加入90级门派任务

Include("\\script\\global\\skills_table.lua")

Include("\\script\\item\\skillbook.lua")

function main()
	UTask_tr = GetTask(4);
	Uworld127 = GetTask(127)
	if(GetSeries() == 3) and (GetFaction() == "tianren") then
		if(UTask_tr == 30*256) and (GetLevel() >= 30) then
			Say("Ch� v礽 ng祔 n鱝 l� sinh nh藅 M� ta - Ho祅g h藆 nc Чi Kim, b鎛 Л阯g ch� d� nh t苙g M蓇 h藆 m閠 chi誧 竜 ng鋍, nh璶g c遪 thi誹 b鑞 lo筰  qu�: <color=Red>C竝 Huy誸 H錸g, B╪g Tinh Lam, T� M蓇 L鬰, V﹏ M閚g T�<color>. Ta nghe n鉯 � <color=Red>T莕 L╪g<color> c� r蕋 nhi襲 ng鋍 qu�, ngi c� mu鑞 gi髉 ta 甶 t譵 kh玭g?", 2, "Vinh h筺h l祄 vi謈 cho c玭g ch骯 /L30_get_yes", "Thu閏 h� v蒼 c遪 m閠 chuy謓 kh竎. /L30_get_no")
		elseif(UTask_tr == 30*256+20) and (HaveItem(59) == 1) and (HaveItem(60) == 1) and (HaveItem(61) == 1) and (HaveItem(62) == 1) then
			L30_prise()
		elseif(UTask_tr > 30*256) and (UTask_tr < 40*256) then					--已经接到30级任务，尚未完成
			Talk(1,"","Ngi c� th� nh� <color=Red>� Уn Ch�<color> a n <color=Red>T莕 L╪g<color>, h穣 nh� b鑞 lo筰  qu� m� ta c莕 <color=Red>C竝 Huy誸 H錸g<color>, <color=Red>B╪g Tinh Lam<color>, <color=Red>T� M蓇 L鬰<color>, <color=Red>V﹏ M閚g T�<color>.")
		else					--已经完成30级任务，尚未出师（缺省对话）
			Talk(1,"","Ph� vng c莕 ta gi髉 ngi thu ph鬰 V� l﹎ Trung Nguy猲, n誹 Thi猲 Nh蒼 gi竜 kh玭g 頲 s� 駈g h� t� Ph� vng ta, th� kh玭g th� ph竧 tri觧 nh� th� n祔.")
		end
	elseif(Uworld127 == 10) and (HaveItem(374) == 1) then
		Talk(15,"Uworld127_killer","Cung k輓h Th蕋 c玭g ch骯 甶謓 h�.","Ngi kia t� u n, t筰 sao n y? Ngi mu鑞 ch誸 sao?","T筰 h� kh玭g d竚 甧m t輓h m筺g m譶h ra a.","A! Ngi to gan th藅. Ngi u! K衞 h緉 ra cho ch� ╪.","Nghe n鉯 c玭g ch骯 產ng t譵 ki誱 m閠 con i 甶猽?","鮩�.Ngi bi誸 � u c� sao?","Tuy t筰 h� kh玭g bi誸, nh璶g ch� c莕 ng礽 p 鴑g m閠 甶襲 ki謓, ta s� c� ngay con !","鮩�.L筰 m閠 t猲 ch� bi誸 n鉯 su玭g.","Binh m� Чi Kim h飊g h藆, sao kh玭g s� ch誸 頲? L祄 sao ta d竚 l鮝 Th蕋 c玭g ch骯?","�..Ngi c莕 甶襲 ki謓 g�?","Cho n l骳 ta quay l筰, kh玭g 頲 gi誸 ngi n祇 trong ph�.","Th藅 bu錸 cu阨, n誹 m閠 n╩ sau ngi v蒼 ch璦 quay l筰 th� sao?","Фm b秓 ta s� quay l筰 trong m閠 th竛g.","Л頲! Qu﹏ t� nh蕋 ng玭. Sau m閠 th竛g n誹 kh玭g g苝 ngi, b鋘 ch髇g s� ch誸 h誸!","S� kh玭g c� ng祔  u.")
	elseif(Uworld127 == 10) then
		Talk(1,"","Kh玭g c� l謓h b礽 m� ngi d竚 v祇 ph� c玭g ch骯 �? Qu� l� gan d�. Tha cho ngi kh玭g c� 竎 �, mau ra kh醝 y. L莕 sau ng c� tr竎h.")
	elseif(Uworld127 == 20) and (HaveItem(374) == 0) then
		Talk(1,"","T猲 ti觰 t� n祔, mau c髏 甶! Ch箉 cho nhanh n誹 kh玭g ta c総 ch﹏ ngi b﹜ gi�!")
	elseif(Uworld127 == 30)and(HaveItem(369) == 1) then
		DelItem(369)
		Talk(6,"Uworld127_over","Tuy誸 Y c玭g ch骯, y l� con Чi 甶猽 ng礽 c莕.","T鑤 t鑤! Ngi qu� th藅 kh玭g t�!","Nh璶g v蒼 c� nh鱪g ngi kh玭g bi誸 g� i l蕐 u ta.","ng t輓h to竛 v韎 b鋘 蕐 l祄 g�, sau n祔 ngi ch� c莕 theo ta l� 頲.","Xin th� l鏸, t筰 h� lang thang giang h� quen r錳. Kh玭g mu鑞 theo ai c�.",".....D竚 n鉯 th� trc m苩 ta, trc gi� ch� c� m譶h ngi.")
	elseif(Uworld127 == 30) then
		Talk(1,"","con Чi 甶猽 u? L蕐 頲 r錳 mau a ra ch�!")
	elseif(Uworld127 == 255) then
		if(GetSex() == 0) then
			Talk(1,"","H秓 t� t�, l莕 sau h穣 n ch琲 v韎 Tuy誸 Y.")
		else
			Talk(1,"","H秓 huynh, l莕 sau h穣 n ch琲 v韎 Tuy誸 Y.")
		end
	elseif(UTask_tr >= 70) then							--已经出师
		Talk(1,"","Ngi th藅 l� nh﹏ t礽 hi誱 c�, hy v鋘g ch髇g ta s� l� huynh  ch� kh玭g ph秈 k� th�, c� c� h閕 ta s� ti課 c� ngi v韎 Ph� vng, ph鬰 v� cho Чi Kim ta, cho t猲 ho祅g  Nam tri襲 kia ph秈 n m筺g ch�?")
	else
		Talk(1,"","Gi竜 ch� Thi猲 Nh蒼 gi竜 l� qu鑓 s� Чi Kim ta, Ph� vng r蕋 qu� tr鋘g 玭g ta, v� th� cho ta gia nh藀 b鎛 gi竜 l祄 Л阯g ch� nh� b﹜ gi�.")
	end
end;

function L30_get_yes()
	Talk(1,"","Phong Л阯g Л阯g ch� T鑤 qu�, nh璶g nghe n鉯 阯g n T莕 L╪g r蕋 nguy hi觤, nhi襲 ngi 甶 t譵 ch﹗ b竨 ph秈 b� m筺g, ngi c� th� n Bi謓 Kinh 甶 xa phu, nh璶g <color=Red>� Уn Ch�<color> th玭g th筼 khu v鵦 T﹜ B綾, ngi c� th� nh� h緉 a ngi 甶.")
	SetTask(4, 30*256+20)
	AddNote("T筰 t莕g h莔 th� 3 c馻 Thi猲 Nh蒼 gi竜 g苝 Phong Л阯g Л阯g ch� Ho祅 Nhan Tuy誸 Y (213, 201) , nh薾 <color=red>nhi謒 v� B秓 Th筩h<color>.  T莕 L╪g t譵 4 lo筰  qu�. ")
	Msg2Player("T筰 t莕g h莔 th� 3 c馻 Thi猲 Nh蒼 gi竜 g苝 Phong Л阯g Л阯g ch� Ho祅 Nhan Tuy誸 Y (213, 201) , nh薾 <color=red>nhi謒 v� B秓 Th筩h<color>.  T莕 L╪g t譵 4 lo筰  qu�. ")
end;

function L30_get_no()
	Talk(1,"","..........� ")
end;

function L30_prise()
	Talk(1,"","Ngi th藅 t礽, lo筰  qu� th� n祔 m� c騨g t譵 頲! M蓇 h藆 h糿 s� r蕋 th輈h chi誧 竜 ng鋍!")
	SetRank(58)
	DelItem(59)
	DelItem(60)
	DelItem(61)
	DelItem(62)
	SetTask(4, 40*256)
--	AddMagic(141)
--	AddMagic(138)
--	AddMagic(140)
	add_tr(40)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
	Msg2Player("Лa b鑞 lo筰  qu� cho Phong Л阯g Л阯g ch� Ho祅 Nhan Tuy誸 Y, ho祅 th祅h nhi謒 v� B秓 Th筩h. Л頲 phong: U Minh T� S�. H鋍 頲 v� c玭g: Li謙 H醓 T譶h Thi猲, Th玦 s琻 襫 H秈, Phi H錸g V� T輈h. ")
	AddNote("Quay l筰 Thi猲 Nh蒼 gi竜, a b鑞 lo筰  qu� cho Phong Л阯g Л阯g ch� Ho祅 Nhan Tuy誸 Y, ho祅 th祅h nhi謒 v� B秓 Th筩h. Tr� th祅h U Minh T� S�. ")
end;

function Uworld127_killer()
	DelItem(374)
	SetTask(127,20)
	AddNote("Nh薾 nhi謒 v�: дn Ki誱 c竎 b総 Чi 甶猽 ")
	Msg2Player("Nh薾 nhi謒 v�: дn Ki誱 c竎 b総 Чi 甶猽 ")
end

function Uworld127_over()
	if (GetTask(4) >= 70*256) and (GetTask(4) ~= 75*256) then		-- 是天忍出师弟子
		Talk(2,"","H適 s竎h m藅 c馻 Thi猲 Nh蒼 ta giao cho ngi, n誹 t� ch鑙 ta s� gi誸 ngi, quy誸 kh玭g nu鑤 l阨.","Х nh� v藋, t筰 h� kh玭g th� kh玭g nh薾 l阨.")
		if (HaveMagic(361) == -1) then		-- 必须没有技能的才给技能
      	AddMagic(361,1)
		end
		if (HaveMagic(362) == -1) then		-- 必须没有技能的才给技能
   	   AddMagic(362,1)
		end
		if (HaveMagic(391) == -1) then		-- 必须没有技能的才给技能
	      AddMagic(391)
		end
		CheckIsCanGet150SkillTask()
		Msg2Player("Лa Чi 甶猽 cho Ho祅 Nhan Tuy誸 Y, h鋍 頲 k� n╪g V﹏ Long K輈h, Thi猲 Ngo筰 L璾 Tinh, Nhi誴 H錸 Lo筺 T﹎. Quay l筰 b竜 tin cho L璾 l穙 gia. ")
		SetTask(127,110)
	else
		Talk(1,"","Л頲!l莕 sau nh� n th╩ Tuy誸 Y!")
		SetTask(127,100)
		Msg2Player("Лa Чi 甶猽 cho Ho祅 Nhan Tuy誸 Y, quay l筰 b竜 tin cho L璾 l穙 gia ")
	end
end
