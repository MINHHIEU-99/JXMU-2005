-- 丐帮秘洞 宝箱4 出师任务（四楼，一个，对应布袋6、布袋7）
-- by：Dan_Deng(2003-07-29)

function main()
	UTask_gb = GetTask(8);
	if ((UTask_gb == 60*256+10) and (HaveItem(204) == 1)) then
		Msg2Player("B筺 th� d飊gch譨 kh鉧m� chi誧 rng ")
		DelItem(204)
		if (HaveItem(206) == 0) then
			AddEventItem(206)
			AddNote("B筺 l蕐 頲 t骾 v秈 th� s竨 ")
			Msg2Player("B筺 l蕐 頲 m閠 chi誧 t骾 v秈 ")
		elseif (HaveItem(207) == 0) then
			AddEventItem(207)
			AddNote("B筺 l蕐 頲 t骾 v秈 th� b秠 ")
			Msg2Player("B筺 l蕐 頲 m閠 chi誧 t骾 v秈 ")
		else
			Msg2Player("B筺 th蕋 v鋘g v� chi誧 rng n祔 tr鑞g r鏽g.")
		end
	else
		Talk(1,"","B秓 rng n祔  kh鉧 r錳")
	end
end;
