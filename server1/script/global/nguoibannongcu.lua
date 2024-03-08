function main()
local tbSay = {
"Ta muèn mua l­íi( CÇn 100 v¹n)/MuaLuoi",
"Ta muèn mua cÇn c©u(CÇn 20 v¹n)/MuaCanCau",
"Ta muèn mua l­íi( CÇn 5 tiÒn ®ång)/MuaLuoiExt",
"Ta muèn mua cÇn c©u(CÇn 1 tiÒn ®ång)/MuaCanCauExt",
"Ta xem l¹i ®·/OnCancel",

}
Say("Ta cã mét sè ng­ cô cã thÓ gióp Ých cho ng­¬i",getn(tbSay),tbSay)
end
function MuaLuoiExt()
	if  CalcEquiproomItemCount(4, 417, 1, -1) < 5 then
	Say("Ng­¬i kiÓm tra l¹i hµnh trang xem cã ®ñ tiÒn ®ång kh«ng?",0)
	return
	end
	if ConsumeEquiproomItem(5, 4, 417, 1, -1) ~=1 then
	Say("Cã lçi trong qu¸ tr×nh trõ tiÒn ®ång vui lßng b¸o l¹i víi GM")
	WriteLog("BÞ lçi trong qu¸ tr×nh trõ tiÒn ®ång mua ng­ cô")
	return
	end
	AddItem(6,1,3819,1,0,0)
	Msg2Player("Ng­¬i mua thµnh c«ng 1 c¸i l­íi ®¸nh c¸. Dïng cÈn thËn khÐo r¸ch l­íi lµ kh«ng sö dông ®­îc n÷a.")
	WriteLog("LuoiXu")
end
function MuaCanCauExt()
	if  CalcEquiproomItemCount(4, 417, 1, -1) < 1 then
	Say("Ng­¬i kiÓm tra l¹i hµnh trang xem cã ®ñ tiÒn ®ång kh«ng?",0)
	return
	end
	if ConsumeEquiproomItem(1, 4, 417, 1, -1) ~=1 then
	Say("Cã lçi trong qu¸ tr×nh trõ tiÒn ®ång vui lßng b¸o l¹i víi GM")
	WriteLog("BÞ lçi trong qu¸ tr×nh trõ tiÒn ®ång mua ng­ cô")
	return
	end
	AddItem(6,1,3820,1,0,0)
	Msg2Player("Ng­¬i mua thµnh c«ng 1 c¸i cÇn c¸ ®¸nh. C©u cÈn thËn khÐo g·y cÇn c©u lµ hÕt dïng.")
	WriteLog("CanXu")
end
function MuaLuoi()
if GetCash() < 1000000 then
return Say("Ng­êi cã mang theo tiÒn kh«ng thÕ?")
end
Pay(1000000)
AddItem(6,1,3819,1,0,0)
Msg2Player("Ng­¬i mua thµnh c«ng 1 c¸i l­íi ®¸nh c¸. Dïng cÈn thËn khÐo r¸ch l­íi lµ kh«ng sö dông ®­îc n÷a.")
WriteLog("LuoiVan")
end
function MuaCanCau()
if GetCash() < 200000 then
return Say("Ng­êi cã mang theo tiÒn kh«ng thÕ?")
end
Pay(200000)
AddItem(6,1,3820,1,0,0)
Msg2Player("Ng­¬i mua thµnh c«ng 1 c¸i cÇn c¸ ®¸nh. C©u cÈn thËn khÐo g·y cÇn c©u lµ hÕt dïng.")
WriteLog("CanVan")
end