IncludeLib("ITEM");
Include("\\script\\lib\\award.lua")

function main(ItemIndex)
	if CalcFreeItemCellCount() < 7 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 7 « trèng råi h·y më.",0);
		return 1
	end
AddStackItem(343,4,417,1,1,0,0,0)
Msg2Player("B¹n nhËn ®­îc 343 TiÒn §ång ®· tÝnh thuÕ  x©u sßng 3%")
end