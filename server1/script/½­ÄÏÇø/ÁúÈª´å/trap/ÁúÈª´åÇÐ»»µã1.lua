Include("\\script\\global\\mrt\\configserver\\configall.lua")
--Long Tuy�n Th�n
function main(sel)
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
if nDate < ThoiGianOpenServer then
if ( GetFightState() == 0 ) then	
	SetPos(1567, 3178)	
	Msg2Player(""..ThoiGianOpenServerText.."")			
else
	SetPos(1567, 3178)
	Msg2Player(""..ThoiGianOpenServerText.."")
end;
	AddStation(10)			
	SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
else
if ( GetFightState() == 0 ) then	
	SetPos(1562, 3171)
	SetFightState(1)		
else
	SetPos(1567, 3178)
	SetFightState(0)		
end;

end
end;