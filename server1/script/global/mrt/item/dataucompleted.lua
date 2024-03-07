
IncludeLib("FILESYS");
IncludeLib("RELAYLADDER");	--ÅÅÐÐ°ñ
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua"); -- ÈÎÎñÁ´µÄÍ·ÎÄ¼þ
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua"); -- ÈÎÎñÁ´µÄ½±ÀøÍ·ÎÄ¼þ
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\global\\seasonnpc.lua");
Include("\\script\\global\\mrt\\configserver\\configall.lua")
IncludeLib("SETTING")
IncludeLib("ITEM")

DTL_TASK = 5800
DTL_LIMIT= SoLanNVDaTauTrongNgay

function main()

	dofile("script/global/dataucompleted.lua")
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(DTL_TASK, 0, 8) 
	local nLastUseDate = GetBitTask(DTL_TASK, 8, 24) 
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	if (nUseTimes >= DTL_LIMIT) then
		Say(format("M�t ng�y ch� c� th� s� d�ng 200 D� T�u L�nh", DTL_LIMIT), 0)
		return 1;
	end		
	if tl_gettaskcourse() == 0  then
		Say("Nh�n nhi�m v� d� t�u tr��c m�i s� d�ng l�nh b�i",0);
		return 1
	elseif tl_gettaskcourse() == 1 then
		Task_AwardRecord()
        Task_GiveAward()
		tl_settaskcourse(2)
		Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>L�nh b�i Ho�n Th�nh D� T�u<color> �� v��t qua nhi�m v� l�n n�y")
		nUseTimes = nUseTimes + 1;
		SetBitTask(DTL_TASK, 0, 8,  nUseTimes);
		SetBitTask(DTL_TASK, 8, 24, nLastUseDate);
		return 0
	else 
		Say("Nh�n nhi�m v� d� t�u tr��c m�i s� d�ng l�nh b�i",0);
		return 1
	end

end