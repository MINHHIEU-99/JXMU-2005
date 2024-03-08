IncludeLib("ITEM");
Include("\\script\\lib\\award.lua")

function main(ItemIndex)
	if CalcFreeItemCellCount() < 3 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 3 « trèng råi h·y më.",0);
		return 1
	end
AddStackItem(147,4,417,1,1,0,0,0)
Msg2Player("B¹n nhËn ®­îc 147 TiÒn §ång ®· tÝnh thuÕ  x©u sßng 3%")
end