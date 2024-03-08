IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")

HOACUCCP = 4576
BOHOAHONGCP = 4577



function main(sel)
dofile("script/global/quanlygame/sukien/quoctephunu/hoacuc.lua");

local nDate = tonumber(GetLocalDate("%Y%m%d"));
if nDate > 20200320 then
	Say("Event ®· hÕt hÖ thèng tù hñy vËt phÈm.", 0);
		return
	end;

if GetLevel() < 10 then
		Say("Ng­êi ch¬i ch­a ®¹t cÊp 10 kh«ng thÓ sö dông event.", 0);
		return 1;
        end
	local nTask = GetTask(4576)
	if nTask >= 300 then
		 Say("§· max 300 c¸i kh«ng thÓ sö dông thªm")
		return 1
	end
SetTask(4576,GetTask(4576)+1)
StackExp(500000);
end






function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end





