--  Edit by Jackie Gaming--
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

-- Kiem tra Task 369 la 20 tu file truongtamphong.lua
-- neu dung thi TVK se noi chuyen, ko thi ko  
function main() 
local n_solan = GetTask(5969);
	if n_solan <3 then
	Say("Ng��i ch�a c�i l�o 3 M� ��i Ti�p Nh�n Nhi�m V� N�y Sao, Th�t H�m H�???") 
	return 0;
	end
if (GetTask(369) == 20) then
Talk(3,"L2_yt","Tr��ng V� K�: Ta nghe qua r�ng ng��i l� ng��i �� gi�p S� �ng Tr��ng Tam Phong t�m ra cu�n v�n th� ghi l�i C�u D��ng Ch�n Kh�. Th�t l� �a t� �a t�!","Ng��i ch�i: Xin b�i ki�n Tr��ng Gi�o Ch�, ng��i qu� l�i r�i, ��y ch� l� vi�c nh� m�n, ��ng �� t�m. Ta ��n ��y tham ki�n huynh v� mu�n t�m hi�u truy�n thuy�t c�a � Thi�n Ki�m v� �� Long �ao.")
elseif (GetTask(369) == 40) then
Talk(4,"L4_yt","Tr��ng V� K�: Th� ra ��u �u�i c�u chuy�n l� nh� v�y. K� th�c ta l�i kh�ng ng� Chu Ch� Nh��c l�i l�m chuy�n n�y. Ch�c c� l� ch� v� ta m� khi�n c� �y th�nh ng��i nh� th�. Ta th�t c� l�i.","Tr��ng V� K�: T�nh m�ng c�a ngh�a ph� l� tr�n h�t, ng��i h�y c�m l�y � Thi�n Ki�m giao l�i cho Chu Ch� Nh��c, n�i r�ng ta tha l�i cho c� �y, su�t ��i n�y c� l� ta s� ph� c� �y r�i, xin c� �y h�y n� t�nh m� tha cho ngh�a ph� ta 1 con ���ng s�ng.", "Tr��ng V� K�: R�i c�m l�y �� Long �ao giao cho Th��ng Ng� Xu�n, Huynh �y �ang t� t�c � ��i L� Thi�n Long T�. Sau �� giao V� M�c Di Th� m� ta t�m th�y b�n trong cho Chu Nguy�n Ch��ng, y �ang t� t�c t�i 1 ng�i ch�a nh� � ph�a B�c D��ng Ch�u. ")
elseif (GetTask(369) >= 21) and (GetTask(369) < 22)then
Talk(1,"","Tr��ng V� K�: H�y mau �i ra ngo�i th�nh Bi�n Kinh d� x�t t�nh h�nh, giao ��u c�ng c�c Nh�n S� trong V� L�m �� t�m hi�u ng�n ng�nh gi�p ta!!")
elseif (GetTask(369) == 22) then
Talk(6,"L2_done","Tr��ng V� K�: Th� ra 1 trong b�n h� l� tay sai c�a H�n Nguy�n Ph�ch L�ch Th� Th�nh C�n. H�n ta �� gia nh�p Thi�u L�m v� l�y hi�u l� Vi�n Ch�n. Ngh�a ph� ta v� h�n c� m�i th� kh�ng ��i tr�i chung.","Tr��ng V� K�: Phen n�y nh� ng��i m� ta bi�t ���c ch�n t��ng, th�t c�m k�ch v� c�ng!","Ng��i ch�i: Xin Tr��ng Huynh ��ng kh�ch s�o, ta ch�ng qua th�y chuy�n n�y v� c�ng b�t th��ng.","Ng��i ch�i: ta th�y v� c�ng c�a t�n tay sai kh�ng thua k�m g� c�c Nh�n S� V� L�m, c� khi c�n v��t tr�i h�n. Ngay ch�nh ta c�ng r�t kh� kh�n �� ��nh b�i h�. Tr��ng huynh c� g� ch� gi�o �� sau n�y b�n h� c�n l�ng h�nh ta s� ra tay tr� h�a cho d�n.","Tr��ng V� K�: C�c h� qu� nhi�n l� ng��i t�t. Ta s� truy�n th� cho C�c H� C�u D��ng Th�n C�ng. Xin phi�n c�c h� gi�p cho v�i vi�c v� ta kh�ng ti�n l� di�n. M�n Nhi �� c� d�n x�p cho C�c h�, h�y ��i tho�i v�i n�ng �y!")
-- Danh sua 974 = 1650 4130=4159 4131 = 4160
elseif (GetTask(369) == 49) and (HaveCommonItem(6,1,30155) == 1) and (HaveCommonItem(6,1,30156) == 1) and (HaveMagic(1996) < 0) then
Talk(4,"L5_done","Tr��ng V� K�: ��y ch�nh l� Kh�u Quy�t v� H�nh Chi�u c�a C�n Kh�n ��i Na Di m� ta h�c ���c.","Ng��i ch�i: T�i H� ��c ch�ng hi�u ���c ph�n n�o, Tr��ng Huynh c� th� ch� gi�o r� th�m ���c kh�ng?","Tr��ng V� K�: C�c h� qu� nhi�n l� ng��i tinh t��ng V� H�c. Ta s� truy�n th� cho C�c H� c�c chi�u th�c c�a C�n Kh�n ��i Na Di. H�y xem r� c�c th�c v� h�c thu�c kh�u quy�t theo ta...!")
--Danh sua 973 va 973 thanh 1648 1649
elseif (HaveMagic(1994) >= 0)  and (HaveMagic(1996) < 0) then
Talk(1,"","Tr��ng V� K�: B�y gi� C�c H� c� th� d�ng C�u D��ng Th�n C�ng ra ngo�i th�nh Bi�n Kinh d�p lo�n c�c Nh�n S� V� L�m �� mang l�i b�nh y�n cho b� t�nh thi�n h�. H�y �i th� 1 chuy�n. Xong r�i th� t�m Tri�u M�n Qu�n Ch�a ��i tho�i nh�!")
-- Danh sua 974 = 1650
elseif (HaveMagic(1996) >= 0) then
Talk(1,"","Tr��ng V� K�: T� nay ng��i �� c�m th� ���c Chi�u Th�c v� h�c b�t nh�t V� L�m, C�n Kh�n ��i Na Di. Tr��c khi T� bi�t, ta c� v�i l�i nh�c nh� c�ng c�c h�. Khi n�o Minh Gi�o c� chuy�n c�ng nh� b� t�nh b� �c hi�p, xin c�c h� ra tay ngh�a hi�p �� t��ng tr�. �a T� �a T�! Xin C�o T�, c� duy�n �c s� G�p l�i.")
else
Talk(1,"","Tr��ng V� K�: Ng��i c� bi�t Tr��ng Tam Phong S� �ng �ang du ngo�n n�i ��u kh�ng?")
end
end; 

function L2_yt() 
Say("Tr��ng V� K�: Nghe ��n nh�n s� v� l�m k�o nhau l�n Thi�u L�m T� �� tham gia ��i H�i �� S�, mu�n t�m ngh�a ph� ta �� thanh to�n �n o�n n�m x�a. Nghe ��n h� �� ��n ngo�i th�nh Bi�n Kinh, giang h� d�y s�ng, l�m b� t�nh l�m than. Ta nghi c� ng��i ��ng ��ng sau chuy�n n�y, ta ph�i l�n Thi�u L�m t�m ngh�a ph� tr��c b�n h�. Ng��i h�y �i d� th�m xem th�. Ph�t hi�n ���c chuy�n g� th� v� ��y h�i b�o.",2,"Ta s� �i ngay./L2_get_yes","Ta c� v�i chuy�n c�n l�m tr��c ��./L2_get_no") 
end;

function L4_yt() 
Say("Tr��ng V� K�: H�y gi�p ta chuy�n giao � Thi�n Ki�m cho Ch� Nh��c, �� Long �ao cho Th��ng Ng� Xu�n, V� M�c Di Th� cho Chu Nguy�n Ch��ng, c�n d�n Chu Huynh nh�ng l�i ta vi�t trong Di Th�. Sau khi xong vi�c, ��n t�m ta v� Ngh�a Ph� � Thi�u L�m, ch�ng ta s� c�ng nhau t�m Th�nh C�n �� thanh to�n h�n tr� h�i cho V� L�m.",2,"Ta s� �i ngay./L4_get_yes","Ta c� v�i chuy�n c�n l�m tr��c ��./L4_get_no") 
end;


function L2_get_yes()  
	SetTask(369,21)
AddNote("G�p Gi�o Ch� Minh Gi�o Tr��ng V� K�, nh�n nhi�m v� d� th�m ��i H�i �� S�, ��n h��ng nam ngo�i th�nh Bi�n Kinh, ���ng l�n Thi�u L�m T� �� d� th�m t�nh h�nh.") 
Msg2Player("G�p Gi�o Ch� Minh Gi�o Tr��ng V� K�, nh�n nhi�m v� d� th�m ��i H�i �� S�, ��n h��ng nam ngo�i th�nh Bi�n Kinh, ���ng l�n Thi�u L�m T�  �� d� th�m t�nh h�nh.") 
end; 

function L2_get_no() 
end;

function L2_done() 
SetTask(369,30)
AddNote("H�i ��p V� K�, ho�n th�nh nhi�m v�, ���c Tr��ng Gi�o Ch� truy�n th� v� c�ng C�u D��ng Th�n C�ng") 
Msg2Player("H�i ��p V� K�, ho�n th�nh nhi�m v�, ���c Tr��ng Gi�o Ch� truy�n th� v� c�ng C�u D��ng Th�n C�ng") 
---- Danh sua 973 = 1648
AddMagic(1994,1)
end; 

function L4_get_yes()  
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30151,0,0,0}, nBindState=-2}, "test", 1);
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30152,0,0,0}, nBindState=-2}, "test", 1);
--tbAwardTemplet:GiveAwardByList({tbProp={4,1506,1,1,0,0},nCount=500},"Ti�n ��ng")--  tui tien dong
--Danh doi id vo muc di thu 4126=4161
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30157,0,0,0,0}, nBindState=-2}, "test", 1);
SetTask(369,41)
AddNote("H�i b�o Gi�o Ch� Minh Gi�o Tr��ng V� K�, nh�n nhi�m v� ��n Nga Mi chuy�n giao � Thi�n Ki�m cho Chu Ch� Nh��c v� c�u xin n�ng �y tha cho T� T�n.") 
Msg2Player("H�i b�o Gi�o Ch� Minh Gi�o Tr��ng V� K�, nh�n nhi�m v� ��n Nga Mi chuy�n giao � Thi�n Ki�m cho Chu Ch� Nh��c v� c�u xin n�ng �y tha cho T� T�n.") 
end; 

function L4_get_no() 
end;

function L5_done() 
DelCommonItem(6,1,30155)
DelCommonItem(6,1,30156)
AddNote("H�i ��p V� K�, ho�n th�nh nhi�m v�, ���c Tr��ng Gi�o Ch� truy�n th� v� c�ng C�n Kh�n ��i Na Di. V� K� c�ng Tri�u M�n t� gi� ra �i phi�u b�t giang h�.") 
Msg2Player("H�i ��p V� K�, ho�n th�nh nhi�m v�, ���c Tr��ng Gi�o Ch� truy�n th� v� c�ng C�n Kh�n ��i Na Di. V� K� c�ng Tri�u M�n t� gi� ra �i phi�u b�t giang h�.")
Msg2SubWorld("<color=green>Ch�c M�ng  <color=yellow>"..GetName().." �� Ho�n th�nh chu�i nhi�m v� � thi�n �� long k�, h�c ���c tuy�t h�c minh gi�o<color>")
 
-- Danh sua 974 = 1650
--AddMagic(1995,1)
AddMagic(1996,1)
SetTask(5981,2)
SetTask(5980,0)
end