--洗技能点的叛僧　（内测专用版）
-- By: Dan_Deng(2003-08-29)
-- Update: Dan_Deng(2003-12-10)

function main()
	Say("Ngi mu鑞 t葃 t騳 �? Л頲! L筰 m l璶g cho ta trc 甶! C� bi誸 c竎h l祄 kh玭g v藋?",2,"Зy l� 10 v筺 lng, xin i s� nh薾 cho. /pay_yes","V藋 th玦 甶/rollback_no")
end;

function pay_yes()
	if (GetCash() >= 100000) then
		Pay(100000)
		i = HaveMagic(210)		-- 轻功另外操作
		j = HaveMagic(400)		-- “劫富济贫”另外操作
		n = RollbackSkill()		-- 清除技能并返回所有技能点（包括轻功等特殊技能）
		x = 0
		if (i ~= -1) then x = x + i end		-- 这两句判断是排除从未学过轻功的人返回-1从而导致点数计算错误情况
		if (j ~= -1) then x = x + j end
		rollback_point = n - x			-- 把技能点当做空闲点数返还，但先扣除轻功等
		AddMagicPoint(rollback_point)
		if (i ~= -1) then AddMagic(210,i) end			-- 如果学过轻功则加回原有等级
		if (j ~= -1) then AddMagic(400,j) end			-- 如果学过“劫富济贫”同样处理
		if (GetTask(13) > 256) then		-- 是用宝石洗的点
			Msg2Player("D飊g 3 vi猲 Th駓 Tinh ti課 h祅h t葃 甶觤 k� n╪g. B筺 n猲 v� nh� ngh� m閠 l竧!")
			Say("D飊g 3 vi猲 Th駓 Tinh ti課 h祅h t葃 甶觤 k� n╪g. B筺 n猲 v� nh� ngh� m閠 l竧!",1,"Л頲. /KickOutSelf")
		else
			Msg2Player("D飊g 3 vi猲 Th駓 Tinh ti課 h祅h t葃 甶觤 k� n╪g. Nh璶g 甶觤 k� n╪g b� m蕋 甶 3 甶觤. B筺 n猲 v� nh� ngh� m閠 l竧!")
			Say("D飊g 3 vi猲 Th駓 Tinh ti課 h祅h t葃 甶觤 k� n╪g. Nh璶g 甶觤 k� n╪g b� m蕋 甶 3 甶觤. B筺 n猲 v� nh� ngh� m閠 l竧!",1,"Л頲. /KickOutSelf")
		end
	else
		Talk(1,"","Зy l� th祅h � c馻 ngi sao?Nh� th� th� ngi quay v� 甶! ")
	end
end

function no()
end
