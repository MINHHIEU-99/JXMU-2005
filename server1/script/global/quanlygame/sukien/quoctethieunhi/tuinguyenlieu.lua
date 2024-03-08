IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
local s = random(1,2)
if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="§­êng c¸t",tbProp={6,1,4596,1,1},nCount=1,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="bét b¸nh",tbProp={6,1,4597,1,1},nCount=1,},}, "test", 1);
end;
end


