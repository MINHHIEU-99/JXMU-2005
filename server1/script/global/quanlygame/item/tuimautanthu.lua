IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
dofile("script/global/quanlygame/item/tuimautanthu.lua")
sudungmau()
return 1
end



function sudungmau()
if GetLevel() > 79 then
		Say("Chÿ Æ≠Óc mÎ Æ’n c p 79", 0)
		return 1
end
	local sootrong = CalcFreeItemCellCount();
		local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(4578) ~= nDate) and ( GetTask(4579) < 10) then -- neu khac se
SetTask(4579,GetTask(4579)+1)
		local tbAwardTanThu = 
	{	
		
		{szName = "NgÚ Hoa", tbProp={1,2,0,5,0,0,0}, nCount=sootrong,nBindState = -2,},


	}
	tbAwardTemplet:Give(tbAwardTanThu, 1, {"NhanHoTroTanThu", "NhanHoTroTanThu"})

Msg2Player("<color=white>sˆ dÙng thµnh c´ng.....");
	--logplayer("dulieu/chucxuan.txt",format("[IP : %s ] - ThÍi gian : %s  - Tµi kho∂n [ %s] - Nh©n vÀt : [%s ] chÛc ph∏o ti”u",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end
	 local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(4578) == nDate) and ( GetTask(4579) == 0) then -- neu khac se
		Say("MÁi ngµy chÿ Æ≠Óc sˆ dÙng Æ≠Óc 10 l«n ngµy mai quay lπi nh–.", 0)
		return 1
end
		local nDate = tonumber(GetLocalDate("%d"))		
if (GetTask(4578) ~= nDate) and (GetTask(4579) >= 10) then -- neu khac se
SetTask(4578, nDate);
SetTask(4579, 0);
end
local nDate = tonumber(GetLocalDate("%d"))		
if (GetTask(4578) == nDate) and (GetTask(4579) > 10) then -- neu khac se
SetTask(4578, 32);
SetTask(4579, 0);
end
--Msg2Player("<color=white>Ngµy "..GetTask(4578).."  - SL "..GetTask(4579)..".", 0)

end


