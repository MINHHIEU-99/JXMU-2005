Include("\\script\\lib\\awardtemplet.lua")
tbItem = 
{
	{szName="§éng S¸t B¹ch Kim §iªu Long Giíi", nQuality=1, tbProp={0, 360}},
	{szName="§éng S¸t B¹ch Ngäc Cµn Kh«n Béi", nQuality=1, tbProp={0, 361}},
	{szName="§éng S¸t B¹ch Kim Tó Phông Giíi", nQuality=1, tbProp={0, 362}},
	{szName="§éng S¸t PhØ Thóy Ngäc H¹ng Khuyªn", nQuality=1, tbProp={0, 363}},
}
function main()
	
	if  CountFreeRoomByWH(2, 5, 1) < 1 then
		Talk(1, "", format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", 1, 2, 5))
		return 1
	end

	tbAwardTemplet:GiveAwardByList(tbItem, "dongsatbaoruong")
	
end