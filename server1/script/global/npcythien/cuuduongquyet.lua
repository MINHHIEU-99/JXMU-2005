--Edit by trilap2004--
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")


--Trong file truongtamphong.lua da settask 369 la 11 
function main() 
-- Goi dieu kien SetTask 369 11
if (GetTask(369) == 11) then
--Neu Dung thi den toa do 215/203 se nhan duoc quyen bi kip 4120 Cuu Duong Quyet,chinh lai la 4158 la bi kip Cuu Duong Quyet
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30154,0,0,0}, nBindState=-2}, "test", 1);
--tbAwardTemplet:GiveAwardByList({tbProp={4,1506,1,1,0,0},nCount=500},"Ti�n ��ng")--  tui tien dong
	--Set Task 369 la 12
	SetTask(369,12)
	-- Thong bao cho Nhan vat
	AddNote("C�c h� t�m th�y quy�n v�n t� ���c gi�u trong b�i c� b�t th��ng.") 
	--Thong bao the gioi
Msg2Player("C�c h� t�m th�y quy�n v�n t� ���c gi�u trong b�i c� b�t th��ng.") 
Msg2SubWorld("<color=green>Ch�c M�ng  <color=yellow>"..GetName().." ��  t�m ���c C�u D��ng Quy�t,  T�i B�i C� � Kho�i Ho�t L�m<color>")

end
end



-- Sau khi nhan bi quyet - settask 369 thanh 12 thi se tro lai truongtamphong.lua bat dau do dieu kien thu 2
-- dieu kien la gettask 369 = 12