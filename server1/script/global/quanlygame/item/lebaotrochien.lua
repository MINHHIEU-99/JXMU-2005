Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")





function main(sel)
dofile("script/global/quanlygame/item/lebaotrochien.lua")
tbAwardTemplet:GiveAwardByList({{szName="ng�c",tbProp={6,1,4454,1,1},nCount=50,nExpiredTime=43200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="ng�c",tbProp={6,1,4455,1,1},nCount=50,nExpiredTime=43200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="so�i k�",tbProp={6,1,4456,1,1},nCount=20,},}, "test", 1);
end



