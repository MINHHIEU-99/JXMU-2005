--  Edit by trilap2004--
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

function main()
if (GetTask(369) == 44) then
Talk(5,"L4_yt4","Tr��ng V� K�: �a T� C�c H� �� gi�p ta chuy�n giao c�c th� c�n thi�t!","Ng��i ch�i: Xin Tr��ng Huynh ��ng kh�ch s�o, Huynh �� c� tung t�ch c�a Th�nh C�n hay ch�a?","Tr��ng V� K�: H�n b�t ng� ra tay ��nh l�n khi ch�ng ta giao chi�n v�i Tam ��i Th�n T�ng c�a Thi�u L�m. Hi�n h�n �� b� ch�ng ta ��nh ch�y ��n g�n H� Ph�ng Sinh, h�y mau �u�i theo!!!","Ng��i Ch�i: Th� ra l� th�, ta s� �u�i theo h�n ngay ��y!")
elseif (GetTask(369) == 46) then
Talk(6,"L4_yt5","Ng��i ch�i: Xin giao l�i Th�nh C�n cho nh� v�!","Tr��ng V� K�: Ngh�a ph� mu�n ph� v� c�ng c�a h�n ta v� tha cho h�n 1 m�ng, �� h�n l�i ��y nghe kinh ni�m Ph�t s�m h�i!","Tr��ng V� K�: Ta c�n 1 vi�c cu�i c�ng c�n C�c H� gi�p, �� l� �i ��n M�t ��o c�a Minh Gi�o, ch�n Sa M�c M� Cung T�ng 3, t�m bia m� c�a ti�n nhi�m Gi�o Ch� D��ng ��nh Thi�n v� D��ng Phu Nh�n.","Tr��ng V� K�: kh�n ��u b�o cho h� bi�t m�i chuy�n �� s�ng t�, Th�nh C�n t� nay �� ���c thu ph�c v� ch�nh ��o!","Tr��ng V� K�: V� c�ng c�a ng��i qu� th�t ti�n b� v��t b�c! �� �a t�, Khi l�m xong vi�c h�y v� ��nh Quang Minh ch�n Sa M�c ��a Bi�u t�m ta nh�.")
elseif (GetTask(369) >= 45) and (GetTask(369) < 46) then
Talk(1,"","Tr��ng V� K�: H�y mau �u�i theo Th�nh C�n ��ng �� h�n ch�y tho�t!!!")
elseif (GetTask(369) >= 41) and (GetTask(369) < 44) then
Talk(1,"","Tr��ng V� K�: C�c H� �� chuy�n h�t c�c v�t ph�m ta giao cho ng��i ch�a?")
elseif (GetTask(369) >= 47) then
Talk(1,"","Tr��ng V� K�: H�y mau �i b�i D��ng Gi�o Ch� v� Phu Nh�n gi�p ta. Ch�ng ta s� h�n nhau v� ��nh Quang Minh �� h�i h�p.")
else
Talk(1,"","Tr��ng V� K�: Thi�n H� nhi�u �n o�n v�i ngh�a ph� ta n�n k�o l�n ��y �� ��i n� x�a. Ta kh�ng th� n�o �� h� g�y h�i t�i �ng �y ���c.")
end
end; 

function L4_yt4()
SetFightState(1)
SetTask(369,45)
SetFightState(1);
AddNote("C�p t�c ��n H� Ph�ng Sinh g�n l�i ra v�o Th�p L�m �u�i theo Th�nh C�n.") 
Msg2Player("G�p Gi�o Ch� Minh Gi�o Tr��ng V� K�, nh�n nhi�m v� tr�ng tr� hung ��, C�p t�c ��n H� Ph�ng Sinh g�n l�i ra v�o Th�p L�m �u�i theo Th�nh C�n.") 
end; 

function L4_yt5()
SetTask(369,47)
AddNote("�i M� Cung Sa B�c T�ng 3, v�n l� M�t ��o Minh Gi�o, b�i bia m� D��ng ��nh Thi�n v� D��ng Phu Nh�n. T�a �� 202/216") 
Msg2Player("G�p Gi�o Ch� Minh Gi�o Tr��ng V� K�, nh�n nhi�m v� cu�i c�ng, �i M� Cung Sa B�c T�ng 3, v�n l� M�t ��o Minh Gi�o, b�i bia m� D��ng ��nh Thi�n v� D��ng Phu Nh�n. T�a �� 202/216") 
end; 