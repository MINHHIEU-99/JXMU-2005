---------------------***Script*By*Heart*Doldly***--------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
--------------------------------------------------------
HOAPHUONGTRANG	 = 4986
NHANTHUONGMOC		 = 4985
NHANTHUONGMOC2		 = 4984
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
dofile("script/doldly/event/trungthu/npc_sukien.lua")
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
	if (nDate >= 20180413 and nDate <= 20220930 and nTime >= 0000 and nTime <= 2359) then
	tbDailog:AddOptEntry("NhËn Th­ëng Mèc ", NhanMoc);
       -- tbDailog:AddOptEntry("NhËn Mèc Sau Khi §· Trïng Sinh 5", mocts5);
tbDailog:AddOptEntry("Reset Event",Reset);
	tbDailog:Show();
else
Talk(1,"","<bclr=violet>Ho¹t §éng ChØ Më Tõ 0h Ngµy 30 - 07 - 2022 §Õn 23h 59 Ngµy 30 - 08 - 2022 Xin Mêi Quay L¹i Sau<bclr>")
return 0;
end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function mocts5()
		Say("<color=green>"..myplayersex().."§· nhan toi moc: <color=red>"..GetTask(4984).."<color>. §· Sö Dông: <color=red>"..GetTask(4986).."<color> Quèc Kh¸nh<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 50000 Quèc Kh¸nh\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 300KNB/LÇn<color>",5,"Xem PhÇn Th­ëng Mèc 10K/XemMoc100001","Xem PhÇn Th­ëng Mèc 20K/XemMoc150001","Xem PhÇn Th­ëng Mèc 30K/XemMoc200001","Hñy Bá/No")
end


function XemMoc100001()
if (GetTask(4984) == 1)then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Quèc Kh¸nh<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm<color>",2,"NhËn PhÇn Th­ëng Mèc 10000/Moc100001","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Quèc Kh¸nh<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm <color>",1,"Hñy Bá/No")
end
end
function XemMoc150001()
if  (GetTask(4984) == 2)then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Quèc Kh¸nh<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm<color>",2,"NhËn PhÇn Th­ëng Mèc 20000/Moc150001","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Quèc Kh¸nh<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm<color>",1,"Hñy Bá/No")
end
end
function XemMoc200001()
if  (GetTask(4984) == 3)then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/30000<color> Quèc Kh¸nh<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm <color>",2,"NhËn PhÇn Th­ëng Mèc 30000/Moc200001","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/30000<color> Quèc Kh¸nh<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåmh<color>",1,"Hñy Bá/No")
end
end


----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc100001()
	if (GetTask(HOAPHUONGTRANG) >= 10000)  and  (GetTask(4984) == 1)then
		local tbAward = {
			[1] = {
				{nExp_tl = 30e9},
				{szName="§»ng Long LÖnh",tbProp={6,1,5439,1,0,0},nCount=2},
                                {szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6013,1,0,0},nCount=1,tbParam={6,0,0,0,0,0}},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 100001") SetTask(4984,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc150001()
	if (GetTask(HOAPHUONGTRANG) >= 20000)   and (GetTask(4984) == 2)then
		local tbAward = {
			[1] = {
				{nExp_tl = 40e9},
				{szName="§»ng Long LÖnh",tbProp={6,1,5439,1,0,0},nCount=2},
                                {szName="B¶o R­¬ng Minh Ph­îng Yªu §¸i",tbProp={6,1,6014,1,0,0},nCount=1,tbParam={7,0,0,0,0,0}},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 150001") SetTask(4984,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc200001()
	if (GetTask(HOAPHUONGTRANG) >= 30000)  and (GetTask(4984) == 3) then
		local tbAward = {
			[1] = {
				{nExp_tl = 60e9},
				{szName="§»ng Long LÖnh",tbProp={6,1,5439,1,0,0},nCount=4},
                                {szName="Hµnh HiÖp LÖnh",tbProp={6,1,30293,1,0,0},nCount=1000},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 200001") SetTask(4984,4)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
		Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."<color> Quèc Kh¸nh<color>\n<color=orange>L­u ý: NhËn Mèc Tèi §a 50000 Quèc Kh¸nh\nTrong Suèt Thêi Gian Ho¹t §éng<color>\n<color=pink>               T¨ng Thªm LÇn Sö Dông: 300KNB/LÇn<color>",5,"Xem PhÇn Th­ëng Mèc 10K/XemMoc10000","Xem PhÇn Th­ëng Mèc 20K/XemMoc15000","Xem PhÇn Th­ëng Mèc 30K/XemMoc20000","Xem PhÇn Th­ëng Mèc 40K/XemMoc25000","Xem PhÇn Th­ëng Mèc 50K/XemMoc50000","Hñy Bá/No")
end


function XemMoc10000()
if (GetTask(NHANTHUONGMOC) == 0) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Quèc Kh¸nh<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm<color>",2,"NhËn PhÇn Th­ëng Mèc 10000/Moc10000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/10000<color> Quèc Kh¸nh<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm <color>",1,"Hñy Bá/No")
end
end
function XemMoc15000()
if (GetTask(NHANTHUONGMOC) == 2) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Quèc Kh¸nh<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm<color>",2,"NhËn PhÇn Th­ëng Mèc 20000/Moc15000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/20000<color> Quèc Kh¸nh<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm<color>",1,"Hñy Bá/No")
end
end
function XemMoc20000()
if (GetTask(NHANTHUONGMOC) == 3) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/30000<color> Quèc Kh¸nh<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm <color>",2,"NhËn PhÇn Th­ëng Mèc 30000/Moc20000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/30000<color> Quèc Kh¸nh<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåmh<color>",1,"Hñy Bá/No")
end
end
function XemMoc25000()
if (GetTask(NHANTHUONGMOC) == 4) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/40000<color> Quèc Kh¸nh<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm <color>",2,"NhËn PhÇn Th­ëng Mèc 40000/Moc25000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/40000<color> Quèc Kh¸nh<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm <color>",1,"Hñy Bá/No")
end
end
function XemMoc50000()
if (GetTask(NHANTHUONGMOC) == 5) then
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/50000<color> Quèc Kh¸nh<color>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm <color>",2,"NhËn PhÇn Th­ëng Mèc 50000/Moc50000","Hñy Bá/No")
else 
Say("<color=green>"..myplayersex().." §· Sö Dông: <color=red>"..GetTask(HOAPHUONGTRANG).."/50000<color> Quèc Kh¸nh<color>\n<color=red>Kh«ng §ñ §iÒu KiÖn §Ó NhËn Mèc Nµy HoÆc §· NhËn Råi<color=red>\n<color=orange>PhÇn Th­ëng Mèc Nµy Gåm <color>",1,"Hñy Bá/No")
end
end

----------------------------------------------------Nhan Moc 2000 -----------------------------------------------------------------------------------------------------
function Moc10000()
	if (GetTask(HOAPHUONGTRANG) >= 10000)  and (GetTask(4985) == 0)then
		local tbAward = {
			[1] = {
				{nExp_tl = 20e9},
				--{szName="NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,5446,1,0,0},nCount=20},
				{szName="diªu d­¬ng LÖnh",tbProp={6,1,5442,1,0,0},nCount=2},
				{szName="Tói Tinh Ngäc",tbProp={6,1,5337,1,0,0},nCount=2},
				{szName="®¹i thanh 23",tbProp={6,1,4347,1,0,0},nCount=1},

			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 10000") SetTask(4985,2)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc15000()
	if (GetTask(HOAPHUONGTRANG) >= 20000)  and (GetTask(4985) == 2)then
		local tbAward = {
			[1] = {
				{nExp_tl = 30e9},
				--{szName="NguyÖt KhuyÕt Tinh Th¹ch",tbProp={6,1,5446,1,0,0},nCount=100},
				{szName="diªu d­¬ng LÖnh",tbProp={6,1,5442,1,0,0},nCount=5},
				{szName="Thiªn Niªn Hµ Thñ ¤",tbProp={6,1,2074,1,0,0},nCount=10},
				{szName="Cµn Kh«n Giíi ChØ",tbProp={0,random(9171,9185)},nQuality=1,nCount=1},
				{szName="Anh Hµo Th¹ch",tbProp={6,1,5448,1,0,0},nCount=200},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 15000") SetTask(4985,3)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc20000()
	if (GetTask(HOAPHUONGTRANG) >= 30000) and (GetTask(4985) == 3) then
		local tbAward = {
			[1] = {
				{nExp_tl = 30e9},
				--{szName="®¹i tinh ngäc tói",tbProp={6,1,5331,1,0,0},nCount=1},
--{szName="®¹i tinh ngäc",tbProp={6,1,4873,1,0,0},nCount=2000},
				{szName="diªu d­¬ng LÖnh",tbProp={6,1,5442,1,0,0},nCount=10},
				{szName="B¸nh TiÒm N¨ng",tbProp={6,1,128,1,0,0},nCount=10},
                            {szName="B¸nh Kû N¨ng",tbProp={6,1,127,1,0,0},nCount=10},
				{szName="Tói Tinh Ngäc",tbProp={6,1,5337,1,0,0},nCount=5},
				{szName="Anh Hµo Th¹ch",tbProp={6,1,5448,1,0,0},nCount=300},
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 20000") SetTask(4985,4)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Moc25000()
	if (GetTask(HOAPHUONGTRANG) >= 40000)  and (GetTask(4985) == 4)then
		local tbAward = {
			[1] = {
				{nExp_tl = 40e9},
				{szName="cang kh«n liªn hoa",tbProp={6,1,5041,1,0,0},nCount=500},
                            --{szName="®¹i tinh ngäc",tbProp={6,1,4873,1,0,0},nCount=8000},
				{szName="diªu d­¬ng LÖnh",tbProp={6,1,5442,1,0,0},nCount=10},
				{szName="Anh Hµo Th¹ch",tbProp={6,1,5448,1,0,0},nCount=500},
				{szName="Anh Hµo LÖnh",tbProp={6,1,5443,1,0,0},nCount=15},
				{szName="B¸chKhoa-B¶nHoµnChØnh",tbProp={6,1,30189,1,0,0},nCount=1},

			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 25000") SetTask(4985,5)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
function Moc50000()
	if (GetTask(HOAPHUONGTRANG) >= 50000)  and (GetTask(4985) == 5)then
		local tbAward = {
			[1] = {
				{nExp_tl = 50e9},
                            --{szName="®¹i tinh ngäc",tbProp={6,1,5331,1,0,0},nCount=1},
 				--{szName="diªu d­¬ng LÖnh",tbProp={6,1,5442,1,0,0},nCount=10},
                           {szName="®¹i thanh 24",tbProp={6,1,4348,1,0,0},nCount=1},
                           {szName="Anh Hµo Th¹ch",tbProp={6,1,5448,1,0,0},nCount=500},
				{szName="Cµn Kh«n Giíi ChØ",tbProp={0,random(9195,9199)},nQuality=1,nCount=1},
			
			},
		}
		tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng Mèc 50000") SetTask(4985,6)
	else
		Talk(1,"","<color=pink>"..myplayersex().." Ch­a §¹t Tíi Mèc Nµy")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Reset()
local Xu = CalcEquiproomItemCount(4,1496,1,1)
	if (GetTask(4985) >= 6) then
		if (Xu >= 100) then
			SetTask(4986,0) ConsumeEquiproomItem(100,4,1496,1,-1) SetTask(4985,0)
			Talk(1,"","<color=red>"..myplayersex().." Chóc Mõng B¹n §· Reset Thµnh C«ng...!")
		else
			Talk(1,"","<color=red>"..myplayersex().." Kh«ng §ñ 100 KNB Xin KiÓm Tra L¹i...!")
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch­a Sö Dông §ñ 50.000 Quoc Khanh")
	end
end