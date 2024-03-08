IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
tbAwardTemplet:GiveAwardByList({{szName="T­¬ng Phïng LÖnh",tbProp={6,1,4581,1,1},nCount=1,},}, "test", 1);
end


