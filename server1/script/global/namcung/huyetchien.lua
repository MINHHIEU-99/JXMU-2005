Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("ITEM")
IncludeLib("RELAYLADDER");
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\battles\\battlesaward.lua")
--------------------------------------------------
VONGSANG1 = 1752
VONGSANG2 = 1753
VONGSANG3 = 1754
VONGSANG4 = 1755
VONGSANG5 = 1756

TASK_HUYETCHIEN =3002

function main()
local nHuyetChien=GetTask(TASK_HUYETCHIEN)
dofile("script/global/namcung/huyetchien.lua")
Describe(" B�n Ti�m Cho Thu� T�t C� Trang B� Hi�m C�a 2 Gi�i H�c B�ch L��ng ��o, Ng��i C�n G� �i�m Huy�t Chi�n c�a c�c h� hi�n t�i: <color=yellow>"..nHuyetChien.."<color>",11,
	"Shop Mua Huy�t Chi�n /doidiemtk",
	"Nh�n v�ng s�ng Vip X� Lip /huyetduc",
      "Mua Danh Hi�u ��c C�/thuonghong",
	"Mua l�i Danh Hi�u C�i L�o 5/langhao",
	--"Nh�n v�ng s�ng Tri�u M�nh/trieumanh",
	"Ta s� quay l�i sau!/no"
	);
end 
tab_Content = {
	{VONGSANG1},
	{VONGSANG2},
	{VONGSANG3},
	{VONGSANG4},
	{VONGSANG5},
};

function huyetduc()
Say("��i V�ng S�ng n�y c�n ti�u t�n 300.000 �i�m Huy�t Chi�n + 1000 KNB, mua 7 ngay, b�n c� ��ng � kh�ng?", 2, 
	"��ng �/huyetduc2", 
	"Kh�ng c�n ��u/no");
end

function huyetduc2()
local n1 = tab_Content[1][1]
local n2 = tab_Content[2][1]
local n3 = tab_Content[3][1]
local n4 = tab_Content[4][1]
local n5 = tab_Content[5][1]
if (CalcEquiproomItemCount(4, 1496, 1, 1) < 1000) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 1000 KNB")
		return
	end
local nHuyetChien=300000
if (GetTask(TASK_HUYETCHIEN) < 300000) then
	Msg2Player(format("Nh�n v�ng s�ng n�y c�n %d �i�m Huy�t Chi�n",nHuyetChien))
else
	PlayerFunLib:AddSkillState(n1,10,3,10886400,1)--18*60*60*24*7=10886400 7 Ng�y
	RemoveSkillState(n2,1,3,2799360000,1)
	RemoveSkillState(n3,1,3,2799360000,1)
	RemoveSkillState(n4,1,3,2799360000,1)
	RemoveSkillState(n5,1,3,2799360000,1)
	SetTask(TASK_HUYETCHIEN,GetTask(TASK_HUYETCHIEN)-300000)
        ConsumeEquiproomItem(1000, 4, 1496, 1, 1)
WriteLogPro("dulieu/vongsang/kichhoatvongsangVip_.txt",format(" Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] - Vong sang [%s] ! \n",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),vongsang))
end;
end

function chienthien()
Say("��i V�ng S�ng n�y c�n ti�u t�n 2000 �i�m Huy�t Chi�n, b�n c� ��ng � kh�ng?", 2, 
	"��ng �/chienthien2", 
	"Kh�ng c�n ��u/no");
end

function chienthien2()
local n1 = tab_Content[1][1]
local n2 = tab_Content[2][1]
local n3 = tab_Content[3][1]
local n4 = tab_Content[4][1]
local n5 = tab_Content[5][1]
local nHuyetChien=2000
if (GetTask(TASK_HUYETCHIEN) < 2000) then
	Msg2Player(format("Nh�n v�ng s�ng n�y c�n %d �i�m Huy�t Chi�n",nHuyetChien))
else
	RemoveSkillState(n1,1,3,2799360000,1)
	RemoveSkillState(n3,1,3,2799360000,1)
	RemoveSkillState(n4,1,3,2799360000,1)
	RemoveSkillState(n5,1,3,2799360000,1)
	PlayerFunLib:AddSkillState(n2,2,3,10886400,1)--18*60*60*24*7=10886400 7 Ng�y
	SetTask(TASK_HUYETCHIEN,GetTask(TASK_HUYETCHIEN)-2000)
end;
end

function thuonghong()
Say("��i V�ng S�ng n�y c�n ti�u t�n 800.000 �i�m Huy�t Chi�n, Trong V�ng 7 Ng�y, b�n c� ��ng � kh�ng?", 2, 
	"��ng �/thuonghong2", 
	"Kh�ng c�n ��u/no");
end

function thuonghong2()
local n1 = tab_Content[1][1]
local n2 = tab_Content[2][1]
local n3 = tab_Content[3][1]
local n4 = tab_Content[4][1]
local n5 = tab_Content[5][1]
if (CalcEquiproomItemCount(4, 1496, 1, 1) < 3000) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 3000 KNB")
		return
	end
local nHuyetChien=700000
if (GetTask(TASK_HUYETCHIEN) < 800000) then
	Msg2Player(format("Nh�n v�ng s�ng n�y c�n %d �i�m Huy�t Chi�n",nHuyetChien))
else
	RemoveSkillState(n1,1,3,2799360000,1)
	RemoveSkillState(n2,1,3,2799360000,1)
	RemoveSkillState(n4,1,3,2799360000,1)
	RemoveSkillState(n5,1,3,2799360000,1)
	PlayerFunLib:AddSkillState(n3,20,3,10886400,1)--18*60*60*24*7=10886400 7 Ng�y
	SetTask(TASK_HUYETCHIEN,GetTask(TASK_HUYETCHIEN)-800000)
                    ConsumeEquiproomItem(3000, 4, 1496, 1, 1)
WriteLogPro("dulieu/vongsang/kichhoatDanhHieuDocCo_.txt",format(" Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] ! \n",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
end

function langhao()
local n_solan = GetTask(5969);
	if n_solan <5  then
	Say("Ng��i ch�a c�i l�o 5 M� ��i Mua V�ng N�y Sao, Th�t H�m H�???") 
	return 0;
	end
Say("��i V�ng S�ng n�y c�n ti�u t�n 500.000 �i�m Huy�t Chi�n v� 2000 KNB, M�t H�t Danh Hi�u V� V�ng S�ng C�,\n b�n c� ��ng � kh�ng?", 2, 
	"��ng �/langhao2", 
	"Kh�ng c�n ��u/no");
end

function langhao2()
local n1 = tab_Content[1][1]
local n2 = tab_Content[2][1]
local n3 = tab_Content[3][1]
local n4 = tab_Content[4][1]
local n5 = tab_Content[5][1]
if (CalcEquiproomItemCount(4, 1496, 1, 1) < 2000) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 2000 KNB")
		return
	end

local nHuyetChien=500000
if (GetTask(TASK_HUYETCHIEN) < 500000) then
	Msg2Player(format("Nh�n v�ng s�ng n�y c�n %d �i�m Huy�t Chi�n",nHuyetChien))
else
	RemoveSkillState(n1,1,3,2799360000,1)
	--RemoveSkillState(n2,1,3,2799360000,1)
	RemoveSkillState(n3,1,3,2799360000,1)
	RemoveSkillState(n5,1,3,2799360000,1)
        PlayerFunLib:AddSkillState(1755,1,3,18*60*60*24*300,1)
        PlayerFunLib:AddSkillState(1753,1,3,18*60*60*24*300,1)
	SetTask(TASK_HUYETCHIEN,GetTask(TASK_HUYETCHIEN)-500000)
	ConsumeEquiproomItem(2000, 4, 1496, 1, 1)
WriteLogPro("dulieu/vongsang/kichhoatDanhHieucailao5_.txt",format(" Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] ! \n",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;
end

function trieumanh()
Say("��i V�ng S�ng n�y c�n ti�u t�n 500000 �i�m Huy�t Chi�n, b�n c� ��ng � kh�ng?", 2, 
	"��ng �/trieumanh2", 
	"Kh�ng c�n ��u/no");
end

function trieumanh2()
local n1 = tab_Content[1][1]
local n2 = tab_Content[2][1]
local n3 = tab_Content[3][1]
local n4 = tab_Content[4][1]
local n5 = tab_Content[5][1]
if (CalcEquiproomItemCount(6, 1, 55227, -1) < 500) then
		Talk(1,"", "Trong r��ng ph�i c� �t nh�t 500 Da Minh Chau")
		return
	end

local nHuyetChien=500000
if (GetTask(TASK_HUYETCHIEN) < 500000) then
	Msg2Player(format("Nh�n v�ng s�ng n�y c�n %d �i�m Huy�t Chi�n",nHuyetChien))
else
	RemoveSkillState(n1,1,3,2799360000,1)
	RemoveSkillState(n2,1,3,2799360000,1)
	RemoveSkillState(n3,1,3,2799360000,1)
	RemoveSkillState(n4,1,3,2799360000,1)
	PlayerFunLib:AddSkillState(n5,2,3,10886400,1)--18*60*60*24*7=10886400 7 Ng�y
	SetTask(TASK_HUYETCHIEN,GetTask(TASK_HUYETCHIEN)-500000)
                ConsumeEquiproomItem(500, 6, 1, 55227, -1)
--logplayer("vongsang/kichhoatvongsang_.txt",format(" Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] - Vong sang [%s] ! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),vongsang))
end;
end
function logplayer(zFile,szMsg)
	local Data2 = openfile(""..zFile.."", "a+");
	write(Data2,tostring(szMsg));
	closefile(Data2);
 end


function doidiemtk()
local szTitle = "<npc><color=gold> GM_"..GetName().." <color>ch�o m�ng b�n ��n v�i h� th�ng <color=yellow>V� L�m Truy�n K�<color> - <color=green>V� L�m Mi�n Ph� <color>"
         local tbOpt =
	{
                
		{"Mua Huy�t Chi�n Chi�u Th�",doitinhngoc2},
		{"Mua Huy�t Chi�n L� Bao",doitinhngoc21},
		{"Tho�t"},
	}

	CreateNewSayEx(szTitle, tbOpt)

end
function doitinhngoc2()
	AskClientForNumber("DaiTinhN96",1,10,"300.000Diem/1 c�i")
end

function DaiTinhN96(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*300000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
        	tbAwardTemplet:GiveAwardByList({tbProp={6,1,63017,1,0,0},},"��",num)
     Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh"..num.."  Huy�t Chi�n <color=red>Giao C� Ba L�ng Huy�n<color>  ")
WriteLogPro("dulieu/epdo/doihuyetchienchieuthu_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi huyet chien chieu thu "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." Huy�t Chi�n Chi�u Th�, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end
function doitinhngoc21()
	AskClientForNumber("DaiTinhN961",1,10,"20.000Diem/1 c�i")
end

function DaiTinhN961(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*20000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
        	tbAwardTemplet:GiveAwardByList({tbProp={6,1,63018,1,0,0},},"��",num)
     Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh"..num.."  HUy�t Chi�n <color=red>Giao C� Ba L�ng Huy�n<color>  ")
WriteLogPro("dulieu/epdo/doihuyechien_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi huyetchientieu "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." L� bao huy�t chi�n, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end