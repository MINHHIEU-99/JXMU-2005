--Created by fangjieying 2003-5-17
--《驭心术》
--学会醉仙错骨技能
--昆仑，80级以上可用
function main(sel)
	party = GetLastAddFaction()
	skill = HaveMagic(394)   
	if(party ~= "kunlun") then							-- 不是昆仑
		Msg2Player("B筺 nghi猲 c鴘 Ng� T﹎ Thu藅 頲 n鯽 ng祔, nh璶g v蒼 ch璦 l躰h ng� 頲 g�. ")
		return 1
	elseif(GetLever < 80) then							-- 是昆仑但未到80级
		Msg2Player("B筺 nghi猲 c鴘 Ng� T﹎ Thu藅 頲 n鯽 ng祔, l躰h ng� 頲 r蕋 輙. ")
		return 1
	elseif(skill ~= -1) then							-- 已学过该技能
		Msg2Player("B筺  nghi猲 c鴘 k� Ng� T﹎ Thu藅, nh璶g v蒼 ch璦 h鋍 頲 g�. ")
		return 1
	else
		AddMagic(394,0)  
		Msg2Player("H鋍 頲 k� n╪g T髖 Ti猲 T� C鑤. ")
		return 0
	end
end