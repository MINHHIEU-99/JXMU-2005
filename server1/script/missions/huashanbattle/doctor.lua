Include("\\script\\lib\\awardtemplet.lua")
function main()

	Say("H�u doanh do ta ph� tr�ch! Ng��i c� c�n gi�p �� g� kh�ng?",3,"Mua d��c ph�m/OpenSale","Mua ng� hoa ng�c l� ho�n 1500 l��ng/BuyWuHoa","Kh�ng c�n ��u! C�m �n!/cancel")
end

function OpenSale()
	AskClientForString("OpenSale1","",1,99,"V�i l�ng g� ch� YES �� x�c nh�n")
end

function OpenSale1(xacnhan)
if (xacnhan ~= "YES") then
Say("V�i l�ng g� ch� YES �� x�c nh�n")
return
end
end

function BuyWuHoa()
	AskClientForString("BuyWuHoa1","",1,99,"G� YES �� x�c nh�n")
end

function BuyWuHoa1(xacnhan)
if (xacnhan ~= "YES") then
Say("G� YES �� x�c nh�n")
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
		AskClientForNumber("BuyWuHoa2", 1, CalcFreeItemCellCount(), "S� l��ng")
	else
		Say("Ch�c n�ng ch� ho�t ��ng t� 19h-20h. Vui l�ng quay l�i sau.")
		return
	end
end
function BuyWuHoa2(nNumber)
if type(nNumber)~="number" or nNumber < 0 or nNumber > CalcFreeItemCellCount() then
return Say("Vui l�ng nh�p l�i s� h�nh trang kh�ng �� ch� tr�ng.")
end
local nCash = nNumber*1500
if GetCash() < nCash then
return Say("H�nh trang kh�ng �� ti�n v�n. Vui l�ng ki�m tra l�i")
end
Pay(nCash)
local tbAwards={
{szName = "Ng� hoa ng�c l� ho�n",tbProp={1, 2, 0, 5, 0, 0},nBindState=-2,nCount=nNumber,},
}
tbAwardTemplet:GiveAwardByList(tbAwards, "Mua m�u ng� hoa TK")
end