----------------hwidanti by tungfwcloud----------
function antimamay()
	local tbSay = {}
	if GetTask(4954) == 0 then
	tinsert(tbSay,"C�p nh�t m� m�y./#dangkyhwid()")
	end
	if GetTask(4954) == 1 then
	tinsert(tbSay,"X�a m� m�y �� c�p nh�t l�i./#dangkyhwidnew()")
	tinsert(tbSay,"B�t anti m� m�y./#batanti()")
	tinsert(tbSay,"T�t anti m� m�y./#tatanti()")
	tinsert(tbSay,"M� kh�a giao d�ch./#mokhoagiaodich()")
	end
	tinsert(tbSay,"K�t th�c ��i tho�i ! /#no()")
	if GetTask(4953) == 1 then
	Say("<color=green>T�nh n�ng b�o m�t account theo m�y<color>\nT�nh tr�ng anti �ang ho�t ��ng", getn(tbSay), tbSay)
	else
	Say("<color=green>T�nh n�ng b�o m�t account theo m�y<color>\nT�nh tr�ng anti kh�ng ho�t ��ng", getn(tbSay), tbSay)
	end
	return 1	
end;

function batanti()
SetTask(4953,1)
Say("B�n �� k�ch ho�t h� th�ng Anti M� M�y")
end

function tatanti()
if getHWID() == dochwid() then
SetTask(4953,0)
	DisabledStall(0);
	ForbitTrade(0);

Say("B�n �� ng�ng h� th�ng Anti M� M�y")
else
Say("M� m�y kh�ng kh�p kh�ng th� t�t Anti")
end
end


function checkanti()
	if GetTask(4955) == 0 then
	DisabledStall(1);
	ForbitTrade(1);
	end
end

function mokhoagiaodich()
if getHWID() == dochwid() then
Msg2Player("dung roi")
	DisabledStall(0);
	ForbitTrade(0);
	SetTask(4955,1)
else
Msg2Player("sai roi")
local nPlayerIndex = SearchPlayer(szName)
OfflineLive(PlayerIndex)
end
end

function getHWID()
	local hwid = ""
	for i= 1,7 do
		hwid = hwid .. split(GetInfo(),"-")[i]
	end
	return hwid

end

function dangkyhwid()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban >= 20  then
		ConsumeEquiproomItem(10, 4,417, 1,-1)
ghihwid()
SetTask(4954,1)
Say("B�n �� ��ng k� th�nh c�ng m� m�y")
else
Say("B�n kh�ng �� 20 xu �� s� d�ng t�nh n�ng")
end
end

function dangkyhwidnew()
mahwid = dochwid()
Msg2Player(mahwid)
Msg2Player(getHWID())
if getHWID() == mahwid or mahwid == 0 then
SetTask(4954,0)
SetTask(4953,0)
Say("B�n �� x�a m� m�y")
else
Say("M� m�y kh�ng kh�p kh�ng th� x�a m� m�y ")
end
end


function ghihwid()
local dem = getHWID()
szPath = "antihwid/".. GetAccount() .. ".txt"
	handle = openfile(szPath, "w+")
	write(handle, dem)	
	closefile(handle)
end

function ghimoihwid()
szPath = "antihwid/".. GetAccount() .. "txt"
	handle = openfile(szPath, "w+")
	write(handle, dem)	
	closefile(handle)
end


function dochwid()
szPath = "antihwid/".. GetAccount() .. ".txt"
		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tostring(nValue)
		end
		closefile(handle)	
		return nValue		
end
