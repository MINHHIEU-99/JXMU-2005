

function vukhihoangkimmax()
if (CalcFreeItemCellCount() < 40) then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
end
local tab_Content =
{
--"Trang B� Kim �./kimomax",
--"Trang B� B�ch H�./bachhomax",
--"Trang B� X�ch L�n./xichlanmax",
--"Trang B� Minh Ph��ng./minhphuongmax",
"Trang B� ��ng Long/danglongmax",
--"Trang B� Tinh S��ng/tinhsuongmax",
--"Trang B� Nguy�t Khuy�t/nguyetkhuyetmax",
"Tho�t./no",
"Tr� l�i"
}


Say(" Mu�n l�y trang b� g� ? ", getn(tab_Content), tab_Content);
end

-----------------------------------------------------------------------------------------------------------------------------------------------
function danglongmax()
local tab_Content = {
"R�i kh�i/no",
"Thi�u L�m Quy�n/#sedanglongmax(1)",
"Thi�u L�m B�ng/#sedanglongmax(11)",
"Thi�u L�m �ao/#sedanglongmax(21)",
"Thi�n V��ng Ch�y/#sedanglongmax(31)",
"Thi�n V��ng Th��ng/#sedanglongmax(41)",
"Thi�n V��ng �ao/#sedanglongmax(51)",
"Nga Mi Ki�m/#sedanglongmax(61)",
"Nga Mi Ch��ng/#sedanglongmax(71)",
"Th�y Y�n �ao/#sedanglongmax(81)",
"Th�y Y�n Song �ao/#sedanglongmax(91)",
"Ng� ��c Ch��ng/#sedanglongmax(101)",
"Ng� ��c �ao/#sedanglongmax(111)",
"���ng M�n Phi �ao/#sedanglongmax(121)",
"���ng M�n N�/#sedanglongmax(131)",
"Trang sau/danglongmax2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function danglongmax2()
local tab_Content = {
"���ng M�n Phi Ti�u/#sedanglongmax(141)",
"C�i Bang R�ng/#sedanglongmax(151)",
"C�i Bang B�ng/#sedanglongmax(161)",
"Thi�n Nh�n K�ch/#sedanglongmax(171)",
"Thi�n Nh�n �ao/#sedanglongmax(181)",
"V� �ang Ki�m/#sedanglongmax(191)",
"V� �ang Quy�n/#sedanglongmax(201)",
"C�n L�n �ao/#sedanglongmax(211)",
"C�n L�n Ki�m/#sedanglongmax(221)",
"Hoa S�n Kh� T�ng/#sedanglongmax(231)",
"Hoa S�n Ki�m T�ng/#sedanglongmax(241)",
"Tho�t/no",
"Tr� l�i"
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function sedanglongmax(nId)
local idcan=5155+nId
	tbAwardTemplet:GiveAwardByList({{szName = "��ng Long",tbProp={0,idcan},nQuality=1},}, "test", 1);
end
