function main()
OpenBox();		--������������Ʒ��������Ʒ���Ա�����ҽ�����Ʒ�ͽ�Ǯ�Ĵ�ȡ
saveruong()
end;

function saveruong()
local c = random(1,3)
if c==1 then
SetTempRevPos(999, 1723*32, 3102*32)
end
if c==2 then
SetTempRevPos(999, 1716*32, 3111*32)
end
if c==3 then
SetTempRevPos(999, 1744*32, 3083*32)
end
end