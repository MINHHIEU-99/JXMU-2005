IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
dofile("script/global/g7vn/item/baoruongtinhngoc.lua")
	local tbAward = {

			{szName="Tinh Ng�c",tbProp={6,1,4806,1,1},nCount=500},
	}
	if (CalcFreeItemCellCount() >= 5) then
			tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
			else
		Talk(1,"","H�y �� Tr�ng 5 � R�i Nh�n Th��ng")
		return 1
		end
	
end
