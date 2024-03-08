IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
motuinguyenlieu()
end

function motuinguyenlieu()
local s = random(1,3)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="Nh¸nh Hoa Hång",tbProp={6,1,4359,1,1},nCount=1,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="Nh¸nh Hoa Cóc",tbProp={6,1,4360,1,1},nCount=1,},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="Lä N­íc",tbProp={6,1,4361,1,1},nCount=1,},}, "test", 1);
end;
end


