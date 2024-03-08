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
	tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng §¹t M«c 100 Ngµn")
	Msg2Player("Chóc Mõng B¹n §· NhËn §­îc 50 tr §iÓm Kinh NghiÖm, §iÓm TÝch Lòy Tèng Kim Cßn L¹i Lµ "..nt_getTask(747).."--")
		if GetTask(TestXemHangNgay) ==5 then
			SetTask(TestXemHangNgay, GetTask(TestXemHangNgay)+1)
				end
		else 
			Say("Nhµ ng­êi kh«ng ®ñ 10000® tÝch lòy tèng kim HoÆc ®· sö dông qu¸ 5 lÇn/1 ngµy")

		end
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end