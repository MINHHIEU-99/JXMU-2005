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
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
function main()	
	dofile("script/global/g7vn/g7defaultdialog.lua")
	dofile("data/codevip.lua")
	dofile("data/codesupervip.lua")
	local szTitle = "<npc><color=gold> GM_"..GetName().." <color>chµo mõng b¹n ®Õn víi hÖ thèng <color=yellow>Vâ L©m TruyÒn Kú<color> - <color=green>Vâ L©m MiÔn Phó<color>\nCode T©n thñ<color=green>:volamsieunhan<color>"
	local Opt = 
	{
      {"NhËn §çi Quµ TÝch §iÓm Liªn §Êu ", liendau},
     -- {"NhËn §çi mèc n¹p cho d©n cµy ", doidiemvip},
      -- {"NhËn Th­ëng  Viet Nam Win",NhanQuaMungNamMoi},
       --  {"Më Khãa VÜnh ViÔn ", MoKhoaNhanh},	
       -- {"Xãa Pass r­¬ng ", mokhoa1},
	--{"NhËn Th­ëng TÝch Lòy N¹p 1 TriÖu", tichluynap},
       --{"reset shop tèng kim ®Ó mua l¹i", doidiemrs},
	--{"Dïng §iÓm TK Mua Bé §çi Trang BÞ Thiªn MÖnh", doidiemepdo},
	--{"Dïng §iÓm TK Mua Tói Even ", doidiemtk1},
	--{"§i Chî B»ng §iÓm Tèng Kim", doidiemtk},
        --{"NhËn Quµ Th­ëng Dua top even", thuongtop_tongkim},
	{"NhËn KiÕn ThiÕt", kienthiet},
	{"Më réng 4 r­¬ng (40 xu) ", moruong},
	{"Code T©n thñ(volamsieunhan)", QuaTanThuongHangNgay},
	{"Khãa §å VÜnh ViÔn", khoadovinhvien},
	{"KÕt thóc ®èi tho¹i. ",End}
	}

	CreateNewSayEx(szTitle,Opt)

end
---------------------------
function liendau()
	local szTitle = "<npc>.<enter><color=yellow>§¹i hiÖp §ang Cã <bclr=red>"..GetTask(2501).."<bclr>  ®iÓm liªn ®Êu\n<bclr=violet>L­u ý ChØ NhËn Mèc Cao NhÊt\n<color=green>note: sau khi nhËn mèc toµn bé ®iÓm sÏ bÞ xãa\n<bclr=red>48 TrËn (480 ®iÓm vinh dù) NhËn 500 KNB\n40 TrËn (400 ®iÓm vinh dù) NhËn 400 knb\n30 trËn (300 ®iÓm vinh dù) nhËn 300 knb\n10 trËn (100 ®iÓm vinh dù) 30knb <bclr>!"
	local tbOpt =
	{
             {"NhËn Th­ëng Th¾ng 48 TrËn(480 ®iÓm vinh dù)",BaoRuong8Ngay},
             {"NhËn Th­ëng Th¾ng 40 TrËn(400 ®iÓm vinh dù)",BaoRuong9Ngay},
             {"NhËn Th­ëng Th¾ng 30 TrËn(300 ®iÓm vinh dù)",BaoRuong10Ngay},
             {"Quµ Tham Gia Th¾ng Trªn 10 TrËn(100 ®iÓm vinh dù)",BaoRuong11Ngay},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	


end
function BaoRuong8Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 480) then
		Say("Ta C­êi Chª Nh÷ng KÎ Kh«ng Cã §ñ 48 TrËn Liªn §Êu")
		return
	end
	SetTask(2501,GetTask(2501)- 480)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=500},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_48.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>§· NhËn Th­ëng Th¾ng 48 trËn<color> §¹t Th­ëng <color=red>500 kim nguyªn b¶o<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
     Msg2SubWorld("<color=green>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=green> §· NhËn Th­ëng Th¾ng Liªn §Êu 48 TrËn Víi TiÒn Th­ëng Lµ 500 kim Nguyªn B¶o,  ThËt Lµ NÓ §¹i Cao Thñ <color> "..GetName().." <color=green> ThËt Lµ Cham ChØ Cµy ")
end
-----------------------
function BaoRuong9Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 400) then
		Say("Ta C­êi Chª Nh÷ng KÎ Kh«ng Cã §ñ 40 TrËn Liªn §Êu")
		return
	end
	SetTask(2501,GetTask(2501)- 400)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=400},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_40.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>§· NhËn Th­ëng Th¾ng 40 trËn<color> §¹t Th­ëng <color=red>400 kim nguyªn b¶o<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
     Msg2SubWorld("<color=green>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=green> §· NhËn Th­ëng Th¾ng Liªn §Êu 40 TrËn Víi TiÒn Th­ëng Lµ 400 kim Nguyªn B¶o, ThËt Lµ NÓ §¹i Cao Thñ <color> "..GetName().." <color=green> ThËt Lµ Cham ChØ Cµy ")
end
-----------------
function BaoRuong10Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 300) then
		Say("Ta C­êi Chª Nh÷ng KÎ Kh«ng Cã §ñ 30 TrËn Liªn §Êu")
		return
	end
	SetTask(2501,GetTask(2501)- 300)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=300},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_30.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>§· NhËn Th­ëng Th¾ng 30 trËn<color> §¹t Th­ëng <color=red>300 kim nguyªn b¶o<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
     Msg2SubWorld("<color=green>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=green> §· NhËn Th­ëng Th¾ng Liªn §Êu 30 TrËn Víi TiÒn Th­ëng Lµ 300 kim Nguyªn B¶o,ThËt Lµ NÓ §¹i Cao Thñ <color> "..GetName().." <color=green> ThËt Lµ Cham ChØ Cµy ")
end
------------------------------
function BaoRuong11Ngay()
local PlayerPoint = 2501
local nCurTD1 = GetTask(PlayerPoint)
	if (nCurTD1 < 100) then
		Say("Ta C­êi Chª Nh÷ng KÎ Kh«ng Cã §ñ 10 TrËn Liªn §Êu")
		return
	end
	SetTask(2501,GetTask(2501)- 100)
       tbAwardTemplet:GiveAwardByList({tbProp={4,1496,1,1,0,0},nCount=30},1)

        WriteLogPro("dulieu/hoason/doidiemliendau_10.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(2501).." diem   \n");
	Msg2Player("<color=green>§· NhËn Th­ëng Th¾ng 10 trËn<color> §¹t Th­ëng <color=red>30 kim nguyªn b¶o<color> thµnh c«ng. Xin kh¸ch quan kiÓm tra l¹i!", 0)
    Msg2SubWorld("<color=green>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=green> §· NhËn Th­ëng Th¾ng Liªn §Êu 10 TrËn Víi TiÒn Th­ëng Lµ 30 kim Nguyªn B¶o, ThËt Lµ NÓ §¹i Cao Thñ <color> "..GetName().." <color=green> ThËt Lµ Cham ChØ Cµy ")
end

------------------
function doidiemvip()
	local szTitle = "<npc>.<enter><color=yellow>Vâ L©m TruyÒn Kú<color><enter><color=red>vâ l©m thiªn h¹<color>.<enter>Hoan nghªnh c¸c anh hïng hµo kiÖt...\n§iÓm §çi Mèc<bclr=blue>: "..GetTask(5138).." §iÓm <bclr>!"
	local tbOpt =
	{
             {"§çi Mèc N¹p 1 TriÖu",NhiemVuSatThu1},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	


end
function NhiemVuSatThu1()
if  GetTask(3703) > 0 then
Talk(1,""," §· NhËn Th­ëng vip 1 Råi")
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
		  tbAwardTemplet:GiveAwardByList(tbAwaZrd, "PhÇn th­ëng Tiªu DiÖt Bos §¹i")
	SetTask(5138,GetTask(5138)- 2000)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." <color=green>§· NhËn Th­ëng Mèc N¹p Cho Ng­êi Cµy, ThÊt §¸ng Kh©m Phôc<color>")
WriteLogPro("dulieu/doimoc1trchodancay.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t contong diem :"..GetTask(5138).." diem   \n");

	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· §¹t <color=red>"..GetTask(5138).."/2000<color> §iÓm ®çi Mèc N¹p 1 triÖu...!<color>")
	end
end	
---------------------------------------------------------------Më Khãa Nhanh------------------------------------------------------------------------------------
function MoKhoaNhanh()
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
	GiveItemUI("Më Khãa B¶o HiÓm", "§¹i hiÖp h·y cÈn thËn trong viÖc më khãa b¶o hiÓm!", "MoKhoaBaoHiem", "onCancel", 1);
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
				Msg2Player("§¹i hiÖp võa më khãa vËt phÈm trang bÞ thµnh c«ng")
			else
				Talk(1,"","Mçi LÇn Më Khãa Tiªu PhÝ 10 KNB!")
			end
		else
			Talk(1,"","VËt phÈm cÇn më khãa ph¶i lµ vËt phÈm khãa b¶o hiÓm!")
		end
	else
		Talk(1,"","Mçi lÇn chØ cã thÓ më khãa ®­îc mét vËt phÈm!")
	end
end
function mokhoa1()
	if GetBoxLockState() >= 1 then
		Say("<color=yellow>Ng­¬i Muèn Xãa M· R­¬ng Trùc TiÕp §Ó §¶m B¶o Tµi S¶n Yªu CÇu: 300 Kim Nguyªn B¶o",2,"§óng Ta Lµm Míi L¹i M· R­¬ng Ngay LËp Tøc/xoamaruong","Tho¸t/no")
	else
		Talk(1,"","<color=yellow>Ng­¬i Kh«ng Cã M· R­¬ng Kh«ng ThÓ Xãa")
	end
end

function xoamaruong()
	if CalcEquiproomItemCount(4,1496,1,1) >= 300 then
		GMCancleBoxPassword() Say("<color=fire>Chóc Mõng Ng­¬i §· Xãa M· R­ëng Thµnh C«ng Vui Lßng §Æt L¹i M· R­¬ng Míi",2,"§Æt L¹i MËt KhÈu/PassRuong","Th«i/No")
		ConsumeEquiproomItem(300,4,1496,1,-1)
	else
		Talk(1,"", "<color=red>Ng­¬i Kh«ng §ñ 300 Kim Nguyªn B¶o Xin KiÓm Tra L¹i...!<color>")
	end
end

function PassRuong()
OpenBox()
end

function kienthiet()
if CalcFreeItemCellCount() < 40 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
local tbAwardczc={
                    
            -- {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5067,1,0,0},nCount=10},

           -- {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5071,1,0,0},nCount=10},
             {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5069,1,0,0},nCount=10},

}
tbAwardTemplet:GiveAwardByList(tbAwardczc, "PhÇn Th­ëng");
end
--===================================================
function doidiemtk1()
	AskClientForNumber("DaiTinhN9142",0,30000,"200 §iÓm/1 Tói")
end
function DaiTinhN9142(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*100
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,3164,1,0,0},},"§¸",num)
 --    Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· §çi §iÓm Tèng Kim Thµnh tui even<color=red>LÔ Quan Ba L¨ng HuyÖn<color>  ")
WriteLogPro("dulieu/epdo/doicangkhon_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.." Cµng Kh«n Liªn Hoa, Cßn ThiÕu "..tbTinhNgoc-nTinhNgoc.." §iÓm Tèng Kim")
	end
end
-------------------------------------------------
function tichluynap()
	dofile("script/global/g7vn/g7defaultdialog.lua")
local tbSay = 
{
"Ta Muèn §æi Sang H·n HuyÕt Long C©u/#TienHanhDoiSkillTrungSinh41(4956)",
"Ta Muèn §æi Sang ThiÕt HuyÕt ChiÕn Lang/#TienHanhDoiSkillTrungSinh41(4959)",
"Ta Muèn §æi Sang Ng©n Gi¸p HuyÒn TrÖ/#TienHanhDoiSkillTrungSinh41(4960)",
"Ta Muèn §æi Sang Tø BÊt T­îng/#TienHanhDoiSkillTrungSinh41(4961)",
"Ta Muèn §æi Sang MÆc VËn Kim Søc/#TienHanhDoiSkillTrungSinh41(4962)",
"Ta Muèn §æi Sang XÝch VÜ Kim Søc/#TienHanhDoiSkillTrungSinh41(4963)",
"Ta Muèn §æi Sang TuyÕt Vùc Ng©n Hån/#TienHanhDoiSkillTrungSinh41(4964)",
"Ta Muèn §æi Sang TuyÕt Vùc Kim Gi¸c/#TienHanhDoiSkillTrungSinh41(4965)",
"Ta Muèn §æi Sang TuyÕt Vùc ChiÕn Hån/#TienHanhDoiSkillTrungSinh41(4966)",
"Ta Muèn §æi Sang TuyÕt Vùc XÝch Gi¸c/#TienHanhDoiSkillTrungSinh41(4967)",
"Ta Muèn §æi Sang TuyÕt Vò Ng©n Søc/#TienHanhDoiSkillTrungSinh41(4968)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n ®­îc chän 1 Lo¹i Ngùa Napf, muèn chän lo¹i nµo ?, ®iÓm tÝch lòy b¹n hiÖn cã <color=red>"..GetTask(5122).." §iÓm  ",getn(tbSay),tbSay)
return 1;	

end

function TienHanhDoiSkillTrungSinh41(num)
if  GetTask(3704) > 0 then
Talk(1,""," §· NhËn Th­ëng Råi")
return end
if (CalcFreeItemCellCount() < 3) then
Talk(1,""," H·y §Ó Trèng 3 cho trong ")
return end
	if (GetTask(5122) == 0) then
		Say("<color=green>Ng­¬i Kh«ng §ñ §iÒu KiÖn NhËn Th­ëng\n<color=violet>Møc N¹p 1000.000!<color>\n<color=orange>PhÇn Th­ëng:<color>\n<color=yellow\tói N¹p ThÎ §Çu Siªu Code\n<color>")
	return end
		if (GetTask(5122) >= 10) then
			if (CalcFreeItemCellCount() >= 20) then
				local tbAward = {
                                     {szName="Ngôa",tbProp={0,random(5262,5266)},nQuality=1,nCount=1},
                                     {szName="Ngôa",tbProp={0,random(5053,5054)},nQuality=1,nCount=1},

                                     {szName="Ngôa",tbProp={0,5114},nQuality=1,nCount=1},
                                     {szName="Ngôa",tbProp={0,5115},nQuality=1,nCount=1},
                                     {szName="Ngôa",tbProp={0,5116},nQuality=1,nCount=1},
                                     {szName="Ngôa",tbProp={0,5117},nQuality=1,nCount=1},
                                     {szName="Ngôa",tbProp={0,5118},nQuality=1,nCount=1},
                                      {szName="Ngôa",tbProp={0,num},nQuality=1,nCount=1},	
				}
				tbAwardTemplet:GiveAwardByList(tbAward,"§· NhËn PhÇn Th­ëng N¹p LÇn §Çu Thµnh C«ng");SetTask(3704,1)
                            Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· NhËn TÝch Lòy N¹p 1 TriÖu, Thµnh M·nh T­íng<color=red>LÔ Quan <color>  ")
                            WriteLogPro("dulieu/nganhang/QuaNapDauTichLuy.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).." "..GetIP().." \n");
			else
				Talk(1,"","H·y §Ó Trèng 20 ¤ Råi NhËn Th­ëng")
			end
	end
end












--=====================================
function doidiemrs()
local nHour = tonumber(GetLocalDate("%H%M"))
local nWeek	= tonumber(date("%w"))
 if nWeek == 1 or nWeek == 2 or nWeek == 3 or nWeek ==4 or nWeek == 5 or nWeek == 6 then
Talk(1, "", "TÝnh N¨ng Rs Shop Tèng Kim ChØ Cho PhÐp Vµo Chñ NhËt......:LÝc 21h00 ®Õn 22h10") 
return 1; 
end 
local tiendong = 200
local ktra_tien = CalcEquiproomItemCount(4, 1496, 1, 1) ;

if (GetTask(5131) == 0)   then 
	Talk(1,""," Ng­¬i Ch­a §i Chî shop tèng kim mµ ®ßi rs g×!")
return end
if ktra_tien < tiendong then
Talk(1,"","Kh«ng ®ñ "..tiendong.." KNB lµm sao reset ®©y!")
return end
if (GetTask(5131) >= 10)   then 
SetTask(5131,0)
SetTask(5132,0)
SetTask(5133,0)
SetTask(5134,0)
SetTask(5146,0)
SetTask(5349,0)
ConsumeEquiproomItem(tiendong,4,1496,1,1) ---  xoa xu
Talk(1,"","§· Reset Shop TK thµnh c«ng!")
AddGlobalNews("<color=green>Xin Chóc Mõng <color=orange>"..myplayersex().." "..GetName().."<color> §· Reset Shop ®iÓm TK Hµng TuÇn...<color>")
WriteLogPro("dulieu/epdo/rsshop_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da rs shop tèng kim\n");	
end
end
--end
---------------------------------------------------------------------------------------------------
function NhanQuaMungNamMoi()
if GetTask(3979) == 1 then
	Say("Ng­¬i §·  NhËn quµ råi cßn muèn nhËn thªm, ThËt  th©m lam??") 
	return 0;
	end
local nDate = tonumber(date("%Y%m%d%H%M"))
if (nDate <= 202205230800) then
Say("§óng vµo lóc <color=yellow> 08h00 Mïng 23 Th¸ng 05 n¨m Nh©m DÇn <color> míi b¾t ®Çu chÝnh thøc khai më  Ch­¬ng Tr×nh Quµ TÆng.\n vµ kÕt thøc Lóc 24h Ngµy 18 th¸ng 04");
		return 1
end
local nDate = tonumber(date("%Y%m%d%H%M"))
if (nDate >= 202205232330) then
Say("Ch­¬ng Tr×nh §· KÕt Thóc Lóc <color=yellow> 23h30 Ngµy 23 Th¸ng 05<color> ");
		return 1
end
if GetLevel() < 180 then
	Say("§¼ng cÊp yªu cÇu ®Ó nhËn th­ëng lµ trªn 150, B¹n h·y Mau Cè G¾ng NhÐ")
return 1 
end
local n_solan = GetTask(5969);
	if n_solan < 5 then
	Say("Ng­¬i ch­a c¶i l·o 5 Mµ §ßi L¹i NhËn Th­ëng Sao, ThËt Hµm Hå???") 
	return 0;
	end	
if (CountFreeRoomByWH(4,2,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x10 « trèng");
		return 1;
	end

	local tbAward100k ={

	      {szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,40998,1,0,0},nCount=30},
		}
                       SetTask(3002,GetTask(3002)+1000000)
			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")
               SetTask(3979,1) 
		Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color>§· NhËn Quµ Chóc mõng viÖt Nam V« §Þch  T¹i LÔ Quan Thµnh C«ng. <color=yellow> L­u ý Ph¶i C·i L·o 5 CÊp 180 Míi §­îc NhËn")	
               WriteLogPro("dulieu/quachaomung.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da NhËn Quµ Chµo Mõng §éi TuyÓn ViÖt Nam ChiÕn Th¾ng\n");	
	end


function khoadovinhvien()
	szDescription = format("ChØ bá tõng mãn 1 th«i nhÐ\n!!.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_khoadovinhvien", "no", 1)

end

function Run_khoadovinhvien(nCount)
if nCount == 0 or nCount >1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.")
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
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 1x2 « trèng");
		return 1;
	end



			if CalcEquiproomItemCount(4,417,1,-1)>=10 then 
			if 	ConsumeEquiproomItem(10,4,417,1,-1)>0 then
					tbAwardTemplet:GiveAwardByList({{szName = "Xu Khãa",tbProp={6,1,4893,1,1},nCount=50,nBindState=-2},} ,"test", 1);--Xu Khoa
				WriteLogPro("dulieu/muaxukhoa.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua 50 xu khoa\n");		
			end
				else 
				Talk(1,"no","<color=red>B¹n kh«ng ®ñ 10 Xu.")	
				end

end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function MuaMacBacTruyenTongLenh()
if (CountFreeRoomByWH(1,2,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 1x2 « trèng");
		return 1;
	end

		if CalcEquiproomItemCount(4,417,1,-1)>=10 then 
			if 	ConsumeEquiproomItem(10,4,417,1,-1)>0 then
			tbAwardTemplet:GiveAwardByList({{szName = "M¹c B¾c TruyÒn Tèng LÖnh",tbProp={6,1,1448,1,1},nCount=1,nExpiredTime=60*24*30,},} ,"test", 1);--M¹c B¾c TruyÒn Tèng LÖnh
				WriteLogPro("dulieu/muamacbacok.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua mac bac 10 xu\n");		
				Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> ®· mua M¹c B¾c TruyÒn Tèng LÖnh víi gi¸ 10 xu t¹i LÔ Quan")
			end
				else 
				Talk(1,"no","<color=red>B¹n kh«ng ®ñ 10 Xu.")	
				end
end
-----------------------------------------------------------------------------
function NhanQua195Cl2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,nBindState=-2,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,1)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 195 cl2\n");	
end

function NhanQua200Cl2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5,nBindState=-2,},} ,"test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa Nguyªn LiÖu",tbProp={6,1,4913,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=5,nBindState=-2},}, "test", 1);--Ngäc Linh Hån
SetTask(5995,2)
	WriteLogPro("dulieu/nhan195cl2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 200 cl2\n");	
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanQuaPhuNuVietNam()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

	if (GetTask(3906) == 0) or (GetTask(3906) == 1) or (GetTask(3906) == 2)then

		tbAwardTemplet:GiveAwardByList({{szName = "Xu khãa",tbProp={6,1,4893,1,1},nCount=100,nBindState = -2},}, "test", 1);
		Msg2Player("Chóc Mõng "..myplayersex().." §· NhËn Quµ 100 Xu Khãa Thµnh C«ng")
			WriteLogPro("dulieu/nhandenbu_2010.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan Qua 20-10\n");		
		SetTask(3906,3) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	
	end
end
function NhanDenBuSuCoRotMang()
if (CountFreeRoomByWH(4,6,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x6 « trèng");
		return 1;
	end
	local tbAward100k ={

		{szName="B¶o R­¬ng Tinh S­¬n Liªn",tbProp={6,1,4696,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Kh«i",tbProp={6,1,4697,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Th­îng Giíi",tbProp={6,1,4698,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n UyÓn",tbProp={6,1,4699,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Yªu §¸i",tbProp={6,1,4700,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Hµi",tbProp={6,1,4703,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬n Béi",tbProp={6,1,4704,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nBindState = -2},
		{szName="B¶o R­¬ng Tinh S­¬ng H¹ Giíi",tbProp={6,1,4705,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nBindState = -2},
		}
	if GetTask(5998) == 0 or GetTask(5998)==1 or GetTask(5998)==2 or GetTask(5998)==3 then

	tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")
--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 900e9}}, "test", 1); 
--		Msg2Player("Chóc Mõng "..myplayersex().." §· NhËn Kinh NghiÖm Thµnh C«ng")
			WriteLogPro("dulieu/nhandenbu_matmang.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Nhan 900 Ty exp\n");		
		SetTask(5998,4) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NhanDenBuSuCo()
if (CountFreeRoomByWH(3,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 3x4 « trèng");
		return 1;
	end
	local tbAward100k ={

		{szName="300 Xu khãa",tbProp={6,1,4893,1,0,0},nCount=300,nBindState = -2,nExpiredTime=60*24*30},
		{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
	{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*30},
	{szName="HuyÕt chiÕn lÔ bao(§¹i)",tbProp={6,1,4898,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
		
		}
	if GetTask(5999) <=20 then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")
	--	tbAwardTemplet:GiveAwardByList({{nExp_tl = 200e9}}, "test", 1);
		Msg2Player("Chóc Mõng "..myplayersex().." §· NhËn Th­ëng Thµnh C«ng")
		SetTask(5999,21) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NhanDenBuSuCo_2()
if (CountFreeRoomByWH(4,4,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x4 « trèng");
		return 1;
	end

	local tbAward100k ={

	--	{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2},
		{szName="300 Xu khãa",tbProp={6,1,4893,1,0,0},nCount=300,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=3,nBindState = -2,nExpiredTime=60*24*7},
		--{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
--		{szName="H·n HuyÕt Long C©u",tbProp={0,6731},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*2},
--		{szName="Siªu Quang",tbProp={0,6732},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*2},


		}
	if (GetTask(5997) <=5) then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")

		Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color>§· NhËn Quµ 300 Xu Khãa Thµnh C«ng")
		SetTask(5997,6) else Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")
	end
end
function ShopTienXuLeQuan()
	local szTitle = "<npc><color=gold> GM_"..GetName().." <color>chµo mõng b¹n ®Õn víi hÖ thèng <color=yellow>Vâ L©m TruyÒn Kú<color> - <color=green>Vâ L©m MiÔn PhÝ<color> 4 Acc/1PC\n"
	local Opt = 
	{	
		{"Mua R­¬ng Tinh S­¬ng (10xu).", MuaRuongTinhSuong},
		{"KÕt thóc ®èi tho¹i. ", End}
	}
	CreateNewSayEx(szTitle,Opt)

end
function MuaRuongTinhSuong()
local tbSay1 = {
"B¶o R­¬ng Tinh S­¬ng H¹ng Liªn/#addruongtinhsuong(4504,1,10)",
"B¶o R­¬ng Tinh S­¬ng Kh«i/#addruongtinhsuong(4505,2,10)",
"B¶o R­¬ng Tinh S­¬ng Th­îng Giíi/#addruongtinhsuong(4506,3,10)",
"B¶o R­¬ng Tinh S­¬ng Hé UyÓn/#addruongtinhsuong(4507,4,10)",
"B¶o R­¬ng Tinh S­¬ng Yªu §¸i/#addruongtinhsuong(4508,5,10)",
--"B¶o R­¬ng Tinh S­¬ng Kh¶i(150xu)/#addruongtinhsuong(4509,6,150)",
--"B¶o R­¬ng Tinh S­¬ng Vò KhÝ(200xu)/#addruongtinhsuong(4510,7,200)",
"B¶o R­¬ng Tinh S­¬ng Hµi/#addruongtinhsuong(4511,8,10)",
"B¶o R­¬ng Tinh S­¬ng Béi/#addruongtinhsuong(4512,9,10)",
"B¶o R­¬ng Tinh S­¬ng H¹ Giíi/#addruongtinhsuong(4513,10,10)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Mua G× Nµo",getn(tbSay1),tbSay1)

end

function addruongtinhsuong(id,para,xu)
if CalcFreeItemCellCount() < 6 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 6 « trèng!")
		return
	end
	
local tbAward100k = {

		{szName="B¶o R­¬ng Tinh S­¬ng",tbProp={6,1,id,1,0,0},nCount=1,tbParam={para,0,0,0,0,0}},
		
		}
		if CalcEquiproomItemCount(4,417,1,-1)>=xu then 
			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng §¹t M«c 100 Ngµn")
			ConsumeEquiproomItem(xu,4,417,1,-1);
				else 
				Talk(1,"no","<color=red>B¹n kh«ng ®ñ "..xu.." Xu.")	
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
		{"NhËp GirtCode",QuaTanThuChe},
		{"Tho¸t",}
	}
	CreateNewSayEx("<npc><color=yellow>PhÇn Th­ëng GirtCode Dµnh Cho Ng­êi Ch¬i:<color>\n", tbOpt)
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function QuaTanThuChe()

	if GetTask(Task_GiftCode) == 0 then
		AskClientForString("CHECKCODE","",1,99999999999,"NhËp GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a")
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
			SetTask(Task_GiftCode,1) tbAwardTemplet:GiveAwardByList(tbAwardgift1,"PhÇn Th­ëng GiftCode")	
			Msg2SubWorld("<color=green>Xin Chóc Mõng<color> "..GetName().." <color=green> §· NhËn Thµnh C«ng Gift Code")
			return
		end
		--Talk(1,"","<bclr=violet>"..myplayersex().." NhËp Th«ng Tin Kh«ng ChÝnh X¸c")
	end
	else Talk(1,"","<bclr=violet>"..myplayersex().." §Ó R­¬ng Trèng 20 nhÐ")
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
		AskClientForString("CODEVIPLIKE","",1,99999999999,"NhËp GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a1")
		
	end
end
function CODEVIPLIKE(nVar)
	local tbAwardgift = {

		
			{szName="XÝch Long C©u TruyÒn ThuyÕt",tbProp={0,4951},nCount=1,nQuality=1,nExpiredTime=7*24*60,nBindState = -2},
			{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
			{szName="MÆt N¹ ChiÕn Tr­êng thanh Gi¶",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=30*24*7,nBindState = -2},	
			{szName="NhÊt Kû Cµn Kh«n Phï", tbProp={6,1,2126,1,0,0},nCount = 1,nExpiredTime=24*60,nBindState = -2},
		{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount = 50,nExpiredTime=7*24*60,nBindState = -2},
		{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount = 50,nExpiredTime=7*24*60,nBindState = -2},
		{szName="ChiÕn Cæ",tbProp={6,1,156,1,0,0},nCount = 50,nExpiredTime=7*24*60,nBindState = -2},
		
			{szName="Ng©n L­îng",nJxb=20000,nCount=1},
		
	}
	local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if CalcFreeItemCellCount() >= 30 then
		for k=1,getn(CodeVipShare_che) do
			if nVar == CodeVipShare_che[k][1] then
				SetTask(4102, 1) 
				SetTask(3002, GetTask(3002) + 150000) --150k diem huyet chienn
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE <color> Thµnh C«ng")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> NhËn Thµnh C«ng GiftCode VIP Like Share Bµi ViÕt")
				server_setdata(tbKandy.szFile,"GIFT_CODE_CHECK",nVar,"1");	
				server_savedata(tbKandy.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 30 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
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
		AskClientForString("CODECHECKLQ","",1,99999999999,"NhËp GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a1")
		
	end
end
function CODECHECKLQ(nVar)
	local tbAwardgift = {

	        {szName="TÈy Tñy Kinh",tbProp={6,1,22,1,0,0},nCount=15,nBindState = -2},
	        {szName="Vâ L©m MËt TÞch",tbProp={6,1,26,1,0,0},nCount=15,nBindState = -2},
	        {szName="Tö MÉu LÖnh",tbProp={6,1,1427,1,0,0},nCount=1,nBindState = -2},
		--{szName="Thanh Hanh Phu", tbProp={6,1,1266,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
		{szName="Tho Dia Phu", tbProp={6,1,438,1,0,0},nCount = 1,nExpiredTime=30*24*60,nBindState = -2},	
		--{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,4369,1,0,0},nCount = 1,nExpiredTime=24*60},	
               --{szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,4345,1,0,0},nCount = 1,nExpiredTime=24*60},	
		
	}
        local IsClone = server_getdata(tbKandy.szFile,"GIFT_CODE_CHECK_thuong",nVar);
	local nillVar = 0
	if CalcFreeItemCellCount() >= 40 then
		for k=1,getn(CodeTanThuGift) do
			if nVar == CodeTanThuGift[k][1] then
				SetTask(3901, 1) 
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE <color> Thµnh C«ng")
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 40 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
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
		Talk(1,"no","<color=red>B¹n kh«ng ®ñ 40 Xu.")	
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
	if th >= 1 then Say("B¹n ®ang cã vßng s¸ng Th­¬ng H«ng råi") return end
	local lh = GetSkillState(1547)
	if lh >= 1 then Say("B¹n ®ang cã vßng s¸ng Lang H¹o råi") return end
	local tm = GetSkillState(1532)
	if tm >= 1 then Say("B¹n ®ang cã vßng s¸ng TriÔu m¶nh råi") return end


	if GetTask(4100) == 0   then
			local ntime = 18*60*60*24*6
			local n_title = 255	
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
			PlayerFunLib:AddSkillState(1547,1,3,18*60*60*24*6,1)
			SetTask(4100,1)
	
	else
		Say("B¹n ®· nhËn råi")
		return
	end
end

tbKandy_sp = {}
tbKandy_sp.szFile = "\\dulieu\\checkcodenew2.dat"
server_loadfile(tbKandy_sp.szFile)

function phanthuongcodenewsuper()
--Msg2Player("---"..GetTask(3905).."----------------------------"); 
	if GetTask(3906) == 0 or GetTask(3906) == 1 or GetTask(3906) == 2 or GetTask(3906) == 3 then
		AskClientForString("CODEVIPLIKE_SP","",1,99999999999,"NhËp GiftCode")
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· NhËn Th­ëng Råi HoÆc Kh«ng §ñ Chç Trèng Kh«ng ThÓ NhËn N÷a11")
	end
end
function CODEVIPLIKE_SP(nVar)

	local IsClone = server_getdata(tbKandy_sp.szFile,"GIFT_CODE_CHECK",nVar);
	local nillVar = 0
	if IsClone ~= "" then 
		return Say("<bclr=red>M· GIFTCODE ChØ NhËp Tèi §a 1 LÇn Vui Lßng Liªn HÖ GM §Ó\n§­îc Gi¶i QuyÕt<bclr>")
		end
	if CalcFreeItemCellCount() >= 10 then
		for k=1,getn(CodeVipShare_sp) do
			if nVar == CodeVipShare_sp[k][1] then

				SetTask(3906, 4) 
			--	tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
			tbAwardTemplet:GiveAwardByList({{szName = "Xu khãa",tbProp={6,1,4893,1,1},nCount=100,nBindState = -2},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "Kim Bµi LÔ Hép",tbProp={6,1,4874,1,1},nCount=50,nBindState = -2,nExpiredTime=15*24*60},}, "test", 1);
			PlayerFunLib:AddSkillState(1531,1,3,18*60*60*24*7,1)
				Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE <color> Thµnh C«ng")
				Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> NhËn Thµnh C«ng GiftCode Super VIP Like Share Bµi ViÕt")
				server_setdata(tbKandy_sp.szFile,"GIFT_CODE_CHECK",nVar,"1");	
			server_savedata(tbKandy_sp.szFile);
			return
			else 
				nillVar = 0
			end
		end
	else return Say("Kh«ng §ñ 10 ¤ Trèng")
	end
	if nillVar == 0 then
		return Say("M· gift ng­¬i võa nhËp vµo kh«ng tån t¹i trong hÖ thèng!")
	end;
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function doidiemtk()
	local szTitle = "<npc>Ng­¬i cÇn lÊy g×? H·y chän ®i nµo !"
	if (GetTask(5131) >= 2000) then
		Talk(1,"","Mçi TuÇn 1 Nh©n VËt ChØ §­îc §çi Tèi §a 2000 LÇn")
		return
	end
         local tbOpt =
	{
                
		--{"Anh Hµo LÖnh(500.000 ®iÓm = 1vien)",doitinhngoc2},
		--{"LÊy anh hao th¹ch(2000 diem = 1 c¸i)",doitinhngocz5},
		{"LÊy Tinh Ngäc(80 diem = 1vien)",doitinhngoc},
		--{"Manh Vo FF(2000 ®iÓm = 1vien)",doitinhngoc1},
                {"§çi 10 ty( d­íi c·i L·o 1(600k ®iÓm = 5 ty)",DoiKinhNghiem},
                {"§çi 500 TR exp(Trªn c·i l·o 1)",DoiKinhNghiem},
		{"Tho¸t"},
	}

	CreateNewSayEx(szTitle, tbOpt)

end
function doitinhngocz5()
if (GetTask(5349) >= 300) then
	Talk(1,"","Mçi TuÇn 1 Nh©n VËt ChØ §­îc §çi Tèi §a 300 c¸i")
		return
	end;
	doitinzzzerrerqq2()
end
function doitinzzzerrerqq2()
	AskClientForNumber("DaiTinhN914",1,300,"2000Diem/1 c¸i")
end
function DaiTinhN914(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*2000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
              SetTask(5131,GetTask(5131)+1) 
              SetTask(5349,GetTask(5349)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,5448,1,0,0},},"§¸",num)
     Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· §çi §iÓm Tèng Kim Thµnh Anh Hµo Th¹ch <color=red>LÔ Quan Ba L¨ng HuyÖn<color>  ")
WriteLogPro("dulieu/epdo/doiEven_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.." Anh Hµo Th¹ch, Cßn ThiÕu "..tbTinhNgoc-nTinhNgoc.." §iÓm Tèng Kim")
	end
end

function doitinhngoc()
if (GetTask(5135) >= 30000) then
	Talk(1,"","Mçi TuÇn 1 Nh©n VËt ChØ §­îc §çi Tèi §a 30000 c¸i")
		return
	end;
	doitinzzzerrer2()
end
function doitinzzzerrer2()
	AskClientForNumber("DaiTinhN94",1,3000,"80Diem/1 c¸i")
end
function DaiTinhN94(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*80
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
              SetTask(5131,GetTask(5131)+1) 
              SetTask(5135,GetTask(5135)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,4807,1,0,0},},"§¸",num)
     Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· §çi §iÓm Tèng Kim Thµnh Tinh Ngäc <color=red>LÔ Quan <color>  ")
WriteLogPro("dulieu/epdo/doitinhngoc_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.." Tinh Ngäc, Cßn ThiÕu "..tbTinhNgoc-nTinhNgoc.." §iÓm Tèng Kim")
	end
end
function doitinhngoc1()
if (GetTask(5132) >= 1000) then
	Talk(1,"","Mçi TuÇn 1 Nh©n VËt ChØ §­îc §çi Tèi §a 1000 c¸i")
		return
	end;
	doitinhrzz2()
end
function doitinhrzz2()
	AskClientForNumber("DaiTinhN95",1,1000,"2000Diem/1 c¸i")
end

function DaiTinhN95(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*2000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
            SetTask(5131,GetTask(5131)+1) 
           SetTask(5132,GetTask(5132)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,30293,1,0,0},},"§¸",num)
     Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· §çi §iÓm Tèng Kim Thµnh Manh Vo <color=red>LÔ Quan Ba L¨ng HuyÖn<color>  ")
WriteLogPro("dulieu/epdo/doiManh Vo_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi B¸ch NghÖ Tinh Ngäc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.."Manh Vo, Cßn ThiÕu "..tbTinhNgoc-nTinhNgoc.." §iÓm Tèng Kim")
	end
end

function doitinhngoc2()
if (GetTask(5133) >=10) then
	Talk(1,"","Mçi TuÇn 1 Nh©n VËt ChØ §­îc §çi Tèi §a 10 c¸i")
		return
	end;
	doitinhzz2()
end

function doitinhzz2()
	AskClientForNumber("DaiTinhN96",1,10,"500.000Diem/1 c¸i")
end

function DaiTinhN96(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*500000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
             SetTask(5131,GetTask(5131)+1) 
             SetTask(5133,GetTask(5133)+num) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,5443,1,0,0},},"§¸",num)
     Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· §çi §iÓm Tèng Kim Thµnh"..num.."  Anh Hµo LÖnh <color=red>LÔ Quan Ba L¨ng HuyÖn<color>  ")
WriteLogPro("dulieu/epdo/doianhhaolenh_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi anh hao lenh "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.." Anh Hµo LÖnh, Cßn ThiÕu "..tbTinhNgoc-nTinhNgoc.." §iÓm Tèng Kim")
	end
end

function DoiKinhNghiem()
	CreateNewSayEx("Xin Chµo Ng­êi T×m Ta Cã ViÖc G×", {{"Ta Muèn §æi 600k §iÓm Tèng Kim",DoiKinhNghiem1},{"Hñy Bá"}})
end

function DoiKinhNghiem1()
if (GetTask(5134) >= 10) then
	Talk(1,"","Mçi TuÇn 1 Nh©n VËt ChØ §­îc §çi Tèi §a 10 Lan")
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
			Say("Ng­¬i Kh«ng §ñ 600.000 §iÓm Tèng Kim")
		end
	else
		if (nDiemTongKim >= 600000) then
			tl_addPlayerExp(500000000) SetTask(747,nDiemTongKim-600000); 
                         SetTask(5134,GetTask(5134)+1) 
                        SetTask(5131,GetTask(5131)+1) 
WriteLogPro("dulieu/epdo/doiexp_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi 1 ty exp cai _ diem tong kim con "..GetTask(747).." diem\n");	
		else
			Say("Ng­¬i Kh«ng §ñ 600.000 §iÓm Tèng Kim")
		end
	end
end
function doidiemepdo()
	local szTitle = "<npc>Ng­¬i cÇn lÊy g×? H·y chän ®i nµo !"
         local tbOpt =
	{
		{"§çi Ngäc Quy Nguyªn Thiªn MÖnh",doitinhngocx12},
                {"§çi Thiªn s¬n KiÓm §Þnh Thiªn MÖnh",doitinhngocx13},
		{"Tho¸t"},
	}

	CreateNewSayEx(szTitle, tbOpt)

end
function doitinhngocx12()
	AskClientForNumber("DaiTinhN878",0,30,"10000 §iÓm/1 c¸i")
end
function DaiTinhN878(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*10000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,30149,1,0,0},},"§¸",num)
     Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· §çi §iÓm Tèng Kim Thµnh Ngäc Quy Nguyªn Thiªn MÖnh<color=red>LÔ Quan Ba L¨ng HuyÖn<color>  ")
WriteLogPro("dulieu/epdo/doiquynguyen_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.." Ngäc Quy Nguyªn Thiªn MÖnh, Cßn ThiÕu "..tbTinhNgoc-nTinhNgoc.." §iÓm Tèng Kim")
	end
end
function doitinhngocx13()
	AskClientForNumber("DaiTinhN8781",0,30,"5000 §iÓm/1 c¸i")
end
function DaiTinhN8781(num)
local nTinhNgoc = GetTask(747)
local tbTinhNgoc = num*5000
	if (nTinhNgoc >= tbTinhNgoc) then
	      SetTask(747,GetTask(747)-tbTinhNgoc) 
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,30150,1,0,0},},"§¸",num)
     Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· §çi §iÓm Tèng Kim Thµnh Thiªn s¬n KiÓm §Þnh Thiªn MÖnh<color=red>LÔ Quan Ba L¨ng HuyÖn<color>  ")
WriteLogPro("dulieu/epdo/doikiemdinh_tongkim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi tinh ngoc "..num.." cai _ diem tong kim con "..GetTask(747).." diem\n");	


	else
		Talk(1,"","Ng­¬i Muèn §æi "..num.." Thiªn s¬n KiÓm §Þnh Thiªn MÖnh, Cßn ThiÕu "..tbTinhNgoc-nTinhNgoc.." §iÓm Tèng Kim")
	end
end