--»ØÌìÀñ°ü
Include("\\script\\lib\\awardtemplet.lua")
local tbItem = 
{
	["6,1,2527"] = {szName="Håi Thiªn T¸i T¹o §¬n", tbProp={1,2,0,5,0,0,0}},
}
	

function main(nItemIndex)


	return 1
end



function GetDesc(nItemIndex)
	local nSolo= GetItemParam(nItemIndex, 1);
	local nHeso= GetItemParam(nItemIndex, 2);
	local nDay= GetItemParam(nItemIndex, 3);
	local nMon= GetItemParam(nItemIndex, 4);
	return format("Sè may m¾n : <color=yellow>%d<color>\nHÖ sè : <color=green>x%d<color>\nQuay ngµy : <color=orange>%d-%d<color>",nSolo,nHeso,nDay,nMon)
end