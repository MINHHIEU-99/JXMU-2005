IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
dofile("script/global/g7vn/item/phitoclenhbailebao.lua")
	local tbAward = {
			{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount=50,nExpiredTime=7*24*60},
			{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=50,nExpiredTime=7*24*60},
		--	{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=50,nExpiredTime=7*24*60},
			{szName="Chi�n C�",tbProp={6,1,156,1,0,0},nCount=50,nExpiredTime=7*24*60},
	}
	if (CalcFreeItemCellCount() >= 5) then
			tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
			else
		Talk(1,"","H�y �� Tr�ng 5 � R�i Nh�n Th��ng")
		return 1
		end
	
end
