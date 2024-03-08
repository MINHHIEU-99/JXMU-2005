----------------------Script*By*Heart*Doldly***-------------------------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
---------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
--huyet chien le bao 3002 huyet chien chieu thu 3003
------------------------------------------------------
function main()
	dofile("script/global/g7vn/item/tuihuyetchienlebao.lua")
	local huyetchienchieuthu = GetTask(3003)
	if huyetchienchieuthu >= 1 then
		SetTask(3002, GetTask(3002) + 11000)
		SetTask(3003, 0)
		Msg2Player("NhËn §­îc 11000® HuyÕt ChiÕn")
		return 0
	else
		SetTask(3002, GetTask(3002) + 1100)
		Msg2Player("NhËn §­îc 1100® HuyÕt ChiÕn")
		return 0

	end
	

end;
