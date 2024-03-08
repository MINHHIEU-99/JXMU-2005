--event xu
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

Include("\\script\\global\\g7vn\\g7configall.lua")


function main()
	dofile("script/global/g7vn/event/eventthang32021/hopmamnguqua.lua")
	dofile("script/global/g7vn/g7configall.lua")

		local nDate = tonumber(date("%Y%m%d"))

		if nDate > enddate then
			Say("VËt ph¶m qu¸ h¹n sö dông")
			return 0
		end
	local tbthuongitem = {


			{szName = "Bãng hoµng kim",tbProp={6,1,ideventxu,1,0,0},nCount=50,nExpiredTime=TimeHetHanEventFree},
			
		
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
end

