Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("LEAGUE")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\battles\\battlehead.lua")







function main()
dofile("script/global/quanlygame/item/quymotvonbonloi.lua")
local szTitle =  "Xin h�y Ch�n nh�ng th� b�n cho l� c�n thi�t"

local tbOpt = 
{

{"Nh�n Qu� Si�u L�i Nhu�n", quamotvonbonloi},
{"Nh�n Qu� Khi �� ��t C�p 90", nhanquacap90},
{"Nh�n Qu� Khi �� ��t C�p 100", nhanquacap100},
{"Nh�n Qu� Khi �� ��t C�p 110", nhanquacap110},

{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end



function quamotvonbonloi()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return
end
if GetTask(3777) > 0 then
		Say("��i hi�p �� nh�n g�i n�y r�i.xin h�y luy�n l�n c�p 90 �� nh�n h� tr� ti�p theo.",0);
		return
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0},nCount=400,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "th�n th�nh",tbProp={6,1,1266,1,1},nCount=1,nExpiredTime=43200,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "th� ��a",tbProp={6,1,438,1,1},nCount=1,nExpiredTime=43200,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,nExpiredTime=10080,nBindState=-2},}, "test", 1);
SetTask(3777,100)
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> m� th�nh c�ng.<color=pink> L� H�p T�ch L�y Nh�n Qu� Si�u L�i Nhu�n.");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end



function nhanquacap90()
if GetLevel() < 90 then
		Say("��i hi�p hi�n t�i ch�a ��t c�p 90.",0);
		return
end
if GetTask(3777) ~= 100 then
		Say("��i hi�p ch�a nh�n g�i Qu� Si�u L�i Nhu�n xin h�y nh�n tr��cnh�n t�i h�ng ��u ti�n.",0);
		return
end
if GetTask(3777) == 200 then
		Say("��i hi�p �� nh�n r�i.",0);
		ConsumeEquiproomItem(1,6,1,4562,-1);
		return
end
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0},nCount=20,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "Thi�n s�n  B�o L�",tbProp={6,1,72,1,1},nCount=2,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Qu� hoa t�u",tbProp={6,1,125,1,1},nCount=2,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,nBindState=-2},}, "test", 1);

SetTask(3777,200)

	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> nh�n th��ng th�nh c�ng c�p 90.<color=pink> (Khi m� G�i ��u T�)");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end


function nhanquacap100()
if GetLevel() < 100 then
		Say("��i hi�p hi�n t�i ch�a ��t c�p 100.",0);
		return
end
if GetTask(3777) ~= 200 then
		Say("��i hi�p ch�a nh�n g�i Nh�n Qu� Khi �� ��t C�p 90 xin h�y nh�n tr��c.",0);
		return
end
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0},nCount=30,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "Ti�n th� L� ��c bi�t",tbProp={6,1,1765,1,1},nCount=1,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "Qu� hoa t�u",tbProp={6,1,125,1,1},nCount=3,nBindState=-2},}, "test", 1);

	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> nh�n th��ng th�nh c�ng c�p 100.<color=pink> (Khi m� G�i ��u T�)");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
SetTask(3777,300)
end


function nhanquacap110()
if GetLevel() < 110 then
		Say("��i hi�p hi�n t�i ch�a ��t c�p 110.",0);
		return
end
if GetTask(3777) ~= 300 then
		Say("��i hi�p ch�a nh�n g�i Nh�n Qu� Khi �� ��t C�p 110 xin h�y nh�n tr��c.",0);
		return
end
if GetTask(3777) == 400 then
		Say("��i hi�p �� nh�n r�i x�a b� v�t ph�m.",0);
		ConsumeEquiproomItem(1,6,1,4562,-1);
		return
end
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return
end
tbAwardTemplet:GiveAwardByList({{szName = "Xu",tbProp={4,417,1,1,0},nCount=50,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName = "��i th�nh",tbProp={6,1,2424,1,1},nCount=1,nBindState=-2},}, "test", 1);

	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> nh�n th��ng th�nh c�ng c�p 110.<color=pink> (Khi m� l� G�i ��u T�)");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	SetTask(3777,400)
ConsumeEquiproomItem(1,6,1,4562,-1);
end


