---------------Youtube PGaming---------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\global\\mrt\\configserver\\phanthuongeventcacthang.lua")
Include("\\script\\global\\mrt\\configserver\\configall.lua")
--------------------------------------------------------
BIKIEP 		 	 = 5813
NHANTHUONGMOC1	 = 5811
NHANTHUONGMOC2	 = 5810
NHANTHUONGMOC3	 = 5809
---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
--------------------------------------------------------------
function main()
dofile("script/vng_event/eventpgaming/thang11/npc_sukien.lua")

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc><color=green>Ng��i c� mu�n l�m B� Ki�p Gia Truy�n kh�ng<color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

local nYear  = tonumber(date("%y"));
local nTime  = "20"..nYear..""
local nTime1 = "20"..nYear.."11010000"
local nTime2 = "20"..nYear.."12010000"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow >= nTime1) and (nDayNow <= nTime2) then
		tbDailog:AddOptEntry("Nh�n Th��ng ��t M�c",NhanMoc);
		tbDailog:Show();
	else
		Talk(1,"","<color=green>Ho�t ��ng Di�n Ra T�:\n\n <color=red>0h Ng�y 01 - 11 - 20"..nYear.." ��n 0h Ng�y 01 - 12 - 20"..nYear.."<color><color>")
	end
end				
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbOpt = {
		{"Nh�n Th��ng M�c "..nGioiHanMoc1.." B� Ki�p Gia Truy�n",PhanThuong1},
		{"Nh�n Th��ng M�c "..nGioiHanMoc2.." B� Ki�p Gia Truy�n",PhanThuong2},
		{"Nh�n Th��ng M�c "..nGioiHanMoc3.." B� Ki�p Gia Truy�n",PhanThuong3},
		{"H�y B�",},
	}
	CreateNewSayEx("<npc><color=green>"..myplayersex().." Mu�n Nh�n M�c N�o<color>\n<color=red>Hi�n T�i Ng��i �� S� D�ng <color=yellow>"..GetTask(BIKIEP).."<color> B� Ki�p Gia Truy�n<color>", tbOpt)
end	
-----------------------------------------------------Moc 500-------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuong1()
	if (GetTask(NHANTHUONGMOC1) == 0) then
		if (GetTask(BIKIEP) < nGioiHanMoc1) then
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc1..":<color>\n<bclr=blue>+"..nTienVanMoc1HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc1HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>")
		else
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc1..":<color>\n<bclr=blue>+"..nTienVanMoc1HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc1HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>",2,"Nh�n Th��ng/Moc500","Th�i Ta Quay L�i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." �� Nh�n Ph�n Th��ng N�y R�i")
	end
end
--------------------------------------------------------Moc 1000---------------------------------------------------------------------------------------
function PhanThuong2()
	if (GetTask(NHANTHUONGMOC2) == 0) then
		if (GetTask(BIKIEP) < nGioiHanMoc2) then
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc2..":<color>\n<bclr=blue>+"..nTienVanMoc2HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc2HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>")
		else
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc2..":<color>\n<bclr=blue>+"..nTienVanMoc2HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc2HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>",2,"Nh�n Th��ng/Moc1000","Th�i Ta Quay L�i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." �� Nh�n Ph�n Th��ng N�y R�i")
	end
end
----------------------------------------------------------Moc 2000--------------------------------------------------------------------------------
function PhanThuong3()
	if (GetTask(NHANTHUONGMOC3) == 0) then
		if (GetTask(BIKIEP) < nGioiHanMoc3) then
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc3..":<color>\n<bclr=blue>+"..nTienVanMoc3HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc3HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>")
		else
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc3..":<color>\n<bclr=blue>+"..nTienVanMoc3HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc3HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>",2,"Nh�n Th��ng/Moc1500","Th�i Ta Quay L�i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." �� Nh�n Ph�n Th��ng N�y R�i")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------