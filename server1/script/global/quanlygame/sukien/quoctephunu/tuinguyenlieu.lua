IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
local s = random(1,2)
if s==1  then
tbAwardTemplet:GiveAwardByList({{szName="C�nh Hoa C�c",tbProp={6,1,4572,1,1},nCount=1,},}, "test", 1);
end;
if s==2  then
tbAwardTemplet:GiveAwardByList({{szName="C�nh Hoa H�ng",tbProp={6,1,4573,1,1},nCount=1,},}, "test", 1);
end;
end


