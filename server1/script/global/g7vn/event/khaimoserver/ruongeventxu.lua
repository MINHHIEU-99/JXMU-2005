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
			Say("VËt ph¶m qu¸ h¹n sö dông")
			return 0
		end

		local nSubWorldID = GetWorldPos();
		if nSubWorldID ~=20  then
		Msg2Player("ChØ sö dông ë Giang T©n Th«n  nhÐ b¹n.");
		return 1
	end

	if CalcFreeItemCellCount() < 20 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 20 « trèng!")
		return 1;
	end
	local tbthuongitem = {


			{szName = "Vßng Hoa Chóc Mõng",tbProp={6,1,ideventxu,1,0,0},nCount=100,nExpiredTime=TimeHetHanEventFree},
			
		
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	return 0
end

