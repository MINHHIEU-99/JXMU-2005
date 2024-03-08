----/script/fwcloud/hwid_lock/lock.lua
----------------hwidanti by tungfwcloud----------

function lock_hwid()
local hwid = Get_Hex_Lock()

	local tbSay = {}
	if GetTask(4954) == 0 then
	tinsert(tbSay,"CËp nhËt m· m¸y./#reg_hwid()")
	end
	if GetTask(4954) == hwid then
	tinsert(tbSay,"Xãa m· m¸y ®Ó cËp nhËt l¹i./#re_hwid()")
	--tinsert(tbSay,"Më khãa giao dÞch./#mokhoagiaodich()")
	tinsert(tbSay,"BËt anti m· m¸y./#batanti()")
	tinsert(tbSay,"T¾t anti m· m¸y./#tatanti()")

	end
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ! /#no()")
	if GetTask(4953) == 1 then
	Say("<color=green>TÝnh n¨ng b¶o mËt account theo m¸y<color>\nT×nh tr¹ng anti ®ang ho¹t ®éng", getn(tbSay), tbSay)
	else
	Say("<color=green>TÝnh n¨ng b¶o mËt account theo m¸y<color>\nT×nh tr¹ng anti kh«ng ho¹t ®éng", getn(tbSay), tbSay)
	end

	return 1	

end

function batanti()
SetTask(4953,1);
Say("BËt anti thµnh c«ng");

end

function tatanti()
SetTask(4953,0);
Say("T¾t anti thµnh c«ng");

end



function mokhoagiaodich()
	DisabledStall(0);
	ForbitTrade(0);
Say("Më khãa thµnh c«ng");
end

function check_khoa()
local hwid = Get_Hex_Lock()
local key = GetTask(4954)
if (key ~= hwid) then
	DisabledStall(1);
	ForbitTrade(1);
Say("M· m¸y kh«ng khíp tiÕn hµnh khãa hµnh trang")
end
end


function reg_hwid()
local hwid = Get_Hex_Lock()
SetTask(4954,hwid);
Say("B¹n ®· cËp nhËt m· m¸y thµnh c«ng");
end

function re_hwid()
SetTask(4954,0);
Say("B¹n ®· xãa m· m¸y thµnh c«ng");
end

function Get_Hex_Lock()
	local szHWID = GetInfo()
	local ArrayHDD = split(szHWID,"-")
	local szHdd= ArrayHDD[1]..ArrayHDD[2]
	local szHdd_hex = floor(String2Id(szHdd)/100000)
	--Msg2Player(szHdd_hex)
	return szHdd_hex
end
