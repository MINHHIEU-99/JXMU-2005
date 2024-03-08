----------------hwidanti by tungfwcloud----------
function antimamay()
	local tbSay = {}
	if GetTask(4954) == 0 then
	tinsert(tbSay,"CËp nhËt m· m¸y./#dangkyhwid()")
	end
	if GetTask(4954) == 1 then
	tinsert(tbSay,"Xãa m· m¸y ®Ó cËp nhËt l¹i./#dangkyhwidnew()")
	tinsert(tbSay,"BËt anti m· m¸y./#batanti()")
	tinsert(tbSay,"T¾t anti m· m¸y./#tatanti()")
	tinsert(tbSay,"Më khãa giao dÞch./#mokhoagiaodich()")
	end
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ! /#no()")
	if GetTask(4953) == 1 then
	Say("<color=green>TÝnh n¨ng b¶o mËt account theo m¸y<color>\nT×nh tr¹ng anti ®ang ho¹t ®éng", getn(tbSay), tbSay)
	else
	Say("<color=green>TÝnh n¨ng b¶o mËt account theo m¸y<color>\nT×nh tr¹ng anti kh«ng ho¹t ®éng", getn(tbSay), tbSay)
	end
	return 1	
end;

function batanti()
SetTask(4953,1)
Say("B¹n ®· kÝch ho¹t hÖ thèng Anti M· M¸y")
end

function tatanti()
if getHWID() == dochwid() then
SetTask(4953,0)
	DisabledStall(0);
	ForbitTrade(0);

Say("B¹n ®· ng­ng hÖ thèng Anti M· M¸y")
else
Say("M· m¸y kh«ng khíp kh«ng thÓ t¾t Anti")
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
Say("B¹n ®· ®¨ng ký thµnh c«ng m· m¸y")
else
Say("B¹n kh«ng ®ñ 20 xu ®Ó sö dông tÝnh n¨ng")
end
end

function dangkyhwidnew()
mahwid = dochwid()
Msg2Player(mahwid)
Msg2Player(getHWID())
if getHWID() == mahwid or mahwid == 0 then
SetTask(4954,0)
SetTask(4953,0)
Say("B¹n ®· xãa m· m¸y")
else
Say("M· m¸y kh«ng khíp kh«ng thÓ xãa m· m¸y ")
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
