Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("LEAGUE")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\battles\\battlehead.lua")

--task  3778 3779 3780 3781 3782 3783 3784 3785 

--task  3786 3787 3788 3789 
--task 3790




function main(nItemIndex)
dofile("script/global/quanlygame/item/quytangtruong.lua")
if GetTask(3786) > 15 or  GetTask(3787)  > 15 or  GetTask(3788)  > 15 then
SetTask(3786,0)
SetTask(3787,0)
SetTask(3788,0)
Msg2Player("<color=pink>V�t ph�m �� qu� h�n s� d�ng ho�c nh�n �� th��ng h� th�ng t� h�y b� v�t ph�m.")
Say("<color=pink>V�t ph�m �� qu� h�n s� d�ng ho�c nh�n �� th��ng v��t qu� 15 l�n quy ��nh h� th�ng t� h�y b� v�t ph�m.")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] h�y b� v�t ph�m th�nh c�ng do v��t qu� 15 l�n",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end


--Msg2Player("<color=pink>B�n �� th�c hi�n nh�n l�n ��u ng�y <color=yellow> "..GetTask(3790).."/"..GetTask(3791).."/2020.")
if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y nh�n.",0);
		return 1
end
	local nSilverCount = CalcEquiproomItemCount(6,1,4527,-1) ;
	if(nSilverCount < 1) then 
	Talk(1,"","C�n c� v� l�m l�nh mang theo b�n ng��i m�i c� th� s� d�ng qu� T�ch L�y.") 
	return  1
	end
		local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
Msg2Player("V�t ph�m �� qu� h�n s� d�ng")
Msg2Player("<color=pink>V�t ph�m �� qu� h�n s� d�ng ho�c nh�n �� th��ng h� th�ng t� h�y b� v�t ph�m.")
Say("<color=pink>V�t ph�m �� qu� h�n s� d�ng ho�c nh�n �� th��ng h� th�ng t� h�y b� v�t ph�m.")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] h�y b� v�t ph�m th�nh c�ng do h�t h�n",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end
if GetTask(3786) >= 15 then
SetTask(3786,0)
SetTask(3787,0)
SetTask(3788,0)
Msg2Player("<color=pink>B�n �� ho�n th�nh nhi�m v� g�i Chu T��c h� th�ng t� h�y b� v�t ph�m.")
Say("<color=pink>B�n �� ho�n th�nh nhi�m v� g�i Chu T��c h� th�ng t� h�y b� v�t ph�m.Gi� ��y b�n c� th� mua h�p Qu� T�ch L�y m�i t�i k� tr�n c�t v� b�t ��u l�a ch�n c�c g�i �� ti�p t�c")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] h�y b� v�t ph�m th�nh c�ng do �� ho�n th�nh 15 nhi�m v� g�i Chu T��c",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end
if GetTask(3787) >= 15 then
SetTask(3786,0)
SetTask(3787,0)
SetTask(3788,0)
Msg2Player("<color=pink>B�n �� ho�n th�nh nhi�m v� g�i Chu T��c h� th�ng t� h�y b� v�t ph�m.")
Say("<color=pink>B�n �� ho�n th�nh nhi�m v� g�i Thanh Long h� th�ng t� h�y b� v�t ph�m.Gi� ��y b�n c� th� mua h�p Qu� T�ch L�y m�i t�i k� tr�n c�t v� b�t ��u l�a ch�n c�c g�i �� ti�p t�c")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] h�y b� v�t ph�m th�nh c�ng do �� ho�n th�nh 15 nhi�m v� g�i Thanh Long",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end
if GetTask(3788) >= 15 then
SetTask(3786,0)
SetTask(3787,0)
SetTask(3788,0)
Msg2Player("<color=pink>B�n �� ho�n th�nh nhi�m v� g�i B�ch H� h� th�ng t� h�y b� v�t ph�m.")
Say("<color=pink>B�n �� ho�n th�nh nhi�m v� g�i B�ch H� h� th�ng t� h�y b� v�t ph�m.Gi� ��y b�n c� th� mua h�p Qu� T�ch L�y m�i t�i k� tr�n c�t v� b�t ��u l�a ch�n c�c g�i �� ti�p t�c")
logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] h�y b� v�t ph�m th�nh c�ng do �� ho�n th�nh 15 nhi�m v� g�i B�ch H�",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		return
end

if GetTask(3786) > 0 then
Msg2Player("<color=pink>Hi�n t�i g�i ��u t� c�a b�n l� Chu T��c : m�i ng�y nh�n ���c 15xu + 1 ti�n th� l� li�n t�c trong 15 ng�y.")
end
if GetTask(3787)  > 0 then
Msg2Player("<color=pink>Hi�n t�i g�i ��u t� c�a b�n l� Thanh Long : m�i ng�y nh�n ���c 25xu + 1 ti�n th� l� li�n t�c trong 15 ng�y.")
end
if GetTask(3788)  > 0 then
Msg2Player("<color=pink>Hi�n t�i g�i ��u t� c�a b�n l� B�ch H� : m�i ng�y nh�n ���c 40xu + 1 ti�n th� l� li�n t�c trong 15 ng�y.")
end
if GetTask(3786) == 0 and  GetTask(3787) == 0  and  GetTask(3788) == 0  then
Msg2Player("<color=pink>Hi�n t�i ��i hi�p ch�a ch�n g�i ��u t� n�o.")
end

local szTitle =  "Qu� t�ng tr��c ��u t� 1 l�i 10 v� sau."
local tbOpt = 
{

{"Ch�n Mua C�c G�i Qu� T�ch L�y", chonmuagoi},
{"Nh�n Ph�n Th��ng H�ng Ng�y", phanthuonghangngay},
{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end


function phanthuonghangngay()
if GetTask(3790) > 0 or GetTask(3791) > 0 then
Msg2Player("<color=pink>B�n �� th�c hi�n nh�n l�n ��u ng�y <color=yellow> "..GetTask(3790).."/"..GetTask(3791).."/2020.")
end

if GetTask(3786) > 0 then
		Say("<color=green>Qu� Chu T��c:<color> m�i ng�y nh�n ���c 15xu + 1 ti�n th� l� li�n t�c trong 15 ng�y.",1,
		"Nh�n qu� h�m nay/nhanhomnaychutuoc")
		return
		end
if GetTask(3787) > 0 then
		Say("<color=green>Qu� Thanh Long:<color> m�i ng�y nh�n ���c 25xu + 1 ti�n th� l� li�n t�c trong 15 ng�y.",1,
		"Nh�n qu� h�m nay/nhanhomnaythanhlong")
		return
		end
if GetTask(3788) > 0 then
		Say("<color=green>Qu� B�ch H�:<color> m�i ng�y nh�n ���c 40xu + 1 ti�n th� l� li�n t�c trong 15 ng�y.",1,
		"Nh�n qu� h�m nay/nhanhomnaybachho")
		return
		end
		end
		
		
function nhanhomnaychutuoc()
local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) == nDate) then -- neu khac se
		Say("M�i ng�y ch� ���c nh�n 1 l�n ng�y mai h�y quay l�i nh�.", 0)
		return
end
		local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) ~= nDate) then -- neu khac se
SetTask(3789, nDate);
tbAwardTemplet:GiveAwardByList({{szName = "ti�n ��ng",tbProp={4,417,1,1,0},nCount=15},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,4584,1,1},nCount=1,nBindState=-2},}, "test", 1);
SetTask(3786,GetTask(3786)+1)
		Say("Nh�n th�nh c�ng ph�n th��ng h�ng ng�y g�i Chu T��c", 0)
	    logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n th�nh c�ng g�i Chu T��c",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
ngaynhanthuong()
end
end

function nhanhomnaythanhlong()
local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) == nDate) then -- neu khac se
		Say("M�i ng�y ch� ���c nh�n 1 l�n ng�y mai h�y quay l�i nh�.", 0)
		return
end
		local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) ~= nDate) then -- neu khac se
SetTask(3789, nDate);
tbAwardTemplet:GiveAwardByList({{szName = "ti�n ��ng",tbProp={4,417,1,1,0},nCount=25},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,4584,1,1},nCount=1,nBindState=-2},}, "test", 1);
SetTask(3787,GetTask(3787)+1)
		Say("Nh�n th�nh c�ng ph�n th��ng h�ng ng�y g�i Thanh Long", 0)
		logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n th�nh c�ng g�i Thanh Long",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
ngaynhanthuong()
end
end

function nhanhomnaybachho()
local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) == nDate) then -- neu khac se
		Say("M�i ng�y ch� ���c nh�n 1 l�n ng�y mai h�y quay l�i nh�.", 0)
		return
end
		local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(3789) ~= nDate) then -- neu khac se
SetTask(3789, nDate);
tbAwardTemplet:GiveAwardByList({{szName = "ti�n ��ng",tbProp={4,417,1,1,0},nCount=40},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "ti�n th� l�",tbProp={6,1,4584,1,1},nCount=1,nBindState=-2},}, "test", 1);
SetTask(3788,GetTask(3788)+1)
		Say("Nh�n th�nh c�ng ph�n th��ng h�ng ng�y g�i B�ch H�", 0)
		logplayer("dulieu/quytangtruong.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n th�nh c�ng g�i B�ch H�",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
ngaynhanthuong()
end
end				


function chonmuagoi()
local szTitle =  "Qu� t�ng tr��c ��u t� 1 l�i 10 v� sau xin h�y ch�n c�c g�i ph� h�p.L�u � ch� ���c ch�n 1 g�i v� m�i g�i ch� ���c nh�n li�n t�c 15 ng�y k� t� ng�y nh�n ��u ti�n."
local tbOpt = 
{

{"Ch�n G�i Chu T��c (200xu)", muagoichutuoc},
{"Ch�n G�i Thanh Long (320xu)", muagoithanhlong},
{"Ch�n G�i B�ch H� (500xu)", muagoibachho},
{"Tho�t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end


function muagoichutuoc()
if GetTask(3787) > 0 then
		Say("B�n �� mua g�i Thanh Long kh�ng th� mua g�i Chu T��c ���c n�a.",0);
		return
end
if GetTask(3788) > 0 then
		Say("B�n �� mua g�i B�ch H� kh�ng th� mua g�i Chu T��c ���c n�a.",0);
		return
end
if GetTask(3786) > 0 then
		Say("B�n �� mua g�i n�y r�i kh�ng c�n mua l�n n�a.",0);
		return
end
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 200) then 
	Talk(1,"","C�n c� 200 xu �� mua ���c g�i Chu T��c.") 
	return 
	end
	SetTask(3786,1)
	ConsumeEquiproomItem(200,4,417,1,1)
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> mua g�i qu� T�ch L�y Chu T��c");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function muagoithanhlong()
if GetTask(3786) > 0 then
		Say("B�n �� mua g�i Chu T��c kh�ng th� mua g�i Thanh Long ���c n�a.",0);
		return
end
if GetTask(3788) > 0 then
		Say("B�n �� mua g�i B�ch H� kh�ng th� mua g�i Thanh Long ���c n�a.",0);
		return
end
if GetTask(3787) > 0 then
		Say("B�n �� mua g�i n�y r�i kh�ng c�n mua l�n n�a.",0);
		return
end
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 320) then 
	Talk(1,"","C�n c� 320 xu �� mua ���c g�i Thanh Long.") 
	return 
	end
	SetTask(3787,1)
	ConsumeEquiproomItem(320,4,417,1,1)
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> mua g�i qu� T�ch L�y Thanh Long");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function muagoibachho()
if GetTask(3787) > 0 then
		Say("B�n �� mua g�i Thanh Long kh�ng th� mua g�i B�ch H� ���c n�a.",0);
		return
end
if GetTask(3786) > 0 then
		Say("B�n �� mua g�i Chu T��c kh�ng th� mua g�i B�ch H� ���c n�a.",0);
		return
end
if GetTask(3788) > 0 then
		Say("B�n �� mua g�i n�y r�i kh�ng c�n mua l�n n�a.",0);
		return
end
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 500) then 
	Talk(1,"","C�n c� 500 xu �� mua ���c g�i B�ch H�.") 
	return 
	end
	SetTask(3788,1)
	ConsumeEquiproomItem(500,4,417,1,1)
	local szNews = format("Xin Ch�c M�ng <color=green>"..GetName().."<color=white> mua g�i qu� T�ch L�y B�ch H�");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
end

function ngaynhanthuong()
if GetTask(3790) >= 0 or GetTask(3791) >= 0  then
return
end
local nDate = tonumber(GetLocalDate("%d"));
local nDate2 = tonumber(GetLocalDate("%m"));
SetTask(3790,nDate)
SetTask(3791,nDate2)
Msg2Player("<color=pink>B�n �� th�c hi�n nh�n l�n ��u ng�y <color=yellow> "..nDate.."/"..nDate2.."/2020.")
Say("<color=pink>B�n �� th�c hi�n nh�n l�n ��u ng�y <color=yellow> "..nDate.."/"..nDate2.."/2020.")
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

