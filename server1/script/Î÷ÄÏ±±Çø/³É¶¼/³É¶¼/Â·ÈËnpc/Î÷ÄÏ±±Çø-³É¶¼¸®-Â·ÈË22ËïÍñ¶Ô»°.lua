--西南北区 成都府 路人22孙婉的对话
--author: yuanlan	
--date: 2003/3/10
-- Update: Dan_Deng(2003-08-13)

function main(sel)
	UTask_tm = GetTask(2);
	if (UTask_tm == 10*256+20) or (UTask_tm == 10*256+30) then						--唐门十级任务过程中
		Talk(5, "", "Th藅 l� t鴆 ch誸! Th藅 l� l遪g d� th﹎ c!", "V� c� nng n祔 c� chuy謓 g� v藋?", "V鮝 r錳 � tr猲 阯g c� ngi c莔 m閠 t骾  n鉯 l� Thi猲 y V� Ph遪g Ch﹎ v� c飊g hi誱, ta ngh� 琻g nhi猲 r錳. K誸 qu� ph秈 t鑞 10 lng b筩 m韎 mua 頲. V� n m� ra xem, � trong bao l� nh鱪g c﹜ kim nh� x輚 甧n th駃 甧n thui, kh玭g d飊g  th猽 頲. Ngi n鉯 xem c� ng gi薾 kh玭g?", " (Ch輓h l� Ma V� Ch﹎ m� ta mu鑞 t譵, may m� ngi l蕐 頲) . C� nng kh玭g d飊g 頲, chi b籲g nhng l筰 cho ta!", "Ch﹎ n祔 ta ph秈 t鑞 10 lng b筩 m韎 mua 頲, l祄 sao m� tu� ti謓 cho ngi 頲! N誹 ngi mu鑞 i th� ph秈 l蕐 nh蒼 m� n穙 n i l蕐 ch﹎.")
		SetTask(2, 10*256+40)
		Msg2Player("T玭 Uy觧 y猽 c﹗ b筺 d飊g chi誧 nh蒼 M� N穙 n i Ma V� Ch﹎ ")
		AddNote("T譵 頲 T玭 Uy觧 (394, 323) , bi誸 頲 t玭g t輈h c馻 Ma V� Ch﹎, nh璶g c莕 ph秈 d飊g nh蒼 M� n穙 i. ")
	elseif ((UTask_tm == 10*256+40) and ( HaveItem(165) == 1)) then				--有玛瑙戒指
		Talk(1,"","A! Nh蒼 m� n穙 p qu�! Bao kim th猽 n祔 ngi c莔 甶.")
		DelItem(165)
		AddEventItem(36)
		Msg2Player("T譵 頲 Ma V� Ch﹎. ")
		SetTask(2, 10*256+80)
		AddNote("m nh蒼 M� n穙 t苙g cho T玭 Uy觧 s� 頲 Ma V� Ch﹎ ")
	elseif ((UTask_tm == 10*256+80) and (HaveItem(36) == 0)) then		-- 道具丢了
		AddEventItem(36)
		Talk(1,"","Ngi kia! Ngi nh r琲 bao kim n祔! G鋓 ngi c騨g kh玭g quan t﹎! Tr� l筰 cho ngi y! L莕 n祔 ng l祄 r琲 n鱝!")
	else
		Talk(1,"","L筩 Ph竎h T� е: �,ngimu鑞 xem b秓 b鑙 c馻 ta h�? Ta nh譶 ngith� bi誸 ngil� ngi kh玭g bi誸 xem h祅g ho�.")
	end
end;
