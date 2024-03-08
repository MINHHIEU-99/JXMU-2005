IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
	local tbAward = {
		{szName = "Ng©n L­îng",nJxb=20000000,nCount=1},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"NhËn §­îc 1000 V¹n Ng©n L­îng")
end
