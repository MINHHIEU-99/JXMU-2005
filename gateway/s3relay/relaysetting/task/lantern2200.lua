--花灯活动
--每晚19：00~21：00 每15分钟 在华山，青城山，点苍山，武夷山
--四个地点分别 产生300个花灯
LANTERN_DATE_START	= 20080611
LANTERN_DATE_END	= 20370713
LANTERN_TIME_START 	= 2200 --thoi gian bat dat
LANTERN_TIME_END	= 2359-- thoi gian ket thuc

function TaskShedule()
	-- 设置方案名称
	TaskName("Ho箃 чng Hoa Жng");
	TaskTime(22, 00);
	TaskInterval(15);
	TaskCountLimit(0);
	OutputMsg("======>Khoi Dong Hoat Dong Hoa Dang 22h00<======"..date("%H:%M"));
end

function TaskContent()
	local nTime	= tonumber(date("%H%M"));
	local nDate	= tonumber(date("%Y%m%d"));
	
	if (nDate >= LANTERN_DATE_START and nDate <= LANTERN_DATE_END and nTime >= LANTERN_TIME_START and nTime <= LANTERN_TIME_END) then
		if (nTime == LANTERN_TIME_END) then
			GlobalExecute("dw del_all_lantern()");
			return 0;
		end
		GlobalExecute("dw Msg2SubWorld([[Ngi h穣 nhanh ch﹏ 甶 l猲  <color=green>жnh Hoa S琻 C秐h K� Trng ch� c莕 tr� l阨 頲 3 c﹗ Hoa Жng <color>nh薾 頲 ph莕 thng h蕄 d蒼!]])");
		GlobalExecute("dw Msg2SubWorld([[Ngi h穣 nhanh ch﹏ 甶 l猲  <color=pink>жnh Hoa S琻 C秐h K� Trng ch� c莕 tr� l阨 頲 3 c﹗ Hoa Жng <color>nh薾 頲 ph莕 thng h蕄 d蒼!]])");
		GlobalExecute("dw Msg2SubWorld([[Ngi h穣 nhanh ch﹏ 甶 l猲  <color=yellow>жnh Hoa S琻 C秐h K� Trng ch� c莕 tr� l阨 頲 3 c﹗ Hoa Жng <color>nh薾 頲 ph莕 thng h蕄 d蒼!]])");
		GlobalExecute("dw create_lanterns()");
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end