--西南北区 江津村 路人1吴老爹对话
--江津村新手任务：吴老爹的药
--suyu
-- Update: Dan_Deng(2003-08-11)

function main(sel)
	UTask_world21 = GetTask(49);
	if ((UTask_world21 == 0) and (GetLevel() >= 3)) then		-- 任务启动
		Say("Ta c� ho m穒 kh玭g ng韙. Kh玭g bi誸 khi n祇 H錸g Mai m韎 tr� v�, t韎 l骳 ph秈 n Dc 甶誱 h鑤 thu鑓 th玦匥h芻...kh芻", 2, "Gi髉 /yes", "Kh玭g gi髉 /no")
	elseif (UTask_world21 == 1) then
		if (HaveItem(179) == 1) then		--判断玩家是否拿到药
			Talk(1,""," t� hi謕 kh竎h! M閠 ng祔 n祇 , ta b秓 H錸g Mai l祄 cho ngi 1 i gi祔!")
			DelItem(179)		--删掉玩家身上的药
			SetTask(49, 3)
			AddNote("Х thay l穙 Ng� l蕐 v� 10 vi猲 Xuy猲 B鑙 Ho祅, Ng� H錸g Mai s� t苙g cho m閠 i gi祔  t� 琻 ")
			Msg2Player("Х thay l穙 Ng� l蕐 v� 10 vi猲 Xuy猲 B鑙 Ho祅, Ng� H錸g Mai s� t苙g cho m閠 i gi祔  t� 琻 ")
		else
			Talk(1,"","Ngi c� th� n dc ph遪g h醝 xem. T� y 甶 v� hng T﹜ v礽 bc l� t韎 r錳! 卥h芻卥h芻匟穣 nh� l� 10 vi猲 Xuy猲 B鑙 ho祅, phi襫 ngi gi髉 ta!")
		end
	else				-- 非任务对话
		Talk(1,"","S鴆 kh醗 ta v� b� nh� u kh玭g kh醗, khu� n� v� ch╩ s鉩 v� ch錸g ta m� v蒼 ch璦 l蕐 ch錸g, b薱 l祄 cha m� nh� ta th藅 kh玭g ph秈 v韎 con g竔 m譶h!")
	end
end;

function yes()
	Talk(1,"","Ngi c� th� n dc ph遪g h醝 xem. T� y 甶 v� hng T﹜ v礽 bc l� t韎 r錳! 卥h芻卥h芻匟穣 nh� l� 10 vi猲 Xuy猲 B鑙 ho祅, phi襫 ngi gi髉 ta!")
	SetTask(49, 1)
	AddNote("Nh薾 nhi謒 v� thay Ng� l穙 gia n ti謒 thu鑓 l蕐 thu鑓 ")
	Msg2Player("Nh薾 nhi謒 v� thay Ng� l穙 gia n ti謒 thu鑓 l蕐 thu鑓 ")
end;

function no()
end;
