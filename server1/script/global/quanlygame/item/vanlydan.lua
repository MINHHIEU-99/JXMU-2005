--Event cau ca bang hoi
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\quanlygame\\sukien\\cauca\\head.lua")
IncludeLib("ITEM")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")



function main(nItemIdx)
dofile("script/global/quanlygame/item/vanlydan.lua")
SetTask(5210,100)
SetTask(5209,100)
Say("<color=green>Ch�c m�ng ��i hi�p nh�n ���c t�ng gi�i h�n s� l�n s� d�ng tr�n ph�i linh ��n linh d��c.\n<color=pink>L�u � m�i nh�n v�t ch� n�n s� d�ng 1 vi�n duy nh�t s� d�ng nhi�u kh�ng ���c c�ng d�n.")	
end

