Include("\\script\\thoduong\\head.lua")
function GetDesc(nItemIdx)
local n_Tho_ID = tonumber(GetItemLevel( nItemIdx)) 
-- Msg2Player("aaaaaaaaaaaa"..n_Tho_ID)
-- local n_param = tonumber(GetItemParam( nItemIdx, 1 )) 
local szString = ""
szString = szString..TEN_BAI[n_Tho_ID].."\n\n"
for i=1,8 do
local nParam = GetItemParam( nItemIdx,1)
if GetBit(nParam,i) == 1 then
szString = szString.."<color=green>"..THO[(n_Tho_ID-1)*8+i].."<color>\n"
else
szString = szString.."<color=red>"..THO[(n_Tho_ID-1)*8+i].."<color>\n"
end
end
return szString
end