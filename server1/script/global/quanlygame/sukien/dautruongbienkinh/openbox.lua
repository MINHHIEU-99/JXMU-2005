function main()
OpenBox();		--������������Ʒ��������Ʒ���Ա�����ҽ�����Ʒ�ͽ�Ǯ�Ĵ�ȡ
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