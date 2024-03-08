
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")


NgayBatDauEventHLW = 20191010
NgayHetHanEventHLW = 20191031

function main1()
	dofile("script/global/g7vn/event/phunuvietnam/hopnuochoa.lua")
	Say("chua mo")
	return 1;
end
function main()
	dofile("script/global/g7vn/event/phunuvietnam/hopnuochoa.lua")

		local nDate = tonumber(date("%Y%m%d"))
		if nDate < NgayBatDauEventHLW then
			Say("T¹m thêi ch­a cã event. Xin quay l¹i sau")
			return 1
		end
		if nDate >= NgayHetHanEventHLW then
			Say("VËt ph¶m qu¸ h¹n sö dông")
			return 0
		end
	local tbthuongitem = {
		

			{szName = "N­íc Hoa",tbProp={6,1,1969,1,0,0},nCount=50,nExpiredTime=20191101},
			
		
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
end

