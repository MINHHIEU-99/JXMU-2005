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

--task  3778 3779 3780 3781 3782 3783 3784 3785 





function main()
dofile("script/global/quanlygame/item/tuongphunglenh.lua")
if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y nh�n.",0);
		return 1
end
--if GetTask(3784) == 2  then
--Msg2Player("<color=pink>�� ho�n th�nh chu�i nhi�m h� th�ng h�y b� t��ng ph�ng l�nh.")
--Say("<color=pink>�� ho�n th�nh chu�i nhi�m h� th�ng h�y b� t��ng ph�ng l�nh.")
	--	return
--end
if GetTask(3778) == 2 and  GetTask(3779) == 2 and  GetTask(3780) == 2 and  GetTask(3781) == 2 and  GetTask(3782) == 2 and  GetTask(3783) == 2 and  GetTask(3784) == 2 and  GetTask(3800) == 2  and  GetTask(3801) == 2   then
Msg2Player("<color=pink>�� ho�n th�nh chu�i nhi�m h� th�ng h�y b� t��ng ph�ng l�nh.")
Say("<color=pink>�� ho�n th�nh chu�i nhi�m h� th�ng h�y b� t��ng ph�ng l�nh.")
	logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� ho�n th�nh chu�i nhi�m h� th�ng h�y b� t��ng ph�ng l�nh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

		return
end

local dangcap = GetLevel()
if dangcap < 50 then
ST_LevelUp(50 - dangcap)
Earn(100000)
end
if GetTask(3778) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� d��i c�p 60 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3779) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 60 ��n d��i c�p 70 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3780) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 70 ��n d��i c�p 80 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3781) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 80 ��n d��i c�p 85 : Ho�n th�nh 15 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3782) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 85 ��n d��i c�p 90 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3783) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 90 ��n d��i c�p 93 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3784) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 93 tr� l�n : Ho�n th�nh 20 nhi�m v� d� t�u b�t k� + 3000 �i�m t�ng kim (kh�ng li�n t�c).")
end
if GetTask(3800) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 95 tr� l�n : Ho�n th�nh 20 nhi�m v� d� t�u b�t k� + 1 chuy�n phong  l�ng �� (ch� c�n c� tham gia �i thuy�n kh�ng nh�t thi�t ho�n th�nh).")
end
if GetTask(3801) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 98 tr� l�n : Ho�n th�nh 20 nhi�m v� d� t�u b�t k� + 1 chuy�n v��t �i (ch� c�n c� tham gia v��t �i kh�ng nh�t thi�t ho�n th�nh).")
end
if GetTask(3778) == 0 and  GetTask(3779) == 0  and  GetTask(3780) == 0  and  GetTask(3781) == 0  and  GetTask(3782) == 0  and  GetTask(3783) == 0  and  GetTask(3784) == 0  and  GetTask(3780) == 0 and  GetTask(3800) == 0  and  GetTask(3801) == 0 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p ch�a nh�n nhi�m v� n�o.")
end

local szTitle =  "T��ng ph�ng l�nh nh�n qu� si�u h�n"
local tbOpt = 
{

{"NV Ho�n Th�nh (d��i c�p 60)", nhiemvu10},
{"NV Ho�n Th�nh (c�p 60-69)", nhiemvu1060},
{"NV Ho�n Th�nh (c�p 70-79)", nhiemvu1070},
{"NV Ho�n Th�nh (c�p 80-84)", nhiemvu1080},
{"NV Ho�n Th�nh (c�p 85-89)", nhiemvu1085},
{"NV Ho�n Th�nh (c�p 90-92)", nhiemvu1090},
{"Sang trang ti�p theo", trang2},


{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end


function trang2()
dofile("script/global/quanlygame/item/tuongphunglenh.lua")
if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y nh�n.",0);
		return 1
end
if GetTask(3778) == 2 and  GetTask(3779) == 2 and  GetTask(3780) == 2 and  GetTask(3781) == 2 and  GetTask(3782) == 2 and  GetTask(3783) == 2 and  GetTask(3784) == 2 and  GetTask(3800) == 2  and  GetTask(3801) == 2  then
Msg2Player("<color=pink>�� ho�n th�nh chu�i nhi�m h� th�ng h�y b� t��ng ph�ng l�nh.")
Say("<color=pink>�� ho�n th�nh chu�i nhi�m h� th�ng h�y b� t��ng ph�ng l�nh.")
	logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] �� ho�n th�nh chu�i nhi�m h� th�ng h�y b� t��ng ph�ng l�nh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

		return
end
local dangcap = GetLevel()
if dangcap < 50 then
ST_LevelUp(50 - dangcap)
Earn(100000)
end
if GetTask(3778) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� d��i c�p 60 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3779) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 60 ��n d��i c�p 70 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3780) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 70 ��n d��i c�p 80 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3781) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 80 ��n d��i c�p 85 : Ho�n th�nh 15 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3782) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 85 ��n d��i c�p 90 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3783) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 90 ��n d��i c�p 93 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
end
if GetTask(3784) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 93 tr� l�n : Ho�n th�nh 20 nhi�m v� d� t�u b�t k� + 3000 �i�m t�ng kim (kh�ng li�n t�c).")
end
if GetTask(3800) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 95 tr� l�n : Ho�n th�nh 20 nhi�m v� d� t�u b�t k� + 1 chuy�n phong  l�ng �� (ch� c�n c� tham gia �i thuy�n kh�ng nh�t thi�t ho�n th�nh).")
end
if GetTask(3801) == 1 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 98 tr� l�n : Ho�n th�nh 20 nhi�m v� d� t�u b�t k� + 1 chuy�n v��t �i (ch� c�n c� tham gia v��t �i kh�ng nh�t thi�t ho�n th�nh).")
end
if GetTask(3778) == 0 and  GetTask(3779) == 0  and  GetTask(3780) == 0  and  GetTask(3781) == 0  and  GetTask(3782) == 0  and  GetTask(3783) == 0  and  GetTask(3784) == 0  and  GetTask(3780) == 0 and  GetTask(3800) == 0  and  GetTask(3801) == 0 then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p ch�a nh�n nhi�m v� n�o.")
end

local szTitle =  "T��ng ph�ng l�nh nh�n qu� si�u h�n"
local tbOpt = 
{

{"NV Ho�n Th�nh (c�p 93+)", nhiemvu1093},
{"NV Ho�n Th�nh (c�p 95+)", nhiemvu1095},
{"NV Ho�n Th�nh (c�p 98+)", nhiemvu1098},

{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end


--------------------NV10 ------------------------

function nhiemvu10()
if GetLevel() >= 60 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
local tab_Content = {
"Ta �� ho�n th�nh nhi�m v�/hoanthanhnhiemvu10",
"Ta ��n nh�n nhi�m v�/nhannhiemvu10",
"Ti�n mu�n h�y nhi�m v� n�y/huynhiemvu10",
"Ch� xem th�i/no"
	}
Say("<color=white>Nhi�m V� Hi�n T�i:\nD� T�u " ..GetTask(3785) .. "/10", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu10()
if GetTask(3778) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=pink>ch�c m�ng ��i hi�p nh�n nhi�m v� d��i c�p 60 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
SetTask(3778,1)
end

function huynhiemvu10()
if GetTask(3778) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i kh�ng ���c h�y n�a xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=green>B�n �� h�y nhi�m v� th�nh c�ng.B�y gi� c� th� nh�n nhi�m v� l�i.")
SetTask(3778,0)
end

function hoanthanhnhiemvu10()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if GetLevel() >= 60 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
if GetTask(3778) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
if GetTask(3778) < 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� n�y xin h�y nh�n nhi�m v� r�i h� ti�p t�c.",0);
		return
end
if GetTask(3785) < 10 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� d� t�u quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
SetTask(3778,2)
StackExp(5000000);
Earn(100000)
SetTask(3785,0)
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� t��ng ph�ng l�nh nh�n ���c ph�n th��ng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoanthanhnhiemvu10",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end


--------------------60-70-NV10 ------------------------

function nhiemvu1060()
if GetLevel() >= 70 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
local tab_Content = {
"Ta �� ho�n th�nh nhi�m v�/hoanthanhnhiemvu1060",
"Ta ��n nh�n nhi�m v�/nhannhiemvu1060",
"Ti�n mu�n h�y nhi�m v� n�y/huynhiemvu1060",
"Ch� xem th�i/no"
	}
Say("<color=white>Nhi�m V� Hi�n T�i:\nD� T�u " ..GetTask(3785) .. "/10", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1060()
if GetTask(3779) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=pink>nh�n nhi�m v� c�p 60 ��n d��i c�p 70 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
SetTask(3779,1)
end

function huynhiemvu1060()
if GetTask(3779) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i kh�ng ���c h�y n�a xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=green>B�n �� h�y nhi�m v� th�nh c�ng.B�y gi� c� th� nh�n nhi�m v� l�i.")
SetTask(3779,0)
end

function hoanthanhnhiemvu1060()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if GetLevel() >= 70 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
if GetTask(3779) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
if GetTask(3779) < 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� n�y xin h�y nh�n nhi�m v� r�i h� ti�p t�c.",0);
		return
end
if GetTask(3785) < 10 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� d� t�u quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
SetTask(3779,2)
StackExp(20000000);
SetTask(3785,0)
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,71,1,1},nCount=3,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� t��ng ph�ng l�nh nh�n ���c ph�n th��ng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] huynhiemvu1060",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end

--------------------70-80-NV10 ------------------------

function nhiemvu1070()
if GetLevel() >= 80 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
local tab_Content = {
"Ta �� ho�n th�nh nhi�m v�/hoanthanhnhiemvu1070",
"Ta ��n nh�n nhi�m v�/nhannhiemvu1070",
"Ti�n mu�n h�y nhi�m v� n�y/huynhiemvu1070",
"Ch� xem th�i/no"
	}
Say("<color=white>Nhi�m V� Hi�n T�i:\nD� T�u " ..GetTask(3785) .. "/10", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1070()
if GetTask(3780) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 70 ��n d��i c�p 80 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
SetTask(3780,1)
end

function huynhiemvu1070()
if GetTask(3780) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i kh�ng ���c h�y n�a xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=green>B�n �� h�y nhi�m v� th�nh c�ng.B�y gi� c� th� nh�n nhi�m v� l�i.")
SetTask(3780,0)
end

function hoanthanhnhiemvu1070()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if GetLevel() >= 80 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
if GetTask(3780) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
if GetTask(3780) < 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� n�y xin h�y nh�n nhi�m v� r�i h� ti�p t�c.",0);
		return
end
if GetTask(3785) < 10 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� d� t�u quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
SetTask(3780,2)
StackExp(40000000);
SetTask(3785,0)
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,71,1,1},nCount=4,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� t��ng ph�ng l�nh nh�n ���c ph�n th��ng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
			logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nhannhiemvu1070",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end




--------------------80-85-NV10 ------------------------

function nhiemvu1080()
if GetLevel() >= 85 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
local tab_Content = {
"Ta �� ho�n th�nh nhi�m v�/hoanthanhnhiemvu1080",
"Ta ��n nh�n nhi�m v�/nhannhiemvu1080",
"Ti�n mu�n h�y nhi�m v� n�y/huynhiemvu1080",
"Ch� xem th�i/no"
	}
Say("<color=white>Nhi�m V� Hi�n T�i:\nD� T�u " ..GetTask(3785) .. "/15", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1080()
if GetTask(3781) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 80 ��n d��i c�p 85 : Ho�n th�nh 15 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
SetTask(3781,1)
end

function huynhiemvu1080()
if GetTask(3781) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i kh�ng ���c h�y n�a xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=green>B�n �� h�y nhi�m v� th�nh c�ng.B�y gi� c� th� nh�n nhi�m v� l�i.")
SetTask(3781,0)
end

function hoanthanhnhiemvu1080()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if GetLevel() >= 85 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
if GetTask(3781) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
if GetTask(3781) < 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� n�y xin h�y nh�n nhi�m v� r�i h� ti�p t�c.",0);
		return
end
if GetTask(3785) < 15 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� d� t�u quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
SetTask(3781,2)
StackExp(50000000);
SetTask(3785,0)
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,71,1,1},nCount=5,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� t��ng ph�ng l�nh nh�n ���c ph�n th��ng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
				logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoanthanhnhiemvu1080",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end




--------------------85-90-NV10 ------------------------

function nhiemvu1085()
if GetLevel() >= 90 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
local tab_Content = {
"Ta �� ho�n th�nh nhi�m v�/hoanthanhnhiemvu1085",
"Ta ��n nh�n nhi�m v�/nhannhiemvu1085",
"Ti�n mu�n h�y nhi�m v� n�y/huynhiemvu1085",
"Ch� xem th�i/no"
	}
Say("<color=white>Nhi�m V� Hi�n T�i:\nD� T�u " ..GetTask(3785) .. "/20", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1085()
if GetTask(3782) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 85 ��n d��i c�p 90 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
SetTask(3782,1)
end

function huynhiemvu1085()
if GetTask(3782) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i kh�ng ���c h�y n�a xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=green>B�n �� h�y nhi�m v� th�nh c�ng.B�y gi� c� th� nh�n nhi�m v� l�i.")
SetTask(3782,0)
end

function hoanthanhnhiemvu1085()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if GetLevel() >= 90 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
if GetTask(3782) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
if GetTask(3782) < 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� n�y xin h�y nh�n nhi�m v� r�i h� ti�p t�c.",0);
		return
end
if GetTask(3785) < 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� n�y xin h�y nh�n nhi�m v� r�i h� ti�p t�c.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� d� t�u quy ��nh xin h�y ki�m tra l�i..",0);
		return
end

SetTask(3782,2)
StackExp(80000000);
SetTask(3785,0)
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,71,1,1},nCount=5,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� t��ng ph�ng l�nh nh�n ���c ph�n th��ng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
					logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoanthanhnhiemvu1085",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end




--------------------90-93-NV10 ------------------------

function nhiemvu1090()
if GetLevel() >= 93 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
local tab_Content = {
"Ta �� ho�n th�nh nhi�m v�/hoanthanhnhiemvu1090",
"Ta ��n nh�n nhi�m v�/nhannhiemvu1090",
"Ti�n mu�n h�y nhi�m v� n�y/huynhiemvu1090",
"Ch� xem th�i/no"
	}
Say("<color=white>Nhi�m V� Hi�n T�i:\nD� T�u " ..GetTask(3785) .. "/20 - \nPh� qu� c�m h�p " ..GetTask(3333) .. "/10", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1090()
if GetTask(3783) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 90 ��n d��i c�p 93 : Ho�n th�nh 10 nhi�m v� d� t�u b�t k� (kh�ng li�n t�c).")
SetTask(3783,1)
end

function huynhiemvu1090()
if GetTask(3783) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i kh�ng ���c h�y n�a xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=green>B�n �� h�y nhi�m v� th�nh c�ng.B�y gi� c� th� nh�n nhi�m v� l�i.")
SetTask(3783,0)
end

function hoanthanhnhiemvu1090()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if GetLevel() >= 93 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
if GetTask(3783) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
if GetTask(3783) < 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� n�y xin h�y nh�n nhi�m v� r�i h� ti�p t�c.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� d� t�u quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
if GetTask(3333) < 10 then
		Say("ch�a ho�n th�nh �� s� d�ng ph� qu� c�m h�p theo quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
SetTask(3783,2)
StackExp(150000000);
SetTask(3785,0)
SetTask(3333,0)

tbAwardTemplet:GiveAwardByList({{szName = "ng��i tuy�t",tbProp={6,1,4346,1,1},nCount=20,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� t��ng ph�ng l�nh nh�n ���c ph�n th��ng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
						logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoanthanhnhiemvu1090",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end





--------------------93+ NV10 ------------------------

function nhiemvu1093()
if GetLevel() >= 95 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
local tab_Content = {
"Ta �� ho�n th�nh nhi�m v�/hoanthanhnhiemvu1093",
"Ta ��n nh�n nhi�m v�/nhannhiemvu1093",
"Ti�n mu�n h�y nhi�m v� n�y/huynhiemvu1093",
"Ch� xem th�i/no"
	}
Say("<color=white>Nhi�m V� Hi�n T�i:\nD� T�u " ..GetTask(3785) .. "/20 \nT�ng Kim " ..GetTask(3332) .. "/3000", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1093()
if GetTask(3784) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 93 tr� l�n : Ho�n th�nh 20 nhi�m v� d� t�u b�t k� v� t�ng kim ��t 3000 �i�m (kh�ng li�n t�c).")
SetTask(3784,1)
end

function huynhiemvu1093()
if GetTask(3784) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i kh�ng ���c h�y n�a xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=green>B�n �� h�y nhi�m v� th�nh c�ng.B�y gi� c� th� nh�n nhi�m v� l�i.")
SetTask(3784,0)
end

function hoanthanhnhiemvu1093()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if GetLevel() >= 100 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
if GetTask(3784) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� d� t�u quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
if GetTask(3332) < 3000 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� t�ng kim ��t 3000 �i�m tr� l�n theo quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
SetTask(3784,2)
SetTask(3332,0)

SetTask(3785,0)
StackExp(200000000);
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,1765,1,1},nCount=2,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� t��ng ph�ng l�nh nh�n ���c ph�n th��ng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
							logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoanthanhnhiemvu1093",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end



--------------------95+ NV10 ------------------------

function nhiemvu1095()
if GetLevel() >= 98 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
local tab_Content = {
"Ta �� ho�n th�nh nhi�m v�/hoanthanhnhiemvu1095",
"Ta ��n nh�n nhi�m v�/nhannhiemvu1095",
"Ti�n mu�n h�y nhi�m v� n�y/huynhiemvu1095",
"Ch� xem th�i/no"
	}
Say("<color=white>Nhi�m V� Hi�n T�i:\nD� T�u " ..GetTask(3785) .. "/20 \nPhong L�ng �� " ..GetTask(3803) .. "/1", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1095()
if GetTask(3800) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 95 tr� l�n : Ho�n th�nh 20 nhi�m v� d� t�u b�t k� v� 1 chuy�n phong l�ng ��.")
SetTask(3800,1)
end

function huynhiemvu1095()
if GetTask(3800) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i kh�ng ���c h�y n�a xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=green>B�n �� h�y nhi�m v� th�nh c�ng.B�y gi� c� th� nh�n nhi�m v� l�i.")
SetTask(3800,0)
end

function hoanthanhnhiemvu1095()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if GetLevel() >= 98 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
if GetTask(3800) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� d� t�u quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
if GetTask(3803) < 1 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� 1 chuy�n phong l�ng �� xin h�y ki�m tra l�i..",0);
		return
end
SetTask(3800,2)
SetTask(3803,0)
SetTask(3785,0)
StackExp(100000000);
StackExp(100000000);
StackExp(100000000);
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,1765,1,1},nCount=2,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� t��ng ph�ng l�nh nh�n ���c ph�n th��ng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
							logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoanthanhnhiemvu1095",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end



--------------------98+ NV10 ------------------------

function nhiemvu1098()
if GetLevel() >= 110 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
local tab_Content = {
"Ta �� ho�n th�nh nhi�m v�/hoanthanhnhiemvu1098",
"Ta ��n nh�n nhi�m v�/nhannhiemvu1098",
"Ti�n mu�n h�y nhi�m v� n�y/huynhiemvu1098",
"Ch� xem th�i/no"
	}
Say("<color=white>Nhi�m V� Hi�n T�i:\nD� T�u " ..GetTask(3785) .. "/20 \nV��t �i " ..GetTask(3804) .. "/1", getn(tab_Content), tab_Content);       
end;

function nhannhiemvu1098()
if GetTask(3801) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=pink>Hi�n t�i ��i hi�p �ang nh�n nhi�m v� c�p 98 tr� l�n : Ho�n th�nh 20 nhi�m v� d� t�u b�t k� v� 1 chuy�n v��t �i.")
SetTask(3801,1)
end

function huynhiemvu1098()
if GetTask(3801) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i kh�ng ���c h�y n�a xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
Msg2Player("<color=green>B�n �� h�y nhi�m v� th�nh c�ng.B�y gi� c� th� nh�n nhi�m v� l�i.")
SetTask(3801,0)
end

function hoanthanhnhiemvu1098()
if GetCamp() == 0 then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n.")
		return
end
if GetLevel() >= 110 then
		Say("��ng c�p ��i hi�p kh�ng th�ch h�p �� l�m nhi�m v� n�y xin h�y ch�n chu�i nhi�m v� t��ng �ng v�i c�p.",0);
		return
end
if GetTask(3801) > 1 then
		Say("��i hi�p �� l�m xong nhi�m v� n�y r�i xin h�y nh�n nhi�m v� kh�c.",0);
		return
end
if GetTask(3785) < 20 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� d� t�u quy ��nh xin h�y ki�m tra l�i..",0);
		return
end
if GetTask(3804) < 1 then
		Say("ch�a ho�n th�nh �� chu�i nhi�m v� 1 chuy�n v��t �i �� xin h�y ki�m tra l�i..",0);
		return
end
SetTask(3801,2)
SetTask(3804,0)
SetTask(3785,0)
StackExp(100000000);
StackExp(100000000);
StackExp(100000000);
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,1765,1,1},nCount=2,nBindState=-2},}, "test", 1);
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� t��ng ph�ng l�nh nh�n ���c ph�n th��ng");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
							logplayer("dulieu/tuongphunglenh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoanthanhnhiemvu1098",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end



function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end



