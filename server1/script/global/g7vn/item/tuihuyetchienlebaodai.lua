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
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
--huyet chien le bao 3002 huyet chien chieu thu 3003
------------------------------------------------------
function main()
	dofile("script/global/g7vn/item/tuihuyetchienlebaodai.lua")
	SetTask(3002, GetTask(3002) + 10000)
	

	Say("B�n nh�n ���c 10k �i�m huy�t chi�n. Xin ki�m tra �i�m huy�t chi�n t�i NPC Huy�t chi�n")
	return 0
	

end;
