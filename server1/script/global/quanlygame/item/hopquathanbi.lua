Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")





function main(sel)
dofile("script/global/quanlygame/item/hopquathanbi.lua")
tbAwardTemplet:GiveAwardByList({{szName="ch�a kh�a th�n b�",tbProp={6,1,4459,1,1},nCount=10,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="so�i k�",tbProp={6,1,4456,1,1},nCount=15,},}, "test", 1);
end



