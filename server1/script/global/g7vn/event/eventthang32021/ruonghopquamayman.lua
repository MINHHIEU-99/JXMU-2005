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
			Say("V�t ph�m qu� h�n s� d�ng")
			return 0
		end
	local tbthuongitem = {


			{szName = "B�ng ho�ng kim",tbProp={6,1,ideventxu,1,0,0},nCount=50,nExpiredTime=TimeHetHanEventFree},
			
		
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
end

