IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
dofile("script/global/namcung/item/thienvuongdan.lua")
	local tbAward = {
			{szName="KÝch C«ng Trî Lùc Hoµn",tbProp={6,1,156,1,0,0},nCount=999,nExpiredTime=1440,nBindState = -2},
			{szName="¢m d­¬ng ho¹t huyÕt ®¬n",tbProp={6,1,157,1,0,0},nCount=999,nExpiredTime=1440,nBindState = -2},
			{szName="KÝch C«ng Trî Lùc Hoµn",tbProp={6,1,190,1,0,0},nCount=999,nExpiredTime=1440,nBindState = -2},
                        {szName="mat na", tbProp={0,11,446,1,0,0},nCount = 1,nExpiredTime=24*60},
	}
	if (CalcFreeItemCellCount() >= 15) then
			tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
			else
		Talk(1,"","H·y §Ó Trèng 15 ¤ Råi NhËn Th­ëng")
		return 1
		end
end
