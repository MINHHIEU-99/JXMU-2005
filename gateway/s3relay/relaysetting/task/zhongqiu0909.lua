	Include( "\\script\\tong\\tong_header.lua")

	local _GetNexStartTime = function(nStartHour, nStartMinute, nInterval)

	local nNextHour = nStartHour

	local nNextMinute = nInterval * ceil(nStartMinute / nInterval)

	if nNextMinute >= 60 then

	nNextHour = nNextHour + floor(nNextMinute / 60)

	nNextMinute = mod(nNextMinute, 60)

	end

	if (nNextHour >= 24) then

	nNextHour = mod(nNextHour, 24);

	end;

	return nNextHour, nNextMinute

	end

	local tbLadderId =

	{

	10263,10264,10265

	}

	local tbTongTSK_Exploit =

	{

	TONGTSK_Gongde_meici,

	TONGTSK_Gongde_meizhou,

	TONGTSK_Gongde_Total,

	}

	IncludeLib( "TONG ")

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "Trung thu th�n k� dong c�y ")

	local nInterval = 30

	local nStartHour = tonumber(date( "%H ")) ;

	local nStartMinute = tonumber(date( "%M "));

	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)

	TaskTime(nNextHour, nNextMinute);

	-- thi�t tr� kho�ng c�ch th�i gian, ��n v� vi ph�t

	TaskInterval(nInterval) --nInterval ph�t m�t l�n

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(0)

	local szMsg = format( "=====%s ## %d:%d ### %d #? ? ###=======", "MidA200909",nNextHour, nNextMinute, nInterval)

	OutputMsg(szMsg);

	end

	local clearLaddderData = function (nId)

	OutputMsg( "clear ladder ing . . .");

	Ladder_ClearLadder(%tbLadderId[nId])

	local nTongID = TONG_GetFirstTong();

	while(nTongID and nTongID ~= 0)do

	TONG_ApplySetTaskValue(nTongID, %tbTongTSK_Exploit[nId], 0);

	nTongID = TONG_GetNextTong(nTongID);

	end

	OutputMsg( "clear ladder over ");

	end

	local _PublicRank = function(nId)

	local szName, nValue = Ladder_GetLadderInfo(%tbLadderId[nId], 1);

	local szMsg = " "

	if szName ~= nil and szName ~= "" then

	if nId == 1 then

	szMsg = format( "Ch�c m�ng %s %s d� thu ���c �� nh�t, bang h�i th�nh vi�n c� �i�u ki�n kh� d� l�nh, bang h�i th�nh vi�n c� �i�u ki�n kh� d� l�nh %u kinh nghi�m",szName, "L�n n�y b�i danh", 6e7)

	elseif nId == 2 then

	szMsg = format( "Ch�c m�ng %s %s d� thu ���c �� nh�t, bang h�i th�nh vi�n c� �i�u ki�n kh� d� l�nh %u kinh nghi�m",szName, "M�i tu�n b�i danh", 15e7)

	elseif nId == 3 then

	szMsg = format( "Ch�c m�ng %s %s d� thu ���c �� nh�t, bang h�i th�nh vi�n c� �i�u ki�n kh� d� l�nh %u kinh nghi�m",szName, "To�n b� ho�t ��ng b�i danh", 20e7)

	end

	end

	GlobalExecute(format( "dw AddLocalCountNews([[%s]], 2)", szMsg))

	GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))

	end

	function TaskContent()

	local nTime = tonumber(date( "%H%M "))

	local nWeek	= tonumber(date( "%w "))

	local nDate	= tonumber(date( "%y%m%d "))

	local nTaskState = tonumber(date( "%y%m%d%H "))

	if nDate < 091211 or nDate > 200124 then

	return

	end

	-- th�ng c�o

	if nTime >= 2000 and nTime < 2030 then

	local szMsg = " "

	if ( nWeek == 5 or nWeek == 6 or nWeek == 0) then

	%_PublicRank(1)

	end

	if nWeek == 0 then

	%_PublicRank(2)

	end

	if nDate == 200124 then

	%_PublicRank(3)

	end

	end

	local callnpc_flag = 0

	if (nTime >= 1930 and nTime < 2000 ) and ( nWeek == 5 or nWeek == 6 or nWeek == 0) then

	callnpc_flag = 1

	elseif (nTime >= 0000 and nTime < 0100) then

	%clearLaddderData(1)

	if nWeek == 1 then

	%clearLaddderData(2)

	end

	end

	local tbPos =

	{

	{121,226*8*32,275*16*32 },

	{100,183*8*32,203*16*32 },

	{101,171*8*32,198*16*32 },

	{174,218*8*32,192*16*32 },

	{53, 220*8*32,200*16*32},

	{20, 432*8*32,359*16*32},

	{153,232*8*32,180*16*32 },

	{99, 189*8*32,223*16*32 },

	}

	if callnpc_flag == 1 then

	local nId = random(1, getn(tbPos))

	-- c�

	local szExeMsg = format( "dwf \\script\\event\\zhongqiu_jieri\\200909\\rongshu\\addnpc.lua tbZhongQiu200909:AddTree(%d,%d,%d,%d)", 1496, tbPos[nId][1],tbPos[nId][2],tbPos[nId][3])

	OutputMsg(szExeMsg)

	GlobalExecute(szExeMsg)

	--tbPos[nId], tbPos[4] = tbPos[4], tbPos[nId]

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


