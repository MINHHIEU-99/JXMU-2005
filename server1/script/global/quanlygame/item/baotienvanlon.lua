IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

function main()
dofile("script/global/quanlygame/item/baotienvanlon.lua")
local tienvan = random(100,150)
Earn(10000*tienvan)
Msg2Player("B�n nh�n ���c <color=green>"..tienvan.."<color> v�n l��ng b�c");
end;
