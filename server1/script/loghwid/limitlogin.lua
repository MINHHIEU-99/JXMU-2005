

tb_limitlogin = {}

function add_player()
local hwid = GetHex()
tb_limitlogin[hwid] = tb_limitlogin[hwid] + 1
Msg2Player(tb_limitlogin[1])
end


function remove_player()
local hwid = GetHex()
tb_limitlogin[hwid] = tb_limitlogin[hwid] - 1
end

function check_player()
return tb_limitlogin[hwid]
end






function GetHex()
	local szHWID = GetInfo()
	local ArrayHDD = split(szHWID,"-")
	local szHdd= ArrayHDD[4]
	local szHdd_hex = floor(String2Id(szHdd)/100000)
	Msg2Player(szHdd_hex)
	return szHdd_hex
end

function GetCount()
local hwid = GetHex()
tb_limitlogin[hwid] = tb_limitlogin[hwid] or 0
Msg2Player("So acc la " .. tb_limitlogin[hwid])
return tb_limitlogin[hwid]
end
