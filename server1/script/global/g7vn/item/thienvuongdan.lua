IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
dofile("script/global/g7vn/item/thienvuongdan.lua")
	local tbAward = {
			{szName="Xu",tbProp={4,1496,1,1,0,0},nCount=1000},
	}
	if (CalcFreeItemCellCount() >= 30) then
                  
			tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
			else
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return 1
		end
end
