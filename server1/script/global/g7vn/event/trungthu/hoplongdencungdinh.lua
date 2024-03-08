--event xu
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")


NgayBatDauEventHLW = 20191205
NgayHetHanEventHLW = 20201005


function main()
	dofile("script/global/g7vn/event/trungthu/hoplongdencungdinh.lua")

		local nDate = tonumber(date("%Y%m%d"))
		if nDate < NgayBatDauEventHLW then
			Say("T�m th�i ch�a c� event. Xin quay l�i sau")
			return 1
		end
		if nDate > NgayHetHanEventHLW then
			Say("V�t ph�m qu� h�n s� d�ng")
			return 0
		end
	local tbthuongitem = {
		

			{szName = "B�ng ho�ng kim",tbProp={6,1,4994,1,0,0},nCount=50,nExpiredTime=20201006},
			
		
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
end

