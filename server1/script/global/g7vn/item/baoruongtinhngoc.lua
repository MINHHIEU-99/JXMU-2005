IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
dofile("script/global/g7vn/item/baoruongtinhngoc.lua")
	local tbAward = {

			{szName="Tinh Ngäc",tbProp={6,1,4806,1,1},nCount=500},
	}
	if (CalcFreeItemCellCount() >= 5) then
			tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
			else
		Talk(1,"","H·y §Ó Trèng 5 ¤ Råi NhËn Th­ëng")
		return 1
		end
	
end
