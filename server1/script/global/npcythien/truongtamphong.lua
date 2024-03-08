--   Edit by Jackie Gaming --

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
function main() 

-- Neu nhan vat da nhan nhiem vu tu Vo Danh Nuong - th� SetTask(369) l� 10
if (GetTask(369) == 10)  then

--Ham Talk (4, so 4 la hien thi 4 dong noi chuyen
-- L1_yt la ham goi sau khi NPC truong tam phong noi xong, nguoi choi noi chuyen lai. se hien thi them nhiem vu (
-- va nhiem vu nay Truong Tam Phong se noi
Talk(4,"L1_yt","Tr��ng Tam Phong: Ta �o�n r�ng V� Danh N��ng b�o ng��i ��n ��y t�m ta? Ha ha ha! Qu� nhi�n c� �y c� c�p m�t nh�n ng��i, �� t�m ra v� cao th� x�ng ��ng nh� ng��i ��n th�nh gi�o v�i ta!","Ng��i ch�i: T�i H� xin b�i ki�n Tr��ng Ch�n Nh�n, Xin ng�i ch� gi�o cho ta c�ch t�m ��n Gi�o Ch� Minh Gi�o Tr��ng V� K�. T�i h� mu�n th�nh gi�o v�i h�n v� tin t�c c�a � Thi�n Ki�m v� �� Long �ao trong truy�n thuy�t!") 

-- Lay dieu kien gettask 369 = 12 tu file cuuduongquyet.lua
-- dieu kien thu hai la trong hanh trang co item 4120 (doi lai la 4158) cuu duong quyet thi truong tam phong noi tiep, neu ko co thi ko noi tiep
elseif (GetTask(369) == 12) and (HaveCommonItem(6,1,30154) == 1) then
-- Du dieu kien thi Truong Chan nhan tra phan thuong nhiem vu la L1_done"
-- so 2 la hien thi 2 dong noi chuyen
Talk(2,"L1_done","Ng��i ch�i: Tr��ng Ch�n Nh�n, ng�i xem ��y c� ph�i l� cu�n v�n t� c�n t�m?","Tr��ng Tam Phong: ��y ch�nh l� Y�u Quy�t m� n�m x�a Thi�u L�m �� c�t c�ng t�m ki�m, b�n trong c� ghi t�m ph�p C�u D��ng Ch�n Kh�. R�t ti�c ��y kh�ng ph�i l� B� Ki�p C�u D��ng Th�n C�ng nh�ng l� v�t r�t c�n �� luy�n n�. �� c�m t� ng��i, ta s� truy�n th� nh�ng kh�u quy�t t�m ph�p n�y, ng��i s� h�c ���c C�u D��ng Ch�n Kh�.") 
-- Neu GetTask nho hon 12 thi Truong TPhong keu di Khoai Hoat Lam kiem Cuu Duong Quyet
elseif (GetTask(369) < 12) then
Talk(1,"","Tr��ng Tam Phong: ��n C�n L�n Ph�i, �i l�n Kho�i H�t L�m truy t�m gi�p ta 1 cu�n v�n t� b� th�t l�c ���c V� K� ch�n gi�u g�n t�a �� 215/203")
-- Neu Da co skill ho tro cuu duong chan khi - truong tam phong keu gap truong vo ki 
-- Danh doi 976 = 1651 trong file moi
elseif (HaveMagic(1997) >= 0) then
Talk(1,"","Tr��ng Tam Phong: V� K� c�ng Tri�u M�n Qu�n Ch�a hi�n �ang � g�n Quang Minh ��nh, ch�n Sa M�c ��a Bi�u 213/173. Ng��i c� ��n �� cho ta h�i th�m n� nh�. Nh�c n� v� th�m S� �ng c�a n� gi�p ta. Ch�c ng��i Th��ng L� B�nh An!")	
--Truong hop khac thi da co skill roi thi ko nhan nhiem vu gap kiem cuuduongquyet ma di kiem Truong Vo Ky va Trieu Man
else 
Talk(1,"","Tr��ng Tam Phong: C�c H� r�nh r�i ��n du ngo�n V� �ang S�n gh� qua ph�i ch�i nh�...")	
end
end
-- va nhiem vu nay Truong Tam Phong se noi
function L1_yt() 
-- Tao them mot nhiem vu khac - goi ham L1_get_yes
-- Nguoi choi chon Yes se goi ham L1_get_yes, 
Say("Tr��ng Tam Phong: Ta bi�t V� K� �ang c�ng Tri�u C� N��ng h�nh t�u Giang H�. Tr��c khi �i g�p n�, ng��i h�y �i Kho�i H�t L�m tr�n n�i C�n L�n t�m cho ta cu�n v�n th� b� m�t. Ta c� huy�n c� m�ch b�o cho ng��i sau khi mang n� v�. Sau �� ta s� cho ng��i bi�t S� T�n V� K� �ang � ��u!",2,"Ch�o Tr��ng Ch�n Nh�n, Ta �i ngay./L1_get_yes","Ta c� vi�c kh�c ph�i l�m/L1_get_no") 
end 

-- Neu nguoi choi nhan nhiem vu thi SetTask 36 tang len 1 la 11
function L1_get_yes()  
	SetTask(369,11)
	--Thong bao cho nguoi choi biet da nhan nhiem vu va neu ro~ di den dau, den Khoai Hoat Lam se SetTask tiep 
	-- Nhan nhiem vu nay lien quan den file thu 3. CUUDUONGQUYET.LUA
AddNote("G�p Tr��ng Tam Phong, nh�n nhi�m v� t�m C�u D��ng Quy�t, ��n Kho�i H�t L�m g�n t�a �� 215/203 �� t�m ki�m.") 
-- Thong bao kenh the gioi
Msg2Player("Nh�n nhi�m v� t�m C�u D��ng Quy�t, ��n Kho�i H�t L�m g�n t�a �� 215/203 �� t�m ki�m") 
Msg2SubWorld("<color=green>Ch�c M�ng  <color=yellow>"..GetName().." �� Nh�n Nhi�m V� nhi�m v� t�m C�u D��ng Quy�t, ��n Kho�i H�t L�m g�n t�a �� 215/203 �� t�m ki�m<color>")

end; 

function L1_get_no() 
end; 

--Neu nguoi choi lay duoc cuuduongquyet, va gettask la 12 thi Truong Tam Phong thuong skill
function L1_done() 
-- Settask moi la 20
SetTask(369,20)
--Xoa item cuu duong quyet
DelCommonItem(6,1,30154)
--Add skill vao nhan vat (Cuu Duong Chan Khi id: 976 : 20 skill - id moi 1651)
AddMagic(1997,20)
--Thogn bao the gioi
Msg2Player("Gi�p �� Tr��ng Ch�n Nh�n t�m l�i ���c C�u D��ng Y�u Quy�t, ���c ng��i truy�n d�y t�m ph�p v� h�c ���c C�u D��ng Ch�n Kh�") 
--Thong bao cua so
AddNote("��n Quang Minh ��nh ch�n Sa M�c ��a Bi�u t�m Tr��ng V� K�") 
Msg2SubWorld("<color=green>Ch�c M�ng  <color=yellow>"..GetName().." �� Nh�n Nhi�m V� nhi�m v� t�m Tr��ng V� K�, � Quang Minh ��nh 213/173<color>")

end; 

