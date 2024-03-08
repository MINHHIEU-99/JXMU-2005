function main()
OpenBox();		--弹出储物箱物品框和玩家物品框，以便于玩家进行物品和金钱的存取
saveruong()
end;

function saveruong()
local c = random(1,3)
if c==1 then
SetTempRevPos(999, 1710*32, 3199*32)
end
if c == 2 then
SetTempRevPos(999, 1696*32, 3215*32)
end
if c == 3 then
SetTempRevPos(999, 1688*32, 3221*32)
end
end