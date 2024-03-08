IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("TONG")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\global\\g7vn\\doitennv.lua")
Include("\\script\\global\\g7vn\\resetbox.lua")
Include("\\data\\codevip.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\global\\namcung\\thuongtoptongkim.lua")
function main1()
	
	dofile("script/global/g7vn/g7defaultdialog.lua")
	--dofile("script/global/g7vn/resetbox.lua")
ResetBox:ShowDialog()
end
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
function main()	
	dofile("script/global/g7vn/g7defaultdialog.lua")
	dofile("data/codevip.lua")
	dofile("data/codesupervip.lua")
	local szTitle = "<npc><color=gold> GM_"..GetName().." <color>ch�o m�ng b�n ��n v�i h� th�ng <color=yellow>V� L�m Truy�n K�<color> - <color=green>V� L�m Mi�n Ph�<color>\nCode T�n th�<color=green>:volamsieunhan<color>"
	local Opt = 
	{
      {"Nh�n ��i Qu� T�ch �i�m Li�n ��u ", liendau},
     -- {"Nh�n ��i m�c n�p cho d�n c�y ", doidiemvip},
      -- {"Nh�n Th��ng  Viet Nam Win",NhanQuaMungNamMoi},
       --  {"M� Kh�a V�nh Vi�n ", MoKhoaNhanh},	
       -- {"X�a Pass r��ng ", mokhoa1},
	--{"Nh�n Th��ng T�ch L�y N�p 1 Tri�u", tichluynap},
       --{"reset shop t�ng kim �� mua l�i", doidiemrs},
	--{"D�ng �i�m TK Mua B� ��i Trang B� Thi�n M�nh", doidiemepdo},
	--{"D�ng �i�m TK Mua T�i Even ", doidiemtk1},
	--{"�i Ch� B�ng �i�m T�ng Kim", doidiemtk},
        --{"Nh�n Qu� Th��ng Dua top even", thuongtop_tongkim},
	{"Nh�n Ki�n Thi�t", kienthiet},
	{"M� r�ng 4 r��ng (40 xu) ", moruong},
	{"Code T�n th�(volamsieunhan)", QuaTanThuongHangNgay},
	{"Kh�a �� V�nh Vi�n", khoadovinhvien},
	{"K�t th�c ��i tho�i. ",End}
	}

	CreateNewSayEx(szTitle,Opt)

end
---------------------------
function liendau()
	local szTitle = "<npc>.<enter><color=yellow>��i hi�p �ang C� <bclr=red>"..GetTask(2501).."<bclr>  �i�m li�n ��u\n<bclr=violet>L�u � Ch� Nh�n M�c Cao Nh�t\n<color=green>note: sau khi nh�n m�c to�n b� �i�m s� b� x�a\n<bclr=red>48 Tr�n (480 �i�m vinh d�) Nh�n 500 KNB\n40 Tr�n (400 �i�m vinh d�) Nh�n 400 knb\n30 tr�n (300 �i�m vinh d�) nh�n 300 knb\n10 tr�n (100 �i�m vinh d�) 30knb <bclr>!"
	local tbOpt =
	{
             {"Nh�n Th��ng Th�ng 48 Tr�n(480 �i�m vinh d�)",BaoRuong8Ngay},
             {"Nh�n Th��ng Th�ng 40 Tr�n(400 �i�m vinh d�)",BaoRuong9Ngay},
             {"Nh�n Th��ng Th�ng 30 Tr�n(300 �i�m vinh d�)",BaoRuong10Ngay},
             {"Qu� Tham Gia Th�ng Tr�n 10 Tr�n(100 �i�m vinh d�)",BaoRuong11Ngay},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	


end
function BaoRuong8Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 480) then
		Say("Ta C��i Ch� Nh�ng K� Kh�ng C� �� 48 Tr�n Li�n ��u")
		return
	end
	SetTask(2501,GetTask(2501)- 480)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=500},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_48.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>�� Nh�n Th��ng Th�ng 48 tr�n<color> ��t Th��ng <color=red>500 kim nguy�n b�o<color> th�nh c�ng. Xin kh�ch quan ki�m tra l�i!", 0)
     Msg2SubWorld("<color=green>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=green> �� Nh�n Th��ng Th�ng Li�n ��u 48 Tr�n V�i Ti�n Th��ng L� 500 kim Nguy�n B�o,  Th�t L� N� ��i Cao Th� <color> "..GetName().." <color=green> Th�t L� Cham Ch� C�y ")
end
-----------------------
function BaoRuong9Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 400) then
		Say("Ta C��i Ch� Nh�ng K� Kh�ng C� �� 40 Tr�n Li�n ��u")
		return
	end
	SetTask(2501,GetTask(2501)- 400)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=400},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_40.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>�� Nh�n Th��ng Th�ng 40 tr�n<color> ��t Th��ng <color=red>400 kim nguy�n b�o<color> th�nh c�ng. Xin kh�ch quan ki�m tra l�i!", 0)
     Msg2SubWorld("<color=green>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=green> �� Nh�n Th��ng Th�ng Li�n ��u 40 Tr�n V�i Ti�n Th��ng L� 400 kim Nguy�n B�o, Th�t L� N� ��i Cao Th� <color> "..GetName().." <color=green> Th�t L� Cham Ch� C�y ")
end
-----------------
function BaoRuong10Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 300) then
		Say("Ta C��i Ch� Nh�ng K� Kh�ng C� �� 30 Tr�n Li�n ��u")
		return
	end
	SetTask(2501,GetTask(2501)- 300)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=300},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_30.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>�� Nh�n Th��ng Th�ng 30 tr�n<color> ��t Th��ng <color=red>300 kim nguy�n b�o<color> th�nh c�ng. Xin kh�ch quan ki�m tra l�i!", 0)
     Msg2SubWorld("<color=green>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=green> �� Nh�n Th��ng Th�ng Li�n ��u 30 Tr�n V�i Ti�n Th��ng L� 300 kim Nguy�n B�o,Th�t L� N� ��i Cao Th� <color> "..GetName().." <color=green> Th�t L� Cham Ch� C�y ")
end
------------------------------
function BaoRuong11Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 100) then
		Say("Ta C��i Ch� Nh�ng K� Kh�ng C� �� 10 Tr�n Li�n ��u")
		return
	end
	SetTask(2501,GetTask(2501)- 100)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=30},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_10.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>�� Nh�n Th��ng Th�ng 10 tr�n<color> ��t Th��ng <color=red>30 kim nguy�n b�o<color> th�nh c�ng. Xin kh�ch quan ki�m tra l�i!", 0)
    Msg2SubWorld("<color=green>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=green> �� Nh�n Th��ng Th�ng Li�n ��u 10 Tr�n V�i Ti�n Th��ng L� 30 kim Nguy�n B�o, Th�t L� N� ��i Cao Th� <color> "..GetName().." <color=green> Th�t L� Cham Ch� C�y ")
end

------------------
function doidiemvip()
	local szTitle = "<npc>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>v� l�m thi�n h�<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t...\n�i�m ��i M�c<bclr=blue>: "..GetTask(5138).." �i�m <bclr>!"
	local tbOpt =
	{
             {"��i M�c N�p 1 Tri�u",NhiemVuSatThu1},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	


end
function NhiemVuSatThu1()
if  GetTask(3703) > 0 then
Talk(1,""," �� Nh�n Th��ng vip 1 R�i")
return end
	if GetTask(5138) >= 2000 then
       
      local  tbAwaZrd = {
                {szName="trang suc",tbProp={0,random(4929,4933)},nCount=1,nQuality=1},
                {szName="Tinh Ngoc",tbProp={0,11,840,1,0,0},nCount=1,nExpiredTime=14400},
                {szName="Tinh Ngoc",tbProp={6,1,5337,1,0,0},nCount=1},
                {szName="Tinh Ngoc",tbProp={6,1,4346,1,0,0},nCount=1},
                {szName="Tinh Ngoc",tbProp={6,1,49004,1,0,0},nCount=3000},
                {szName="Tinh Ngoc",tbProp={6,1,30355,1,0,0},nCount=3000},
	         {szName="trang suc",tbProp={0,random(4953,4955)},nCount=1,nQuality=1,nExpiredTime=14400},

     }
		  tbAwardTemplet:GiveAwardByList(tbAwaZrd, "Ph�n th��ng Ti�u Di�t Bos ��i")
	SetTask(5138,GetTask(5138)- 2000)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." <color=green>�� Nh�n Th��ng M�c N�p Cho Ng��i C�y, Th�t ��ng Kh�m Ph�c<color>")
WriteLogPro("dulieu/doimoc1trchodancay.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(5138).." diem   \n");

	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� ��t <color=red>"..GetTask(5138).."/2000<color> �i�m ��i M�c N�p 1 tri�u...!<color>")
	end
end	
---------------------------------------------------------------M� Kh�a Nhanh------------------------------------------------------------------------------------
function MoKhoaNhanh()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
	GiveItemUI("M� Kh�a B�o Hi�m", "��i hi�p h�y c�n th�n trong vi�c m� kh�a b�o hi�m!", "MoKhoaBaoHiem", "onCancel", 1);
end

function MoKhoaBaoHiem(nCount)
	local TIMEBET = 946656000
	local nBindTime = 1 - 7*24 + floor((GetCurServerTime() - TIMEBET) / 3600);
	local nItemIndex = GetGiveItemUnit(nCount)	
	local nBindState = GetItemBindState(nItemIndex)
	if (nCount == 1) then
		if (nBindState == -1 or nBindState >= nBindTime) then
			if (CalcEquiproomItemCount(4,1496,1, -1) >= 10) then
				local strItem = GetItemName(nItemIndex)
				SetItemBindState(nItemIndex, -0) ConsumeEquiproomItem(10,4,1496,1, -1)
				Msg2Player("��i hi�p v�a m� kh�a v�t ph�m trang b� th�nh c�ng")
			else
				Talk(1,"","M�i L�n M� Kh�a Ti�u Ph� 10 KNB!")
			end
		else
			Talk(1,"","V�t ph�m c�n m� kh�a ph�i l� v�t ph�m kh�a b�o hi�m!")
		end
	else
		Talk(1,"","M�i l�n ch� c� th� m� kh�a ���c m�t v�t ph�m!")
	end
end
function mokhoa1()
	if GetBoxLockState() >= 1 then
		Say("<color=yellow>Ng��i Mu�n X�a M� R��ng Tr�c Ti�p �� ��m B�o T�i S�n Y�u C�u: 300 Kim Nguy�n B�o",2,"��ng Ta L�m M�i L�i M� R��ng Ngay L�p T�c/xoamaruong","Tho�t/no")
	else
		Talk(1,"","<color=yellow>Ng��i Kh�ng C� M� R��ng Kh�ng Th� X�a")
	end
end

function xoamaruong()
	if CalcEquiproomItemCount(4,1496,1,1) >= 300 then
		GMCancleBoxPassword() Say("<color=fire>Ch�c M�ng Ng��i �� X�a M� R��ng Th�nh C�ng Vui L�ng ��t L�i M� R��ng M�i",2,"��t L�i M�t Kh�u/PassRuong","Th�i/No")
		ConsumeEquiproomItem(300,4,1496,1,-1)
	else
		Talk(1,"", "<color=red>Ng��i Kh�ng �� 300 Kim Nguy�n B�o Xin Ki�m Tra L�i...!<color>")
	end
end

function PassRuong()
OpenBox()
end

function kienthiet()
if CalcFreeItemCellCount() < 40 then
		return Talk(1,"","H�y S�p X�p L�i H�nh Trang")
	end
local tbAwardczc={
                    
            -- {szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,5067,1,0,0},nCount=10},

           -- {szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,5071,1,0,0},nCount=10},
             {szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,5069,1,0,0},nCount=10},

}
tbAwardTemplet:GiveAwardByList(tbAwardczc, "Ph�n Th��ng");
end
--===================================================
function doidiemtk1()
	AskClientForNumber("DaiTinhN9142",0,30000,"200 �i�m/1 T�i")
end
function DaiTinhN9142(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*100
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,3164,1,0,0},},"��",num)
 --    Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh tui even<color=red>L� Quan Ba L�ng Huy�n<color>  ")
WriteLogPro("dulieu/epdo/doicangkhon_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." C�ng Kh�n Li�n Hoa, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end
-------------------------------------------------
function tichluynap()
	dofile("script/global/g7vn/g7defaultdialog.lua")
local tbSay = 
{
"Ta Mu�n ��i Sang H�n Huy�t Long C�u/#TienHanhDoiSkillTrungSinh41(4956)",
"Ta Mu�n ��i Sang Thi�t Huy�t Chi�n Lang/#TienHanhDoiSkillTrungSinh41(4959)",
"Ta Mu�n ��i Sang Ng�n Gi�p Huy�n Tr�/#TienHanhDoiSkillTrungSinh41(4960)",
"Ta Mu�n ��i Sang T� B�t T��ng/#TienHanhDoiSkillTrungSinh41(4961)",
"Ta Mu�n ��i Sang M�c V�n Kim S�c/#TienHanhDoiSkillTrungSinh41(4962)",
"Ta Mu�n ��i Sang X�ch V� Kim S�c/#TienHanhDoiSkillTrungSinh41(4963)",
"Ta Mu�n ��i Sang Tuy�t V�c Ng�n H�n/#TienHanhDoiSkillTrungSinh41(4964)",
"Ta Mu�n ��i Sang Tuy�t V�c Kim Gi�c/#TienHanhDoiSkillTrungSinh41(4965)",
"Ta Mu�n ��i Sang Tuy�t V�c Chi�n H�n/#TienHanhDoiSkillTrungSinh41(4966)",
"Ta Mu�n ��i Sang Tuy�t V�c X�ch Gi�c/#TienHanhDoiSkillTrungSinh41(4967)",
"Ta Mu�n ��i Sang Tuy�t V� Ng�n S�c/#TienHanhDoiSkillTrungSinh41(4968)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n ���c ch�n 1 Lo�i Ng�a Napf, mu�n ch�n lo�i n�o ?, �i�m t�ch l�y b�n hi�n c� <color=red>"..GetTask(5122).." �i�m  ",getn(tbSay),tbSay)
return 1;	

end

function TienHanhDoiSkillTrungSinh41(num)
if  GetTask(3704) > 0 then
Talk(1,""," �� Nh�n Th��ng R�i")
return end
if (CalcFreeItemCellCount() < 3) then
Talk(1,""," H�y �� Tr�ng 3 cho trong ")
return end
	if (GetTask(5122) == 0) then
		Say("<color=green>Ng��i Kh�ng �� �i�u Ki�n Nh�n Th��ng\n<color=violet>M�c N�p 1000.000!<color>\n<color=orange>Ph�n Th��ng:<color>\n<color=yellow\t�i N�p Th� ��u Si�u Code\n<color>")
	return end
		if (GetTask(5122) >= 10) then
			if (CalcFreeItemCellCount() >= 20) then
				local tbAward = {
                                     {szName="Ng�a",tbProp={0,random(5262,5266)},nQuality=1,nCount=1},
                                     {szName="Ng�a",tbProp={0,random(5053,5054)},nQuality=1,nCount=1},

                                     {szName="Ng�a",tbProp={0,5114},nQuality=1,nCount=1},
                                     {szName="Ng�a",tbProp={0,5115},nQuality=1,nCount=1},
                                     {szName="Ng�a",tbProp={0,5116},nQuality=1,nCount=1},
                                     {szName="Ng�a",tbProp={0,5117},nQuality=1,nCount=1},
                                     {szName="Ng�a",tbProp={0,5118},nQuality=1,nCount=1},
                                      {szName="Ng�a",tbProp={0,num},nQuality=1,nCount=1},	
				}
				tbAwardTemplet:GiveAwardByList(tbAward,"�� Nh�n Ph�n Th��ng N�p L�n ��u Th�nh C�ng");SetTask(3704,1)
                            Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� Nh�n T�ch L�y N�p 1 Tri�u, Th�nh M�nh T��ng<color=red>L� Quan <color>  ")
                            WriteLogPro("dulieu/nganhang/QuaNapDauTichLuy.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." \n");
			else
				Talk(1,"","H�y �� Tr�ng 20 � R�i Nh�n Th��ng")
			end
	end
end












--=====================================
function doidiemrs()
local nHour = tonumber(GetLocalDate("%H%M"))
local nWeek	= tonumber(date("%w"))
 if nWeek == 1 or nWeek == 2 or nWeek == 3 or nWeek ==4 or nWeek == 5 or nWeek == 6 then
Talk(1, "", "T�nh N�ng Rs Shop T�ng Kim Ch� Cho Ph�p V�o Ch� Nh�t......:L�c 21h00 ��n 22h10") 
return 1; 
end 
local tiendong = 200
local ktra_tien = CalcEquiproomItemCount(4, 1496, 1, 1) ;

if (GetTask(5131) == 0)   then 
	Talk(1,""," Ng��i Ch�a �i Ch� shop t�ng kim m� ��i rs g�!")
return end
if ktra_tien < tiendong then
Talk(1,"","Kh�ng �� "..tiendong.." KNB l�m sao reset ��y!")
return end
if (GetTask(5131) >= 10)   then 
SetTask(5131,0)
SetTask(5132,0)
SetTask(5133,0)
SetTask(5134,0)
SetTask(5146,0)
SetTask(5349,0)
ConsumeEquiproomItem(tiendong,4,1496,1,1) ---  xoa xu
Talk(1,"","�� Reset Shop TK th�nh c�ng!")
AddGlobalNews("<color=green>Xin Ch�c M�ng <color=orange>"..myplayersex().." "..GetName().."<color> �� Reset Shop �i�m TK H�ng Tu�n...<color>")
WriteLogPro("dulieu/epdo/rsshop_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da rs shop t�ng kim\n");	
end
end
--end
---------------------------------------------------------------------------------------------------
function NhanQuaMungNamMoi()
if GetTask(3979) == 1 then
	Say("Ng��i ��  Nh�n qu� r�i c�n mu�n nh�n th�m, Th�t  th�m lam??") 
	return 0;
	end
local nDate = tonumber(date("%Y%m%d%H%M"))
if (nDate <= 202205230800) then
Say("��ng v�o l�c <color=yellow> 08h00 M�ng 23 Th�ng 05 n�m Nh�m D�n <color> m�i b�t ��u ch�nh th�c khai m�  Ch��ng Tr�nh Qu� T�ng.\n v� k�t th�c L�c 24h Ng�y 18 th�ng 04");
		return 1
end
local nDate = tonumber(date("%Y%m%d%H%M"))
if (nDate >= 202205232330) then
Say("Ch��ng Tr�nh �� K�t Th�c L�c <color=yellow> 23h30 Ng�y 23 Th�ng 05<color> ");
		return 1
end
if GetLevel() < 180 then
	Say("��ng c�p y�u c�u �� nh�n th��ng l� tr�n 150, B�n h�y Mau C� G�ng Nh�")
return 1 
end
local n_solan = GetTask(5969);
	if n_solan < 5 then
	Say("Ng��i ch�a c�i l�o 5 M� ��i L�i Nh�n Th��ng Sao, Th�t H�m H�???") 
	return 0;
	end	
if (CountFreeRoomByWH(4,2,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x10 � tr�ng");
		return 1;
	end

	local tbAward100k ={

	      {szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,40998,1,0,0},nCount=30},
		}
                       SetTask(3002,GetTask(3002)+1000000)
			tbAwardTemplet:GiveAwardByList(tbAward100k,"Ph�n Th��ng B� S� C�")
               SetTask(3979,1) 
		Msg2SubWorld("Ch�c M�ng <color=green>"..GetName().." <color>�� Nh�n Qu� Ch�c m�ng vi�t Nam V� ��ch  T�i L� Quan Th�nh C�ng. <color=yellow> L�u � Ph�i C�i L�o 5 C�p 180 M�i ���c Nh�n")	
               WriteLogPro("dulieu/quachaomung.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nh�n Qu� Ch�o M�ng ��i Tuy�n Vi�t Nam Chi�n Th�ng\n");	
	end


function khoadovinhvien()
	szDescription = format("Ch� b� t�ng m�n 1 th�i nh�\n!!.")
	GiveItemUI("Nguy�n Li�u C�n C�", szDescription, "Run_khoadovinhvien", "no", 1)

end

function Run_khoadovinhvien(nCount)
if nCount == 0 or nCount >1 then
		Say("Ng��i d�m g�t ta �! Th�t to gan.")
		return 1;
	end
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		SetItemBindState(nItemIndex, -2)
		end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MuaXuKhoa()
if (CountFreeRoomByWH(1,2,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 1x2 � tr�ng");
		return 1;
	end



			if CalcEquiproomItemCount(4,417,1,-1)>=10 then 
			if 	ConsumeEquiproomItem(10,4,417,1,-1)>0 then
					tbAwardTemplet:GiveAwardByList({{szName = "Xu Kh�a",tbProp={6,1,4893,1,1},nCount=50,nBindState=-2},} ,"test", 1);--Xu Khoa
				WriteLogPro("dulieu/muaxukhoa.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua 50 xu khoa\n");		
			end
				else 
				Talk(1,"no","<color=red>B�n kh�ng �� 10 Xu.")	
				end

end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MuaMacBacTruyenTongLenh()
if (CountFreeRoomByWH(1,2,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 1x2 � tr�ng");
		return 1;
	end

		if CalcEquiproomItemCount(4,417,1,-1)>=10 then 
			if 	ConsumeEquiproomItem(10,4,417,1,-1)>0 then
			tbAwardTemplet:GiveAwardByList({{szName = "M�c B�c Truy�n T�ng L�nh",tbProp={6,1,1448,1,1},nCount=1,nExpiredTime=60*24*30,},} ,"test", 1);--M�c B�c Truy�n T�ng L�nh
				WriteLogPro("dulieu/muamacbacok.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua mac bac 10 xu\n");		
				Msg2SubWorld("<color=green>Xin Ch�c M�ng<color> "..GetName().." <color=green> �� mua M�c B�c Truy�n T�ng L�nh v�i gi� 10 xu t�i L� Quan")
			end
				else 
				Talk(1,"no","<color=red>B�n kh�ng �� 10 Xu.")	
				end
end
-----------------------------------------------------------------------------
function NhanQua195Cl2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=5,nBindState=-2,},} ,"test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a Nguy�n Li�u",tbProp={6,1,4913,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
SetTask(5995,1)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 195 cl2\n");	
end

function NhanQua200Cl2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ng�c Linh H�n",tbProp={6,1,4912,1,1},nCount=5,nBindState=-2,},} ,"test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "Ng�c C��ng H�a Nguy�n Li�u",tbProp={6,1,4913,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ng�c Linh H�n
SetTask(5995,2)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 200 cl2\n");	
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanQuaPhuNuVietNam()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

	if (GetTask(3906) == 0) or (GetTask(3906) == 1) or (GetTask(3906) == 2)then

		tbAwardTemplet:GiveAwardByList({{szName = "Xu kh�a",tbProp={6,1,4893,1,1},nCount=100,nBindState = -2},}, "test", 1);
		Msg2Player("Ch�c M�ng "..myplayersex().." �� Nh�n Qu� 100 Xu Kh�a Th�nh C�ng")
			WriteLogPro("dulieu/nhandenbu_2010.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan Qua 20-10\n");		
		SetTask(3906,3) else Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Kh�ng Th� Nh�n N�a")
	
	end
end
function NhanDenBuSuCoRotMang()
if (CountFreeRoomByWH(4,6,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x6 � tr�ng");
		return 1;
	end
	local tbAward100k ={

		{szName="B�o R��ng Tinh S��n Li�n",tbProp={6,1,4696,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nBindState = -2},
		{szName="B�o R��ng Tinh S��n Kh�i",tbProp={6,1,4697,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nBindState = -2},
		{szName="B�o R��ng Tinh S��n Th��ng Gi�i",tbProp={6,1,4698,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nBindState = -2},
		{szName="B�o R��ng Tinh S��n Uy�n",tbProp={6,1,4699,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nBindState = -2},
		{szName="B�o R��ng Tinh S��n Y�u ��i",tbProp={6,1,4700,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nBindState = -2},
		{szName="B�o R��ng Tinh S��n H�i",tbProp={6,1,4703,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nBindState = -2},
		{szName="B�o R��ng Tinh S��n B�i",tbProp={6,1,4704,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nBindState = -2},
		{szName="B�o R��ng Tinh S��ng H� Gi�i",tbProp={6,1,4705,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
		}
	if GetTask(5998) == 0 or GetTask(5998)==1 or GetTask(5998)==2 or GetTask(5998)==3 then

	tbAwardTemplet:GiveAwardByList(tbAward100k,"Ph�n Th��ng B� S� C�")
--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 900e9}}, "test", 1); 
--		Msg2Player("Ch�c M�ng "..myplayersex().." �� Nh�n Kinh Nghi�m Th�nh C�ng")
			WriteLogPro("dulieu/nhandenbu_matmang.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 900 Ty exp\n");		
		SetTask(5998,4) else Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Kh�ng Th� Nh�n N�a")
	
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NhanDenBuSuCo()
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 3x4 � tr�ng");
		return 1;
	end
	local tbAward100k ={

		{szName="300 Xu kh�a",tbProp={6,1,4893,1,0,0},nCount=300,nBindState = -2,nExpiredTime=60*24*30},
		{szName="Kim B�i L� H�p",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
	{szName="T�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*30},
	{szName="Huy�t chi�n l� bao(��i)",tbProp={6,1,4898,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
		
		}
	if GetTask(5999) <=20 then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"Ph�n Th��ng B� S� C�")
	--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 200e9}}, "test", 1);
		Msg2Player("Ch�c M�ng "..myplayersex().." �� Nh�n Th��ng Th�nh C�ng")
		SetTask(5999,21) else Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Kh�ng Th� Nh�n N�a")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NhanDenBuSuCo_2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x4 � tr�ng");
		return 1;
	end

	local tbAward100k ={

	--	{szName="T�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2},
		{szName="300 Xu kh�a",tbProp={6,1,4893,1,0,0},nCount=300,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="Kim B�i L� H�p",tbProp={6,1,4874,1,0,0},nCount=3,nBindState = -2,nExpiredTime=60*24*7},
		--{szName="Kim B�i L� H�p",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
--		{szName="H�n Huy�t Long C�u",tbProp={0,6731},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*2},
--		{szName="Si�u Quang",tbProp={0,6732},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*2},


		}
	if (GetTask(5997) <=5) then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"Ph�n Th��ng B� S� C�")

		Msg2SubWorld("Ch�c M�ng <color=green>"..GetName().." <color>�� Nh�n Qu� 300 Xu Kh�a Th�nh C�ng")
		SetTask(5997,6) else Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Kh�ng Th� Nh�n N�a")
	end
end
function ShopTienXuLeQuan()
	local szTitle = "<npc><color=gold> GM_"..GetName().." <color>ch�o m�ng b�n ��n v�i h� th�ng <color=yellow>V� L�m Truy�n K�<color> - <color=green>V� L�m Mi�n Ph�<color> 4 Acc/1PC\n"
	local Opt = 
	{	
		{"Mua R��ng Tinh S��ng (10xu).", MuaRuongTinhSuong},
		{"K�t th�c ��i tho�i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)

end
function MuaRuongTinhSuong()
local tbSay1 = {
"B�o R��ng Tinh S��ng H�ng Li�n/#addruongtinhsuong(4504,1,10)",
"B�o R��ng Tinh S��ng Kh�i/#addruongtinhsuong(4505,2,10)",
"B�o R��ng Tinh S��ng Th��ng Gi�i/#addruongtinhsuong(4506,3,10)",
"B�o R��ng Tinh S��ng H� Uy�n/#addruongtinhsuong(4507,4,10)",
"B�o R��ng Tinh S��ng Y�u ��i/#addruongtinhsuong(4508,5,10)",
--"B�o R��ng Tinh S��ng Kh�i(150xu)/#addruongtinhsuong(4509,6,150)",
--"B�o R��ng Tinh S��ng V� Kh�(200xu)/#addruongtinhsuong(4510,7,200)",
"B�o R��ng Tinh S��ng H�i/#addruongtinhsuong(4511,8,10)",
"B�o R��ng Tinh S��ng B�i/#addruongtinhsuong(4512,9,10)",
"B�o R��ng Tinh S��ng H� Gi�i/#addruongtinhsuong(4513,10,10)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mua G� N�o",getn(tbSay1),tbSay1)

end

function addruongtinhsuong(id,para,xu)
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 6 � tr�ng!")
		return
	end
	
local tbAward100k = {

		{szName="B�o R��ng Tinh S��ng",tbProp={6,1,id,1,0,0},nCount=1,tbParam={para,0,0,0,0,0}},
		
		}
		if CalcEquiproomItemCount(4,417,1,-1)>=xu then 
			tbAwardTemplet:GiveAwardByList(tbAward100k,"Ph�n Th��ng ��t M�c 100 Ng�n")
			ConsumeEquiproomItem(xu,4,417,1,-1);
				else 
				Talk(1,"no","<color=red>B�n kh�ng �� "..xu.." Xu.")	
				end

end
function LoadTabFile(szFile)
	if TabFile_Load(szFile, szFile) ~= 1 then
		print(format("%s open fail", szFile))
		return 
	end
	local nRowCount = TabFile_GetRowCount(szFile) - 1
	local tb = {}
	for i=1, nRowCount do
		for j=1, nRowCount do
			local nValue = TabFile_GetCell(szFile, i+1 , j+1)
			tb[i] = tb[i] or {}
			tb[i][j] = nValue
		end
	end
	TabFile_UnLoad(szFile)
	return tb
end


function G7VNAppendFile(url, str)
	local fs_log = openfile(url, "a");
	write(fs_log, ""..str.."");
	closefile(fs_log);
end;


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function phanthuongcode()
	local tbOpt =
	{
		{"Nh�p GirtCode",QuaTanThuChe},
		{"Tho�t",}
	}
	CreateNewSayEx("<npc><color=yellow>Ph�n Th��ng GirtCode D�nh Cho Ng��i Ch�i:<color>\n", tbOpt)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function QuaTanThuChe()

	if GetTask(Task_GiftCode) == 0 then
		AskClientForString("CHECKCODE","",1,99999999999,"Nh�p GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Ho�c Kh�ng �� Ch� Tr�ng Kh�ng Th� Nh�n N�a")
	end
end
function CHECKCODE(nVar)
GiftTanThu = {
	{"AEHGFUKNSYGN",1},
	{'volam1acc',1},
}
	local tbAwardgift1 = {
		{szName = "Vo lam mat tich", tbProp = {6,1,22,1,0,0}, nCount = 5, nBindState = -2},
		{szName = "Tay tuy kinh", tbProp = {6,1,26,1,0,0}, nCount = 5, nBindState = -2},
		{szName = "Nhat Ky Can Khon Phu 1 ngay", tbProp = {6,1,4362,1,0,0}, nCount = 1, nBindState = -2},
	--	{szName = "Tay tuy kinh", tbProp = {0,10,6,10,0,0,0}, nCount = 1, nBindState = -2,nExpiredTime=60*24*7},
	
	}
if CalcFreeItemCellCount() >= 20 then
	for i = 1,getn(GiftTanThu) do
		if nVar == GiftTanThu[i][1] then
			SetTask(Task_GiftCode,1) tbAwardTemplet:GiveAwardByList(tbAwardgift1,"Ph�n Th��ng GiftCode")	
			Msg2SubWorld("<color=green>Xin Ch�c M�ng<color> "..GetName().." <color=green> �� Nh�n Th�nh C�ng Gift Code")
			return
		end
		--Talk(1,"","<bclr=violet>"..myplayersex().." Nh�p Th�ng Tin Kh�ng Ch�nh X�c")
	end
	else Talk(1,"","<bclr=violet>"..myplayersex().." �� R��ng Tr�ng 20 nh�")
	end
end

--------------------------------------------code-------------------
function server_setdata(filename,szsect,szkey,szvalue)
	IniFile_SetData(filename, szsect, szkey, szvalue)	
end

function server_getdata(filename,szsect,szkey)
	return IniFile_GetData(filename, szsect, szkey)
end

function server_savedata(filename)
	IniFile_Save(filename,filename)
end

function server_loadfile(filename)
	if (IniFile_Load(filename,filename) == 0) then 
			File_Create(filename)
			IniFile_Load(filename, filename)
	end
end 
--------------------------------------------code-------------------
tbKandy = {}
tbKandy.szFile = "\\dulieu\\checkcodenewvip.dat"
server_loadfile(tbKandy.szFile)
CodeVipShare_che = {
{'volamfeevip',1},

}
function phanthuongcodenew()
Msg2Player("---"..GetTask(4102).."----------------------------"); 
	if GetTask(4102) == 0  then
		AskClientForString("CODEVIPLIKE","",1,99999999999,"Nh�p GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Ho�c Kh�ng �� Ch� Tr�ng Kh�ng Th� Nh�n N�a1")
		
	end
end
function CODEVIPLIKE(nVar)
	local tbAwardgift = {

		
			{szName="X�ch Long C�u Truy�n Thuy�t",tbProp={0,4951},nCount=1,nQuality=1,nExpiredTime=7*24*60,nBindState = -2},
			{szName="T�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
			{szName="M�t N� Chi�n Tr��ng thanh Gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*7,nBindState = -2},	
			{szName="Nh�t K� C�n Kh�n Ph�", tbProp={6,1,2126,1,0,0},nCount = 1,nExpiredTime=24*60,nBindState = -2},
		{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount = 50,nExpiredTime=7*24*60,nBindState = -2},
		{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount = 50,nExpiredTime=7*24*60,nBindState = -2},
		{szName="Chi�n C�",tbProp={6,1,156,1,0,0},nCount = 50,nExpiredTime=7*24*60,nBindState = -2},
		
			{szName="Ng�n L��ng",nJxb=20000,nCount=1},
		
	}
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if CalcFreeItemCellCount() >= 30 then
		for k=1,getn(CodeVipShare_che) do
			if nVar == CodeVipShare_che[k][1] then
				SetTask(4102, 1) 
				SetTask(3002, GetTask(3002) + 150000) --150k diem huyet chienn
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				Msg2Player("Nh�n Th��ng <color=yellow>GIFTCODE <color> Th�nh C�ng")
				Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> Nh�n Th�nh C�ng GiftCode VIP Like Share B�i Vi�t")
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh�ng �� 30 � Tr�ng")
	end
	if nillVar == 0 then
		return Say("M� gift ng��i v�a nh�p v�o kh�ng t�n t�i trong h� th�ng!")
	end;
end;
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
tbKandy = {}
tbKandy.szFile = "\\dulieu\\checkcodenewmem.dat"
server_loadfile(tbKandy.szFile)
CodeTanThuGift = {
	{'volamsieunhan',1},
	
}
function QuaTanThuongHangNgay()
if GetTask(3901) == 0  then
		AskClientForString("CODECHECKLQ","",1,99999999999,"Nh�p GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Ho�c Kh�ng �� Ch� Tr�ng Kh�ng Th� Nh�n N�a1")
		
	end
end
function CODECHECKLQ(nVar)
	local tbAwardgift = {

	        {szName="T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=15,nBindState = -2},
	        {szName="V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=15,nBindState = -2},
	        {szName="T� M�u L�nh",tbProp={6,1,1427,1,0,0},nCount=1,nBindState = -2},
		--{szName="Thanh Hanh Phu", tbProp={6,1,1266,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
		{szName="Tho Dia Phu", tbProp={6,1,438,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
		--{szName="H�i thi�n t�i t�o l� bao", tbProp={6,1,4369,1,0,0},nCount = 1,nExpiredTime=24*60},	
               --{szName="H�i thi�n t�i t�o l� bao", tbProp={6,1,4345,1,0,0},nCount = 1,nExpiredTime=24*60},	
		
	}
        local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK_thuong",nVar);
	local nillVar = 0
	if CalcFreeItemCellCount() >= 40 then
		for k=1,getn(CodeTanThuGift) do
			if nVar == CodeTanThuGift[k][1] then
				SetTask(3901, 1) 
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				Msg2Player("Nh�n Th��ng <color=yellow>GIFTCODE <color> Th�nh C�ng")
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh�ng �� 40 � Tr�ng")
	end
	if nillVar == 0 then
		return Say("M� gift ng��i v�a nh�p v�o kh�ng t�n t�i trong h� th�ng!")
	end;
end;
-----------------------------------------------------------------------------------------------------------
function moruong()
	if CalcEquiproomItemCount(4,417,1,-1)>=40 then 
		ConsumeEquiproomItem(40,4,417,1,-1);
		OpenStoreBox(1);
		OpenStoreBox(2);
		OpenStoreBox(3);
		SaveNow();
	else
		Talk(1,"no","<color=red>B�n kh�ng �� 40 Xu.")	
	end
end


function MenuChuyen()
AddItem(6,1,1670,1,1,0,0)
ChuyenPhaiMenu()
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

function nhanvonglh()
	local th = GetSkillState(1546)
	if th >= 1 then Say("B�n �ang c� v�ng s�ng Th��ng H�ng r�i") return end
	local lh = GetSkillState(1547)
	if lh >= 1 then Say("B�n �ang c� v�ng s�ng Lang H�o r�i") return end
	local tm = GetSkillState(1532)
	if tm >= 1 then Say("B�n �ang c� v�ng s�ng Tri�u m�nh r�i") return end


	if GetTask(4100) == 0   then
			local ntime = 18*60*60*24*6
			local n_title = 255	
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
			PlayerFunLib:AddSkillState(1547,1,3,18*60*60*24*6,1)
			SetTask(4100,1)
	
	else
		Say("B�n �� nh�n r�i")
		return
	end
end

tbKandy_sp = {}
tbKandy_sp.szFile = "\\dulieu\\checkcodenew2.dat"
server_loadfile(tbKandy_sp.szFile)

function phanthuongcodenewsuper()
--Msg2Player("---"..GetTask(3905).."----------------------------"); 
	if GetTask(3906) == 0 or GetTask(3906) == 1 or GetTask(3906) == 2 or GetTask(3906) == 3 then
		AskClientForString("CODEVIPLIKE_SP","",1,99999999999,"Nh�p GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� Nh�n Th��ng R�i Ho�c Kh�ng �� Ch� Tr�ng Kh�ng Th� Nh�n N�a11")
	end
end
function CODEVIPLIKE_SP(nVar)

	local IsClone = server_getdata(tbKandy_sp.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M� GIFTCODE Ch� Nh�p T�i �a 1 L�n Vui L�ng Li�n H� GM ��\n���c Gi�i Quy�t<bclr>")
		end
	if CalcFreeItemCellCount() >= 10 then
		for k=1,getn(CodeVipShare_sp) do
			if nVar == CodeVipShare_sp[k][1] then

				SetTask(3906, 4) 
			--	tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
			tbAwardTemplet:GiveAwardByList({{szName = "Xu kh�a",tbProp={6,1,4893,1,1},nCount=100,nBindState = -2},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "Kim B�i L� H�p",tbProp={6,1,4874,1,1},nCount=50,nBindState = -2,nExpiredTime=15*24*60},}, "test", 1);
			PlayerFunLib:AddSkillState(1531,1,3,18*60*60*24*7,1)
				Msg2Player("Nh�n Th��ng <color=yellow>GIFTCODE <color> Th�nh C�ng")
				Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=yellow> Nh�n Th�nh C�ng GiftCode Super VIP Like Share B�i Vi�t")
				server_setdata(tbKandy_sp.szFile,"GIFT_CODE_CHECK",nVar,"1");	
			server_savedata(tbKandy_sp.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh�ng �� 10 � Tr�ng")
	end
	if nillVar == 0 then
		return Say("M� gift ng��i v�a nh�p v�o kh�ng t�n t�i trong h� th�ng!")
	end;
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function doidiemtk()
	local szTitle = "<npc>Ng��i c�n l�y g�? H�y ch�n �i n�o !"
	if (GetTask(5131) >= 2000) then
		Talk(1,"","M�i Tu�n 1 Nh�n V�t Ch� ���c ��i T�i �a 2000 L�n")
		return
	end
         local tbOpt =
	{
                
		--{"Anh H�o L�nh(500.000 �i�m = 1vien)",doitinhngoc2},
		--{"L�y anh hao th�ch(2000 diem = 1 c�i)",doitinhngocz5},
		{"L�y Tinh Ng�c(80 diem = 1vien)",doitinhngoc},
		--{"Manh Vo FF(2000 �i�m = 1vien)",doitinhngoc1},
                {"��i 10 ty( d��i c�i L�o 1(600k �i�m = 5 ty)",DoiKinhNghiem},
                {"��i 500 TR exp(Tr�n c�i l�o 1)",DoiKinhNghiem},
		{"Tho�t"},
	}

	CreateNewSayEx(szTitle, tbOpt)

end
function doitinhngocz5()
if (GetTask(5349) >= 300) then
	Talk(1,"","M�i Tu�n 1 Nh�n V�t Ch� ���c ��i T�i �a 300 c�i")
		return
	end;
	doitinzzzerrerqq2()
end
function doitinzzzerrerqq2()
	AskClientForNumber("DaiTinhN914",1,300,"2000Diem/1 c�i")
end
function DaiTinhN914(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*2000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
              SetTask(5131,GetTask(5131)+1) 
              SetTask(5349,GetTask(5349)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,5448,1,0,0},},"��",num)
     Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh Anh H�o Th�ch <color=red>L� Quan Ba L�ng Huy�n<color>  ")
WriteLogPro("dulieu/epdo/doiEven_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." Anh H�o Th�ch, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end

function doitinhngoc()
if (GetTask(5135) >= 30000) then
	Talk(1,"","M�i Tu�n 1 Nh�n V�t Ch� ���c ��i T�i �a 30000 c�i")
		return
	end;
	doitinzzzerrer2()
end
function doitinzzzerrer2()
	AskClientForNumber("DaiTinhN94",1,3000,"80Diem/1 c�i")
end
function DaiTinhN94(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*80
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
              SetTask(5131,GetTask(5131)+1) 
              SetTask(5135,GetTask(5135)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,4807,1,0,0},},"��",num)
     Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh Tinh Ng�c <color=red>L� Quan <color>  ")
WriteLogPro("dulieu/epdo/doitinhngoc_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." Tinh Ng�c, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end
function doitinhngoc1()
if (GetTask(5132) >= 1000) then
	Talk(1,"","M�i Tu�n 1 Nh�n V�t Ch� ���c ��i T�i �a 1000 c�i")
		return
	end;
	doitinhrzz2()
end
function doitinhrzz2()
	AskClientForNumber("DaiTinhN95",1,1000,"2000Diem/1 c�i")
end

function DaiTinhN95(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*2000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
            SetTask(5131,GetTask(5131)+1) 
           SetTask(5132,GetTask(5132)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,30293,1,0,0},},"��",num)
     Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh Manh Vo <color=red>L� Quan Ba L�ng Huy�n<color>  ")
WriteLogPro("dulieu/epdo/doiManh Vo_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi B�ch Ngh� Tinh Ng�c "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.."Manh Vo, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end

function doitinhngoc2()
if (GetTask(5133) >=10) then
	Talk(1,"","M�i Tu�n 1 Nh�n V�t Ch� ���c ��i T�i �a 10 c�i")
		return
	end;
	doitinhzz2()
end

function doitinhzz2()
	AskClientForNumber("DaiTinhN96",1,10,"500.000Diem/1 c�i")
end

function DaiTinhN96(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*500000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
             SetTask(5131,GetTask(5131)+1) 
             SetTask(5133,GetTask(5133)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,5443,1,0,0},},"��",num)
     Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh"..num.."  Anh H�o L�nh <color=red>L� Quan Ba L�ng Huy�n<color>  ")
WriteLogPro("dulieu/epdo/doianhhaolenh_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi anh hao lenh "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." Anh H�o L�nh, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end

function DoiKinhNghiem()
	CreateNewSayEx("Xin Ch�o Ng��i T�m Ta C� Vi�c G�", {{"Ta Mu�n ��i 600k �i�m T�ng Kim",DoiKinhNghiem1},{"H�y B�"}})
end

function DoiKinhNghiem1()
if (GetTask(5134) >= 10) then
	Talk(1,"","M�i Tu�n 1 Nh�n V�t Ch� ���c ��i T�i �a 10 Lan")
		return
	end;	
local nTransLife = ST_GetTransLifeCount()
local nDiemTongKim = GetTask(747)
	if (GetTask(5969) < 1) then
		if (nDiemTongKim >= 600000) then
		tl_addPlayerExp(5000000000) SetTask(747,nDiemTongKim-600000);   
               SetTask(5134,GetTask(5134)+1) 
                SetTask(5131,GetTask(5131)+1)
                 WriteLogPro("dulieu/epdo/doicap_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 cap  cai _ diem tong kim con "..GetTask(747).." diem\n");	
		else
			Say("Ng��i Kh�ng �� 600.000 �i�m T�ng Kim")
		end
	else
		if (nDiemTongKim >= 600000) then
			tl_addPlayerExp(500000000) SetTask(747,nDiemTongKim-600000); 
                         SetTask(5134,GetTask(5134)+1) 
                        SetTask(5131,GetTask(5131)+1) 
WriteLogPro("dulieu/epdo/doiexp_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 ty exp cai _ diem tong kim con "..GetTask(747).." diem\n");	
		else
			Say("Ng��i Kh�ng �� 600.000 �i�m T�ng Kim")
		end
	end
end
function doidiemepdo()
	local szTitle = "<npc>Ng��i c�n l�y g�? H�y ch�n �i n�o !"
         local tbOpt =
	{
		{"��i Ng�c Quy Nguy�n Thi�n M�nh",doitinhngocx12},
                {"��i Thi�n s�n Ki�m ��nh Thi�n M�nh",doitinhngocx13},
		{"Tho�t"},
	}

	CreateNewSayEx(szTitle, tbOpt)

end
function doitinhngocx12()
	AskClientForNumber("DaiTinhN878",0,30,"10000 �i�m/1 c�i")
end
function DaiTinhN878(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*10000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,30149,1,0,0},},"��",num)
     Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh Ng�c Quy Nguy�n Thi�n M�nh<color=red>L� Quan Ba L�ng Huy�n<color>  ")
WriteLogPro("dulieu/epdo/doiquynguyen_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." Ng�c Quy Nguy�n Thi�n M�nh, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end
function doitinhngocx13()
	AskClientForNumber("DaiTinhN8781",0,30,"5000 �i�m/1 c�i")
end
function DaiTinhN8781(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*5000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,30150,1,0,0},},"��",num)
     Msg2SubWorld("<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� ��i �i�m T�ng Kim Th�nh Thi�n s�n Ki�m ��nh Thi�n M�nh<color=red>L� Quan Ba L�ng Huy�n<color>  ")
WriteLogPro("dulieu/epdo/doikiemdinh_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng��i Mu�n ��i "..num.." Thi�n s�n Ki�m ��nh Thi�n M�nh, C�n Thi�u "..tbTinhNgoc-nTinhNgoc.." �i�m T�ng Kim")
	end
end