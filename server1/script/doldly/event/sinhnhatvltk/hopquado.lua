IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")
------------------------------------------
	
tbAward = {
	{szName="Even",tbProp={6,1,2851,1,0,0},nCount=1,nExpiredTime=20220728,nRate=25},
	{szName="Even",tbProp={6,1,2852,1,0,0},nCount=1,nExpiredTime=20220728,nRate=25},
        {szName="Even",tbProp={6,1,2853,1,0,0},nCount=1,nExpiredTime=20220728,nRate=25},
	{szName="Even",tbProp={6,1,2855,1,0,0},nCount=1,nExpiredTime=20220728,nRate=25},

}

function main(nItemIdx)
local nDate = tonumber(date("%Y%m%d"))

		if nDate > 20220728 then
			Say("V�t ph�m qu� h�n s� d�ng")
			return 0
		end
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=20  then
		Msg2Player("Ch� s� d�ng �  Giang T�n Th�n nh� b�n.");
		return 1
	end
local Free = CalcFreeItemCellCount()
local G,D,P,nLevel = GetItemProp(nItemIdx)
if (G ~= 6) then return 1 end
	if (P == 2864) then
		if (Free >= 4) then
			tbAwardTemplet:GiveAwardByList(tbAward,1)
		else
			Talk(1,"","H�nh Trang Kh�ng �� 4 � Tr�ng")
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
