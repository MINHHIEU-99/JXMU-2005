IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
dofile("script/global/namcung/item/thienvuongdan.lua")
	local tbAward = {
			{szName="K�ch C�ng Tr� L�c Ho�n",tbProp={6,1,156,1,0,0},nCount=999,nExpiredTime=1440,nBindState = -2},
			{szName="�m d��ng ho�t huy�t ��n",tbProp={6,1,157,1,0,0},nCount=999,nExpiredTime=1440,nBindState = -2},
			{szName="K�ch C�ng Tr� L�c Ho�n",tbProp={6,1,190,1,0,0},nCount=999,nExpiredTime=1440,nBindState = -2},
                        {szName="mat na", tbProp={0,11,446,1,0,0},nCount = 1,nExpiredTime=24*60},
	}
	if (CalcFreeItemCellCount() >= 15) then
			tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
			else
		Talk(1,"","H�y �� Tr�ng 15 � R�i Nh�n Th��ng")
		return 1
		end
end
