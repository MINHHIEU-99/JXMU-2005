--Edit by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main() 
--4126 Vo Muc Di Thu = 4161
if (GetTask(369) == 43) and (HaveCommonItem(6,1,30157) == 1) then
Talk(5,"L4_yt3","Chu Nguy�n Ch��ng: ��y ch�ng ph�i V� M�c Binh Th� �� Nh�t c�a Nh�c Phi T��ng Qu�n sao? Th�t tuy�t, c� n� Minh Gi�o s� s�m ng�y d�p ���c lo�n v� th�ng nh�t Giang S�n.","Chu Nguy�n Ch��ng: Ta s� kh�ng ph� l�ng Tr��ng Gi�o Ch� d�n d�t Minh Gi�o d�p lo�n gi�c ngo�i x�m, mang l�i y�n b�nh cho b� t�nh. Th�t �a T� v� Thi�u Hi�p!","Ng��i ch�i: Chu huynh ch� kh�ch s�o. Tr��ng Gi�o Ch� c�n d�n l� giao l�i tr�ng tr�ch Gi�o Ch� cho Quang Minh T� S� D��ng Ti�u, nh� Chu Huynh ra tay ph� tr� Minh Gi�o.","Ng��i ch�i: N�u Chu Huynh c� l�ng ph�n gi�o, l�m h�i ��n mu�n d�n b� t�nh, Gi�o Ch� s� t�m Chu Huynh m� h�i t�i. Xin C�o T�!")
elseif (GetTask(369) >= 44) then
Talk(1,"","Chu Nguy�n Ch��ng: Ta �� hi�u. V� Minh Gi�o, s�ng ch�t kh�ng m�ng. Ta c�ng v� b�n d�n thi�n h� m� d�c s�c th�i. Ng��i h�y b�o tr�ng!")
else 
Talk(1,"","Chu Nguy�n Ch��ng: M� ��c c�a ta l� th�ng nh�t Giang S�n c�ng c�c huynh �� Minh Gi�o, ph�t d��ng quang ��i b�n Gi�o �� qu�n h�ng thi�n h� ph�i n� ph�c!")
end
end;

function L4_yt3()
--Xoa Vo Muc Di Thu
DelCommonItem(6,1,30157)
SetTask(369,44)
AddNote("Giao V� M�c Di Th� cho Chu Nguy�n Ch��ng, �i l�n Thi�u L�m T� h�i b�o v�i Tr��ng V� K�")
Msg2Player("Giao V� M�c Di Th� cho Chu Nguy�n Ch��ng, �i l�n Thi�u L�m T� h�i b�o v�i Tr��ng V� K�")
end; 




