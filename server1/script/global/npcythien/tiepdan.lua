IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
--Include("\\script\\global\\hotrothem.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")


function main() 
dofile("script/global/npcythien/tiepdan.lua");
dialog_main()	
end


function dialog_main()
if  (GetTask(369) > 9) then
	Say("Ng��i �ang l�m nhi�m v� l�m sao c� th� nh�n l�i ���c, h�y ho�n th�nh tr��c �i")
return 1 
end
	local szTitle = "<npc><enter><color=yellow>V� L�m Ch� T�n-B�o �ao �� Long<enter>Hi�u l�nh Thi�n H�-M�c c�m b�t t�ng<enter>� Thi�n b�t xu�t-Th�y d� tranh phong<color><enter>Nghe n�i <color=red>Gi�o Ch� Minh Gi�o Tr��ng V� K�<color> t�i xu�t giang h�! H�n �ang n�m gi� b� m�t c�a � Thi�n Ki�m v� �� Long �ao, thi�n h� l�i th�m nhi�u bi�n ��ng"
	local tbOpt =
	{
		{"H�i chuy�n", noi},
		{"Tho�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
end




function noi()
if (GetTask(5981) > 1) then
	Say("Ng��i �� ho�n th�nh 1 l�n r�i, hi�n t�i kh�ng th� ho�n th�nh ���c n�a")
return 1 
end
if (GetLevel() >= 180) and  (GetTask(5969) >= 3) and  (GetTask(369) ~= 10)	  then		
Say("V� Danh N��ng: Ta c� nghe Giang H� ��n r�ng c� 1 L�o ��o S� th�n b� �ang gh� th�m ��c C� Ki�m tr�n Ho�nh S�n Ph�i c� quan h� m�t thi�t v�i Tr��ng Gi�o Ch�, �ng ta c� th� gi�p ng��i t�m tung t�ch c�a Tr��ng V� K�, ng��i c� mu�n th� kh�ng?",2, "���c, ta s� �i ngay/go", "�� ta suy ngh� k� l�i xem/no")
elseif (GetTask(369) > 9)  then
local szTitle = "<npc>H�y l�n Ho�nh S�n Ph�i t�m L�o ��o S� �i"
	local tbOpt =
	{
		{"T�m Bi�t"},
	}
	
	CreateNewSayEx(szTitle, tbOpt)
else
Talk(1,"","Ch� c� ng��i v� c�ng c�p 180 tr�n c�i l�o 3 m�i c� �� n�ng l�c truy t�m b� m�t � Thi�n �� Long! H�y �i r�n luy�n th�m �i nh�!")	
end
end


function go() 
Talk(1,"","Ch�c C�c H� th��ng l� b�nh an m� ��o th�nh c�ng!")
SetTask(369,10)
SetTask(5980,1)
Msg2Player("Ch�nh th�c ti�p nh�n th� th�ch truy t�m b� m�t � Thi�n �� Long truy�n k�. �i Ho�nh S�n Ph�i Trong Ph�ng ��c C� Ki�m Ng� t�m l�o ��o s� th�n b�")
Msg2SubWorld("<color=green>Ch�c M�ng  <color=yellow>"..GetName().." �� Nh�n Nhi�m V� � Thi�n �� Long K�, ��n Ho�nh S�n Ph�i T�m l�o ��o s� th�n b�<color>")
end 

function no() 
end 

