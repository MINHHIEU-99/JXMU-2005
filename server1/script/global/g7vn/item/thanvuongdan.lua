IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
dofile("script/global/g7vn/item/thanvuongdan.lua")
	local tbAward = {
			{szName="Xu",tbProp={4,417,1,1,0,0},nCount=5000},
	}
	if (CalcFreeItemCellCount() >= 30) then
			tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
			else
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return 1
		end
end
