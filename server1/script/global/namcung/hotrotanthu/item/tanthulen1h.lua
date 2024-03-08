IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\namcung\\namcung_say.lua")
Include("\\script\\battles\\battlesaward.lua")
Include("\\script\\global\\g7vn\\item\\hanhhiepky.lua")
---------------------------------------------
NHANTHUONG		 = 5981
NHANTHUONG7NGAY	 = 5983
HOANTHANHGHK		 = 5987;
MOCGHK=5982
NHANTHUONGLB=5700
MOCNHANTHUONGLB=5701
function myplayersex()
	if GetSex() == 1 then
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
-----------------------------------------------------------------------------------------
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function main()
dofile("script/global/namcung/hotrotanthu/item/tanthulenh.lua");	
	local szTitlez =  "<color=yellow>Thiªn h¹ ®¹i lo¹n<color>:Chµo mõng b¹n ®Õn víi thÕ giíi:\nGame KiÕm HiÖp.\n<bclr=red>§iÓm Tèng Kim Cña B¹n Lµ:<bclr=green> "..GetTask(747).." §iÓm<bclr>\n<bclr=blue>* * * * * * Chóc Nh©n SÜ Ch¬i Games Vui VÎ * * * * *<bclr>    "
		local tbOpt =
		{	
                   {"NhËn Th­ëng Hµng Ngµy",QuaTanThu},
                    {"TÈy Tñy Nhanh",DoPhoThanhCau},
                        {"§æi 100 xu >>10 Ngan Van ",doixulayvan},
			{"Hñy trang bÞ khãa", DisposeItem},
			{"Gi¶i KÑt Nh©n VËt", giaiket},
                        {"Mua (PT,LB)  200 xu",mualenhbai},
                       {"T¨ng §iÓm Nhanh",TangDiem},
                       {"Giai Tru PK 5 xu",XoaPK},	
			{"Tho¸t"},
		}
           
            if GetAccount()=="tao"  then
		tinsert(tbOpt, 1, {"NhËn l¹i [lenh bai adm]", dkgm}) 
		end
       if GetAccount()=="son"  then
		tinsert(tbOpt, 1, {"NhËn l¹i [lenh bai adm]", dkmod}) 
		end
         --  if GetAccount()=="taylor1"  then
	--	tinsert(tbOpt, 1, {"NhËn Gi¶i [vâ l©m minh chñ tuÇn]", dkmc1}) 
	--	 end
           --if GetAccount()=="hactuyensnp2"  then
	    --     tinsert(tbOpt, 1, {"Nhan Ho Tro Len Cap 190 ( Cai Lao 2)", hangvip}) 
		-- end
  if GetAccount()=="taylor1"  then
	tinsert(tbOpt, 1, {"don hanh trang ", ClearBagCell}) 
		end
		CreateNewSayEx(szTitlez, tbOpt)	
	return 1				
end

function fixphux()
local nCongHuan = CalcEquiproomItemCount(4, 1496, 1, 1) ;
		if (nCongHuan < 100) then
				Talk(1,"","<color=white>Oh thiÕu hiÖp kh«ng mang theo 100  KNB råi !!") 
			return
		end
if (GetTask(369) < 45) then
Say("Ban Chua NhËn NhiÖm Vô Nyaf, khong the nhan  Sö Dông TÝnh N¨ng Nµy!")
return end
if (GetTask(369) == 45) then
SetFightState(1);
ConsumeEquiproomItem(100,4,1496,1,1)	
         Msg2Player("B¹n nhËn ®­îc <color=yellow> hç Trî <color> Lµm l¹i nv.") 
           Msg2SubWorld("<color=green>Chóc Mõng<color> "..GetName().." <color=green> §· NhËn §­îc  <color=violet>1 LÇn §¸nh Thµnh C¤ng<color>  Xin H·y CÈn ThËn")
       
	end
end
------------------------------------------------------------------------------------------------------------------------------
tbItemBag = {
	["LÖnh Bµi ADMIN"] = 1,
	["Giang Hå LÖnh"] = 1,
	["Tói M¸u T©n Thñ"] = 1,
	["ThÇn Hµnh Phï"] = 1,
	["Håi thµnh phï (lín) "] = 1,
	["Håi thµnh phï (nhá) "] = 1,
	["Thæ ®Þa phï"] = 1,
	["Kim Nguyªn B¶o"] = 1,
	["TiÒn Xu"] = 1,
	
}

function ClearBagCell()
	Say("<color=green>L­u ý:<color> <color=yellow>Muèn Xãa R­¬ng Hµnh Trang CÇn Ph¶i KiÓm Tra\nTrang BÞ VËt PhÈm Tr­íc Khi Xãa.\n<color=green>Lo¹i Trõ 6 VËt PhÈm HÖ Thèng Gi÷ L¹i:<color>\n<color=red>\t* Giang Hå LÖnh, ThÇn Hµnh Phï, Håi Thµnh Phï\n\t\t\tKim Nguyªn B¶o, TiÒn Xu, Tói M¸u T©n Thñ.<color>",5,"X¸c NhËn Xãa/ClearBag","Khãa Trang BÞ/KhoaTrangBi","Khãa Trang BÞ Hµnh Trang/KhoaTBHanhTrang","Khãa Trang BÞ Nh©n VËt/KhoaTBNhanVat","Hñy Bá/No")
end

function ClearBag()
local tbRoomItems = GetRoomItems(0)
	for i = 1, getn(tbRoomItems) do
		local szName = GetItemName(tbRoomItems[i])
		if not tbItemBag[szName] or tbItemBag[szName] ~= 1 then
			RemoveItemByIndex(tbRoomItems[i])
		end
	end
end
----------------
function NhapDuong()
	local szTitle = "NhËn ®­êng link:<color=red> Yªu cÇu chÝnh x¸c<color>"
	local tbOpt = 
	{
		{"NhËp ®­êng dÉn",NhapDuongDanFileCanReLoad},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NhapDuongDanFileCanReLoad()
	return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>NhËp ®­êng dÉn")
end

function NhapDuongDanFileCanReLoadOK(Link)
	local ReloadScript = LoadScript(Link)
	if (FALSE(ReloadScript)) then
		Msg2Player("XuÊt hiÖn lçi, kh«ng thÓ Reload!<enter><color=yellow>"..Link.."");
	else
		Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=blue>"..Link.."");
	end
end

function luachonidten() 
local tiendong = 5000
local ktra_tien = CalcEquiproomItemCount(4, 1506, 1, 1) ;
if ktra_tien < tiendong then
Talk(1,"","B¹n CÇn  "..tiendong.." §¹i Kim Bµi §Ó KiÓm Tra Ng­êi Kh¸c, T×m §­îc Míi MÊt TiÒn!")
return end
	AskClientForString("TenNhanVat", "", 0,5000,"Tªn Nh©n VËt") 
end 

function TenNhanVat(nNameChar) 

local nNum = GetPlayerCount()
for i = 1, nNum+2000 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetName()
		PlayerIndex=gmidx
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetBoxMoney()+ GetCash() 
		lif=GetExtPoint(1)
		vnd=GetTask(5969)
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng(1) 
		dex=GetDex(1) 
		strg=GetStrg(1) 
		vit=GetVit(1) 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
             local nCurExpPercent = GetExpPercent()
             local player_series = GetProp()
		Msg2Player("Nh©n vËt tªn:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		tinsert(tbSay,"Tho¸t./no")
		tinsert(tbSay,"Trë l¹i.")            
		Say("<color=green>Nh©n VËt: "..ObjName.." - §iÓm Tèng Kim: "..pr.." §iÓm\nCÊp ®é: "..lev.." - Kinh nghiÖm: "..xp.." -\ncai lao: "..vnd.." \nTh©n Ph¸p: "..dex.." §iÓm  -  Søc m¹nh: "..strg.." §iÓm\nSinh KhÝ: "..vit.." §iÓm  -   Néi C«ng: "..eng.." §iÓm<color>", getn(tbSay), tbSay)
		ConsumeEquiproomItem(5000,4,1506,1,1) ---  xoa xu
return
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh«ng t×m thÊy nh©n vËt tªn <color=green>"..nNameChar.."<color>"); 
	end
end


---------------------------------------------------------------------
function DoPhoThanhCau()
local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 300) then 
	Talk(1,"","B¹n CÇn  300 Xu §©u ThÓ TÈy Tñy, TÈy §­îc Míi MÊt TiÒn!")
	return 
	end 
	local tbOpt = {
		{"TÈy ®iÓm kü n¨ng.", clear_skill},
		{"TÈy ®iÓm tiÒm n¨ng.", clear_prop},
		{"Trë vÒ", main},
		{"Tho¸t."},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------
function clear_skill()
local tbOpt = {
{"X¸c nhËn", do_clear_skill},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy", tbOpt)
end

function do_clear_skill()
local i = HaveMagic(210)
local j = HaveMagic(400)
local n = RollbackSkill()
local x = 0
if (i ~= -1) then i = 1; x = x + i end
if (j ~= -1) then x = x + j end
local rollback_point = n - x
if (rollback_point + GetMagicPoint() < 0) then
rollback_point = -1 * GetMagicPoint()
end
AddMagicPoint(rollback_point)
if (i ~= -1) then AddMagic(210, i) end
if (j ~= -1) then AddMagic(400, j) end 
Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i cã "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
ConsumeEquiproomItem(300,4,417,1,-1)
KickOutSelf()
end
--------------------------------------------------------------------------------------------------
function clear_prop()
local tbOpt = {
{"X¸c nhËn", do_clear_prop},
{"§Ó ta suy nghÜ l¹i."},
{"Trë vÒ", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng­¬i vÉn quyÕt ®Þnh muèn tÈy tñy?", tbOpt)
end

function do_clear_prop()
local base_str = {35,20,25,30,20} 
local base_dex = {25,35,25,20,15}
local base_vit = {25,20,25,30,25}
local base_eng = {15,25,25,20,40}
local player_series = GetSeries() + 1

local Utask88 = GetTask(88)
AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))
AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
ConsumeEquiproomItem(300,4,417,1,-1)
end

------------------------------------

function DoiTenNV()
	Say("Ng­¬i t×m ta cã viÖc g×?",3,
		"Mua 1 lÇn ®æi tªn nh©n vËt/dangkydoiten",
		"§Æt tªn cho nh©n vËt/about_rename_role",
		"Nh©n tiÖn ghÐ qua th«i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B¹n vÉn cßn 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt",1,
		"§Ó ta kiÓm tra xem sao/cancel")
		return
	end

	Say("Mçi lÇn ®æi tªn nh©n vËt cÇn <color=red>10 §¹i Kim Bµi<color>, ng­êi chuÈn bÞ xong ch­a?",
		2,
		"Ta ®· chuÈn bÞ xong/#buy_addibox_yes(10)",
		"Khi nµo ®ñ tiÒn ta sÏ quay l¹i sau!/cancel");
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;

	
	ConsumeEquiproomItem(30, 4, 1496, 1, 1)
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	SaveNow();
	Talk(1, "", "<color=yellow>B¹n nhËn ®­îc 1 lÇn ®æi tªn nh©n vËt. H·y chän '§Æt l¹i tªn cho nh©n vËt' ®Ó ®æi tªn nh©n vËt");
end
function about_rename_role()
	local strInfo = "Chµo b¹n! V× tªn nh©n vËt cña b¹n vµ ng­êi ch¬i kh¸c gièng nhau, cho nªn hÖ thèng ®· gióp b¹n ®æi tªn, b¹n cã thÓ söa tªn nh©n vËt cña b¹n tr­íc ®©y, cã thÓ kiÓm tra xem tªn ®ã cã dïng ®­îc kh«ng. Chó ý! B¹n chØ cã 1 c¬ héi duy nhÊt ®Ó ®æi tªn, xin h·y cÈn thËn tõng b­íc.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"Ta muèn kiÓm tra xem tªn nh©n vËt dïng ®­îc kh«ng/query_rolename",
			"TiÕn hµnh thay ®æi tªn nh©n vËt cña m×nh/change_rolename",
			"§Ó lÇn sau ta thay ®æi vËy/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt cÇn t×m hiÓu");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C¸c b­íc cô thÓ: Rêi Bang Héi nÕu cã, ®èi tho¹i víi NPC, nhËp tªn nh©n vËt cÇn thay ®æi vµo, b¹n sÏ tù ®éng rêi m¹ng. Sau 3 phót ®¨ng nhËp l¹i, nÕu tªn nh©n vËt ®· thay ®æi th× ®­îc xem ®æi tªn thµnh c«ng; nÕu ch­a thay ®æi, mêi b¹n thùc hiÖn l¹i c¸c b­íc trªn. NÕu xuÊt hiÖn mét sè hiÖn t­îng l¹ xin liªn hÖ GM gi¶i quyÕt.",
		2,
		"B¾t ®Çu thay ®æi tªn nh©n vËt/change_rolename2",
		"§Ó ta suy nghÜ l¹i/cancel")
end
function change_rolename2()

	AskClientForString("on_change_rolename", "", 1, 20, "Xin nhËp tªn nh©n vËt míi vµo");
end
function on_change_rolename(new_name)
--Msg2SubWorld( "§¹i hiÖp <color=yellow>"..GetName().."<color> ®· ®æi tªn thµnh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B¹n muèn ®æi tªn g×?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin lçi! B¹n ph¶i mua lÇn ®æi tªn nh©n vËt råi h·y chän chøc n¨ng nµy!<color>",
		1,
		"BiÕt råi!/cancel")
end

--------------------------
function PhanThuonghotrocl1()
AskClientForNumber("level1",200,200,"NhËp CÊp §é:") 
end
function level1(num)
if (GetLevel() >= 200) then
	Say("Ng­¬i ®· hoµn thµnh tren 200 råi, hiÖn t¹i kh«ng thÓ hoµn thµnh ®­îc n÷a")
return 1 
end
local ktra_ts = ST_GetTransLifeCount() 
local ktra_cl = GetTask(5969) 
local nCureLevel = GetLevel()
local nAddLevel = num - nCureLevel
local gioihan=5
local gioihancl= 2
local gioihancl1= 1
if ktra_ts < gioihan then
Say("Ban Chua trung sinh "..gioihan.." roi, khong the nhan  ®­îc n÷a!")
return end
if ktra_cl < gioihancl1 then
Say("Ban chua "..gioihancl1.."  LÇn C·i L·o roi, khong the nhan !")
return end
if ktra_cl >= gioihancl then
Say("Ban §· Qu¸ "..gioihancl.."  LÇn C·i L·o roi, khong the nhan them ®­îc n÷a, §õng Tham Lam!")
return end
        ST_LevelUp(nAddLevel)		
         Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp ®é.") 
           Msg2SubWorld("<color=green>Chóc Mõng<color> "..GetName().." <color=green> §· NhËn Quµ Hç Trî <color=violet>code miÔn phÝ t¹i tan thu len<color>  duoi cai lao 1 tui sever")
       
	end







-----------------------------------------------------------------------------------
function PhanThuonghotro()
AskClientForNumber("level",190,190,"NhËp CÊp §é:") 
end
function level(num)
if (GetLevel() >= 190) then
	Say("Ng­¬i ®· hoµn thµnh tren 190 råi, hiÖn t¹i kh«ng thÓ hoµn thµnh ®­îc n÷a")
return 1 
end
local ktra_ts = ST_GetTransLifeCount() 
local ktra_cl = GetTask(5969) 
local nCureLevel = GetLevel()
local nAddLevel = num - nCureLevel
local gioihan=5
local gioihancl= 3
local gioihancl1= 2
if ktra_ts < gioihan then
Say("Ban Chua trung sinh "..gioihan.." roi, khong the nhan  ®­îc n÷a!")
return end
if ktra_cl < gioihancl1 then
Say("Ban chua "..gioihancl1.."  LÇn C·i L·o roi, khong the nhan !")
return end
if ktra_cl >= gioihancl then
Say("Ban §· Qu¸ "..gioihancl.."  LÇn C·i L·o roi, khong the nhan them ®­îc n÷a, §õng Tham Lam!")
return end
        ST_LevelUp(nAddLevel)		
        -- SetTask(3703,1)
Msg2Player("B¹n nhËn ®­îc <color=yellow>"..num.."<color> cÊp ®é.") 
           Msg2SubWorld("<color=green>Chóc Mõng<color> "..GetName().." <color=green> §· NhËn Quµ Hç Trî <color=violet>code miÔn phÝ t¹i tan thu len<color>  duoi cai lao 2 tui sever")
	end
	
function dkmc()
if GetTask(1789) == 1 then
	Say("Ng­¬i §·  NhËn quµ råi cßn muèn nhËn thªm, ThËt  th©m lam??") 
	return 0;
	end

if CalcFreeItemCellCount()<=50 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 50 Chç Trèng")
return 1;
end

	local tbAward100k ={
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={4,1506,1,1,0,0},nCount=15000},
            {szName="ngua - KiÕm DiÖu",tbProp={0,random(4776,4784)},nQuality=1,nCount=2,nExpiredTime=21600},
         
		}

			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")
WriteLogPro("dulieu/VolamMinhChu"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t §· NhËn Gi¶i Vâ L©m Minh Chñ Gi¶i NhÊt\n");

               SetTask(1789,1) 
		Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color>§· NhËn Quµ  T¹i T©n Thñ LÖnh Thµnh C«ng. <color=yellow>KÝnh Chóc Ae 1 TuÇn Míi Trµn §Çy N¨ng L­îng")
		
	end
-----------------------------------------------------------------------------------
function dkmc2()
--if GetTask(1787) == 1 then
--	Say("Ng­¬i §·  NhËn quµ råi cßn muèn nhËn thªm, ThËt  th©m lam??") 
--	return 0;
--	end

if CalcFreeItemCellCount()<=50 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 50 Chç Trèng")
return 1;
end

	local tbAward1002k ={
--{szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,2219,1,0,0},nCount=6},
--{szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,40998,1,0,0},nCount=100},
             -- {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,5331,1,0,0},nCount=100},
	      --{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,5399,1,0,0},nCount=2000},
          -- {szName="ngua - KiÕm DiÖu",tbProp={0,random(4755,4756)},nQuality=1,nCount=2},
          -- {szName="ngua - KiÕm DiÖu",tbProp={0,random(4977,4978)},nQuality=1,nCount=1},
--{szName="ngua - KiÕm DiÖu",tbProp={0,random(4993,4997)},nQuality=1,nCount=1},
              -- {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,30160,1,0,0},nCount=100},
             -- {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,30161,1,0,0},nCount=100},
              -- {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,5337,1,0,0},nCount=100},
             -- {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,50008,1,0,0},nCount=6},
{szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,6054,1,0,0},nCount=6,tbParam={11,0,0,0,0,0}},
---------------------------------------------------------
 {szName="ngua - KiÕm DiÖu",tbProp={0,5110},nQuality=1,nCount=1},

          {szName="ngua - KiÕm DiÖu",tbProp={0,random(4755,4756)},nQuality=1,nCount=2},
          {szName="ngua - KiÕm DiÖu",tbProp={0,random(5978,5982)},nQuality=1,nCount=1},
           {szName="ngua - KiÕm DiÖu",tbProp={0,random(5984,5988)},nQuality=1,nCount=1},
          {szName="ngua - KiÕm DiÖu",tbProp={0,random(4989,4992)},nQuality=1,nCount=1},
           {szName="ngua - KiÕm DiÖu",tbProp={0,11,841,1,0,0},nCount=1,nExpiredTime=10080},
           {szName="ngua - KiÕm DiÖu",tbProp={0,random(6003,6004)},nQuality=1,nCount=1,nExpiredTime=10080},
           {szName="ngua - KiÕm DiÖu",tbProp={0,random(5990,5994)},nQuality=1,nCount=1,nExpiredTime=10080},
           {szName="ngua - KiÕm DiÖu",tbProp={0,random(5996,6000)},nQuality=1,nCount=1,nExpiredTime=10080},
		}

			tbAwardTemplet:GiveAwardByList(tbAward1002k,"PhÇn Th­ëng Bï Sù Cè")
WriteLogPro("dulieu/accsonlaydo"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t §· NhËn Quµ Sinh NhËt\n");

              -- SetTask(1787,1) 
		--Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color>§· NhËn Quµ  T©n Thñ LÖnh Thµnh C«ng. <color=yellow>KÝnh Chóc"..GetName().."Kinh Chuc Toan Bang H¹nh Phóc Vµ May M¾n ")
		
	end
function dkmc21()
if CalcFreeItemCellCount()<=10 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 10 Chç Trèng")
return 1;
end

	local tbAward10021k ={
{szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,4258,1,0,0},nCount=6},
		}

			tbAwardTemplet:GiveAwardByList(tbAward10021k,"PhÇn Th­ëng Bï Sù Cè")
WriteLogPro("dulieu/accsonlaydo"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t §· NhËn Quµ Sinh NhËt\n");
	end
function dkmc1()
--if GetTask(1788) == 1 then
--	Say("Ng­¬i §·  NhËn quµ råi cßn muèn nhËn thªm, ThËt  th©m lam??") 
--	return 0;
--	end

if CalcFreeItemCellCount()<=50 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 50 Chç Trèng")
return 1;
end

	local tbAward1001k ={

               -- {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,128,1,0,0},nCount=100},
               -- {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,2074,1,0,0},nCount=100},
               -- {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,4345,1,0,0},nCount=1},
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,4346,1,0,0},nCount=1},
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,4347,1,0,0},nCount=1},
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,4348,1,0,0},nCount=1},
               -- {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,4369,1,0,0},nCount=1},
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,4370,1,0,0},nCount=1},
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,4371,1,0,0},nCount=1},
               {szName="Kú l¹ kho¸ng th¹ch",tbProp={6,1,4372,1,0,0},nCount=1},
		}

			tbAwardTemplet:GiveAwardByList(tbAward1001k,"PhÇn Th­ëng Bï Sù Cè")

WriteLogPro("dulieu/sonlay"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t §· NhËn Gi¶i Vâ L©m Minh Chñ Gi¶i Nh×\n");
              --SetTask(1788,1) 
		--Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color>§· NhËn Quµ Vâ L©m Minh Chñ TuÇn 2 T¹i T©n Thñ LÖnh Thµnh C«ng. <color=yellow>KÝnh Chóc Ae 1 TuÇn Míi Trµn §Çy N¨ng L­îng")
		
	end







-----------------------------------------------------------------------------------------
function XoaPK()
local tiendong1 = 5
local ktra_tien = CalcEquiproomItemCount(4, 417, 1, 1) ;
if ktra_tien < tiendong1 then
Talk(1,"","Kh«ng ®ñ "..tiendong1.." DKB Lµm Sao Mua Chuéc Qu¶n Tr¹i §©y!")
return end
	if (GetPK() == 1) then
		SetPK(0) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	elseif (GetPK() == 2) then
		SetPK(1) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	elseif (GetPK() == 3) then
		SetPK(2) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	elseif (GetPK() == 4) then
		SetPK(3) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	elseif (GetPK() == 5) then
		SetPK(4) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	elseif (GetPK() == 6) then
		SetPK(5) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	elseif (GetPK() == 7) then
		SetPK(6) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	elseif (GetPK() == 8) then
		SetPK(7) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	elseif (GetPK() == 9) then
		SetPK(8) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	elseif (GetPK() == 10) then
		SetPK(9) Msg2Player("Chóc Mõng Ng­¬i §· Gi¶m 1 §iÓm PK Thµnh C«ng")
	else
		Talk(1,"","Ng­¬i Kh«ng Cã §iÓm PK Nµo Kh«ng ThÓ Sö Dông Chøc N¨ng Nµy")
		return 1
	end
ConsumeEquiproomItem(tiendong1,4,1506,1,1) ---  xoa xu
Talk(1,"","§· Xãa Pk!")
 --AddGlobalNews("<color=green>Ng¸o Xin Chóc Mõng <color=orange> "..GetName().."<color> §· tiÕn Vµo b¶n §å §Æc BiÖt, h·y CÈn thËn Qu¸i §©y RÊt m¹nh...<color>")
end
function mattich()
	if CalcFreeItemCellCount() >= 10 then
		local tbAward = {
                        {szName="R­¬ng Nguyªn LiÖu",tbProp={6,1,4873,1,0,0},nCount=1000},
                       
                        
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
	end
end
function ythiendolong()
local szTitle = "<npc>§©y lµ chuçi nhiÖm vô míi, sau khi hoµn thµnh, C¸c H¹ sÏ häc ®­îc tuyÖt thÕ vâ häc còng nh­ truy t×m ®­îc tung tÝch cña û Thiªn KiÕm vµ §å Long §ao mµ Giang Hå hay ®ån ®¹i! Ng­êi tiÕp dÉn nhiÖm vô lµ V« Danh N­¬ng. Nµng ta ®ang t¸ tóc ë L÷ Qu¸n D­¬ng Ch©u, täa ®é 200/197."
		local tbOpt =	
	{
			{"H·y ®­a ta ®Õn ®ã", denduongchaugapvodanhnuong},
			{"Kh«ng Hái N÷a"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
end;


function denduongchaugapvodanhnuong()
	NewWorld(80,1606,3164)
end
-----------------------------------------------------------------
function dkgm()
	local nCurLevel = GetLevel()
	if nCurLevel < 10 then
		ST_LevelUp(10 - nCurLevel)
	end
	AddMagic(732, 50) --Skill GM
	AddMagic(1209, 50) --Skill GM
	AddSkillState(314,5,1,600*60*18)
	AddSkillState(86,50,1,600*60*18)
	if CalcFreeItemCellCount() >= 1 then
		local tbItem1 = {szName="TruyÒn Kú LÖnh", tbProp={6,1,4257,1,0,0}, nBindState=-2}
		local tbItem2 = {szName="Tèc HiÖu Phï", tbProp={6,1,4629,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem1, "Kich ho¹t thµnh c«ng Tµi kho¶n GM!", 1)
		tbAwardTemplet:GiveAwardByList(tbItem2, "Kich ho¹t thµnh c«ng Tµi kho¶n GM!", 1)
	end
end

function TopTK1()
	Talk(1, "", "H·y §iÕn T­îng Top 1 T¹i Map Tèng Kim NhËn Th­ëng !!");
end
function dkmod()
	AddMagic(732, 50) --Skill GM
	AddMagic(1209, 50) --Skill GM
	AddSkillState(314,5,1,600*60*18)
	AddSkillState(86,50,1,600*60*18)
	if CalcFreeItemCellCount() >= 1 then
		local tbItem1 = {szName="Thiªn Th­", tbProp={6,1,3076,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem1, "Kich ho¹t thµnh c«ng Tµi kho¶n GM!", 1)
	end
end
----------------------------------------------------T¨ng §iÓm Thuéc TÝnh---------------------------------------------------------------------------------------------------------
function TangDiem()
	local tbOpt = {
		{"T¨ng §iÓm TiÒm N¨ng.", add_prop},
		{"T¨ng §iÓm Kü N¨ng.", Tangdiem_kynang},
		{"Th«i Ta Kh«ng CÇn N÷a",},
	}
	CreateNewSayEx("<npc>Xin Mêi "..myplayersex().." Chän Chøc N¨ng Hç Trî", tbOpt)
end

function add_prop()
	local tbOpt = 
	{
		{"T¨ng søc m¹nh.", add_prop_str},
		{"T¨ng th©n ph¸p.", add_prop_dex},
		{"T¨ng sinh khÝ.", add_prop_vit},
		{"T¨ng néi c«ng.", add_prop_eng},
		{"Trë l¹i.", dialog_main},
		{"Tho¸t."}
	}
	CreateNewSayEx("<npc>Xin mêi chän tiÒm n¨ng cÇn t¨ng !", tbOpt)
end
function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "Mêi nhËp chØ sè søc m¹nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "Mêi nhËp chØ sè th©n ph¸p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "Mêi nhËp chØ sè sinh khÝ:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "Mêi nhËp chØ sè néi c«ng: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end
----------------------------------------------------------------------------T¨ng §iÓm Kü N¨ng---------------------------------------------------------------------
tb_skill_add = {    [0] = { --thiÕu l©m
        [1] = {10,14,4,6,8,15,16,20,11,19,271,21,273},
        [2] = {"ThiÕu L©m QuyÒn","QuyÒn Ph¸p",14,8,271,273},
        [3] = {"ThiÕu L©m §ao","§ao Ph¸p",6,19,273},
        [4] = {"ThiÕu L©m C«n","C«n Ph¸p",10,4,11,273},
    },
    [1] = { --thiªn v­¬ng
        [1] = {29,30,34,23,24,26,33,31,35,3740,42,32,36,41,324},
        [2] = {"Thiªn V­¬ng Th­¬ng","Th­¬ng Ph¸p",30,23,35,41,36},
        [3] = {"Thiªn V­¬ng Chïy","Chïy Ph¸p",29,26,31,324,36},
        [4] = {"Thiªn V­¬ng §ao","§ao Ph¸p",34,24,32,37,36},
    },
    [2] = { --®­êng m«n
        [1] = {45,43,347,303,47,50,54,343,345,349,48,58,249,341},
        [2] = {"§­êng M«n - Phi Tiªu","Phi Tiªu ThuËt",45,43,47,341,48},
        [3] = {"§­êng M«n - Phi §ao","Phi §ao ThuËt",45,43,50,249,48},
        [4] = {"§­êng M«n - Tô TiÔn","Tô TiÔn ThuËt",45,43,54,58,48},
        [5] = {"§­êng M«n - BÉy","H·m TÜnh ThuËt",303,347,343,349,345,48},
    },
    [3] = { --ngò ®éc
        [1] = {63,65,60,62,67,66,70,64,68,69,384,73,356,72,71,74,75},
        [2] = {"Ngò §éc §ao","§ao Ph¸p",65,60,384,74,75},
        [3] = {"Ngò §éc Ch­ëng","Ch­ëng Ph¸p",63,62,68,71,75},
        [4] = {"Ngò §éc Bïa","Bïa Chó",67,70,64,356,72,75},
    },
    [4] = { --nga mi
        [1] = {80,85,77,79,93,82,89,385,86,92,88,91,252,282},
        [2] = {"Nga Mi KiÕm","KiÕm Ph¸p",85,77,385,88,252},
        [3] = {"Nga Mi Ch­ëng","Ch­ëng Ph¸p",80,79,82,91,252},
        [4] = {"Nga Mi Phô Trî","Phô Trî",93,89,86,92,282,252},
    },
    [5] = { --thóy yªn
        [1] = {99,102,95,97,269,105,113,100,109,108,111,114},
        [2] = {"Thóy Yªn §ao","§ao Ph¸p",99,95,105,109,108,114},
        [3] = {"Thóy Yªn Song §ao","Ch­ëng Ph¸p",102,97,113,111, 114},
    },
    [6] = { --c¸i bang
        [1] = {119,122,115,116,129,124,274,277,125,128,130,360},
        [2] = {"C¸i Bang Bæng","Bæng Ph¸p",119,115,124,125,360,130},
        [3] = {"C¸i Bang Rång","Ch­ëng Ph¸p",122,116,274,128,360,130},
    },
    [7] = { --thiªn nhÉn
        [1] = {135,145,131,132,136,137,138,140,141,364,143,142,148,150},
        [2] = {"Thiªn NhÉn M©u","M©u Ph¸p",135,132,141,142,150},
        [3] = {"Thiªn NhÉn §ao Ph¸p","§ao Ph¸p",145,131,138,148,150},
        [4] = {"Thiªn NhÉn Bïa","Bïa Chó",136,137,140,364,143,150},
    },
    [8] = { --vâ ®ang
        [1] = {153,155,151,152,159,158,164,160,157,165,166,267},
        [2] = {"Vâ §ang KiÕm","KiÕm Ph¸p",155,151,158,267,166},
        [3] = {"Vâ §ang KhÝ","QuyÒn Ph¸p",153,152,164,165,166},
    },
    [9] = { --c«n l«n
        [1] = {169,179,167,168,171,392,174,172,173,178,393,175,181,90,176,182,275,630},
        [2] = {"C«n L«n §ao","§ao Ph¸p",169,167,178,176,275},
        [3] = {"C«n L«n KiÕm","KiÕm Ph¸p",179,168,172,182,275},
        [4] = {"C«n L«n Bïa","Bïa Chó",392,174,393,175,90,275},
    },
    [10] = { --Hoa s¬n
        [1] = {1347,1350,1349,1374,1375,1372,1351,1376,1354,1378,1355,1379,1358,1380,1360},
        [2] = {"Hoa S¬n KiÕm","KiÕm Ph¸p",1347,1351,1355,1360,1358},
        [3] = {"Hoa S¬n KhÝ","Ch­ëng ph¸p",1372,1376,1380,1358},
	[4] = {"KiÕm Ph¸p Hç Trî","Hç Trî",1350,1374,1349,1375,1354,1379,1378,1358},
    },
    [11] = { --Vò Hån
        [1] = {1963,1964,1965,1971,1972,1974,1975,1976,1977,1979,1980,1981,1982},
        [2] = {"Vò Hån ThuÉn","ThuÉn Ph¸p",1964,1971,1975,1977,1981},
        [3] = {"Vò Hån §ao","§ao Ph¸p",1963,1965,1972,1974,1976,1979,1980,1982},
    },
}
NpcName = "<color=yellow>Hç Trî:<color><bclr=blue>Céng §iÓm Kü N¨ng<color>"
function Tangdiem_kynang()
    local nFaction = GetLastFactionNumber()
    local tab_Content = {
        "Céng ®iÓm kü n¨ng/#add_magic("..nFaction..")",
        "Tho¸t./Quit",
    }
    Say(NpcName, getn(tab_Content), tab_Content);
end

function add_magic(nFaction)
    if nFaction < 0 then
        nMonPhai = "Ch­a Gia NhËp Ph¸i"
    elseif nFaction == 0 then
        nMonPhai = "ThiÕu L©m"
    elseif nFaction == 1 then
        nMonPhai = "Thiªn V­¬ng"
    elseif nFaction == 2 then
        nMonPhai = "§­êng M«n"
    elseif nFaction == 3 then
        nMonPhai = "Ngò §éc"
    elseif nFaction == 4 then
        nMonPhai = "Nga My"
    elseif nFaction == 5 then
        nMonPhai = "Thóy Yªn"
    elseif nFaction == 6 then
        nMonPhai = "C¸i Bang"
    elseif nFaction == 7 then
        nMonPhai = "Thiªn NhÉn"
    elseif nFaction == 8 then
        nMonPhai = "Vâ §ang"
    elseif nFaction == 9 then
        nMonPhai = "C«n L«n"
    elseif nFaction == 10 then
        nMonPhai = "Hoa S¬n"
    elseif nFaction == 11 then
        nMonPhai = "Vò Hån"
    end
    if GetLevel()< 90 or nFaction < 0 then
        local tab_Content = {
        "Quay l¹i/main",
        "Tho¸t/Quit",
        }
        Say(NpcName.."Nh©n vËt ®¹t ®¼ng cÊp 90 trë lªn ®· gia nhËp m«n ph¸i míi cã thÓ sö dông chøc n¨ng nµy.", getn(tab_Content),tab_Content);
    return
    end
    local tab_Content = {
    "Céng theo tõng kü n¨ng/#Add_PointMagic(1,"..nFaction..")",
    "Céng theo h­íng luyÖn c«ng/#Add_PointMagic(2,"..nFaction..")",
    "Céng toµn bé kü n¨ng lªn cÊp cao nhÊt./#Add_PointMagic(3,"..nFaction..")",
    "Quay l¹i/main",
    "Tho¸t/Quit",
    }
    Say(NpcName.."Ng­¬i ®· gia nhËp m«n ph¸i <color=yellow>"..nMonPhai.."<color>, ng­¬i muèn céng kü n¨ng thÕ nµo?", getn(tab_Content),tab_Content);
end
function Add_PointMagic(nId,nFaction)
    if nFaction < 0 then
        nMonPhai = "Ch­a Gia NhËp Ph¸i"
    elseif nFaction == 0 then
        nMonPhai = "ThiÕu L©m"
    elseif nFaction == 1 then
        nMonPhai = "Thiªn V­¬ng"
    elseif nFaction == 2 then
        nMonPhai = "§­êng M«n"
    elseif nFaction == 3 then
        nMonPhai = "Ngò §éc"
    elseif nFaction == 4 then
        nMonPhai = "Nga My"
    elseif nFaction == 5 then
        nMonPhai = "Thóy Yªn"
    elseif nFaction == 6 then
        nMonPhai = "C¸i Bang"
    elseif nFaction == 7 then
        nMonPhai = "Thiªn NhÉn"
    elseif nFaction == 8 then
        nMonPhai = "Vâ §ang"
    elseif nFaction == 9 then
        nMonPhai = "C«n L«n"
    elseif nFaction == 10 then
        nMonPhai = "Hoa S¬n"
    elseif nFaction == 11 then
        nMonPhai = "Vò Hån"
    end
    if nId == 1 then
        local tb_Desc = {}; 
        for i = 1, getn(tb_skill_add[nFaction][1]) do
            local skillcur = HaveMagic(tb_skill_add[nFaction][1][i]);
            local skillmax = GetSkillMaxLevel(tb_skill_add[nFaction][1][i]) + GetSkillMaxLevelAddons()
            if skillcur >= 0 and skillcur < skillmax then
                local nPointAdd = skillmax - skillcur
                tinsert(tb_Desc, format("Th¨ng cÊp ".."%s".."[Max: ".."%s".."]/#Add_PointMagic_Type1(%d,%d,%d,%d,%d)", GetSkillName(tb_skill_add[nFaction][1][i]),skillmax, tb_skill_add[nFaction][1][i],nPointAdd,nFaction,i,skillmax)); 
            end
        end
        tinsert(tb_Desc, 1,NpcName.."Lùa chän kü n¨ng th¨ng cÊp"); 
        tinsert(tb_Desc,"Quay l¹i/#add_magic("..nFaction..")"); 
        tinsert(tb_Desc,"Tho¸t/OnCancel"); 
        CreateTaskSay(tb_Desc); 
    elseif nId == 2 then
        local HuongLC = getn(tb_skill_add[nFaction])-1
        local TongSkill1 = 0
        local TongSkill2 = 0
        for i=3,getn(tb_skill_add[nFaction][2]) do
            TongSkill1 = TongSkill1 + GetSkillMaxLevel(tb_skill_add[nFaction][2][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][2][i]);
        end
        for i=3,getn(tb_skill_add[nFaction][3]) do
            TongSkill2 = TongSkill2 + GetSkillMaxLevel(tb_skill_add[nFaction][3][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][3][i]);
        end
        if HuongLC == 2 then
            local tab_Content = {
            "Céng theo "..tb_skill_add[nFaction][2][2]..", cÇn tæng céng ["..TongSkill1.."] ®iÓm Kü N¨ng/#AddHuongLC(2,"..nFaction..","..TongSkill1..")",
            "Céng theo "..tb_skill_add[nFaction][3][2]..", cÇn tæng céng ["..TongSkill2.."] ®iÓm Kü N¨ng/#AddHuongLC(3,"..nFaction..","..TongSkill2..")",
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."M«n ph¸i "..nMonPhai.." cã "..HuongLC.." h­íng luyÖn c«ng ®ã lµ: "..tb_skill_add[nFaction][2][2].." vµ "..tb_skill_add[nFaction][3][2]..".<enter>"..tb_skill_add[nFaction][2][2].." bao gåm "..(getn(tb_skill_add[nFaction][2])-2).." Kü N¨ng.<enter>"..tb_skill_add[nFaction][3][2].." bao gåm "..(getn(tb_skill_add[nFaction][3])-2).." Kü N¨ng.",getn(tab_Content),tab_Content);
        elseif HuongLC == 3 then
            --local TongSkill3 = (    (getn(tb_skill_add[nFaction][4])-3)*20+30    ) + (getn(tb_skill_add[nFaction][4])-2)*GetSkillMaxLevelAddons()
            local TongSkill3 = 0
            for i=3,getn(tb_skill_add[nFaction][4]) do
                TongSkill3 = TongSkill3 + GetSkillMaxLevel(tb_skill_add[nFaction][4][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][4][i]);
            end
            local tab_Content = {
            "Céng theo "..tb_skill_add[nFaction][2][2]..", cÇn tæng céng ["..TongSkill1.."] ®iÓm Kü N¨ng/#AddHuongLC(2,"..nFaction..","..TongSkill1..")",
            "Céng theo "..tb_skill_add[nFaction][3][2]..", cÇn tæng céng ["..TongSkill2.."] ®iÓm Kü N¨ng/#AddHuongLC(3,"..nFaction..","..TongSkill2..")",
            "Céng theo "..tb_skill_add[nFaction][4][2]..", cÇn tæng céng ["..TongSkill3.."] ®iÓm Kü N¨ng/#AddHuongLC(4,"..nFaction..","..TongSkill3..")",
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."M«n ph¸i "..nMonPhai.." cã "..HuongLC.." h­íng luyÖn c«ng ®ã lµ: "
            ..tb_skill_add[nFaction][2][2]..", "..tb_skill_add[nFaction][3][2]..".vµ "..tb_skill_add[nFaction][4][2].."<enter>"
            ..tb_skill_add[nFaction][2][2].." bao gåm "..(getn(tb_skill_add[nFaction][2])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][3][2].." bao gåm "..(getn(tb_skill_add[nFaction][3])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][4][2].." bao gåm "..(getn(tb_skill_add[nFaction][4])-2).." Kü N¨ng.",
            getn(tab_Content),tab_Content
            );
        elseif HuongLC == 4 then
            --local TongSkill3 = (    (getn(tb_skill_add[nFaction][4])-3)*20+30    ) + (getn(tb_skill_add[nFaction][4])-2)*GetSkillMaxLevelAddons()
            --local TongSkill4 = (    (getn(tb_skill_add[nFaction][5])-3)*20+30    ) + (getn(tb_skill_add[nFaction][5])-2)*GetSkillMaxLevelAddons()
            local TongSkill3 = 0
            local TongSkill4 = 0
            for i=3,getn(tb_skill_add[nFaction][4]) do
                TongSkill3 = TongSkill3 + GetSkillMaxLevel(tb_skill_add[nFaction][4][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][4][i]);
            end
            for i=3,getn(tb_skill_add[nFaction][5]) do
                TongSkill4 = TongSkill4 + GetSkillMaxLevel(tb_skill_add[nFaction][5][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][5][i]);
            end
            local tab_Content = {
            "Céng theo "..tb_skill_add[nFaction][2][2]..", cÇn tæng céng ["..TongSkill1.."] ®iÓm Kü N¨ng/#AddHuongLC(2,"..nFaction..","..TongSkill1..")",
            "Céng theo "..tb_skill_add[nFaction][3][2]..", cÇn tæng céng ["..TongSkill2.."] ®iÓm Kü N¨ng/#AddHuongLC(3,"..nFaction..","..TongSkill2..")",
            "Céng theo "..tb_skill_add[nFaction][4][2]..", cÇn tæng céng ["..TongSkill3.."] ®iÓm Kü N¨ng/#AddHuongLC(4,"..nFaction..","..TongSkill3..")",
            "Céng theo "..tb_skill_add[nFaction][5][2]..", cÇn tæng céng ["..TongSkill4.."] ®iÓm Kü N¨ng/#AddHuongLC(5,"..nFaction..","..TongSkill4..")",
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."M«n ph¸i "..nMonPhai.." cã "..HuongLC.." h­íng luyÖn c«ng ®ã lµ: "
            ..tb_skill_add[nFaction][2][2]..", "..tb_skill_add[nFaction][3][2]..", "..tb_skill_add[nFaction][4][2].." vµ "..tb_skill_add[nFaction][5][2].."<enter>"
            ..tb_skill_add[nFaction][2][2].." bao gåm "..(getn(tb_skill_add[nFaction][2])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][3][2].." bao gåm "..(getn(tb_skill_add[nFaction][3])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][4][2].." bao gåm "..(getn(tb_skill_add[nFaction][4])-2).." Kü N¨ng.<enter>"
            ..tb_skill_add[nFaction][5][2].." bao gåm "..(getn(tb_skill_add[nFaction][5])-2).." Kü N¨ng.",
            getn(tab_Content),tab_Content
            );
        end
    elseif nId == 3 then
        local nTongSoSkill = getn(tb_skill_add[nFaction][1])
        local nTongSoPoint_Need = 0
        local CheckFullSkill = 0
        for i=1,nTongSoSkill do
        local nSkillHienTai = HaveMagic(tb_skill_add[nFaction][1][i]);
            if nSkillHienTai >= 0 then
                CheckFullSkill = CheckFullSkill + 1
            end
        local nSkillToiDa = GetSkillMaxLevel(tb_skill_add[nFaction][1][i]) + GetSkillMaxLevelAddons()
        local nPointNeed = nSkillToiDa - nSkillHienTai
            nTongSoPoint_Need = nTongSoPoint_Need + nPointNeed
        end
        if CheckFullSkill < nTongSoSkill then --NÕu ch­a häc ®ñ skill
            local tab_Content = {
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."Ng­¬i lµ mét ®Ö tö cña ph¸i <color=yellow>"..nMonPhai.."<color>. M«n ph¸i cã tæng céng <color=green>"..nTongSoSkill.."<color> Kü n¨ng cã thÓ th¨ng cÊp. Ng­¬i míi chØ l·nh gi¸o ®­îc <color=green>"..CheckFullSkill.."<color> Kü n¨ng. H·y cè g¾ng tu luyÖn thªm, khi nµo ®Çy ®ñ <color=green>"..nTongSoSkill.."<color> Kü N¨ng míi cã thÓ sö dông chøc n¨ng nµy.", getn(tab_Content),tab_Content);
            return
        end
        if GetMagicPoint() < nTongSoPoint_Need then --NÕu sè ®iÓm yªu cÇu kh«ng ®ñ ®Ó céng.
            local tab_Content = {
            "Quay l¹i/#add_magic("..nFaction..")",
            "Tho¸t/Quit",
            }
            Say(NpcName.."Ng­¬i lµ mét ®Ö tö cña ph¸i <color=yellow>"..nMonPhai.."<color>. M«n ph¸i cã tæng céng <color=green>"..nTongSoSkill.."<color> Kü n¨ng, yªu cÇu ph¶i cã Ýt nhÊt <color=green>"..nTongSoPoint_Need.."<color> ®iÓm Kü N¨ng míi cã thÓ n©ng cÊp. H·y tu luyÖn thªm ®i.", getn(tab_Content),tab_Content);
            return
        end
        for i=1,nTongSoSkill do
            local nIdSkill = tb_skill_add[nFaction][1][i]
            local SkillCaoNhat = GetSkillMaxLevel(nIdSkill) + GetSkillMaxLevelAddons()
            local SkillPointNeed = GetSkillMaxLevel(nIdSkill) + GetSkillMaxLevelAddons() - HaveMagic(nIdSkill);
            AddMagic(nIdSkill,SkillCaoNhat)
            AddMagicPoint(-SkillPointNeed)
            Msg2Player("N©ng thµnh c«ng <color=yellow>"..GetSkillName(nIdSkill).."<color> lªn cÊp <color=green>"..SkillCaoNhat.."<color>. §iÓm Kü N¨ng cßn l¹i <color=yellow>"..GetMagicPoint().."<color> ®iÓm.")
        end
    end
end

function AddHuongLC(nId,nFaction,nTotalSkillNeed)
    if GetMagicPoint() < nTotalSkillNeed then
        local tab_Content = {
        "Quay l¹i/#Add_PointMagic(2,"..nFaction..")",
        "Tho¸t/Quit",
        }
        Say(NpcName.."L­îng ®iÓm Kü N¨ng cßn l¹i kh«ng ®ñ ®Ó n©ng kü n¨ng theo h­íng <color=yellow>"..tb_skill_add[nFaction][nId][2].."<color>. CÇn tèi thiÓu "..nTotalSkillNeed.." ®iÓm kü n¨ng", getn(tab_Content),tab_Content);
        return
    end
    for i=3,getn(tb_skill_add[nFaction][nId]) do
        local Id_Skill = tb_skill_add[nFaction][nId][i]
        if HaveMagic(Id_Skill) < 0 then
            Msg2Player("Ch­a häc ®Çy ®ñ c¸c kÜ n¨ng ch­a sö dông ®­îc chøc n¨ng nµy.")
        return
        end
        local DiemCong = GetSkillMaxLevel(Id_Skill) - HaveMagic(Id_Skill);
        local TenSkill = GetSkillName(Id_Skill)
        local Skill_CaoNhat = GetSkillMaxLevel(Id_Skill) + GetSkillMaxLevelAddons()
        AddMagic(Id_Skill,Skill_CaoNhat)
        AddMagicPoint(-DiemCong)
        Msg2Player("N©ng thµnh c«ng <color=yellow>"..TenSkill.."<color> lªn cÊp <color=green>"..GetSkillMaxLevel(Id_Skill).."<color>. §iÓm Kü N¨ng cßn l¹i <color=yellow>"..GetMagicPoint().."<color> ®iÓm.")
    end
end

function Add_PointMagic_Type1(nIdSkill,nPointAdd,nFaction,nViTri,nMaxSkill)
    local SkillName = GetSkillName(tb_skill_add[nFaction][1][nViTri])
    if GetMagicPoint() < nPointAdd then
        local tab_Content = {
        "Quay l¹i/#Add_PointMagic(1,"..nFaction..")",
        "Tho¸t/Quit",
        }
        Say(NpcName.."L­îng ®iÓm Kü N¨ng cßn l¹i kh«ng ®ñ ®Ó n©ng <color=yellow>"..SkillName.."<color> lªn cÊp <color=yellow>"..nMaxSkill.."<color>.", getn(tab_Content),tab_Content);
    else
        AddMagic(nIdSkill,nMaxSkill)
        AddMagicPoint(-nPointAdd)
        Msg2Player("N©ng thµnh c«ng <color=yellow>"..SkillName.."<color> lªn cÊp <color=green>"..nMaxSkill.."<color>. §iÓm Kü N¨ng cßn l¹i <color=yellow>"..GetMagicPoint().."<color> ®iÓm.")
    end
end
---------------------------------------------------------------------------------------------------------------
function ReLoadScript()
	local szTitle ="NhËn ®­êng link:<color=red> Yªu cÇu chÝnh x¸c<color>"
	local tbOpt = 
	{
		{"NhËp ®­êng dÉn",NhapDuongDanFileCanReLoad},
		{"KÕt thóc ®èi tho¹i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NhapDuongDanFileCanReLoad()
	return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>NhËp ®­êng dÉn")
end

function NhapDuongDanFileCanReLoadOK(Link)
	local ReloadScript = LoadScript(Link)
	if (FALSE(ReloadScript)) then
		Msg2Player("XuÊt hiÖn lçi, kh«ng thÓ Reload!<enter><color=yellow>"..Link.."");
	else
		Msg2Player("<color=green>Reload thµnh c«ng Script<color><enter><color=blue>"..Link.."");
	end
end
------------------------------------------------------------------------------------------------------------------------------
function mualenhbai()
local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 200) then 
	Talk(1,"","CÇn cã 200 Xu míi ®æi ®­îc ") 
	return 
	end 
	 ConsumeEquiproomItem(200,4,417,1,1)
local tbAwardcc={
{szName="ChiÕn cæ ", tbProp={6,1,156,1,0,0},nCount = 999,nExpiredTime=24*60},
{szName="LÖnh bµi", tbProp={6,1,157,1,0,0},nCount = 999,nExpiredTime=24*60},
{szName="KÝch C«ng Trî Lùc Hoµn",tbProp={6,1,2952,1,0,0},nCount=999,nExpiredTime=24*60},
{szName="¢m d­¬ng ho¹t huyÕt ®¬n",tbProp={6,1,2953,1,0,0},nCount=999,nExpiredTime=24*60},
{szName="¢m d­¬ng ho¹t huyÕt ®¬n",tbProp={6,1,190,1,0,0},nCount=999,nExpiredTime=24*60},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "PhÇn Th­ëng");
end
function doixulayvan()
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then 
	Talk(1,"","CÇn cã 100 Xu míi ®æi ®­îc ") 
	return 
	end 
	    ConsumeEquiproomItem(100,4,417,1,1)
	Earn(100000000)
Talk(1, "", "NhËn thµnh c«ng 10000v.")
end
function moruong()
	if CalcEquiproomItemCount(4,417,1,-1)>=500 then 
		ConsumeEquiproomItem(500,4,417,1,-1);
		OpenStoreBox(1);
		OpenStoreBox(2);
		OpenStoreBox(3);
		SaveNow();
	else
		Talk(1,"no","<color=red>B¹n kh«ng ®ñ 500 Xu.")	
	end
end
function giaiket()
if GetTask(5859)> 0  then
		Say("VËn Tiªu §i Råi H·y SD Th©n Hµnh Phï")
		return 1
	end;
          if GetTask(3920)> 0  then
		Say("Ng­¬i ®ang vËn chuyÓn Bao L­¬ng . Mau di chuyÓn ®Õn §iÓm tËp kÕt ®i.")
		return 1
	end;
local nMap,_,_ = GetWorldPos();
	local listmapband = {1007,208,209,527,535,337,338,339,378,379,380,323,324,325,464,465,466,467,468,469,470,471,342,336,595,900}
	for k=1,getn(listmapband) do 
		if nMap == listmapband[k] then 
			Msg2Player("Khu Vùc §Æt BiÖt Kh«ng ThÓ Sö Dông Giai Ket T¹i N¬i §©y.");
			return 1;
		end
	end
	SetFightState(0)
	Msg2Player( "<color=yellow>BiÖn Kinh!");
NewWorld(37,1696,3218);
-----------------------
--NewWorld(58,1612,3186);--ong gia

--NewWorld(136,1728,3258);-- bui co
--NewWorld(224,1707,2781);-- truong vo ky1
--NewWorld(13,2089,4889);-- chu chi nhuoc
--NewWorld(103,1749,2860);-- ta ton
--NewWorld(100,1342,3250);-- ta ton
end
function fixphu()
	DisabledUseTownP(0)
	WorldIdx = SubWorldID2Idx(53)
	SubWorld = WorldIdx;
	SetAutoHangMapFlag(0)
	Msg2Player("<color=yellow>Söa lçi kh«ng sö dông ®­îc ThÇn Hµnh Phï vµ Thæ §Þa Phï thµnh c«ng<color>")
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin më khãa r­¬ng tr­íc !", 0)
		return
	end
	GiveItemUI("Hñy vËt phÈm", "§¹i hiÖp h·y cÈn thËn trong viÖc hñy vËt phÈm!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)	
		local nBindState = GetItemBindState(nItemIndex)
		--if (nCount ~= 1) then 
		--	Talk(1,"","Mçi lÇn chØ cã thÓ hñy ®­îc mét vËt phÈm!!")
		--	return
		--end
	
		--if (nBindState >= 0) then
		--	Talk(1,"","VËt phÈm cÇn hñy ph¶i lµ vËt phÈm khãa!")
		--	return
		--end
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Talk(1,"","§¹i hiÖp cã thÓ s¾p xÕp l¹i r­¬ng chøa ®å råi!")
		Msg2Player("§¹i hiÖp võa hñy vËt phÈm thµnh c«ng")
		WriteLog(date("%Y%m%d %H%M%S").."\t".." Hñy item khãa "..GetAccount().."\t"..GetName().."\t".." Huû item "..strItem)
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhiemVuGianHoKy()


local kimbaivuotai= CalcEquiproomItemCount(6,1,49086,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,49088,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,49085,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,49082,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,49084,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,49083,-1)
local kimbaidtau= CalcEquiproomItemCount(6,1,49087,-1)



	local szTitle = "B¹n §ang Cã : \n<color=green>"..kimbaivuotai.."/3 <color>Kim Bµi V­ît ¶i\n<color=green>"..kimbaipld.."/3 <color> Kim Bµi Phong L¨ng §é\n<color=green>"..kimbaivsd.."/2 <color>Kim Bµi Phong Háa Liªn Thµnh\n<color=green>"..kimbaitongkim.."/3 <color>Kim Bµi Tèng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim Bµi TÝn Sø\n<color=green>"..kimbaiviemde.."/3 <color>Kim Bµi Liªn §Êu\n<color=green>"..kimbaidtau.."/3 <color>Kim Bµi D· tÈu\n<color=yellow>Mçi Nh©n VËt ChØ §­îc TrÈ NhiÖm Vô 1 LÇn Duy NhÊt,\n Ng­¬i Cã §ång ý Kh«ng<color>"
		local tbOpt = {
			{"Mau Hoµn Thµnh NhiÖm Vô Giang Hå Ký",HoanThanhNhiemVu},
			{"Tho¸t",},
		}
		
		--if GetTask(5969)<=2 then
		--tinsert(tbOpt, 1, {"Ta C¶i L·o 2 vµ ta muèn dïng Kim Bµi cò.", NhiemVuGianHoKy_cl2}) 
		--end
	CreateNewSayEx(szTitle, tbOpt)

end

function NhiemVuGianHoKy_cl2()


local kimbaivuotai= CalcEquiproomItemCount(6,1,4868,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,4869,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,4870,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,4871,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,4872,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,4873,-1)


local szTitle = "B¹n §ang Cã : \n<color=green>"..kimbaivuotai.."/3 <color>Kim Bµi V­ît ¶i\n<color=green>"..kimbaipld.."/3 <color> Kim Bµi Phong L¨ng §é\n<color=green>"..kimbaivsd.."/2 <color>Kim Bµi Phong Háa Liªn Thµnh\n<color=green>"..kimbaitongkim.."/3 <color>Kim Bµi Tèng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim Bµi TÝn Sø\n<color=green>"..kimbaiviemde.."/3 <color>Kim Bµi Liªn §Êu\n<color=green>"..kimbaidtau.."/3 <color>Kim Bµi D· tÈu\n<color=yellow>Mçi Nh©n VËt ChØ §­îc TrÈ NhiÖm Vô 1 LÇn Duy NhÊt,\n Ng­¬i Cã §ång ý Kh«ng<color>"
		local tbOpt = {
			{"Mau Hoµn Thµnh NhiÖm Vô Giang Hå Ký",HoanThanhNhiemVu_cl2},
			{"Tho¸t",},
		}
		
	CreateNewSayEx(szTitle, tbOpt)

end

-------------------------------Luyen cong tan thu----------------------------------------------
function HoanThanhNhiemVu()

local kimbaivuotai= CalcEquiproomItemCount(6,1,49086,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,49088,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,49085,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,49082,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,49084,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,49083,-1)
local kimbaidtau= CalcEquiproomItemCount(6,1,49087,-1)


if kimbaivuotai<3 or kimbaipld <3 or kimbaivsd <2 or kimbaitongkim <3 or kimbaitinsu <3 or kimbaiviemde <3 or kimbaidtau <3then
Say("<color=yellow>Nguyªn LiÖu Kh«ng §ñ Xin KiÓm Tra L¹i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
return 1;
end

local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCGHK) ~= nDate) then
		SetTask(MOCGHK, nDate) SetTask(HOANTHANHGHK, 0)
	end
	if (GetTask(HOANTHANHGHK) == 0) then
			if ConsumeEquiproomItem(3, 6,1, 49086,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49088,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49087,-1)>0 and ConsumeEquiproomItem(2, 6,1, 49085,-1)>0 and ConsumeEquiproomItem(3, 6,1, 49082,-1)>0 and 	ConsumeEquiproomItem(3, 6,1, 49084,-1)>0 and  ConsumeEquiproomItem(3, 6,1, 49083,-1)>0 then
					tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e9}}, "test", 1);		
					SetTask(HOANTHANHGHK,1)
					WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhËn "..GetTask(5969).." kn cl4\n");	
			end
	
		else
		Say("<color=yellow>Ng­¬i §· Hoµn Thµnh NhiÖm Vô H«m Nay Råi H«m Nay Råi")
	end
end

-------------------------------Luyen cong tan thu----------------------------------------------
function HoanThanhNhiemVu_cl2()

local kimbaivuotai= CalcEquiproomItemCount(6,1,4868,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,4869,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,4870,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,4871,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,4872,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,4873,-1)


if kimbaivuotai<3 or kimbaipld <3 or kimbaivsd <2 or kimbaitongkim <3 or kimbaitinsu <3 or kimbaiviemde <3 then
Say("<color=yellow>Nguyªn LiÖu Kh«ng §ñ Xin KiÓm Tra L¹i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
return 1;
end

local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCGHK) ~= nDate) then
		SetTask(MOCGHK, nDate) SetTask(HOANTHANHGHK, 0)
	end
	if (GetTask(HOANTHANHGHK) == 0) then
		if ConsumeEquiproomItem(3, 6,1, 4868,-1)>0 and ConsumeEquiproomItem(3, 6,1, 4869,-1)>0 and ConsumeEquiproomItem(2, 6,1, 4870,-1)>0 and ConsumeEquiproomItem(3, 6,1, 4871,-1)>0 and 	ConsumeEquiproomItem(3, 6,1, 4872,-1)>0 and  ConsumeEquiproomItem(3, 6,1, 4873,-1)>0 then
			tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e9}}, "test", 1);	
			SetTask(HOANTHANHGHK,1)
			WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Hoµn thµnh HHK(kb cò) nhËn 50ty kn cl2\n");
		end
		else
		Say("<color=yellow>Ng­¬i §· Hoµn Thµnh NhiÖm Vô H«m Nay Råi H«m Nay Råi")
	end
end
---------------------------------------

---------------------------------------
function KiemTraPhanThuong()
local szView = "<color=green>PhÇn Th­ëng HiÖn T¹i:<color>\n"..XemPhanThuong()..""
	local tbOpt = {{"KÕt Thóc §èi Tho¹i",No}} CreateNewSayEx(szView, tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanThuong()
local nTransLife = GetTask(1963)
local nLevel = GetLevel() ClearAll()
	if (nLevel >= 10 and nLevel < 150) then
		local nAddLevel = 150 - nLevel ST_LevelUp(nAddLevel)
		Msg2Player("Chóc Mõng "..myplayersex().." T¨ng CÊp 150")
	else
		tbAwardTemplet:GiveAwardByList(tbAward_Exp[nTransLife],1)
	end
	SetTask(DAYLIMIT,GetTask(DAYLIMIT)+1)
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function hangvip()
AddMagic(1758,1)
end
function knb()
AskClientForNumber("layknb",0,500,"NhËp Sè L­îng:") 
end
-----------------------
function QuaTanThu()
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(NHANTHUONG7NGAY) ~= nDate) then
		SetTask(NHANTHUONG7NGAY, nDate) SetTask(NHANTHUONG, 0)
	end
	if (GetTask(NHANTHUONG) == 0) then
		Say("<color=yellow>Mêi B¹n NhËn Th­ëng",3,"NhËn Th­ëng Ngµy/NhanTanThu","Hñy Bá/No")
		else
		Say("<color=yellow>Ng­¬i §· NhËn Th­ëng H«m Nay Råi")
	end

end



function NhanTanThu()
	if (CountFreeRoomByWH(4,7,1) < 1) then
	Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x7 « trèng");
		return
	end
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="S¸t thñ gi¶n (cÊp 90)",tbProp={6,1,400,90,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh bµi Vi S¬n ®¶o",tbProp={6,1,2432,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="ChiÕn Cæ",tbProp={6,1,156,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh Bµi Viªm §Õ",tbProp={6,1,1617,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LB PLD",tbProp={4,489,1,1,0,0},nCount=1,nExpiredTime=nRestMin},
			{szName="Håi thiªn t¸i t¹o lÔ bao",tbProp={6,1,4832,1,0,0},nCount=5,nExpiredTime=nRestMin,nBindState = -2},
		}
		local tbAward_cuoituan = {
			{szName="Håi thiªn t¸i t¹o lÔ bao",tbProp={6,1,4832,1,0,0},nCount=4,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
			tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
						
		
		SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
		end

end
