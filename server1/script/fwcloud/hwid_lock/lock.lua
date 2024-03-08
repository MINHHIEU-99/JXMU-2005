----/script/fwcloud/hwid_lock/lock.lua
----------------hwidanti by tungfwcloud----------

function lock_hwid()
local hwid = Get_Hex_Lock()

	local tbSay = {}
	if GetTask(4954) == 0 then
	tinsert(tbSay,"C�p nh�t m� m�y./#reg_hwid()")
	end
	if GetTask(4954) == hwid then
	tinsert(tbSay,"X�a m� m�y �� c�p nh�t l�i./#re_hwid()")
	--tinsert(tbSay,"M� kh�a giao d�ch./#mokhoagiaodich()")
	tinsert(tbSay,"B�t anti m� m�y./#batanti()")
	tinsert(tbSay,"T�t anti m� m�y./#tatanti()")

	end
	tinsert(tbSay,"K�t th�c ��i tho�i ! /#no()")
	if GetTask(4953) == 1 then
	Say("<color=green>T�nh n�ng b�o m�t account theo m�y<color>\nT�nh tr�ng anti �ang ho�t ��ng", getn(tbSay), tbSay)
	else
	Say("<color=green>T�nh n�ng b�o m�t account theo m�y<color>\nT�nh tr�ng anti kh�ng ho�t ��ng", getn(tbSay), tbSay)
	end

	return 1	

end

function batanti()
SetTask(4953,1);
Say("B�t anti th�nh c�ng");

end

function tatanti()
SetTask(4953,0);
Say("T�t anti th�nh c�ng");

end



function mokhoagiaodich()
	DisabledStall(0);
	ForbitTrade(0);
Say("M� kh�a th�nh c�ng");
end

function check_khoa()
local hwid = Get_Hex_Lock()
local key = GetTask(4954)
if (key ~= hwid) then
	DisabledStall(1);
	ForbitTrade(1);
Say("M� m�y kh�ng kh�p ti�n h�nh kh�a h�nh trang")
end
end


function reg_hwid()
local hwid = Get_Hex_Lock()
SetTask(4954,hwid);
Say("B�n �� c�p nh�t m� m�y th�nh c�ng");
end

function re_hwid()
SetTask(4954,0);
Say("B�n �� x�a m� m�y th�nh c�ng");
end

function Get_Hex_Lock()
	local szHWID = GetInfo()
	local ArrayHDD = split(szHWID,"-")
	local szHdd= ArrayHDD[1]..ArrayHDD[2]
	local szHdd_hex = floor(String2Id(szHdd)/100000)
	--Msg2Player(szHdd_hex)
	return szHdd_hex
end
