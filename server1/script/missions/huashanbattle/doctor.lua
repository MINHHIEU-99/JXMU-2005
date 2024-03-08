Include("\\script\\lib\\awardtemplet.lua")
function main()

	Say("HËu doanh do ta phô tr¸ch! Ng­¬i cã cÇn gióp ®ì g× kh«ng?",3,"Mua d­îc phÈm/OpenSale","Mua ngò hoa ngäc lé hoµn 1500 l­îng/BuyWuHoa","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function OpenSale()
	AskClientForString("OpenSale1","",1,99,"Vïi lßng gâ ch÷ YES ®Ó x¸c nhËn")
end

function OpenSale1(xacnhan)
if (xacnhan ~= "YES") then
Say("Vïi lßng gâ ch÷ YES ®Ó x¸c nhËn")
return
end
end

function BuyWuHoa()
	AskClientForString("BuyWuHoa1","",1,99,"Gâ YES ®Ó x¸c nhËn")
end

function BuyWuHoa1(xacnhan)
if (xacnhan ~= "YES") then
Say("Gâ YES ®Ó x¸c nhËn")
return
end
end

function OpenSale1()
Sale(174) 
-- SetRevPos(333,1)
end
function BuyWuHoa1() -- check thoi gian
	local nHour = tonumber(GetLocalDate("%H%M"))
	if nHour >=1000 and nHour <=2300 then
		AskClientForNumber("BuyWuHoa2", 1, CalcFreeItemCellCount(), "Sè l­îng")
	else
		Say("Chøc n¨ng chØ ho¹t ®éng tõ 19h-20h. Vui lßng quay l¹i sau.")
		return
	end
end
function BuyWuHoa2(nNumber)
if type(nNumber)~="number" or nNumber < 0 or nNumber > CalcFreeItemCellCount() then
return Say("Vui lßng nhËp l¹i sè hµnh trang kh«ng ®ñ chç trèng.")
end
local nCash = nNumber*1500
if GetCash() < nCash then
return Say("Hµnh trang kh«ng ®ñ tiÒn v¹n. Vui lßng kiÓm tra l¹i")
end
Pay(nCash)
local tbAwards={
{szName = "Ngò hoa ngäc lé hoµn",tbProp={1, 2, 0, 5, 0, 0},nBindState=-2,nCount=nNumber,},
}
tbAwardTemplet:GiveAwardByList(tbAwards, "Mua m¸u ngò hoa TK")
end