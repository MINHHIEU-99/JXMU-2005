IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
			tbAwardTemplet:GiveAwardByList({{szName="S÷a T­¬i",tbProp={6,1,4600,1,1,0,0},nCount=10},}, "test", 1);
end


