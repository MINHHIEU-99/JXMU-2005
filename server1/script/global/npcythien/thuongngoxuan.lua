--Edit    by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main() 
-- 4156 Do Long Dao
if (GetTask(369) == 42) and (HaveCommonItem(6,1,30152) == 1) then
Talk(3,"L4_yt2","Th��ng Ng� Xu�n: ��y ch�ng ph�i B�o �ao �� Long ai c� n� s� Hi�u L�nh ���c Thi�n H� hay sao? Ta s� kh�ng ph� l�ng Tr��ng Gi�o Ch� d�n d�t Minh Gi�o d�p lo�n gi�c ngo�i x�m, mang l�i y�n b�nh cho b� t�nh. Th�t �a T� v� Thi�u Hi�p!","Ng��i ch�i: Th��ng huynh ch� kh�ch s�o. Ta c�n ph�i giao cu�n Di Th� cho Chu huynh � D��ng Ch�u. Xin C�o T�!")
elseif (GetTask(369) >= 43) then
Talk(1,"","Th��ng Ng� Xu�n: Chu huynh �ang � ng�i ch�a nh� ph�a B�c D��ng Ch�u c�ch Nha M�n kh�ng xa. C�c h� l�n ���ng nhanh �� c�n k�p. B�o tr�ng nh�!")
else 
Talk(1,"","Th��ng Ng� Xu�n: H� Thanh Ng�u t� �i�p C�c Y Ti�n �o�n r�ng ta s�ng kh�ng qu� T� Tu�n. Ha Ha Ha! Nh�n l�c c�n s�ng, ta nguy�n c�ng c�c huynh �� Minh Gi�o h�nh hi�p tr��ng ngh�a mang l�i s� y�n b�nh cho b� t�nh mu�n d�n!")
end
end;

function L4_yt2()
DelCommonItem(6,1,30152)
SetTask(369,43)
AddNote("Giao �� Long �ao cho Th��ng Ng� Xu�n, c�p t�c l�n ���ng ��n D��ng Ch�u t�m Chu Nguy�n Ch��ng, t�a �� 220/180.")
Msg2Player("Giao �� Long �ao cho Th��ng Ng� Xu�n, c�p t�c l�n ���ng ��n D��ng Ch�u t�m Chu Nguy�n Ch��ng, t�a �� 220/180.")
end; 




