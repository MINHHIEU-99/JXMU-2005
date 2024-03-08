Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex)
dofile("script/global/g7vn/item/ruongngua.lua")

	if GetItemBindState(nItemIndex)==-2 then
			local tbSay = 
			{

			"D��ng Sa(kh�a)/#LayNguaLuaChon_khoa(3963,14)",
			"Ng� Phong(kh�a)/#LayNguaLuaChon_khoa(3964,14)",
			"Truy �i�n(kh�a)/#LayNguaLuaChon_khoa(3965,14)",
			"L�u Tinh (kh�a)/#LayNguaLuaChon_khoa(3966,14)",


			"Th�i ta kh�ng mu�n n�a/no"
			}
			Say("B�n Mu�n Ch�n Em N�o",getn(tbSay),tbSay)
			return 1;
	else 
			local tbSay1 = 
			{

			"D��ng Sa/#LayNguaLuaChon(3963,30)",
			"Ng� Phong/#LayNguaLuaChon(3964,30)",
			"Truy �i�n/#LayNguaLuaChon(3965,30)",
			"L�u Tinh /#LayNguaLuaChon(3966,30)",


			"Th�i ta kh�ng mu�n n�a/no"
			}
			Say("B�n Mu�n Ch�n Em N�o",getn(tbSay1),tbSay1)
			return 1;
	end
end

function no()
return 1;

end
function LayNguaLuaChon(id,ngay)
		if CalcFreeItemCellCount() >= 20 then
			if 	ConsumeEquiproomItem(1,6,1,1987,-1) >0 then
				tbAwardTemplet:GiveAwardByList({{szName = "Ng�a VIP",tbProp={0,id},nQuality=1,nExpiredTime=ngay*24*60},}, "test", 1);
				--	tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				--	Msg2Player("Nh�n Th��ng <color=yellow>GIFTCODE <color> Th�nh C�ng")
			end
			else Say("Kh�ng �� 20 � Tr�ng")
			return 1;
			end

end

function LayNguaLuaChon_khoa(id,ngay)
		if CalcFreeItemCellCount() >= 20 then
			if 	ConsumeEquiproomItem(1,6,1,1987,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ng�a VIP",tbProp={0,id},nQuality=1,nExpiredTime=ngay*24*60,nBindState = -2},} ,"test", 1);
			end
			else Say("Kh�ng �� 20 � Tr�ng")
			return 1;
			end

end