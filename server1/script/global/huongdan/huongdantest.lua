IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua");

function main1()
dofile("script/global/huongdan/huongdan.lua");
if GetPlayerCount() > 50 then
menu2()
else
menu1()
end
end


function main()
dofile("script/global/huongdan/huongdan.lua");
	local tbSay = {}	


	tinsert(tbSay, "M�t v�i quy t�c v� l�u � khi tham gia V� L�m B� S�/huongdanthamgia")
	tinsert(tbSay, "Danh S�ch c�c t�nh n�ng �ang �p d�ng/danhsachhoatdong")
	tinsert(tbSay, "H��ng d�n t�n th�/huongdantanthu")
	tinsert(tbSay, "K�t th�c ��i tho�i/no")
	Say("<color=green>Fanpage: <color=yellow>Facebook.com/vlbisu/\n<color=green>T�u l�u ��m ��o : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function danhsachhoatdong()
	local tbSay = {}	
    -- tinsert(tbSay, "L�i ��i Lo�n Chi�n/loidailoanchien")
	tinsert(tbSay, "T�ng Kim ��i Chi�n/tongkimdaichien")
	tinsert(tbSay, "Nhi�m v� D� t�u/datau")	
	-- tinsert(tbSay, "Qu� Huy Ho�ng/sanhathoangkim")
	-- tinsert(tbSay, "Tr�ng Kh�i Ho�ng/trongkhaihoang")

	--tinsert(tbSay, "Thuy�n Phong L�ng ��/thuyenphonglangdo")
	--tinsert(tbSay, "V��t �i Nhi�p Th� Tr�n/vuotai")
	--tinsert(tbSay, "��u Ng�u Xu�n Phong ��o/daunguu")
	--tinsert(tbSay, "�ua Ng�a Sa M�c/duanguasamac")
	--tinsert(tbSay, "Boss ��i Ho�ng Kim/bosshoangkim")
	--tinsert(tbSay, "Boss Ti�u Ho�ng Kim/bosshoangkimtieu")
	tinsert(tbSay, "B�u Cua/choibaucua")
	--tinsert(tbSay, "Vi�m �� B�o T�ng/viemde")
	--tinsert(tbSay, "C�ng Th�nh Chi�n/congthanhchien")
	--tinsert(tbSay, "Thi�n T� ��i Chi�n/thientu")
	--tinsert(tbSay, "V�n Ti�u Long M�n/vantieu")
	-- tinsert(tbSay, "C�u C� D��ng Ch�u/cauca")
	tinsert(tbSay, "K�t th�c ��i tho�i/no")
	Say("<color=green>Fanpage: <color=yellow>Facebook.com/vlbisu/\n<color=green>T�u l�u ��m ��o : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function huongdanthamgia()
	local tbSay = {}	
	tinsert(tbSay, "H��ng t�i c�ng ��ng v�ng m�nh VLBS c� m�t v�i quy t�c nh�/quytac")	
	tinsert(tbSay, "Th� t�c mua - b�n v� c�nh gi�c v�i c�c chi�u tr� l�a ��o/muaban")
    tinsert(tbSay, "Nh�p Code T�n Th� � ��u/nhapcode")
	tinsert(tbSay, "Chuy�n Ph�i L�y Skill/chuyenphai")
	tinsert(tbSay, "V�ng S�ng � ��u/vongsang")
	tinsert(tbSay, "K�t th�c ��i tho�i/no")
	Say("<color=green>Fanpage: <color=yellow>Facebook.com/vlbisu/\n<color=green>T�u l�u ��m ��o : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function huongdantanthu()
	local tbSay = {}	
	tinsert(tbSay, "V�n �� v� c�p ��/capdo")	
	tinsert(tbSay, "V�n �� v� k� n�ng c�p 90/kynang90")
    tinsert(tbSay, "C�ch l�p bang h�i/lapbang")
	tinsert(tbSay, "C�c v�t ph�m ��c bi�t khi ��nh qu�i c�ng nh� Boss xanh/vatphamdacbiet")
	tinsert(tbSay, "V�ng S�ng nh�n � ��u/vongsang")
	tinsert(tbSay, "K�t th�c ��i tho�i/no")
	Say("<color=green>Fanpage: <color=yellow>Facebook.com/vlbisu/\n<color=green>T�u l�u ��m ��o : <color=yellow>Facebook.com/groups/groups/1509902665985904/", getn(tbSay), tbSay)
end

function quytac()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=green>�i�u 1 : Nh�m x�y d�ng m�t c�ng ��ng VLBS v�ng m�nh nh�t t� tr��c t�i nay , BQT �p d�ng �i�u lu�t h�n ch� ng��i ch�i rao b�n Nh�n v�t ( ACC ) tr�n c�c T�n s� giao ti�p trong game c�ng nh� Group trao ��i mua b�n , h�n ch� n�y ���c h�y b� sau khi m�y ch� m�i �i v�o ho�t ��ng ���c 01 th�ng. �i�u 2 : Nghi�m c�m s� d�ng c�c lo�i script t� ph�t ho�c c�c ph�n m�m th� 3 can thi�p t�i qu� tr�nh v�n h�h game nh� Tools , Mutilog v.v.. - BQT s� ti�n h�nh lo�i b� ng��i ch�i n�y ra kh�i c�ng ��ng v�nh vi�n v� kh�ng gi�i quy�t c�c khi�u n�i li�n quan t�i v�n �� n�y ", getn(tbSay), tbSay)
end

function loidailoanchien()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Th�i gian : 22h h�ng ng�y sau khi k�t th�c t�ng kim,ch� nh�ng acc tham gia t�ng kim cao c�p m�i ���c tham gia", getn(tbSay), tbSay)
end

function tongkimdaichien()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Th�i gian : 11h - 15h - 21h - 23 - Tr�n 21h c� th��ng ��c bi�t ( ��t tr�n 500 �i�m t�ch l�y s� nh�n ngay 2 tri�u �i�m kinh nghi�m b�t k� th�ng thua", getn(tbSay), tbSay)
end

function sanhathoangkim()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Th�i gian : 12h h�ng ng�y t�i ��u tr��ng sinh t�", getn(tbSay), tbSay)
end

function thuyenphonglangdo()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white> t�t c� gi� ch�n ri�ng 2-16-20-22h l� chuy�n c� ��i th�y t�c.\n<color=cyan>Tham gia: <color=white>Ch� cho ph�p �i 1 b�n 1 c� th� c�u �� s�t.\n<color=pink>Ph�n th��ng:<color=white> ho�n th�nh ��n b� b�c - ti�u di�t th�y t�c 1 m�nh HKMP + 1 th�y tinh - ti�u di�t ��i th�y t�c 2 m�nh HKMP + TTK", getn(tbSay), tbSay)
end

function vuotai()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>t�t c� gi� l� tr� 21h.\n<color=cyan>Tham gia: <color=white>t�i nhi�p th� tr�n.\n<color=pink>Ph�n th��ng:<color=white> ho�n th�nh v��t �i x�c xu�t ra TTK + VLMT  + Th�y Tinh", getn(tbSay), tbSay)
end

function thientu()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>21h th� 2 - v�i �i�u ki�n l� ph�i c� 1 bang chi�m l�m an 1 bang chi�m bi�n kinh.N�u 1 bang chi�m 2 th�nh th� th� 2 t�ng kim b�nh th��ng.\n<color=cyan>Tham gia: <color=white>Bang ch� tr��c 21h ph�i qua n�i c�t th��ng th� � L�m An v� Bi�n Kinh nh�n 50 l�nh b�i qu�c chi�n v� ch� nh�n 1 l�n.\n<color=pink>Ph�n th��ng:<color=white> Nh�n t�i 204/198 Ba L�ng Huy�n", getn(tbSay), tbSay)
end

function duanguasamac()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Th�i gian :22h30 th� 7 v� ch� nh�t.", getn(tbSay), tbSay)
end

function bosshoangkim()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Th�i gian : 19h30 h�ng ng�y", getn(tbSay), tbSay)
end

function bosshoangkimtieu()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Th�i gian : 12h35 v� 23h05", getn(tbSay), tbSay)
end

function choibaucua()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=green>��a �i�m : NPC B�u cua ��i nh�n t�i trung t�m T��ng D��ng th�nh - Th�i gian tham gia v�o l�c : 22h - 23h m�i ng�y . T�i �a m�i l�n ch�i 10 Ti�n ��ng ho�c 100 v�n l��ng.", getn(tbSay), tbSay)
end

function vantieu()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : t�t c� c�c gi�.\n<color=cyan>Tham gia: NPC Long M�n Ti�u C�c 201/200 Ba L�ng Huy�n �i�u ki�n ph�i c� h� ti�u l�nh tham gia t�ng kim c� ���c<color=white>.\n<color=pink>Ph�n th��ng:<color=white>v�n th�nh c�ng nh�n 1 m�nh HKMP :  v�n th�t b�i t�c b� c��p s� r�i ra h� ti�u l�nh.", getn(tbSay), tbSay)
end

function viemde()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : 18h30 v� 23h h�ng ng�y.\n<color=cyan>Tham gia: <color=white>B�nh B�nh C� N��ng Bi�n Kinh.\n<color=pink>Ph�n th��ng:<color=white>Team th�ng cu�c nh�n 1 VLMT tr�n 1 ng��i..", getn(tbSay), tbSay)
end

function trongkhaihoang()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Th�i gian:20h10 ng�y th� 7..", getn(tbSay), tbSay)
end

function daunguu()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : 20h30 c�c ng�y th� 3-5-7.\n<color=cyan>Tham gia: <color=white>L� Quan B�o Danh.\n<color=pink>Ph�n th��ng:<color=white>Ng�u sinh t�n ho�c ng��i sinh t�n cu�i c�ng nh�n vlmt ttk.Khi ng�u ch�t ng��i ch�i nh�t b�o r��ng kim ng�u s� c� c� h�i nh�n ���c xu..", getn(tbSay), tbSay)
end

function congthanhchien()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : 20h30 c�c ng�y th� 6.\n<color=cyan>Tham gia: bang ch� b�o danh t�i ti�p ��u c�ng th�nh chi�n chi ph� 100 v�n th�i gian b�o danh l� tr��c 19h30 n�u sau 19h30 coi nh� ko th� b�o danh.Gi�i h�n acc 1 bang c�ng th�nh l� 150 acc qu� s� l��ng kh�ng th� v�o.<color=white>.\n<color=pink>Ph�n th��ng: <color=white>Nh�n t�i 204/198 Ba L�ng Huy�n.", getn(tbSay), tbSay)
end

function chuyenphai()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Nh�m gi� c�n b�ng c�ng nh� �n ��nh tuy�t ��i cho server - VLBS sau 8 n�m v�n h�nh kh�ng �p d�ng ch�c n�ng n�y.", getn(tbSay), tbSay)
end

function doxucxac()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>T�n Th� Kim B�i.\n<color=cyan>V� Tr�: <color=white>trong g��ng k�a pa.\n<color=pink>C�ch Th�c: <color=white>t�t c� ng��i n�o ��nh th� pt nhau sau �� ch� pt d�ng l�nh b�i ch�n d�ng ��nh b�c ch�n �� x�c x�c h� th�ng s� �� ng�u nhi�n ai l�n �i�m nh�t h�t h�t ti�n.", getn(tbSay), tbSay)
end

function nhatky()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>Nh�t K� C�n Kh�n Ph�.\n<color=cyan>V� Tr�: <color=white>mua t�i shop b�o v�t.\n<color=pink>C�ng d�ng: <color=white>s� d�ng s� nh�n ���c 1 KNCV 30 ng�y.", getn(tbSay), tbSay)
end

function cauca()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Th�i gian : Di�n ra t� 12h00 t�i 21h00 t�i c�u D��ng Ch�u , m�i nh�n v�t ch� c� th� nh�n t�i �� 20 tri�u �i�m kinh nghi�m t� ho�t ��ng n�y m�i ng�y", getn(tbSay), tbSay)
end

function datau()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Gi�i h�n : M�i nh�n v�t c� th� th�c hi�n 30 nhi�m v� m�i ng�y . Ho�n th�nh 6000 nhi�m v� D� t�u nh�n 10 ng�n v�n l��ng v� ng�u nhi�n nh�n ���c 01 m�n trang b� Ho�ng Kim M�n Ph�i", getn(tbSay), tbSay)
end

function muaban()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Hi�n t�i Admin trung gian duy nh�t t�i VLBS l� b�n �o�n Ng�c Ph�c , ��a ch� FB : https://www.facebook.com/phuc.doanngoc , S�T : 038.729.2209 , vui l�ng li�n h� v�i S�T n�y tr��c khi giao d�ch nh�m tr�nh tuy�t ��i c�c th� �o�n l�a ��o . Ph� trung gian : 5%", getn(tbSay), tbSay)
end

function nhapcode()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Hi�n t�i t�n th� khi tham gia server s� ���c nh�n �u ��i v� c�ng l�n - 10 b�nh Ti�n th�o l� 1h v� 10 b�nh Thi�n s�n b�o l� 1h , �� nh�n nh�ng v�t ph�m n�y ng��i ch�i vui l�ng nh�p Code ���c ph�t t�i NPC L� qu�n", getn(tbSay), tbSay)
end

function capdo()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>L�u d�i v� �n ��nh - v�i t�n ch� n�y c�c server thu�c VLBS lu�n �p d�ng h��ng �i nh� sau : T� level 10 t�i 80 ch� v� b�ng h�u s� c�m th�y vi�c c�y c�p kh�ng qu� ch�m - T� level 80 tr� �i ch� v� s� c�m th�y nh�n ��nh c�a m�nh h�i sai sai - T� level 90 tr� l�n ch� v� huynh �� ch�c ch�n s� c�m th�y sai ho�n to�n v� th�c s� mu�n g�n b� v�i VLBS - m�t t��ng ��i. Qu�i v�t tr�n c�c b�n �� thu�c VLBS xu�t hi�n kh� nhanh sau khi b� ti�u di�t , th�m v�o �� ch�ng ta c� �u ��i v�ng s�ng t�n th� t�i c�p 80 , h�y t�n d�ng th�t t�t �i�u ��", getn(tbSay), tbSay)
end

function kynang()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Tham gia ti�u di�t boss xanh t�i c�c b�n �� luy�n c�p ch� v� s� c� c� h�i nh�n T�i b� k�p c�p 90 ( L� bao chi�n th�ng ) , b�n c�nh �� tham gia T�ng kim c�ng l� m�t c�ch �� ki�m v�t ph�m n�y ( 5 ng�n �i�m t�ch l�y c� th� ��i ���c 01 T�i b� k�p c�p 90 ho�c n�u ch� v� c�m th�y qu� kh� , ch�ng ta ho�n to�n c� th� ��i t�i level 90 �� c� th� h�c ���c c�c lo�i k� n�ng n�y t� NPC M�n ph�i ", getn(tbSay), tbSay)
end

function lapbang()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Tham gia ti�u di�t boss xanh t�i c�c b�n �� luy�n c�p ch� v� s� c� c� h�i nh�n Nh�c V��ng H�n Th�ch ( ho�c ��i t� �i�m t�ch l�y t�ng kim gi� 1000 �i�m t�ch l�y ) , v�i 100 v�t ph�m Nh�c V��ng H�n Th�ch ch�ng ta �� c� th� s� h�u Nh�c V��ng Ki�m , bang ch� khai l�p bang h�i kh�ng c�n th�a m�n b�t c� �i�u ki�n n�p v� danh v�ng c�ng nh� t�i l�nh ��o. ", getn(tbSay), tbSay)
end

function vongsang()
	local tbSay = {}	
	tinsert(tbSay, "�/no")
	Say("<color=yellow>Hi�n t�i nh�ng nh�n v�t c� ��ng c�p 80 tr� xu�ng s� nh�n ���c h� tr� v�ng s�ng t�n th� , ch�c n�ng n�y nh�n ���c t� v�t ph�m Th�n H�nh Ph� ho�c NPC H� tr� t�n th� - V�ng s�ng ch� bi�n m�t khi nh�n v�t v� th�nh d��ng s�c ", getn(tbSay), tbSay)
end