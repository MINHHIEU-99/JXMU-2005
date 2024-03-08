
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
		"<dec><npc>Ng­¬i cÇn g× ë ta nµo ?.",
	     "Ta Muèn §æi Vµ Rót Xu/gamebank_proc",
	     "Mua Hót M¸u LÖnh Bµi 1 Th¸ng/muatuyetdinhlenh",
	     "Mua Hót M¸u LÖnh Bµi 3 Th¸ng/muatuyetdinhlenh3",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function showsoxu()
	local nMoney = GetExtPoint(1)
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("§· x·y ra lçi trong ng©n khè cña b¹n, t¹m thêi kh«ng thÓ rót ®­îc TiÒn §ång. Xin vui lßng liªn hÖ víi nhµ ph¸t hµnh ®Ó ®­îc gi¶i quyÕt !")
		return
	end
	if (nMoney <= 0) then
		Say("¤ng chñ tiÒn trang: Kh¸ch quan ch­a hÒ göi kú tr©n b¶o vËt g× ë ®©y",1,"BiÕt råi/no")
		return
	else
	
		Say("Kh¸ch quan ®· göi t¹i bæn tiÖm tæng céng <color=green>"..nMoney.."<color> TiÒn §ång.",1,"BiÕt råi/no")
	end
end

function muatuyetdinhlenh()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban >= 30  then
		ConsumeEquiproomItem(30, 4,417, 1,-1)
		local tbAwardItem = {tbProp={6,1,4529,1,0,0}, nCount = 1,nBindState=-2,nExpiredTime=1440*30}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Hót M¸u LÖnh Bµi><color>");
	logplayer("dulieu/muahutmaulenh.txt",format("[IP : %s ]	- Thêi gian :	%s 	- Tµi kho¶n [ %s] 	- Nh©n vËt : [%s ] mua thµnh c«ng hót m¸u lÖnh! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>30 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end

function muatuyetdinhlenh7day()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban >= 7  then
		ConsumeEquiproomItem(7, 4,417, 1,-1)
		local tbAwardItem = {tbProp={6,1,4529,1,0,0}, nCount = 1,nBindState=-2,nExpiredTime=1440*7}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Hót M¸u LÖnh Bµi><color>");
	logplayer("dulieu/muahutmaulenh.txt",format("[IP : %s ]	- Thêi gian :	%s 	- Tµi kho¶n [ %s] 	- Nh©n vËt : [%s ] mua thµnh c«ng hót m¸u lÖnh! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>7 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end


function muatuyetdinhlenh3()
	local nCount_muaban = CalcEquiproomItemCount(4,417,1,-1)
	if  nCount_muaban >= 90  then
		ConsumeEquiproomItem(90, 4,417, 1,-1)
		local tbAwardItem = {tbProp={6,1,4529,1,0,0}, nCount = 1,nBindState=-2,nExpiredTime=1440*90}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Më ra vËt phÈm mua ë Kú Tr©n C¸c");		Talk(1, "", "Trao ®æi thµnh c«ng nhËn ®­îc <color=yellow><Hót M¸u LÖnh Bµi><color>");
	logplayer("dulieu/muahutmaulenh.txt",format("[IP : %s ]	- Thêi gian :	%s 	- Tµi kho¶n [ %s] 	- Nh©n vËt : [%s ] mua thµnh c«ng hót m¸u lÖnh! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

else
		Say("<#> Trao ®æi vËt phÈm cÇn cã <color=yellow>90 TiÒn §ång <color>, cã ®ñ tiÒn råi ®Õn nhÐ!"..nCount_muaban, 0)
	end

end


---BonTieu
function epbontieuthanma()
	local title = "Giao diÖn Ðp ngùa"
	g_GiveItemUI(title, "NL cÇn cã: 1 phi v©n + 2 thÇn m· to¸i phiÕn  + 2 tö thñy tinh  + 2 tinh hång b¶o th¹ch + 1 thÇn bÝ kho¸ng th¹ch. ", {batdauepbontieu}, nil, nil)  
end

-----------BonTieu
function batdauepbontieu(putCount)
	if (CalcEquiproomItemCount(0,10,8,-1) ~= 1) then
		Talk(1,"","CÇn cã 1 phi v©n ®Ó vµo « nµy míi ®Ó n©ng cÊp b«n tiªu hiÖn t¹i ®ang d­ hoÆc thiÕu ngùa (l­u ý nguyªn liÖu ph¶i ®Ó ngoµi r­¬ng)");
	return end;
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo chØ 1 ngùa phi v©n ngoµi ra kh«ng ®Æt vËt phÈm kh¸c hoÆc ®Æt nguyªn liÖu vµo")
		return
	end
		if (putCount > 1) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo chØ 1  ngùa phi v©n ngoµi ra kh«ng ®Æt vËt phÈm kh¸c hoÆc ®Æt nguyªn liÖu vµo")
		return
	end
		local ts1 = ITEM_GetExpiredTime(itemIndex) -- timestamp: thoi gian tin = s tu 1/1/1970
		local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "ngùa ®ang trong tr¹ng th¸i khãa hoÆc cã h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end
	if ITEM_GetExpiredTime(itemIndex) > 0 then
			Talk(1,"", "ngùa ®ang trong tr¹ng th¸i khãa hoÆc cã h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local ItemName = GetItemName(itemIndex)
		if (ItemName  ~= "Phi V©n") then --coppt tªn con phi v©n t¹i server d¸n vµo cho chuÈn
		Talk(1,"", "trong ®©y ng­¬i bá vµo cã 1 vËt phÈm g× ta kh«ng thÓ h×nh dung ra ®­îc liªn hÖ admin")
	--	Msg2Player("NhËn d¹ng ®©y lµ vËt phÈm tªn<color=green> "..ItemName..".")
		return
	end
		if (putCount ~= 1) then 
		Talk(1,"", "®Æt nguyªn liÖu vµo kh«ng chÝnh x¸c.CÇn Ýt nhÊt 1 ngùa phi v©n")
		return
	end
	local nSilverCount = CalcEquiproomItemCount(4,1515,1,1) ;
	if(nSilverCount < 2) then -- gia xu
	Talk(1,"","CÇn cã 2 thÇn m· to¸i phiÕn ®Ó ngoµi hµnh trang.") -- go
	return end
	local nSilverCount = CalcEquiproomItemCount(4,239,1,1) ;
	if(nSilverCount < 2) then -- gia xu
	Talk(1,"","CÇn cã 2 tö thñy tinh ®Ó ngoµi hµnh trang.") -- go
	return end
	local nSilverCount = CalcEquiproomItemCount(4,353,1,1) ;
	if(nSilverCount < 2) then -- gia xu
	Talk(1,"","CÇn cã 2 tinh hång b¶o th¹ch ®Ó ngoµi hµnh trang.") -- go
	return end
	local nSilverCount = CalcEquiproomItemCount(6,1,398,-1) ;
	if(nSilverCount < 1) then -- gia xu
	Talk(1,"","CÇn cã 1 thÇn bÝ kho¸n th¹ch ®Ó ngoµi hµnh trang.") -- go
	return end
			if (CalcEquiproomItemCount(0,10,8,-1) ~= 1) then
		Talk(1,"","CÇn cã 1 phi v©n ®Ó vµo « nµy míi ®Ó n©ng cÊp b«n tiªu hiÖn t¹i ®ang d­ hoÆc thiÕu ngùa (l­u ý nguyªn liÖu ph¶i ®Ó ngoµi r­¬ng)");
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
		Msg2Player("Chóc mõng b¹n n©ng cÊp thµnh c«ng ngùa B«n Tiªu");
		local szNews = format("<color=green>Chóc mõng :<color=green>" .. GetName() .. " ghÐp thµnh c«ng B«n Tiªu");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	logplayer("dulieu/nangcapngua.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] n©ng cÊp thµnh c«ng b«n tiªu! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	else
	ghilog2()
		ConsumeEquiproomItem(2,4,1515,1,-1)
		ConsumeEquiproomItem(1,6,1,398,-1)
		ConsumeEquiproomItem(2,4,239,1,-1)
		ConsumeEquiproomItem(2,4,353,1,-1)		
		Msg2Player("n©ng cÊp thÊt b¹i mÊt ®i 1 sè nguyªn liÖu");
		Say("thËt lµ ®¸ng tiÕc ®ît n©ng cÊp lÇn nµy thÊt b¹i bÞ mÊt ®i 1 sè nguyªn liÖu xin h·y cè g¾ng t×m may m¾n lÇn sau!");
		logplayer("dulieu/nangcapngua.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] n©ng cÊp thÊt b¹i b«n tiªu! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
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
