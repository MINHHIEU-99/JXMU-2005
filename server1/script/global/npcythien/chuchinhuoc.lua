--Edit by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
--4119 Cuu Am Bach Cot Trao  = 4157
if (GetTask(369) == 31) and (HaveCommonItem(6,1,30153) == 1) then
Talk(5,"L3_yt1","Chu Ch� Nh��c: ��y qu� th�t l� cu�n b� ki�p c�a ta l�m r�i l�c giao ��u v�i V� K� S� Huynh. Ng��i n�i l� b�n ng��i h� nghi ng� ta l� ng��i ��u ��c b�n h� v� c��p l�y � Thi�n Ki�m v� �� Long �ao tr�n B�ng H�a ��o?","Chu Ch� Nh��c: Th�t n�c c��i...Ngay ch�nh ta l�c �� c�ng tr�ng ��c. C� T� Ti�n B�i l�m ch�ng cho ta, ch�nh �ng �y n�i r�ng � Qu�n Ch�a M�ng C� g�y ra.","Chu Ch� Nh��c: Ng��i c�n ph�i l�n Thi�u L�m T� t�m g�p T� Ti�n B�i m� h�i chuy�n �i. M�y ng�y sau ta v� V� K� S� Huynh s� �i giao ��u v�i c�c Th�n T�ng Thi�u L�m �� c�u T� Ti�n B�i ra.","N�u Chu C� N��ng n�i nh� v�y, ta s� l�p t�c l�n ���ng ngay")
elseif (GetTask(369) >= 32) and (GetTask(369) < 33)then
Talk(1,"","Chu Ch� Nh��c: Ng��i kh�ng c�n mau �i h�i T� Ti�n B�i cho ra l�!")
elseif (GetTask(369) == 33) then
Talk(6,"L3_yt3","Chu Ch� Nh��c: Ta v�n d� �o�n ���c T� T�n �� bi�t, ch�nh nh� th� ta mu�n th�ng � ��i H�i �� S� �� tr� kh� �ng ta �i. Ta th�t kh�ng mu�n V� K� S� Huynh bi�t ���c chuy�n n�y...Ta th�t c� n�i l�ng ri�ng kh�ng th� n�i ���c.","Chu Ch� Nh��c: C� l� v� ta qu� y�u h�n m� �� mang l�ng th� h�n Tri�u M�n s�u ��m, ngay c� vi�c l�m tr�i l�i di hu�n c�a S� Ph� Di�t Tuy�t S� Th�i.","Chu Ch� Nh��c: Th�i ���c, ng��i h�y ra sau n�i giao chi�n v�i �� T� H� Ki�m c�a b�n ph�i, n�u ng��i th�ng ���c c� �y, h�y mang t�i v�i ch�a � Thi�n Ki�m v� �� Long �ao t�m ���c v� giao l�i cho V� K� Ca Ca.","Chu Ch� Nh��c: Ta ph�i �i Thi�u L�m T� 1 chuy�n �� t�m T� T�n ��y.","Ng��i ch�i: ���c th�i, ta s� ra �� giao chi�n ngay.")
--4155 Y Thien Kiem
elseif (GetTask(369) == 41) and (HaveCommonItem(6,1,30151) == 1) then
Talk(6,"L4_yt1","Chu Ch� Nh��c: V� K� S� Huynh �� cho ng��i ��c l�i nguy�n v�n c�y � Thi�n Ki�m cho ta �? Huynh �y c�n suy ngh� ��n ta sao?","Ng��i ch�i: Tr��ng huynh �� �� bi�t r� r�ng c� n��ng l� ng��i h� ��c th� nh�ng v�n kh�ng �� b�ng.","Ng��i ch�i: ng��c l�i V� K� c�n nh� ta chuy�n � Thi�n Ki�m ��n v� c�u xin c� h�y ni�m t�nh h�n m� tha cho T� Ti�n B�i 1 con ���ng s�ng. R�ng su�t ��i n�y h�n ��nh ph� l�ng mong ��i c�a c� n��ng!","Chu Ch� Nh��c: Ta ...Ta hi�u r�i...Ng��i �i �i...ta kh�ng c�n mu�n nh�c ��n t�n h� Tr��ng v� t�nh n�y n�a. C�n ph�n T� Ti�n B�i, ta c�ng kh�ng c�n quan t�m n�a. T� nay ta s� l�m theo di hu�n c�a S� Ph�, quang ��i Nga Mi ph�i, oai ch�n thi�n h�.","Chu Ch� Nh��c: Ng��i h�y B�o tr�ng!" )
elseif (GetTask(369) >= 34) then
Talk(1,"","Chu Ch� Nh��c: Ch�c ng��i may m�n l�y ���c th� ng��i c�n...!")	
else 
Talk(1,"","Chu Ch� Nh��c: Ta kh�ng th� c�ng V� K� S� Huynh �i c�ng qu�ng ��i c�n l�i c�ng ch� v� Tri�u M�n. H�i ng��i ta thua k�m � ta � �i�m n�o ch�?")	
end
end

function L3_yt1()
--Xoa 4119 Cuu Am Bach Cot Trao = 4157
DelCommonItem(6,1,30153)
SetTask(369,32)
AddNote("Ch�t v�n Chu Ch� Nh��c, l�n Thi�u L�m T� t�m Kim Mao S� V��ng T� T�n h�i chuy�n. �ng ta �ang t�a thi�n g�n � th� luy�n tr��ng g�n �� T� ph�ng.") 
Msg2Player("Ch�t v�n Chu Ch� Nh��c, l�n Thi�u L�m T� t�m Kim Mao S� V��ng T� T�n h�i chuy�n. �ng ta �ang t�a thi�n � th� luy�n tr��ng g�n �� T� ph�ng.") 
end; 

function L3_yt3()
SetTask(369,34)
AddNote("��i tho�i Chu Ch� Nh��c th�nh c�ng, b��c ti�p theo ra sau n�i ��n g�n bia m� c�a Di�t Tuy�t S� Th�i � / giao chi�n v�i �� T� H� Ki�m") 
Msg2Player("��i tho�i Chu Ch� Nh��c th�nh c�ng, b��c ti�p theo ra sau n�i ��n g�n bia m� c�a Di�t Tuy�t S� Th�i � 285/301 giao chi�n v�i �� T� H� Ki�m") 
end; 

function L4_yt1()
DelCommonItem(6,1,30151)
SetTask(369,42)
AddNote("Chuy�n giao � Thi�n Ki�m cho Chu Ch� Nh��c, �i ��i L� Thi�n Long T� 218/197 t�m Th��ng Ng� Xu�n �� giao cho h�n �� Long �ao") 
Msg2Player("Chuy�n giao � Thi�n Ki�m cho Chu Ch� Nh��c, �i ��i L� Thi�n Long T� 218/197 t�m Th��ng Ng� Xu�n �� giao cho h�n �� Long �ao") 
end; 
