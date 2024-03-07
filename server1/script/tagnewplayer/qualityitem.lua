QItemNam = 
{
	["n�n"] = 
		{
			{2,0,7,3,10,0,0,150,290,159,270,180,-1},
			{2,0,7,3,10,1,0,150,320,159,270,180,-1},
			{2,0,7,3,10,2,0,150,310,159,340,180,330},
			{2,0,7,3,10,3,0,150,280,159,360,180,370},
			{2,0,7,3,10,4,0,150,300,159,380,180,270}

		},
	["�o"] = 
		{
			{2,0,2,3,10,0,0,90,290,150,270,159,-1},
			{2,0,2,3,10,1,0,90,320,150,270,159,-1},
			{2,0,2,3,10,2,0,90,310,150,340,159,330},
			{2,0,2,3,10,3,0,90,280,150,360,159,370},
			{2,0,2,3,10,4,0,90,300,150,380,159,270},
		},
	["th�t l�ng"] = 
		{
			{2,0,6,0,10,0,0,150,290,159,270,180,-1},
			{2,0,6,0,10,1,0,150,320,159,270,180,-1},
			{2,0,6,0,10,2,0,150,310,159,340,180,330},
			{2,0,6,0,10,3,0,150,280,159,360,180,370},
			{2,0,6,0,10,4,0,150,300,159,380,180,270},
		},
	["bao tay"] = 
		{
			{2,0,8,1,10,0,0,150,290,159,270,180,-1},
			{2,0,8,1,10,1,0,150,320,159,270,180,-1},
			{2,0,8,1,10,2,0,150,310,159,340,180,330},
			{2,0,8,1,10,3,0,150,280,159,360,180,370},
			{2,0,8,1,10,4,0,150,300,159,380,180,270},
		},
	["gi�y"] = 
		{
			{2,0,5,0,10,0,0,150,290,159,270,70,-1},
			{2,0,5,0,10,1,0,150,320,159,270,70,-1},
			{2,0,5,0,10,2,0,150,310,159,340,70,330},
			{2,0,5,0,10,3,0,150,280,159,360,70,370},
			{2,0,5,0,10,4,0,150,300,159,380,70,270},
		},
}

QItemNu = 
{
	["n�n"] = 
		{
			{2,0,7,8,10,0,0,150,290,159,270,180,-1},
			{2,0,7,8,10,1,0,150,320,159,270,180,-1},
			{2,0,7,8,10,2,0,150,310,159,340,180,330},
			{2,0,7,8,10,3,0,150,280,159,360,180,370},
			{2,0,7,8,10,4,0,150,300,159,380,180,270},

		},
	["�o"] = 
		{
			{2,0,2,9,10,0,0,90,290,150,270,159,-1},
			{2,0,2,9,10,1,0,90,320,150,270,159,-1},
			{2,0,2,9,10,2,0,90,310,150,340,159,330},
			{2,0,2,9,10,3,0,90,280,150,360,159,370},
			{2,0,2,9,10,4,0,90,300,150,380,159,270},
		},
	["th�t l�ng"] = 
		{
			{2,0,6,0,10,0,0,150,290,159,270,180,-1},
			{2,0,6,0,10,1,0,150,320,159,270,180,-1},
			{2,0,6,0,10,2,0,150,310,159,340,180,330},
			{2,0,6,0,10,3,0,150,280,159,360,180,370},
			{2,0,6,0,10,4,0,150,300,159,380,180,270},
		},
	["bao tay"] = 
		{
			{2,0,8,0,10,0,0,150,290,159,270,180,-1},
			{2,0,8,0,10,1,0,150,320,159,270,180,-1},
			{2,0,8,0,10,2,0,150,310,159,340,180,330},
			{2,0,8,0,10,3,0,150,280,159,360,180,370},
			{2,0,8,0,10,4,0,150,300,159,380,180,270},
		},
	["gi�y"] = 
		{
			{2,0,5,3,10,0,0,150,290,159,270,70,-1},
			{2,0,5,3,10,1,0,150,320,159,270,70,-1},
			{2,0,5,3,10,2,0,150,310,159,340,70,330},
			{2,0,5,3,10,3,0,150,280,159,360,70,370},
			{2,0,5,3,10,4,0,150,300,159,380,70,270},
		},
}


function AddQItem(szItemType, nSeries, nSex)
	if (nSeries < 0 or nSeries > 4) then
		return
	end
	local nItemIndex = nil
	if (nSex == 0) then
		if (QItemNam[szItemType] ~= nil) then
			nItemIndex = call(AddQualityItem, QItemNam[szItemType][nSeries + 1])
		end
	else 
		if (QItemNu[szItemType] ~= nil) then
			nItemIndex = call(AddQualityItem, QItemNu[szItemType][nSeries + 1])
		end	
	end
	
	if (nItemIndex ~= nil) then
		SetItemBindState(nItemIndex, -2);
		SyncItem(nItemIndex)
		local strItem = GetItemName(nItemIndex)
		Msg2Player("B�n nh�n ���c "..strItem)
		WriteLog(date("%Y%m%d %H%M%S").."\t".."An Bang Ho�ng Kim L�nh"..GetAccount().."\t"..GetName().."\t".."nh�n ���c T�m "..strItem)
	end
end
