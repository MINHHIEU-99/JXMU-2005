Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")

SuDungHangNgay	 = 5980
TestXemHangNgay	 = 5979
function main()
return 1;
end
function main1()
dofile("script\global\g7vn\item\toannanglenh.lua")
tbAward100k = {
	{nExp_tl = 200e6},
}

local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(SuDungHangNgay) ~= nDate) then
		SetTask(TestXemHangNgay, GetTask(TestXemHangNgay)+1)
		 if GetTask(TestXemHangNgay)==5 then
		 SetTask(SuDungHangNgay, nDate) 
		 end
	end
	
	
if nt_getTask(747)>=10000 and GetTask(TestXemHangNgay) <=5 then
	nt_setTask(747, floor(nt_getTask(747) - 10000));
	tbAwardTemplet:GiveAwardByList(tbAward100k,"Ph�n Th��ng ��t M�c 100 Ng�n")
	Msg2Player("Ch�c M�ng B�n �� Nh�n ���c 50 tr �i�m Kinh Nghi�m, �i�m T�ch L�y T�ng Kim C�n L�i L� "..nt_getTask(747).."--")
		if GetTask(TestXemHangNgay) ==5 then
			SetTask(TestXemHangNgay, GetTask(TestXemHangNgay)+1)
				end
		else 
			Say("Nh� ng��i kh�ng �� 10000� t�ch l�y t�ng kim Ho�c �� s� d�ng qu� 5 l�n/1 ng�y")

		end
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end