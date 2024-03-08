------------Limit SongJin Dev By TungHuyen-----------------------

tb_limitsongjin = {}

function add_player()
local hwid = GetHex()
tb_limitsongjin[hwid] = tb_limitsongjin[hwid] + 1
Msg2Player(tb_limitsongjin[1])
end


function remove_player()
local hwid = GetHex()
tb_limitsongjin[hwid] = tb_limitsongjin[hwid] - 1
end

function check_player()
return tb_limitsongjin[hwid]
end

----/script/fwcloud/limitsongjin_tung/limitsongjin_tung.lua




function GetHex()
	local szHWID = GetInfo()
	local ArrayHDD = split(szHWID,"-")
	local szHdd= ArrayHDD[1]..ArrayHDD[2]
	local szHdd_hex = floor(String2Id(szHdd)/100000)
	--Msg2Player(szHdd_hex)
	return szHdd_hex
end

function GetCount()
local hwid = GetHex()
tb_limitsongjin[hwid] = tb_limitsongjin[hwid] or 0
--Msg2Player("So acc la " .. tb_limitsongjin[hwid])
return tb_limitsongjin[hwid]
end
