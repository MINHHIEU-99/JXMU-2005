Include("\\script\\thoduong\\head.lua")
function GetDesc(nItemIdx ) 
return "\n <color=yellow>"..THO[GetItemLevel(nItemIdx)] 
end
function main(nItemIdx)
local nLevelItem = GetItemLevel(nItemIdx) 
local nThoID =  ceil(nLevelItem/8)
local nCauTho = mod(nLevelItem,8)
if nCauTho == 0 then 
nCauTho = 8 
end
-- Msg2Player("sss"..nThoID)
-- Msg2Player("sss"..nCauTho)
local nParam
local tbRoom= GetRoomItems(0)
			for _,v in tbRoom do
				local G,D,P,nLevel = GetItemProp(v);
					if G == 6 and D == 1 and P == 3051 and nLevel == nThoID then
						nParam = GetItemParam(v, 1)
						if GetBit(nParam, nCauTho) == 0 then
							SetSpecItemParam(v,1,SetBit(nParam, nCauTho,1)) 
							SyncItem(v) 
							return
						end
					end
			end
if nResult ~= 1 then
	Msg2Player("Kh«ng t×m thÊy tËp th¬ yªu cÇu.")
	Say("Kh«ng t×m thÊy tËp th¬ yªu cÇu.",0)
end
return 1
end