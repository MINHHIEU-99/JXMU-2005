
--------------------------------------------------------------------------------------------------------
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("ITEM")
IncludeLib("SETTING")
IncludeLib("QUESTKEY")
IncludeLib("LEAGUE")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

Include("\\script\\global\\vn\\gamebank_proc.lua")

function main()
--dofile("script/global/quanlygame/tientrangbalang.lua")
	tbOpt =
	{
		"<dec><npc>Ng��i c�n g� � ta n�o ?.",
	     "Ta Mu�n ��i V� R�t Xu/gamebank_proc",
	     "Mua H�t M�u L�nh B�i 1 Th�ng/muatuyetdinhlenh",
	     "Mua H�t M�u L�nh B�i 3 Th�ng/muatuyetdinhlenh3",
		"K�t th�c ��i tho�i./no",
	}
	CreateTaskSay(tbOpt)
end

function showsoxu()
	local nMoney = GetExtPoint(1)
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("�� x�y ra l�i trong ng�n kh� c�a b�n, t�m th�i kh�ng th� r�t ���c Ti�n ��ng. Xin vui l�ng li�n h� v�i nh� ph�t h�nh �� ���c gi�i quy�t !")
		return
	end
	if (nMoney <= 0) then
		Say("�ng ch� ti�n trang: Kh�ch quan ch�a h� g�i k� tr�n b�o v�t g� � ��y",1,"Bi�t r�i/no")
		return
	else
	
		Say("Kh�ch quan �� g�i t�i b�n ti�m t�ng c�ng <color=green>"..nMoney.."<color> Ti�n ��ng.",1,"Bi�t r�i/no")
	end
end

function muatuyetdinhlenh()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban >= 30  then
		ConsumeEquiproomItem(30, 4,417, 1,-1)
		local tbAwardItem = {tbProp={6,1,4529,1,0,0}, nCount = 1,nBindState=-2,nExpiredTime=1440*30}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><H�t M�u L�nh B�i><color>");
	logplayer("dulieu/muahutmaulenh.txt",format("[IP : %s ]	- Th�i gian :	%s 	- T�i kho�n [ %s] 	- Nh�n v�t : [%s ] mua th�nh c�ng h�t m�u l�nh! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>30 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end

function muatuyetdinhlenh7day()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban >= 7  then
		ConsumeEquiproomItem(7, 4,417, 1,-1)
		local tbAwardItem = {tbProp={6,1,4529,1,0,0}, nCount = 1,nBindState=-2,nExpiredTime=1440*7}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><H�t M�u L�nh B�i><color>");
	logplayer("dulieu/muahutmaulenh.txt",format("[IP : %s ]	- Th�i gian :	%s 	- T�i kho�n [ %s] 	- Nh�n v�t : [%s ] mua th�nh c�ng h�t m�u l�nh! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>7 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end


function muatuyetdinhlenh3()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban >= 90  then
		ConsumeEquiproomItem(90, 4,417, 1,-1)
		local tbAwardItem = {tbProp={6,1,4529,1,0,0}, nCount = 1,nBindState=-2,nExpiredTime=1440*90}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");		Talk(1, "", "Trao ��i th�nh c�ng nh�n ���c <color=yellow><H�t M�u L�nh B�i><color>");
	logplayer("dulieu/muahutmaulenh.txt",format("[IP : %s ]	- Th�i gian :	%s 	- T�i kho�n [ %s] 	- Nh�n v�t : [%s ] mua th�nh c�ng h�t m�u l�nh! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

else
		Say("<#> Trao ��i v�t ph�m c�n c� <color=yellow>90 Ti�n ��ng <color>, c� �� ti�n r�i ��n nh�!"..nCount_muaban, 0)
	end

end


---BonTieu
function epbontieuthanma()
	local title = "Giao di�n �p ng�a"
	g_GiveItemUI(title, "NL c�n c�: 1 phi v�n + 2 th�n m� to�i phi�n  + 2 t� th�y tinh  + 2 tinh h�ng b�o th�ch + 1 th�n b� kho�ng th�ch. ", {batdauepbontieu}, nil, nil)  
end

-----------BonTieu
function batdauepbontieu(putCount)
	if (CalcEquiproomItemCount(0,10,8,-1) ~= 1) then
		Talk(1,"","C�n c� 1 phi v�n �� v�o � n�y m�i �� n�ng c�p b�n ti�u hi�n t�i �ang d� ho�c thi�u ng�a (l�u � nguy�n li�u ph�i �� ngo�i r��ng)");
	return end;
	if (putCount == 0) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o ch� 1 ng�a phi v�n ngo�i ra kh�ng ��t v�t ph�m kh�c ho�c ��t nguy�n li�u v�o")
		return
	end
		if (putCount > 1) then 
		Talk(1,"", "Xin vui l�ng ch� ��t v�o ch� 1  ng�a phi v�n ngo�i ra kh�ng ��t v�t ph�m kh�c ho�c ��t nguy�n li�u v�o")
		return
	end
		local ts1 = ITEM_GetExpiredTime(itemIndex) -- timestamp: thoi gian tin = s tu 1/1/1970
		local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "ng�a �ang trong tr�ng th�i kh�a ho�c c� h�n s� d�ng kh�ng th� n�ng c�p")
		return
	end
	if ITEM_GetExpiredTime(itemIndex) > 0 then
			Talk(1,"", "ng�a �ang trong tr�ng th�i kh�a ho�c c� h�n s� d�ng kh�ng th� n�ng c�p")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local ItemName = GetItemName(itemIndex)
		if (ItemName  ~= "Phi V�n") then --coppt t�n con phi v�n t�i server d�n v�o cho chu�n
		Talk(1,"", "trong ��y ng��i b� v�o c� 1 v�t ph�m g� ta kh�ng th� h�nh dung ra ���c li�n h� admin")
	--	Msg2Player("Nh�n d�ng ��y l� v�t ph�m t�n<color=green> "..ItemName..".")
		return
	end
		if (putCount ~= 1) then 
		Talk(1,"", "��t nguy�n li�u v�o kh�ng ch�nh x�c.C�n �t nh�t 1 ng�a phi v�n")
		return
	end
	local nSilverCount = CalcEquiproomItemCount(4,1515,1,1) ;
	if(nSilverCount < 2) then -- gia xu
	Talk(1,"","C�n c� 2 th�n m� to�i phi�n �� ngo�i h�nh trang.") -- go
	return end
	local nSilverCount = CalcEquiproomItemCount(4,239,1,1) ;
	if(nSilverCount < 2) then -- gia xu
	Talk(1,"","C�n c� 2 t� th�y tinh �� ngo�i h�nh trang.") -- go
	return end
	local nSilverCount = CalcEquiproomItemCount(4,353,1,1) ;
	if(nSilverCount < 2) then -- gia xu
	Talk(1,"","C�n c� 2 tinh h�ng b�o th�ch �� ngo�i h�nh trang.") -- go
	return end
	local nSilverCount = CalcEquiproomItemCount(6,1,398,-1) ;
	if(nSilverCount < 1) then -- gia xu
	Talk(1,"","C�n c� 1 th�n b� kho�n th�ch �� ngo�i h�nh trang.") -- go
	return end
			if (CalcEquiproomItemCount(0,10,8,-1) ~= 1) then
		Talk(1,"","C�n c� 1 phi v�n �� v�o � n�y m�i �� n�ng c�p b�n ti�u hi�n t�i �ang d� ho�c thi�u ng�a (l�u � nguy�n li�u ph�i �� ngo�i r��ng)");
	return end;
doclog2()
if nValue == 7 or nValue == 14 or nValue == 21 or nValue == 28 or nValue == 35 or nValue == 42 or nValue == 49  or nValue == 56 or nValue == 63 or nValue == 70 or nValue == 77 or nValue == 84 or nValue == 91 or nValue == 98 or nValue == 105 or nValue == 112 or nValue == 119 or nValue == 126  then
ghilog2()		
		RemoveItemByIndex(GetGiveItemUnit(i))
		AddItem(0,10,6,10,0,0);
		ConsumeEquiproomItem(2,4,239,1,-1)
		ConsumeEquiproomItem(2,4,353,1,-1)
		ConsumeEquiproomItem(2,4,1515,1,-1)
		ConsumeEquiproomItem(1,6,1,398,-1)
		Msg2Player("Ch�c m�ng b�n n�ng c�p th�nh c�ng ng�a B�n Ti�u");
		local szNews = format("<color=green>Ch�c m�ng :<color=green>" .. GetName() .. " gh�p th�nh c�ng B�n Ti�u");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	logplayer("dulieu/nangcapngua.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] n�ng c�p th�nh c�ng b�n ti�u! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	else
	ghilog2()
		ConsumeEquiproomItem(2,4,1515,1,-1)
		ConsumeEquiproomItem(1,6,1,398,-1)
		ConsumeEquiproomItem(2,4,239,1,-1)
		ConsumeEquiproomItem(2,4,353,1,-1)		
		Msg2Player("n�ng c�p th�t b�i m�t �i 1 s� nguy�n li�u");
		Say("th�t l� ��ng ti�c ��t n�ng c�p l�n n�y th�t b�i b� m�t �i 1 s� nguy�n li�u xin h�y c� g�ng t�m may m�n l�n sau!");
		logplayer("dulieu/nangcapngua.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] n�ng c�p th�t b�i b�n ti�u! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	end;
end;




function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end



function ghilog2()
doclog2()
dem = nValue + 1
szPath = "dulieu/diemsongua2.txt"
	handle = openfile(szPath, "w+")
	write(handle, dem)	
	closefile(handle)
end

function doclog2()
szPath = "dulieu/diemsongua2.txt"
		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tonumber(nValue)
		end
		closefile(handle)	
		return nValue		
end
