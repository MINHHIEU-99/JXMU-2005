---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
--------------------------------------------------------
HOAPHUONGTRANG	 = 4993
NHANTHUONGMOC		 = 4992

---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------
function main()
dofile("script/doldly/event/sinhnhatvltk/npc_sukien.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc><bclr=violet>Chµo Mõng Nh©n SÜ Tham Gia Vâ L©m TruyÒn Kú!...<bclr>",
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	if (nDate >= 20210717 and nDate <= 20220830 and nTime >= 0000 and nTime <= 2359) then
	tbDailog:AddOptEntry("NhËn Th­ëng Mèc", NhanMoc);
	tbDailog:Show();
else
Talk(1,"","<bclr=violet>Ho¹t §éng ChØ Më Tõ 0h Ngµy 17 - 07 - 2022 §Õn 23h 59 Ngµy 30 - 08 - 2022 Xin Mêi Quay L¹i Sau<bclr>")
return 0;
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
		Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."<color> Cuong Thi<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 50.000 Cuong Thi\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 300KNB/LÇn<color>",5,"Xem PhÇn Th­ëng Mèc 10K/XemMoc6000","Xem PhÇn Th­ëng Mèc 20K/XemMoc8000","Xem PhÇn Th­ëng Mèc 30K/XemMoc10k","Xem PhÇn Th­ëng Mèc 40K/XemMoc12k","Xem PhÇn Th­ëng Mèc 50K/XemMoc14k","Hñy Bá/No")
end
function XemMoc6000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Cuong Thi<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 20 Tû Kinh NghiÖm<color>",2,"NhËn PhÇn Th­ëng Mèc 10000/Moc6000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Cuong Thi<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 20 Tû Kinh NghiÖm<color>",1,"Hñy Bá/No")
end
end
function XemMoc8000()
if (GetTask(NHANTHUONGMOC) == 1) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Cuong Thi<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 30 Tû Kinh NghiÖm<color>",2,"NhËn PhÇn Th­ëng Mèc 20000/Moc8000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Cuong Thi<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 30 Tû Kinh NghiÖm<color>",1,"Hñy Bá/No")
end
end
function XemMoc10k()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/30.000<color> Cuong Thi<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 40 Tû Kinh NghiÖm<color>",2,"NhËn PhÇn Th­ëng Mèc 30.000/Moc10000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/30.000<color> Cuong Thi<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 40 Tû Kinh NghiÖm<color>",1,"Hñy Bá/No")
end
end
function XemMoc12k()
if (GetTask(NHANTHUONGMOC) == 3) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/40000<color> Cuong Thi<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 50 Tû Kinh NghiÖm<color>",2,"NhËn PhÇn Th­ëng Mèc 40.000/Moc12000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/40000<color> Cuong Thi<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 50 Tû Kinh NghiÖm<color>",1,"Hñy Bá/No")
end
end
function XemMoc14k()
if (GetTask(NHANTHUONGMOC) == 4) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/50000<color> Cuong Thi<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 60 Tû Kinh NghiÖm<color>",2,"NhËn PhÇn Th­ëng Mèc 50.000/Moc14000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/50000<color> Cuong Thi<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm : \n 1. 60 Tû Kinh NghiÖm<color>",1,"Hñy Bá/No")
end
end
function NhanMoc1()
local HOAPHUONGTRANG = GetTask(4991);
	if (GetTask(NHANTHUONGMOC) == 0) then
		Say("<color=green>"..myplayersex().." §· NhËn Mèc 6000 Cuong Thi<color>\n<color=yellow>HiÖn T¹i Cã ThÓ NhËn Mèc: <color=red>"..HOAPHUONGTRANG.."/6000<color> Cuong Thi<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 10.000 Cuong Thi\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 300 KNB/LÇn<color>",2,"NhËn Th­ëng/Moc6000","Hñy Bá/No")
	elseif (GetTask(NHANTHUONGMOC) == 1) then
		Say("<color=green>"..myplayersex().." §· NhËn Mèc 8000 Cuong Thi<color>\n<color=yellow>HiÖn T¹i Cã ThÓ NhËn Mèc: <color=red>"..HOAPHUONGTRANG.."/8000<color> Cuong Thi<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 10.000 Cuong Thi\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 300 KNB/LÇn<color>",2,"NhËn Th­ëng/Moc8000","Hñy Bá/No")
	elseif (GetTask(NHANTHUONGMOC) == 2) then
	        Say("<color=green>"..myplayersex().." §· NhËn Mèc 10.000 Cuong Thi<color>\n<color=yellow>HiÖn T¹i Cã ThÓ NhËn Mèc: <color=red>"..HOAPHUONGTRANG.."/10.000<color> Cuong Thi<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 10000 Cuong Thi\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 300 KNB/LÇn<color>",2,"NhËn Th­ëng/Moc10000","Hñy Bá/No")
	elseif (GetTask(NHANTHUONGMOC) == 3) then
	        Say("<color=green>"..myplayersex().." §· NhËn Mèc 12.000 Cuong Thi<color>\n<color=yellow>HiÖn T¹i Cã ThÓ NhËn Mèc: <color=red>"..HOAPHUONGTRANG.."/12.000<color> Cuong Thi<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 10000 Cuong Thi\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 300 KNB/LÇn<color>",2,"NhËn Th­ëng/Moc12000","Hñy Bá/No")	
	elseif (GetTask(NHANTHUONGMOC) == 4) then
	        Say("<color=green>"..myplayersex().." §· NhËn Mèc 14.000 Cuong Thi<color>\n<color=yellow>HiÖn T¹i Cã ThÓ NhËn Mèc: <color=red>"..HOAPHUONGTRANG.."/14.000<color> Cuong Thi<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 10000 Cuong Thi\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 300 KNB/LÇn<color>",2,"NhËn Th­ëng/Moc14000","Hñy Bá/No")
else
		Talk(1,"","<color=red>HiÖn T¹i "..myplayersex().." Kh«ng Cã PhÇn Th­ëng Nµo")
	end
end
-----------------------------------------------------------------------------------------------------
function Moc6000()
	if (GetTask(HOAPHUONGTRANG) >= 10000)  and (GetTask(NHANTHUONGMOC) == 0)then
		local tbAward = {
			[1] = {
				{nExp_tl = 10e9},
				{szName="Tinh Ngäc",tbProp={6,1,4807,1,0,0},nCount=3000},
                                {szName="§¹i thµnh bÝ kÝp 150 lªn CÊp 21",tbProp={6,1,4345,1,0,0},nCount=1},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 6000") SetTask(NHANTHUONGMOC,1)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc8000()
	if (GetTask(HOAPHUONGTRANG) >= 20000) and (GetTask(NHANTHUONGMOC) == 1) then
		local tbAward = {
			[1] = {
				{nExp_tl = 20e9},
				{szName="Tinh Ngäc",tbProp={6,1,4807,1,0,0},nCount=5000},
                                {szName="§¹i thµnh bÝ kÝp 150 lªn CÊp 21",tbProp={6,1,4346,1,0,0},nCount=1},

			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 8000") SetTask(NHANTHUONGMOC,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc10000()
	if (GetTask(HOAPHUONGTRANG) >= 30000)  and (GetTask(NHANTHUONGMOC) == 2)then
		local tbAward = {
			[1] = {
				{nExp_tl = 30e9},
				{szName="Tinh Ngäc",tbProp={6,1,5337,1,0,0},nCount=1},
		                {szName="MÆt N¹ ChiÕn Tr­êng Hoµng Gi¶ Gi¶",tbProp={0,11,817,1,0,0},nCount=1,nExpiredTime=20160},
      
                  },
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 10.000") SetTask(NHANTHUONGMOC,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc12000()
	if (GetTask(HOAPHUONGTRANG) >= 40000)  and (GetTask(NHANTHUONGMOC) == 3)then
		local tbAward = {
			[1] = {
				{nExp_tl = 40e9},
				{szName="Tinh Ngäc",tbProp={6,1,5337,1,0,0},nCount=3},
                                {szName="MÆt N¹ ChiÕn Tr­êng ThÇn Gi¶",tbProp={0,11,839,1,0,0},nCount=1},
		

      
                  },
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 12.000") SetTask(NHANTHUONGMOC,4)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc14000()
	if (GetTask(HOAPHUONGTRANG) >= 50000)  and (GetTask(NHANTHUONGMOC) == 4)then
		local tbAward = {
			[1] = {
				{nExp_tl = 50e9},
				{szName="Tinh Ngäc",tbProp={6,1,5337,1,0,0},nCount=5},
                                {szName="dieu duong",tbProp={6,1,5442,1,0,0},nCount=3},
                                {szName="dieu duong thack",tbProp={6,1,5447,1,0,0},nCount=10},
                                {szName="Cµn Kh«n Giíi ChØ",tbProp={0,random(9171,9185)},nQuality=1,nCount=1},
                                {szName="Thiªn Niªn Hµ Thñ ¤",tbProp={6,1,2074,1,0,0},nCount=10},
                                {szName="B¸nh TiÒm N¨ng",tbProp={6,1,128,1,0,0},nCount=25},
                                {szName="B¸nh Kû N¨ng",tbProp={6,1,127,1,0,0},nCount=25},
		
      
                  },
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 14.000") SetTask(NHANTHUONGMOC,5)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reset()
local Xu = CalcEquiproomItemCount(4,417,1,1)
	if (GetTask(NHANTHUONGMOC) >= 5) then
		if (Xu >= 1) then
			SetTask(HOAPHUONGTRANG,0) ConsumeEquiproomItem(1,4,417,1,-1) SetTask(NHANTHUONGMOC,0)
			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 1 Xu Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 10.000 Cuong Thi")
	end
end
