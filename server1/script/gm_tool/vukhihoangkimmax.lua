

function vukhihoangkimmax()
if (CalcFreeItemCellCount() < 40) then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
end
local tab_Content =
{
--"Trang BÞ Kim ¤./kimomax",
--"Trang BÞ B¹ch Hæ./bachhomax",
--"Trang BÞ XÝch L©n./xichlanmax",
--"Trang BÞ Minh Ph­îng./minhphuongmax",
"Trang BÞ §»ng Long/danglongmax",
--"Trang BÞ Tinh S­¬ng/tinhsuongmax",
--"Trang BÞ NguyÖt KhuyÕt/nguyetkhuyetmax",
"Tho¸t./no",
"Trë l¹i"
}


Say(" Muèn lÊy trang bÞ g× ? ", getn(tab_Content), tab_Content);
end

-----------------------------------------------------------------------------------------------------------------------------------------------
function danglongmax()
local tab_Content = {
"Rêi khái/no",
"ThiÕu L©m QuyÒn/#sedanglongmax(1)",
"ThiÕu L©m Bçng/#sedanglongmax(11)",
"ThiÕu L©m §ao/#sedanglongmax(21)",
"Thiªn V­¬ng Chïy/#sedanglongmax(31)",
"Thiªn V­¬ng Th­¬ng/#sedanglongmax(41)",
"Thiªn V­¬ng §ao/#sedanglongmax(51)",
"Nga Mi KiÕm/#sedanglongmax(61)",
"Nga Mi Ch­ëng/#sedanglongmax(71)",
"Thóy Yªn §ao/#sedanglongmax(81)",
"Thóy Yªn Song §ao/#sedanglongmax(91)",
"Ngò §éc Ch­ëng/#sedanglongmax(101)",
"Ngò §éc §ao/#sedanglongmax(111)",
"§­êng M«n Phi §ao/#sedanglongmax(121)",
"§­êng M«n Ná/#sedanglongmax(131)",
"Trang sau/danglongmax2",
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function danglongmax2()
local tab_Content = {
"§­êng M«n Phi Tiªu/#sedanglongmax(141)",
"C¸i Bang Rång/#sedanglongmax(151)",
"C¸i Bang Bçng/#sedanglongmax(161)",
"Thiªn NhÉn KÝch/#sedanglongmax(171)",
"Thiªn NhÉn §ao/#sedanglongmax(181)",
"Vâ §ang KiÕm/#sedanglongmax(191)",
"Vâ §ang QuyÒn/#sedanglongmax(201)",
"C«n L«n §ao/#sedanglongmax(211)",
"C«n L«n KiÕm/#sedanglongmax(221)",
"Hoa S¬n KhÝ T«ng/#sedanglongmax(231)",
"Hoa S¬n KiÕm T«ng/#sedanglongmax(241)",
"Tho¸t/no",
"Trë l¹i"
}
Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y lùa chon M«n Ph¸i", getn(tab_Content), tab_Content);
end
function sedanglongmax(nId)
local idcan=5155+nId
	tbAwardTemplet:GiveAwardByList({{szName = "§»ng Long",tbProp={0,idcan},nQuality=1},}, "test", 1);
end
