--江南区 龙泉村 战斗状态切换Trap
--Trap Id 90
--By 苏宇 2003年10月15日

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(sel) 

	--dofile("script/global/g7vn/g7configall.lua")
	local zDate = tonumber(date("%Y%m%d%H%M"))
		if zDate <= ThoiGianHetHanDiemTP then
		Say("ng v祇 l骳 <color=yellow>"..ThoiGianOpenStr.."<color> m韎 b総 u ch輓h th鴆 khai m� m竬 ch�");
		SetPos(1567, 3178)
		return 1
	end

if ( GetFightState() == 0 ) then	-- 玩家处于非战斗状态，即在城内
	SetPos(1562, 3171)		-- 设置走出Trap点，目的点在城外	
	SetFightState(1)		-- 转换为战斗状态
else			       		-- 玩家处于战斗状态，即在城外
	SetPos(1567, 3178)		-- 设置走出Trap点，目的点在城内	
	SetFightState(0)		-- 转换为非战斗状态
end;
end;