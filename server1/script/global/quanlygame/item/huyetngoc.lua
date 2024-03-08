Include("\\script\\global\\forbidmap.lua");
Include("\\script\\activitysys\\playerfunlib.lua")


TAB_MAPLIST_USE = {464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,337, 338, 339,386,385,384,383,382,381,380,379,378,377,376,375,516,517,518,519,580,581,605,606,607,608,609,610,611,612,613};

function main(nItemIndex)
	if GetLevel() < 90 then
		Say("CÊp 90 míi cã thÓ sö dông");
	return 1; end;
	
	local nWorld = GetWorldPos();
	print("USE HoPhachPhichLichDon -> "..nWorld);
	
	if (not CheckMap(nWorld)) then
		Say("Khu vùc nµy kh«ng thÓ sö dông vËt phÈm nµy!");
	return 1; end;
	
	PlayerFunLib:AddSkillState(1510,1,3,3240,1)
	PlayerFunLib:AddSkillState(1511,1,3,3240,1)
	PlayerFunLib:AddSkillState(1512,1,3,3240,1)

	Msg2Player(format("B¹n ®· sö dông 1 viªn <color=yellow>%s<color>, néi trong 3 phót sÏ tù mÊt. (khi chÕt kh«ng mÊt hiÖu øng nµy)",GetItemName(nItemIndex)));
	
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