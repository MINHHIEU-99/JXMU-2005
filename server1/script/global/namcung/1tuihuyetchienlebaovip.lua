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
	dofile("script/global/namcung/tuihuyetchienlebaovip.lua")
	SetTask(3002, GetTask(3002) + 100000)
	
WriteLogPro("dulieu/hoason/huyetchienvip.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t sd le bao hueyt chien "..GetTask(3002).." diem\n");	
	Say("B∑n nhÀn Æ≠Óc 100k Æi”m huy’t chi’n. Xin ki”m tra Æi”m huy’t chi’n tπi NPC Huy’t chi’n")
	return 0
	

end;
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end