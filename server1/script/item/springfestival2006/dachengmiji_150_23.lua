---------------------------------***Script*By THONG*HON***-------------------------------------------------------------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\task\\system\\task_string.lua")
-----------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
---------------------------------------------------------
function main()
dofile("script/item/dachengmiji_150_23.lua")
local n_fac = GetLastFactionNumber(); 
	if GetLevel() < 150 then
		Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a �� C�p 150 Kh�ng Th� N�ng C�p K� N�ng N�y")
		return 1;
	end
----------------------------------------------------------------------------------------------------------------
if n_fac == 0 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",4,
		"N�ng C�p ��i L�c Kim Cang Ch��ng/ThieuLamQuyen",
		"N�ng C�p Vi �� Hi�n X�/ThieuLamCon",
		"N�ng C�p Tam Gi�i Quy Thi�n/ThieuLamDao",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------------------------
elseif n_fac == 1 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",4,
		"N�ng C�p H�o H�ng Tr�m/ThienVuongDao",
		"N�ng C�p Tung Ho�nh B�t Hoang/ThienVuongChuy",
		"N�ng C�p B� V��ng T�m Kim/ThienVuongThuong",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------------------------------
elseif n_fac == 2 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",4,
		"N�ng C�p V� �nh Xuy�n/DuongMonPhiDao",
		"N�ng C�p Thi�t Li�n T� S�t/DuongMonNo",
		"N�ng C�p C�n Kh�n Nh�t Tr�ch/DuongMonTieu",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------
elseif n_fac == 3 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"N�ng C�p H�nh Ti�u C�t L�p/NguDocChuong",
		"N�ng C�p U H�n Ph� �nh/NguDocDao",
		"Th�i/No") return 1;
---------------------------------------------------------------------------------
elseif n_fac == 4 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",4,
		"N�ng C�p Ki�m Hoa V�n Tinh/NgaMyKiem",
		"N�ng C�p B�ng V� L�c Tinh/NgaMyChuong",
		--"N�ng C�p Ng�c Tuy�n T�m Kinh/NgaMyBuff",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------
elseif n_fac == 5 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"N�ng C�p B�ng T��c Ho�t K�/ThuyYenDao",
		"N�ng C�p Th�y Anh Man T�/ThuyYenSongDao",
		"Th�i/No") return 1;
----------------------------------------------------------------------------------------
elseif n_fac == 6 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"N�ng C�p Th�i Th�ng L�c Long/CaiBangRong",
		"N�ng C�p B�ng Hu�nh L��c ��a/CaiBangBong",
		"Th�i/No") return 1;
-------------------------------------------------------------------------------------------
elseif n_fac == 7 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"N�ng C�p Giang H�i N� Lan/ThienNhanKich",
		"N�ng C�p T�t H�a Li�u Nguy�n/ThienNhanDao",
		"Th�i/No") return 1;
---------------------------------------------------------------------------------------
elseif n_fac == 8 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"N�ng C�p T�o H�a Th�i Thanh/VoDangQuyen",
		"N�ng C�p Ki�m Th�y Tinh H�/VoDangKiem",
		"Th�i/No") return 1;
--------------------------------------------------------------------------------------
elseif n_fac == 9 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"N�ng C�p C�u Thi�n C��ng Phong/ConLonDao",
		"N�ng C�p Thi�n L�i Ch�n Nh�c/ConLonKiem",
		"Th�i/No") return 1;
-------------------------------------------------------------------------------------------------------
elseif n_fac == 10 then
		Say("<bclr=violet>"..myplayersex().." Mu�n Ch�n K� N�ng N�o",3,
		"N�ng C�p ��c C� C�u Ki�m/HoaSonKiem",
		"N�ng C�p Th�n Quang To�n Nhi�u/HoaSonKhi",
		"Th�i/No") return 1;
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� Nghi�n C�u M�i M� Kh�ng L�nh H�i ���c G�") return 1
	end
end
--------------------------------------------------------Ph�i Thi�u L�m-------------------------------------------------------------------------------------------------------------------------------------------
function ThieuLamQuyen()
	if HaveMagic(1055) < 23 then
		if HaveMagic(1055) == 22 then
			AddMagic(1055,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p K� N�ng ��i L�c Kim Cang Ch��ng ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function ThieuLamCon()
	if HaveMagic(1056) < 23 then
		if HaveMagic(1056) == 22 then
			AddMagic(1056,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Vi �� Hi�n X� ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function ThieuLamDao()
	if HaveMagic(1057) < 23 then
		if HaveMagic(1057) == 22 then
			AddMagic(1057,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Tam Gi�i Quy Thi�n ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
-------------------------------------------------------------Ph�i Thi�n V��ng-----------------------------------------------------------------------------------------------------------------------------
function ThienVuongDao()
	if HaveMagic(1058) < 23 then
		if HaveMagic(1058) == 22 then
			AddMagic(1058,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng H�o H�ng Tr�m ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function ThienVuongChuy()
	if HaveMagic(1059) < 23 then
		if HaveMagic(1059) == 22 then
			AddMagic(1059,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Tung Ho�nh B�t Ph��ng ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function ThienVuongThuong()
	if HaveMagic(1060) < 23 then
		if HaveMagic(1060) == 22 then
			AddMagic(1060,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng B� V��ng T�m Kim ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
--------------------------------------------------------------Ph�i ���ng M�n------------------------------------------------------------------------------------------------------------------------------------------
function DuongMonPhiDao()
	if HaveMagic(1069) < 23 then
		if HaveMagic(1069) == 22 then
			AddMagic(1069,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng V� �nh Xuy�n ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function DuongMonNo()
	if HaveMagic(1070) < 23 then
		if HaveMagic(1070) == 22 then
			AddMagic(1070,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Thi�t Li�n T� S�t ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function DuongMonTieu()
	if HaveMagic(1071) < 23 then
		if HaveMagic(1071) == 22 then
			AddMagic(1071,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng �� N�ng C�p ���c K� N�ng C�n Kh�n Nh�t Tr�ch ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
-----------------------------------------------------------------Ph�i Ng� ��c--------------------------------------------------------------------------------------------------------------------------------------
function NguDocChuong()
	if HaveMagic(1066) < 23 then
		if HaveMagic(1066) == 22 then
			AddMagic(1066,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng H�nh Ti�u C�t L�p ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function NguDocDao()
	if HaveMagic(1067) < 23 then
		if HaveMagic(1067) == 22 then
			AddMagic(1067,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng U H�n Ph� �nh ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
-----------------------------------------------------------------Ph�i Nga My----------------------------------------------------------------------------------------------------------------------------
function NgaMyKiem()
	if HaveMagic(1061) < 23 then
		if HaveMagic(1061) == 22 then
			AddMagic(1061,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Ki�m Hoa V�n Tinh ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function NgaMyChuong()
	if HaveMagic(1062) < 23 then
		if HaveMagic(1062) >= 22 then
			AddMagic(1062,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng B�ng V� L�c Tinh ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function NgaMyBuff()
	if HaveMagic(1114) < 23 then
		if HaveMagic(1114) == 22 then
			AddMagic(1114,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Ng�c Tuy�n T�m Kinh ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
------------------------------------------------------------------Ph�i Th�y Y�n-------------------------------------------------------------------------------------------------------------------------
function ThuyYenDao()
	if HaveMagic(1063) < 23 then
		if HaveMagic(1063) == 22 then
			AddMagic(1063,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng B�ng T��c Ho�t K� ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function ThuyYenSongDao()
	if HaveMagic(1065) < 23 then
		if HaveMagic(1065) == 22 then
			AddMagic(1065,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Th�y Anh Man T� ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
----------------------------------------------------------------------Ph�i C�i Bang----------------------------------------------------------------------------------------------------------------------------------
function CaiBangRong()
	if HaveMagic(1073) < 23 then
		if HaveMagic(1073) == 22 then
			AddMagic(1073,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Th�i Th�ng L�c Long ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
function CaiBangBong()
	if HaveMagic(1074) < 23 then
		if HaveMagic(1074) == 22 then
			AddMagic(1074,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng B�ng Hu�nh L��c ��a ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
-------------------------------------------------------------------Ph�i Thi�n Nh�n-----------------------------------------------------------------------------------------------------------------------
function ThienNhanKich()
	if HaveMagic(1075) < 23 then
		if HaveMagic(1075) == 22 then
			AddMagic(1075,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Giang H�i N� Lan ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function ThienNhanDao()
	if HaveMagic(1076) < 23 then
		if HaveMagic(1076) == 22 then
			AddMagic(1076,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng T�t H�a Li�u Nguy�n ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
------------------------------------------------------------------Ph�i V� �ang---------------------------------------------------------------------------------------------------------------------------------------
function VoDangQuyen()
	if HaveMagic(1078) < 23 then
		if HaveMagic(1078) == 22 then
			AddMagic(1078,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng T�o H�a Th�i Thanh ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function VoDangKiem()
	if HaveMagic(1079) < 23 then
		if HaveMagic(1079) == 22 then
			AddMagic(1079,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p ���c K� N�ng Ki�m Th�y Tinh H� ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
-------------------------------------------------------------------------Ph�i C�n L�n--------------------------------------------------------------------------------------------------------------------
function ConLonDao()
	if HaveMagic(1080) < 23 then
		if HaveMagic(1080) == 22 then
			AddMagic(1080,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p Th�nh C�ng K� N�ng C�u Thi�n C��ng Phong Phong ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function ConLonKiem()
	if HaveMagic(1081) < 23 then
		if HaveMagic(1081) == 22 then
			AddMagic(1081,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p Th�nh C�ng K� N�ng Thi�n L�i Ch�n Nh�c ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
------------------------------------------------------------------------Ph�i Hoa S�n---------------------------------------------------------------------------------------------------------------------------------
function HoaSonKiem()
	if HaveMagic(1368) < 23 then
		if HaveMagic(1368) == 22 then
			AddMagic(1368,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p Th�nh C�ng K� N�ng ��c C� C�u Ki�m ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end

function HoaSonKhi()
	if HaveMagic(1384) < 23 then
		if HaveMagic(1384) == 22 then
			AddMagic(1384,23) ConsumeEquiproomItem(1,6,1,4371,-1)
			Msg2Player("<color=green>Ch�c M�ng  �� N�ng C�p Th�nh C�ng K� N�ng Th�n Quang To�n Nhi�u ��t C�p 23")
		else
			Talk(1,"","<bclr=violet>"..myplayersex().." Ch�a ��t 22 C�p K� N�ng 150 Kh�ng Th� N�ng C�p") return 1;
		end
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." �� N�ng C�p K� N�ng N�y ��t C�p 23 R�i Kh�ng Th� N�ng Th�m N�a") return 1;
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------