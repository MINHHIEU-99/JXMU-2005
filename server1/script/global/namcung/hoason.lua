IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\global\\map_helper.lua")
Include("\\script\\lib\\log.lua")
npc_name = "Hoa S�n Ki�m Kh�ch "

function main()
	dialog_main()
end

function dialog_main()
	local nNpcIndex = GetLastDiagNpc();
	local player_Faction = GetFaction()
	if (GetLastFactionNumber() == 5) then		-- ����
		Say("T� l�u nghe ti�ng c�c c� n��ng Th�y Y�n ��p nh� ti�n n�, v� c� n��ng n�y cho �n m�y ta �t ti�n u�ng r��u ���c ch�ng?",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 4) then				
		Say("Xinh ��p nh� hoa t��i m� h�ng ng�y c� ��i di�n v�i Thanh ��ng C� Ph�t!  Ta kh�ng th�ch c�c ng��i � �i�m n�y!",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 2) then
		Say("Hai ph�i ch�ng ta li�n minh l�i, kh�ng c�n ph�i ph�n tranh n�a! Ch�ng ph�i l� h� s� �?",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 3) then
		Say("Ta gh�t nh�t l� c�i b�n len l�n h� ��c h�i ng��i!  �y!  Kh�ng ph�i ta n�i ng��i!",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 1) then
		Say("D��ng H� c�a Thi�n V��ng bang c�c ng��i c�n k�m xa b�n m�n c�a ta, Thi�n V��ng qu� nhi�n ch�ng ra g� h�t! ",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 0) then
		Say("H�a th��ng ��u tr�c sao l�i ��n n�i th�m s�n c�ng c�c th� n�y?!",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 8) then
		Say("Qu� m�n l�y hi�p ngh�a l�m tr�ng, nh�ng kh�ng bi�t ��n T� Nam c� bi�t h� th�n hay kh�ng m� c� mu�n so t�i v�i v� c�ng c�a ch�ng ta",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 9) then
		Say("C�n L�n ph�i ph�t tri�n th�n t�c! T�i h� r�t ng��ng m�!?",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 7) then
		Say("Ai l�m ho�ng �� th� c�ng m�c!  Nh�ng c�c ng��i t�n s�t sinh linh th� t�i h� kh�ng b� qua!",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 6) then
		Say("��i hi�p!  ��ng qua ��y!",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 11) then
		Say("Qu� m�n l�y hi�p ngh�a l�m tr�ng, nh�ng kh�ng bi�t Nh�c Phi c� bi�t h� th�n hay kh�ng m� c� mu�n so t�i v�i v� c�ng c�a ch�ng ta",2,"H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","Xin chuy�n d�m l�i h�i th�m ��n Ch��ng M�n/no")
		return
	elseif (GetLastFactionNumber() == 10) then 
		Say("C� l�i g� mu�n n�i v�i bang ch� kh�ng? Hay mu�n ta ��a v� Hoa S�n?",5,"Xin ��a t�i h� v� Hoa S�n!/return_yes","H�i th�m v�n �� kh�c ! /#daiyitoushi_main(10)","T�m hi�u khu v�c luy�n c�ng/map_help","T�m hi�u v� ngh� b�n m�n/skill_help","Xin chuy�n d�m l�i h�i th�m s� ph�/no")
		return
	end

	if GetCamp() == 0 then
		Say("N�u mu�n gia nh�p b�n ph�i ph�i thay ��i t�m t�nh, chuy�n t�m tu h�nh, t��ng lai c� r�t nhi�u c� h�i ch� ��n ng��i!", 3, "Gia nh�p Hoa S�n/vaohoason", "�� ta suy ngh� k� l�i xem/no")
	end
end

function vaohoason()
		if GetLevel()<10 then
			Talk(1,"","B�n bang �� c� danh x�ng Thi�n h� �� nh�t bang, danh ch�n giang h�.Nh�n t�i ng�a H� t�ng Long, th�i n�o c�ng c�")
			Talk(1,"","Tr��c ti�n ng��i h�y luy�n t�p l�i c�n b�n, ��t ��n <color=Red>c�p 10<color> r�i h�y t�m ta!")
		return
		end
		if GetSex() == 0 then
			SetSeries(2)
		end
		SetFaction("huashan")   			--��Ҽ��������
		SetCamp(3)
		SetCurCamp(3)
		SetRank(89)	
		SetLastFactionNumber(10)
		Msg2Player("Hoan ngh�nh b�n gia nh�p Hoa S�n ph�i")
		AddNote("gia nh�p Hoa S�n Ph�i")
		Msg2Faction("huashan",GetName().."t� h�m nay gia nh�p Hoa S�n ph�i. Mong c�c v� quan t�m ch� gi�o!",GetName())	
		AddMagic(1347) --Skill Hoa son
		AddMagic(1372) --Skill Hoa son
		AddMagic(1349) --Skill Hoa son
		AddMagic(1374) --Skill Hoa son
		AddMagic(1350) --Skill Hoa son
		AddMagic(1375) --Skill Hoa son
		AddMagic(1351) --Skill Hoa son
		AddMagic(1376) --Skill Hoa son
		AddMagic(1354) --Skill Hoa son
		AddMagic(1378) --Skill Hoa son
		AddMagic(1355) --Skill Hoa son
		AddMagic(1379) --Skill Hoa son
		AddMagic(1358) --Skill Hoa son
		AddMagic(1360) --Skill Hoa son
		AddMagic(1380) --Skill Hoa son
		AddMagic(1364,20) --Skill Hoa son --9x
		AddMagic(1382,20) --Skill Hoa son --9x
		AddMagic(1365,20) --Skill Hoa son --120
		AddMagic(1369,20) --Skill Hoa son --150
		AddMagic(1384,20) --Skill Hoa son --150
		AddMagic(210,1) --Skill V� H�n	--9x
		

end

function return_yes()
	do 
		Talk(1,"","B�n m�n dang tu s�a kh�ng ti�n ra v�o ! h�y mau mau �i luy�n t�p �i !")
		return 
	end
	NewWorld(987, 1328, 3136)
end;


function no()
end;