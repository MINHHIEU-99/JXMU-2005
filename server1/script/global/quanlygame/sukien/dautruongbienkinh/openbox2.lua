function main()
OpenBox();		--������������Ʒ��������Ʒ���Ա�����ҽ�����Ʒ�ͽ�Ǯ�Ĵ�ȡ

saveruong()
end;

function saveruong()
local c = random(1,3)
if c==1 then
SetTempRevPos(999, 1606*32, 3017*32)
end
if c==2 then
SetTempRevPos(999, 1617*32, 3027*32)
end
if c==3 then
SetTempRevPos(999, 1629*32, 3038*32)
end
end