--Create by yfeng 2004-3-9
--Modified by fangjieying 2003-5-16
--武林秘籍，作用80级以上的玩家使用之后，可以加1点技能点
--包括出师，不包括转门派以前的
--该物品最多只能使用15次
--任务变量80低4位表示使用该物品的次数
Include("\\script\\global\\mrt\\configserver\\configall.lua")
function main(sel) 
	times = GetTask(80)
	str={
		"B筺 c莔 quy觧 V� L﹎ M藅 T辌h nghi猲 c鴘 c� n鯽 ng祔, k誸 qu� c騨g kh玭g l躰h ng� 頲 g�. ",
		"B筺 c莔 quy觧 V� L﹎ M藅 T辌h nghi猲 c鴘 c� n鯽 ng祔, k誸 qu� l躰h ng� 頲 ch髏 輙. ",
		"B筺 c莔 quy觧 V� L﹎ M藅 T辌h nghi猲 c鴘 c� n鯽 ng祔, k誸 qu� c騨g thu 頲 m閠 v礽 甶襲 t﹎ c li猲 quan n v� c玭g ",
		"B筺  nghi襫 ng蒻 k� quy觧 V� L﹎ M藅 T辌h, nh璶g kh玭g thu 頲 甶襲 g� t﹎ c "
		}
	if(times >GioiHanVLMT) then                -- 使用次数已达到上限
		Msg2Player("S� d鬾g l莕 th�: "..times.." - "..str[4])
		return 1
	elseif (GetLevel() < 80) then     -- 等级小于80
		Msg2Player(str[2])
		return 1
	else                            	-- 奖励1点技能点
		AddMagicPoint(1)
		SetTask(80,times+1)
		Msg2Player(str[3])
		return 0
	end
end