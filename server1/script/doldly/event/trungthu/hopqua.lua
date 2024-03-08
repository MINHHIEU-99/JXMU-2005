IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
	
tbAward = {
	{szName="Even",tbProp={6,1,5094,1,0,0},nCount=1000,nExpiredTime=20220928},

}

function main(nItemIdx)
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=20   then
		Msg2Player("ChØ sö dông ë Giang Tan Thon nhÐ b¹n.");
		return 1
	end
local Free = CalcFreeItemCellCount()
local G,D,P,nLevel = GetItemProp(nItemIdx)
if (G ~= 6) then return 1 end
	if (P == 5097) then
		if (Free >= 4) then
			tbAwardTemplet:GiveAwardByList(tbAward,1)
		else
			Talk(1,"","Hµnh Trang Kh«ng §ñ 4 ¤ Trèng")
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
