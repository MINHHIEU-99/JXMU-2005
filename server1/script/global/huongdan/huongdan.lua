Include("\\script\\lib\\awardtemplet.lua")
-- Include("\\script\\activitysys\\config\\2002\\config.lua")
-- Include("\\script\\activitysys\\config\\2002\\head.lua")
-- Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")-- lib bittask cua VNG
IncludeLib("TITLE")
Include("\\script\\misc\\spreader\\spreader.lua")
IncludeLib("TITLE")
Include("\\script\\tong\\tong_header.lua");
IncludeLib("TONG")
Include("\\script\\thoduong\\head.lua")
--Include("\\script\\activitysys\\config\\2045\\variables.lua")


function ok1()
local tbKimphong= {
{szName = "Kim Phong Thanh D��ng Kh�i",tbProp = {6,1,4500,1},nCount=10,},
--{szName = "Kim Phong K� L�n Huy�t",tbProp = {0,178},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong Tr�c Li�n Quang",tbProp = {0,179},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong C�ng C�n Tam Th�n",tbProp = {0,180},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong �o�t H�n Ng�c ��i",tbProp = {0,181},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong H�u Ngh� d�n cung",tbProp = {0,182},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong Lan ��nh Ng�c",tbProp = {0,183},nBindState=-2,nCount=1,nQuality=1,},
--{szName = "Kim Phong Thi�n L� Th�o Th��ng Phi",tbProp = {0,184},nBindState=-2,nCount=1,nQuality=1},
--{szName = "Kim Phong ��ng T��c Xu�n Th�m",tbProp = {0,185},nBindState=-2,nCount=1,nQuality=1},
}
tbAwardTemplet:GiveAwardByList(tbKimphong, "Nhan kim phong den bu")
end

function chucphuc1()
	local nCount = CalcEquiproomItemCount(6,1,4500,1)
	if (nCount < 1) then
		Say("<color=yellow>V� b�ng h�u n�y ta kh�ng th�y thi�p c�a ng��i ��u c� ! Khi n�o c� ��  h�y quay l�i.",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end
	
checkten()
ConsumeEquiproomItem(1, 6,1,4500,1)
end

function checkten()
return AskClientForString("checktenok","",1,999999999,"T�n Nh�n V�t")
end

function checkten11(nVar)
	
local gmPlayerIdx = PlayerIndex
local nMap,nX,nY = GetWorldPos();
local nX32, nY32, nMapIndex =  GetPos()
local searchPlayerIDX = SearchPlayer(nVar);
local trangthai = GetFightState()
if searchPlayerIDX > 0 then
	PlayerIndex = searchPlayerIDX
Msg2Player(" duoc chuc phuc")
AddOwnExp(11)
	PlayerIndex = gmPlayerIdx
	return
else
Say("khong tim thay nhan vat")
end
end


function checktenok(nVar)
local gmPlayerIdx = PlayerIndex
local nMap,nX,nY = GetWorldPos();
local nX32, nY32, nMapIndex =  GetPos()
local searchPlayerIDX = SearchPlayer(nVar);
local trangthai = GetFightState()
if searchPlayerIDX > 0 then
	PlayerIndex = searchPlayerIDX
Msg2Player(" duoc chuc phuc")
AddOwnExp(11)
	PlayerIndex = gmPlayerIdx
	return
else
Say("khong tim thay nhan vat")
end
end


function main()
dofile("script/global/huongdan/huongdan.lua");
local tbSay = {
"M�t v�i quy t�c v� l�u � khi tham gia V� L�m B� S�/huongdanthamgia",
"Danh S�ch c�c t�nh n�ng �ang �p d�ng/danhsachhoatdong",
"H��ng d�n t�n th�/huongdantanthu",
"K�t th�c ��i tho�i/no",
}
Say("Th�i S�n ���c x�y d�ng d�a tr�n � ki�n c�a c�ng ��ng game th� V� L�m B� S� c�ng s� tr� l�i c�a �t nh�t 5 Bang h�i thu� n�o , c�ng ch� xem ch�ng ta c� g� ph�a tr��c . . .\n<color=green>Fanpage : <color=yellow>Facebook.com/vlbisu/\n<color=green>Group : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function danhsachhoatdong()
	local tbSay = {
-- "L�i ��i Lo�n Chi�n/loidailoanchien",
"T�ng Kim ��i Chi�n/tongkimdaichien",
"Nhi�m v� D� t�u/datau",
-- "Qu� Huy Ho�ng/sanhathoangkim",
-- "Tr�ng Kh�i Ho�ng/trongkhaihoang",
-- "Thuy�n Phong L�ng ��/thuyenphonglangdo",
-- "V��t �i Nhi�p Th� Tr�n/vuotai",
-- "Boss ��i Ho�ng Kim/bosshoangkim",
-- "Boss Ti�u Ho�ng Kim/bosshoangkimtieu",
"B�u Cua/choibaucua",
-- "C�ng Th�nh Chi�n/congthanhchien",
-- "Thi�n T� ��i Chi�n/thientu",
-- "V�n Ti�u Long M�n/vantieu",
"K�t th�c ��i tho�i/no",
	}
Say("Ta �� ���c nghe qua gi�ng h�t c�a c�u �y , admin server n�y , c�u �y th�c s� l� m�t ca s� , h�y tin ta . . .\n<color=green>Fanpage : <color=yellow>Facebook.com/vlbisu/\n<color=green>Group : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function huongdanthamgia()
	local tbSay = {
"H��ng t�i c�ng ��ng v�ng m�nh VLBS c� m�t v�i quy t�c nh�/quytac",
"Th� t�c mua - b�n v� c�nh gi�c v�i c�c chi�u tr� l�a ��o/muaban",
"Nh�p Code T�n Th� � ��u/nhapcode",
"Chuy�n Ph�i L�y Skill/chuyenphai",
"K�t th�c ��i tho�i/no",
	}
Say("Ta �� ���c nghe qua gi�ng h�t c�a c�u �y , admin server n�y , c�u �y th�c s� l� m�t ca s� , h�y tin ta . . .\n<color=green>Fanpage : <color=yellow>Facebook.com/vlbisu/\n<color=green>Group : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function huongdantanthu()
	local tbSay = {
"V�n �� v� c�p ��/capdo",
"V�n �� v� k� n�ng c�p 90/kynang90",
"C�ch l�p bang h�i/lapbang",
"C�c v�t ph�m ��c bi�t khi ti�u di�t Boss xanh/vatphamdacbiet",
"V�ng S�ng nh�n � ��u/vongsang",
"K�t th�c ��i tho�i/no",
	}
Say("Ta �� ���c nghe qua gi�ng h�t c�a c�u �y , admin server n�y , c�u �y th�c s� l� m�t ca s� , h�y tin ta . . .\n<color=green>Fanpage : <color=yellow>Facebook.com/vlbisu/\n<color=green>Group : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function quytac()
	Say("<color=green>�i�u 1 : Nh�m x�y d�ng m�t c�ng ��ng VLBS v�ng m�nh nh�t t� tr��c t�i nay , BQT �p d�ng �i�u lu�t h�n ch� ng��i ch�i rao b�n Nh�n v�t ( ACC ) tr�n c�c T�n s� giao ti�p trong game c�ng nh� Group trao ��i mua b�n , h�n ch� n�y ���c h�y b� sau khi m�y ch� m�i �i v�o ho�t ��ng ���c 30 ng�y.\n�i�u 2 : Nghi�m c�m s� d�ng c�c lo�i script t� ph�t ho�c c�c ph�n m�m th� 3 can thi�p t�i qu� tr�nh v�n h�h game nh� Tools , Mutilog v.v.. - BQT s� ti�n h�nh lo�i b� nh�ng ng��i ch�i n�y ra kh�i c�ng ��ng.")
end

function tongkimdaichien()
	Say("<color=yellow>Th�i gian : 11h - 15h - 21h - 23 - 21h\n                      <color=red>Tr�n 15h00 :\n<color=green>+Top 1 : 50 Ti�n ��ng , 01 b�nh Ti�n Th�o l� 1h\n+Top 2 : 50 Ti�n ��ng\n+Top 3 : 30 Ti�n ��ng\n                      <color=red>Tr�n 21h00:\n��t tr�n 500 �i�m t�ch l�y s� nh�n ngay 2 tri�u �i�m kinh nghi�m b�t k� th�ng thua\n<color=green>+Top 1 : 100 Ti�n ��ng , 01 b�nh Ti�n Th�o l� 8h\n+Top 2 : 100 Ti�n ��ng\n+Top 3 : 80 Ti�n ��ng")
end

-- function sanhathoangkim()
	-- Say("<color=yellow>Th�i gian : 12h h�ng ng�y t�i ��u tr��ng sinh t�")
-- end

-- function thuyenphonglangdo()
	-- Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white> t�t c� gi� ch�n ri�ng 2-16-20-22h l� chuy�n c� ��i th�y t�c.\n<color=cyan>Tham gia: <color=white>Ch� cho ph�p �i 1 b�n 1 c� th� c�u �� s�t.\n<color=pink>Ph�n th��ng:<color=white> ho�n th�nh ��n b� b�c - ti�u di�t th�y t�c 1 m�nh HKMP + 1 th�y tinh - ti�u di�t ��i th�y t�c 2 m�nh HKMP + TTK")
-- end

-- function vuotai()
	-- Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>t�t c� gi� l� tr� 21h.\n<color=cyan>Tham gia: <color=white>t�i nhi�p th� tr�n.\n<color=pink>Ph�n th��ng:<color=white> ho�n th�nh v��t �i x�c xu�t ra TTK + VLMT  + Th�y Tinh")
-- end

-- function thientu()
	-- Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>21h th� 2 - v�i �i�u ki�n l� ph�i c� 1 bang chi�m l�m an 1 bang chi�m bi�n kinh.N�u 1 bang chi�m 2 th�nh th� th� 2 t�ng kim b�nh th��ng.\n<color=cyan>Tham gia: <color=white>Bang ch� tr��c 21h ph�i qua n�i c�t th��ng th� � L�m An v� Bi�n Kinh nh�n 50 l�nh b�i qu�c chi�n v� ch� nh�n 1 l�n.\n<color=pink>Ph�n th��ng:<color=white> Nh�n t�i 204/198 Ba L�ng Huy�n")
-- end

-- function bosshoangkim()
	-- Say("<color=yellow>Th�i gian : 19h30 h�ng ng�y")
-- end

-- function bosshoangkimtieu()
	-- Say("<color=yellow>Th�i gian : 12h35 v� 23h05")
-- end

function choibaucua()
	Say("<color=yellow>��a �i�m : NPC B�u cua ��i nh�n t�i trung t�m T��ng D��ng th�nh - Th�i gian tham gia v�o l�c : 22h - 24h m�i ng�y . T�i �a m�i l�n ch�i 10 Ti�n ��ng ho�c 50 v�n l��ng.")
end

-- function vantieu()
	-- Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : t�t c� c�c gi�.\n<color=cyan>Tham gia: NPC Long M�n Ti�u C�c 201/200 Ba L�ng Huy�n �i�u ki�n ph�i c� h� ti�u l�nh tham gia t�ng kim c� ���c<color=white>.\n<color=pink>Ph�n th��ng:<color=white>v�n th�nh c�ng nh�n 1 m�nh HKMP :  v�n th�t b�i t�c b� c��p s� r�i ra h� ti�u l�nh.")
-- end

-- function trongkhaihoang()
	-- Say("<color=yellow>Th�i gian:20h10 ng�y th� 7..")
-- end

-- function congthanhchien()
	-- Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : 20h30 c�c ng�y th� 6.\n<color=cyan>Tham gia: bang ch� b�o danh t�i ti�p ��u c�ng th�nh chi�n chi ph� 100 v�n th�i gian b�o danh l� tr��c 19h30 n�u sau 19h30 coi nh� ko th� b�o danh.Gi�i h�n acc 1 bang c�ng th�nh l� 150 acc qu� s� l��ng kh�ng th� v�o.<color=white>.\n<color=pink>Ph�n th��ng: <color=white>Nh�n t�i 204/198 Ba L�ng Huy�n.")
-- end

function chuyenphai()
	Say("<color=green>Nh�m gi� t�nh c�n b�ng v� �n ��nh tuy�t ��i , sau 8 n�m v�n h�nh V� L�m B� S� kh�ng �p d�ng ch�c n�ng n�y.")
end

function datau()
	Say("<color=yellow>Gi�i h�n : M�i nh�n v�t c� th� th�c hi�n 30 nhi�m v� m�i ng�y.\nHo�n th�nh 6000 nhi�m v� D� t�u nh�n 10 ng�n v�n l��ng v� ng�u nhi�n nh�n ���c 01 m�n trang b� Ho�ng Kim M�n Ph�i.\nHo�n th�nh nhi�m v� D� t�u c� c� h�i nh�n Ng�n l��ng v� N�n vui v� ( V�t ph�m gi�p nh�n ��i �i�m kinh nghi�m cho m�nh v� t� ��i )")
end

function muaban()
	Say("<color=green>Hi�n t�i Admin trung gian duy nh�t t�i VLBS l� b�n :\n<color=red>�o�n Ng�c Ph�c\n<color=green>��a ch� FB : https://www.facebook.com/phuc.doanngoc\n<color=green>S�T : 038.729.2209\n<color=green>Vui l�ng li�n h� v�i S�T n�y tr��c khi giao d�ch nh�m tr�nh tuy�t ��i c�c th� �o�n l�a ��o . Ph� trung gian : 5%")
end

function nhapcode()
	Say("<color=green>Hi�n t�i t�n th� khi tham gia server s� ���c nh�n �u ��i v� c�ng l�n :\n+10 b�nh Ti�n th�o l� 1h\n+05 b�nh Thi�n s�n b�o l� 1h\n�� nh�n nh�ng v�t ph�m n�y ng��i ch�i vui l�ng nh�p Code ���c ph�t t�i NPC L� qu�n")
end

function capdo()
	Say("<color=yellow>L�u d�i v� �n ��nh - v�i t�n ch� n�y c�c server thu�c VLBS lu�n �p d�ng h��ng �i nh� sau : T� level 10 t�i 80 ch� v� b�ng h�u s� c�m th�y vi�c c�y c�p kh�ng qu� ch�m - T� level 80 tr� �i ch� v� s� c�m th�y nh�n ��nh c�a m�nh h�i sai sai - T� level 90 tr� l�n ch� v� huynh �� ch�c ch�n s� c�m th�y sai ho�n to�n v� th�c s� mu�n g�n b� v�i VLBS - m�t t��ng ��i. T�c �� xu�t hi�n c�a qu�i v�t kh� nhanh sau khi b� ti�u di�t - V�ng s�ng t�n th� t�i c�p 80 , h�y t�n d�ng th�t t�t �i�u ��")
end

function kynang90()
	Say("<color=yellow>Tham gia ti�u di�t boss xanh t�i c�c b�n �� luy�n c�p 60 tr� l�n ch� v� s� c� c� h�i nh�n T�i b� k�p c�p 90 ( L� bao chi�n th�ng ) , t�y ch�n 01 cu�n s�ch k� n�ng c�p 90 ho�c n�u ch� v� c�m th�y qu� kh� , ch�ng ta ho�n to�n c� th� ��i t�i level 90 �� c� th� h�c ���c c�c lo�i k� n�ng n�y t� NPC M�n ph�i ")
end

function lapbang()
	Say("<color=yellow>Tham gia ti�u di�t boss xanh t�i c�c b�n �� luy�n c�p ch� v� s� c� c� h�i nh�n Nh�c V��ng H�n Th�ch ( ho�c ��i t� �i�m t�ch l�y t�ng kim gi� 1000 �i�m t�ch l�y ) , v�i 100 v�t ph�m Nh�c V��ng H�n Th�ch ch�ng ta �� c� th� s� h�u Nh�c V��ng Ki�m , bang ch� khai l�p bang h�i kh�ng c�n th�a m�n b�t c� �i�u ki�n n�o v� danh v�ng c�ng nh� t�i l�nh ��o. ")
end

function vongsang()
	Say("<color=yellow>Hi�n t�i nh�ng nh�n v�t c� ��ng c�p 80 tr� xu�ng s� nh�n ���c h� tr� v�ng s�ng t�n th� , ch�c n�ng n�y nh�n ���c t� v�t ph�m Th�n H�nh Ph� ho�c NPC H� tr� t�n th� - V�ng s�ng ch� bi�n m�t khi nh�n v�t v� th�nh d��ng s�c ")
end

function vatphamdacbiet()
	Say("<color=yellow>Tham gia ti�u di�t boss xanh � c�c b�n �� c�p 60 tr� l�n nh�n s� s� c� c� h�i nh�n ���c :\n+ C�m nang ho�ng kim ( b�n trong ch�a c�c lo�i ph�c duy�n , ng�n l��ng , xu , th�y tinh ho�c tinh h�ng b�o th�ch)\n+ Thi�n s�n b�o l�\n+ C�c lo�i r��u may m�n\n+ Ng��i tuy�t tu luy�n k� n�ng")
end
