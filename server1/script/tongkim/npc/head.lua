
function talk_yulongtie()
	Say("§©y lµ thiÖp mêi mµ Ngäc Long Trang Chñ ®­a cho c¸c anh hïng hµo kiÖt  trong thiªn h¹, kh«ng ph¶i ai còng cã thÓ cã ®­îc nã.",
		3,
		"Ta sö dông Nh¹c V­¬ng Hån Th¹ch ®Ó ®æi Ngäc Long anh Hïng ThiÕp(KiÕm Gia)/get_yulongtie",
		"Ta sö dông Nh¹c V­¬ng Hån Th¹ch ®Ó ®æi anh Hïng ThiÕp (Viªm §Õ)/doi_ViemDe",
		"§Ó ta suy nghÜ l¹i/Cancel")
end

-- ÓÃÔÀÍõ»êÖ®Ê¯»»È¡îÚÁúÓ¢ĞÛÌû
function get_yulongtie()
	if (CalcEquiproomItemCount(4, 507, 1, -2) < 1) then
		Say("Ng­¬i kh«ng cã Nh¹c V­¬ng Hån Th¹ch, tiÕp tôc ®i luyÖn thªm råi h·y ®Õn nhĞ.")
	else
		Say("Ng­¬i x¸c ®Şnh dïng  2 Nh¹c V­¬ng Hån Th¹ch ®Ó ®æi lÊy Ngäc Long anh Hïng ThiÕp ®Ó ®i vµo KiÕm Gia Mª Cung chø?",
			2,
			"Muèn/exchange_yulongtie",
			"§Ó ta suy nghÜ l¹i/Cancel")	
	end
end
function doi_ViemDe()
	if (CalcEquiproomItemCount(4, 507, 1, -2) < 1) then
		Say("Ng­¬i kh«ng cã Nh¹c V­¬ng Hån Th¹ch, tiÕp tôc ®i luyÖn thªm råi h·y ®Õn nhĞ.")
	else
		Say("Ng­¬i x¸c ®Şnh dïng  2 Nh¹c V­¬ng Hån Th¹ch ®Ó ®æi lÊy anh Hïng ThiÕp ®Ó ®i vµo Viªm §Õ chø?",
			2,
			"Muèn/tDongYDoiViemDe",
			"§Ó ta suy nghÜ l¹i/Cancel")	
	end
end
function exchange_yulongtie()
	if (CalcFreeItemCellCount() == 0) then
		Say("Chç trèng hµnh trang kh«ng ®ñ.")
	elseif (CalcEquiproomItemCount(4, 507, 1, -2) >= 1 and 
		ConsumeEquiproomItem(4, 4, 507, 1, -1) == 1) then
		AddItem(6, 1, 2622, 1, 0, 0)
		Msg2Player("Ng­¬i nhËn ®­îc 1 Ngäc Long Anh Hïng ThiÕp.")
	end
end
function tDongYDoiViemDe()
	if (CalcFreeItemCellCount() == 0) then
		Say("Chç trèng hµnh trang kh«ng ®ñ.")
	elseif (CalcEquiproomItemCount(4, 507, 1, -1) >= 1 and 
		ConsumeEquiproomItem(4, 4, 507, 1, -1) == 1) then
		AddItem(6, 1, 1604, 1, 0, 0) --6,1,2622
		Msg2Player("Ng­¬i nhËn ®­îc 1  Anh Hïng ThiÕp.")
	end
end