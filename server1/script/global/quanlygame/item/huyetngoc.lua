Include("\\script\\global\\forbidmap.lua");
Include("\\script\\activitysys\\playerfunlib.lua")


TAB_MAPLIST_USE = {464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,337, 338, 339,386,385,384,383,382,381,380,379,378,377,376,375,516,517,518,519,580,581,605,606,607,608,609,610,611,612,613};

function main(nItemIndex)
	if GetLevel() < 90 then
		Say("C�p 90 m�i c� th� s� d�ng");
	return 1; end;
	
	local nWorld = GetWorldPos();
	print("USE HoPhachPhichLichDon -> "..nWorld);
	
	if (not CheckMap(nWorld)) then
		Say("Khu v�c n�y kh�ng th� s� d�ng v�t ph�m n�y!");
	return 1; end;
	
	PlayerFunLib:AddSkillState(1510,1,3,3240,1)
	PlayerFunLib:AddSkillState(1511,1,3,3240,1)
	PlayerFunLib:AddSkillState(1512,1,3,3240,1)

	Msg2Player(format("B�n �� s� d�ng 1 vi�n <color=yellow>%s<color>, n�i trong 3 ph�t s� t� m�t. (khi ch�t kh�ng m�t hi�u �ng n�y)",GetItemName(nItemIndex)));
	
	return 0;
end;

function CheckMap(nMapID)
	for i = 1, getn(TAB_MAPLIST_USE) do
		if (nMapID == TAB_MAPLIST_USE[i]) then
			return 1;
		end;
	end;
	return nil;
end;