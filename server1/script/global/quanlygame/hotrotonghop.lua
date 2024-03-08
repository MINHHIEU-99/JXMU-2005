------------------------------------ TONG THE NPC HO TRO TAN THU ----------------
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua")
Include("\\script\\global\\lottery_gold.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
IncludeLib("LEAGUE")


------------------------------------ TONG THE NPC HO TRO TAN THU ----------------
	
function main()			
dofile("script/global/quanlygame/hotrotonghop.lua")
local szTitle = "h� tr� t�ng h�p c�c ch�c n�ng h�n hoan ch�o ��n c�c v� anh h�ng b�n h�u ��n v�i server.";
local tbOpt = 
{
{"Nh�n Ph�n Th��ng Nhi�m V� Th� T�n Th�",NhanPhanThuongTT},
{"Tho�t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function NhanPhanThuongTT()
if GetTask(3110) ~=100 then
			Say("Nh� ng��i ch�a nh�n nhi�m v� luy�n t� c�p 125 l�n 130 t�i th� t�n th� h�y mau mau mua t�i K� Tr�n C�c s� d�ng c� g�ng luy�n t�i 130 r�i h� t�m ta nh�n th��ng",0);
		return
	end
	if GetLevel() < 130 then
			Say("ph�i l� c�p tren 130 m�i c� th� nh�n",0);
		return
	end
	if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y nh�n.",0);
		return
	end
if GetTask(3110) ==100 and GetLevel() >= 130  then
tbAwardTemplet:GiveAwardByList({{szName="Nh�t K� 15 Ng�y",tbProp={6,1,4448,1,0,0,0},nCount=1,nExpiredTime=21600 },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Phi van",tbProp={0,10,8,10,0},nCount=1,nExpiredTime=21600,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="mat na",tbProp={0,11,561,1,0},nCount=1,nExpiredTime=21600,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,164},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,165},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,166},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,167},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
SetTask(3110,0)
logplayer("dulieu/hoanthanhnhiemvutanthu.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] hoan thanh nhiem vu tan thu 120 ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	local szNews = format("Xin Ch�c M�ng ��i hi�p <color=green>"..GetName().."<color=white> Ho�n th�nh nhi�m v� t�n th� 120 nh�n ���c ph�n th��ng 1 s�t An Bang v� nh�t k� c�n kh�n ph�.");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	end
	end