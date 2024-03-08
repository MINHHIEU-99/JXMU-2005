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
		return "N˜ Hi÷p";
	else
		return "ßπi Hi÷p";
	end
end
--huyet chien le bao 3002 huyet chien chieu thu 3003
------------------------------------------------------
function main()
	dofile("script/global/namcung/tuihuyetchienlebao.lua")
	local huyetchienchieuthu = GetTask(3003)
	if huyetchienchieuthu >= 1 then
		SetTask(3002, GetTask(3002) + 11000)
		SetTask(3003, 0)
		Msg2Player("NhÀn ß≠Óc 11000Æ Huy’t Chi’n")
WriteLogPro("dulieu/hoason/huyetchien.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t sd le bao hueyt chien "..GetTask(3002).." diem\n");	

		return 0
	else
		SetTask(3002, GetTask(3002) + 1100)
		Msg2Player("NhÀn ß≠Óc 1100Æ Huy’t Chi’n")
WriteLogPro("dulieu/hoason/huyetchien.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t sd le bao hueyt chien "..GetTask(3002).." diem\n");	

		return 0

	end
	

end;
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end