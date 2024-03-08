--Edit by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
if GetLevel() < 190 then
	Say("§¼ng cÊp yªu cÇu ®Ó Lµm NhiÖm Vô trªn 190, B¹n h·y Mau Cè G¾ng NhĞ")
return 1 
end
local nCongHuan = CalcEquiproomItemCount(6, 1, 4806, 1) ;
		if (nCongHuan < 5000) then
				Talk(1,"","<color=white>thiÕu hiÖp kh«ng mang theo 5000 Thien Tinh Ngoc !!") 
			return
		end
if (GetTask(369) == 47) then
	--4130 Dai Na Di Khau Quyet = 4159
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30155,0,0,0}, nBindState=-2}, "test", 1);
--tbAwardTemplet:GiveAwardByList({tbProp={4,1506,1,1,0,0},nCount=500},"TiÒn §ång")--  tui tien dong
ConsumeEquiproomItem(5000, 6, 1, 4806, 1)
	SetTask(369,48)
	AddNote("Trong lóc khÊn ®Çu b¸i kiÕn, C¸c h¹ t×m thÊy quyÓn v¨n tù cÊt giÊu ®»ng sau bia mé D­¬ng Gi¸o Chñ. §i xem thö bia mé cña Phu Nh©n xem sao!") 
Msg2Player("Trong lóc khÊn ®Çu b¸i kiÕn, C¸c h¹ t×m thÊy quyÓn v¨n tù cÊt giÊu ®»ng sau bia mé D­¬ng Gi¸o Chñ. §i xem thö bia mé cña Phu Nh©n xem sao!") 
end
end


