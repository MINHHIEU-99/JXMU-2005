IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
	local tbAward = {
		{szName = "Ng�n L��ng",nJxb=20000000,nCount=1},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n ���c 1000 V�n Ng�n L��ng")
end
