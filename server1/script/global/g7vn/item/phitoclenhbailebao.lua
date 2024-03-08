IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
dofile("script/global/g7vn/item/phitoclenhbailebao.lua")
	local tbAward = {
			{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount=50,nExpiredTime=7*24*60},
			{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount=50,nExpiredTime=7*24*60},
		--	{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount=50,nExpiredTime=7*24*60},
			{szName="ChiÕn Cæ",tbProp={6,1,156,1,0,0},nCount=50,nExpiredTime=7*24*60},
	}
	if (CalcFreeItemCellCount() >= 5) then
			tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
			else
		Talk(1,"","H·y §Ó Trèng 5 ¤ Råi NhËn Th­ëng")
		return 1
		end
	
end
