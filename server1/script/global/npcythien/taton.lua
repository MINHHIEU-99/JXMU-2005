--Edit    by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
if GetLevel() < 190 then
	Say("��ng c�p y�u c�u �� L�m Nhi�m V� tr�n 190, B�n h�y Mau C� G�ng Nh�")
return 1 
end
local n_solan = GetTask(5969);
	if n_solan <4 then
	Say("Ng��i ch�a c�i l�o 4 M� ��i Ti�p Nh�n Nhi�m V� N�y Sao, Th�t H�m H�???") 
	return 0;
	end
if (GetTask(369) == 32) then
Talk(6,"L3_yt2","T� T�n: Ha Ha Ha, th� ra ng��i mu�n bi�t chuy�n x�y ra � ��o B�ng H�a khi x�a. Ta tuy m� nh�ng l�ng n�y kh�ng m�, th�nh gi�c c�a ta r�t t� t��ng. Chu C� N��ng kh�ng th� n�o qua m�t ���c l�o gi� h� �� n�y ��u.","T� T�n: L�c tr��c ta nghi ng� Tri�u M�n l� gi�n �i�p c�a M�ng C� n�n ta kh�ng mu�n V� K� k�t th�n v�i ng��i nh� c� �y. Nh�ng gi� th� ta �� hi�u. Ta ch� t�i cho V� K� v� nh�ng c� n��ng xung quanh h�n �� b� gian k� c�a Chu Ch� Nh��c l�m t�n th��ng.","T� T�n: Ng� Ph�t t� bi, ta c�ng kh�ng m�ng ch�p nh�t Chu C� N��ng. N�u ng��i mu�n bi�t tung t�ch c�a � Thi�n Ki�m v� �� Long �ao, h�y t�m c� �y ��i ch�ng.","T� T�n: Chuy�n l�i c�a ta ��n V� K� v� Chu C� N��ng r�ng ��ng b� c�ng c�u ta l�m chi, T� T�n �� quy y tam b�o v� theo �� �ch ��i S� t�ng kinh ni�m Ph�t. Xin �a t� C�c H�!","Ng��i ch�i: Xin c�m �n T� Ti�n B�i �� n�i r�, t�i h� kh�ng l�m phi�n �ng n�a. Xin m�n ph�p c�o t�!")
elseif (GetTask(369) >= 33) then
Talk(1,"","T� T�n: Ng��i �i t�m Chu C� N��ng m� h�i tung t�ch c�a 2 c�y th�n binh �i nh�. Ta �� quy y n�i c�a Ph�t ng�y ng�y h�c ��o s�m h�i, kh�ng m�ng chuy�n c�a thi�n h� n�a r�i!")	
else 
Talk(1,"","T� T�n: Qu�ng ��i n�y ta b� cu�ng n� �i m� t�m l�i tho�t n�i c�a Ph�t. �ng tr�i b�c ��i ta nh�ng kinh Ph�t mang l�i s� b�nh y�n cho ta! A Di �� Ph�t!")	
end
end

function L3_yt2()
SetTask(369,33)
AddNote("H�i ra ���c ngu�n g�c c�u chuy�n t� T� T�n, quay l�i t�m Chu Ch� Nh��c h�i tung t�ch c�a � Thi�n Ki�m v� �� Long �ao.") 
Msg2Player("H�i ra ���c ngu�n g�c c�u chuy�n t� T� T�n, quay l�i t�m Chu Ch� Nh��c h�i tung t�ch c�a � Thi�n Ki�m v� �� Long �ao.") 
end; 




