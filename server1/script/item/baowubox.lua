-- Ëæ»ú±¦ÏäÎïÆ·£¨Ëæ»ú»ñµÃÒ»ÑùÎïÆ·£©
-- By: Yuning_liu(2005-03-21)

function main(sel)
	p=random(0,99)
	if (p < 1) then
		p = random(238,240)
		AddEventItem(p)			-- Ë®¾§
		Msg2Player("B¹n nhËn ®­îc Thuû Tinh ")
	elseif (p < 2) then
		AddEventItem(353)			-- ĞÉºì
		Msg2Player("B¹n nhËn ®­îc Tinh Hång B¶o Th¹ch ")
	elseif (p < 33) then
		AddItem(6,1,15,1,0,0,0)		-- Åû·ç
		Msg2Player("B¹n nhËn ®­îc Phi Phong ")
	elseif (p < 66) then
		AddItem(6,1,18,1,0,0,0)		-- ĞÄĞÄÏàÓ¡
		Msg2Player("B¹n nhËn ®­îc T©m T©m T­¬ng Anh Phï ")
	else
		AddItem(6,0,20,1,0,0,0)		-- Ãµ¹åÓê
		Msg2Player("B¹n nhËn ®­îc Hoa Hång ")
	end
	return 0
end
