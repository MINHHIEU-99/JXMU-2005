--event xu
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

Include("\\script\\global\\g7vn\\g7configall.lua")


function main()
	dofile("script/global/g7vn/event/khaimoserver/ruongeventxu.lua")
	dofile("script/global/g7vn/g7configall.lua")

		local nDate = tonumber(date("%Y%m%d"))

		if nDate > enddate then
			Say("V�t ph�m qu� h�n s� d�ng")
			return 0
		end

		local nSubWorldID = GetWorldPos();
		if nSubWorldID ~=20  then
		Msg2Player("Ch� s� d�ng � Giang T�n Th�n  nh� b�n.");
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 20 � tr�ng!")
		return 1;
	end
	local tbthuongitem = {


			{szName = "V�ng Hoa Ch�c M�ng",tbProp={6,1,ideventxu,1,0,0},nCount=100,nExpiredTime=TimeHetHanEventFree},
			
		
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
end

