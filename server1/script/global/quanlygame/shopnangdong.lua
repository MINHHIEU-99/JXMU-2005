--------------------------------------------------------------------------------------------------------
-- File Name		:	thorenhoangkim.lua
--	Author			:	Alone_ (Nguyen Khai)
--	Create Time	:	27/10/2017 - 20:20
--	Description		:	
--------------------------------------------------------------------------------------------------------
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("ITEM")
IncludeLib("SETTING")
IncludeLib("QUESTKEY")
IncludeLib("LEAGUE")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

NANGDONG = 5110


function main()
dofile("script/global/quanlygame/shopnangdong.lua")
local tab_Content = {
"C�n Kh�n 7 Ng�y(2000)/cankhon7",
"B�n Ti�u 7 Ng�y(3000)/bontieu7",
"T�n V�t M�n Ph�i(7000)/tinvat",
"Thi�n S�n Tuy�t Li�n(10000)/thienson",
"C�n Kh�n 15 Ng�y(4000)/cankhon15",
"S�t AB 15 Ng�y(5000)/anbang15",
	"Trang k�/trang2vatpham"
	}
Say("<color=cyan>Shop n�ng ��ng:<color=yellow>\nCh�o m�ng b�n ��n shop n�ng ��ng VlTruyenKy.Net.\n<color=green>Hi�n t�i b�n nh�n v�t �ang c�: <color=pink>" ..GetTask(NANGDONG) .. " �i�m n�ng ��ng\n<color=gold>��i hi�p c� th� d�ng �i�m n�ng ��ng �� ��i c�c v�t ph�m sau ��y.", getn(tab_Content), tab_Content);       
end;

function trang2vatpham()
local tab_Content = {
				  	 "Set H�ng �nh 7 ng�y(5000)/honganh7",
		  		  "L�nh B�i Kim Quang(3000)/kimquang",
				  	 "Set H�ng �nh 15 ng�y(9000)/honganh15",
				  	 "Set An Bang V�nh Vi�n(20000)/anbangvv",
				  "B�n Ti�u V�nh Vi�n(30000)/bontieu",
				  	"Set H�ng �nh V�nh Vi�n(20000)/honganhvv",
		"K�t th�c ��i tho�i./no",
	}
Say("<color=cyan>Shop n�ng ��ng:<color=yellow>\nCh�o m�ng b�n ��n shop n�ng ��ng VlTruyenKy.Net.\n<color=green>Hi�n t�i b�n nh�n v�t �ang c�: <color=pink>" ..GetTask(NANGDONG) .. " �i�m n�ng ��ng\n<color=gold>��i hi�p c� th� d�ng �i�m n�ng ��ng �� ��i c�c v�t ph�m sau ��y.", getn(tab_Content), tab_Content);       
end;


function cankhon7()
if GetTask(5110) < 2000 then
Talk(1, "no", "C�n c� 2000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-2000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={6,1,4473,1,1},nCount=1,nExpiredTime=10080},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y C�n Kh�n 7 Ng�y.")
end

function bontieu7()
if GetTask(5110) < 3000 then
Talk(1, "no", "C�n c� 3000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-3000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,10,6,10,0},nCount=1,nExpiredTime=10080},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y B�n Ti�u 7 Ng�y.")
end

function tinvat()
if GetTask(5110) < 7000 then
Talk(1, "no", "C�n c� 4500 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-7000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={6,1,1670,1,1},nCount=1},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y T�n V�t M�n Ph�i.")
end


function thienson()
if GetTask(5110) < 10000 then
Talk(1, "no", "C�n c� 10000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-10000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={6,1,1431,1,1},nCount=1,nExpiredTime=43200},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y Thi�n S�n Tuy�t Li�n.")
end


function anbang15()
if GetTask(5110) < 5000 then
Talk(1, "no", "C�n c� 5000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-5000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,164},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,165},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,166},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,167},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y Set AB 15 ng�y.")
end

function cankhon15()
if GetTask(5110) < 4000 then
Talk(1, "no", "C�n c� 4000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-4000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={6,1,4497,1,1},nCount=1,nExpiredTime=21600},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y C�n Kh�n 15 Ng�y.")
end


function honganh7()
if GetTask(5110) < 5000 then
Talk(1, "no", "C�n c� 5000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-5000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,204},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,205},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,206},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,207},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y Set H�ng �nh 7 ng�y.")
end

function kimquang()
if GetTask(5110) < 3000 then
Talk(1, "no", "C�n c� 3000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-3000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={6,1,4479,1,1},nCount=1,nExpiredTime=43200},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y L�nh B�i Kim Quang.")
end

function honganh15()
if GetTask(5110) < 9000 then
Talk(1, "no", "C�n c� 9000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-9000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,204},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,205},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,206},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,207},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y Set H�ng �nh 15 ng�y.")
end

function honganhvv()
if GetTask(5110) < 20000 then
Talk(1, "no", "C�n c� 20000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-20000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,204},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,205},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,206},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,207},nCount=1,nQuality=1},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y Set H�ng �nh v�nh vi�n.")
end

function anbangvv()
if GetTask(5110) < 20000 then
Talk(1, "no", "C�n c� 20000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-20000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,164},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,165},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,166},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,167},nCount=1,nQuality=1},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y Set AB V�nh Vi�n.")
end

function bontieuvv()
if GetTask(5110) < 30000 then
Talk(1, "no", "C�n c� 30000 �i�m hi�n t�i ��i hi�p ch�a �� �i�m h�y c� g�ng luy�n t�p th�m. ")
return
end
SetTask(5110,GetTask(5110)-30000)
tbAwardTemplet:GiveAwardByList({{szName="��i th�nh c�ng",tbProp={0,10,6,10,0},nCount=1,},}, "test", 1);
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=green> ��i th�nh c�ng �i�m n�ng ��ng l�y B�n Ti�u V�nh Vi�n.")
end





