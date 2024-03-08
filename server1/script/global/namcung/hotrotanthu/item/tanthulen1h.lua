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
		return "N� Hi�p";
	else
		return "��i Hi�p";
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
	local szTitlez =  "<color=yellow>Thi�n h� ��i lo�n<color>:Ch�o m�ng b�n ��n v�i th� gi�i:\nGame Ki�m Hi�p.\n<bclr=red>�i�m T�ng Kim C�a B�n L�:<bclr=green> "..GetTask(747).." �i�m<bclr>\n<bclr=blue>* * * * * * Ch�c Nh�n S� Ch�i Games Vui V� * * * * *<bclr>    "
		local tbOpt =
		{	
                   {"Nh�n Th��ng H�ng Ng�y",QuaTanThu},
                    {"T�y T�y Nhanh",DoPhoThanhCau},
                        {"��i 100 xu >>10 Ngan Van ",doixulayvan},
			{"H�y trang b� kh�a", DisposeItem},
			{"Gi�i K�t Nh�n V�t", giaiket},
                        {"Mua (PT,LB)  200 xu",mualenhbai},
                       {"T�ng �i�m Nhanh",TangDiem},
                       {"Giai Tru PK 5 xu",XoaPK},	
			{"Tho�t"},
		}
           
            if GetAccount()=="tao"  then
		tinsert(tbOpt, 1, {"Nh�n l�i [lenh bai adm]", dkgm}) 
		end
       if GetAccount()=="son"  then
		tinsert(tbOpt, 1, {"Nh�n l�i [lenh bai adm]", dkmod}) 
		end
         --  if GetAccount()=="taylor1"  then
	--	tinsert(tbOpt, 1, {"Nh�n Gi�i [v� l�m minh ch� tu�n]", dkmc1}) 
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
				Talk(1,"","<color=white>Oh thi�u hi�p kh�ng mang theo 100  KNB r�i !!") 
			return
		end
if (GetTask(369) < 45) then
Say("Ban Chua Nh�n Nhi�m V� Nyaf, khong the nhan  S� D�ng T�nh N�ng N�y!")
return end
if (GetTask(369) == 45) then
SetFightState(1);
ConsumeEquiproomItem(100,4,1496,1,1)	
         Msg2Player("B�n nh�n ���c <color=yellow> h� Tr� <color> L�m l�i nv.") 
           Msg2SubWorld("<color=green>Ch�c M�ng<color> "..GetName().." <color=green> �� Nh�n ���c  <color=violet>1 L�n ��nh Th�nh C�ng<color>  Xin H�y C�n Th�n")
       
	end
end
------------------------------------------------------------------------------------------------------------------------------
tbItemBag = {
	["L�nh B�i ADMIN"] = 1,
	["Giang H� L�nh"] = 1,
	["T�i M�u T�n Th�"] = 1,
	["Th�n H�nh Ph�"] = 1,
	["H�i th�nh ph� (l�n) "] = 1,
	["H�i th�nh ph� (nh�) "] = 1,
	["Th� ��a ph�"] = 1,
	["Kim Nguy�n B�o"] = 1,
	["Ti�n Xu"] = 1,
	
}

function ClearBagCell()
	Say("<color=green>L�u �:<color> <color=yellow>Mu�n X�a R��ng H�nh Trang C�n Ph�i Ki�m Tra\nTrang B� V�t Ph�m Tr��c Khi X�a.\n<color=green>Lo�i Tr� 6 V�t Ph�m H� Th�ng Gi� L�i:<color>\n<color=red>\t* Giang H� L�nh, Th�n H�nh Ph�, H�i Th�nh Ph�\n\t\t\tKim Nguy�n B�o, Ti�n Xu, T�i M�u T�n Th�.<color>",5,"X�c Nh�n X�a/ClearBag","Kh�a Trang B�/KhoaTrangBi","Kh�a Trang B� H�nh Trang/KhoaTBHanhTrang","Kh�a Trang B� Nh�n V�t/KhoaTBNhanVat","H�y B�/No")
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
	local szTitle = "Nh�n ���ng link:<color=red> Y�u c�u ch�nh x�c<color>"
	local tbOpt = 
	{
		{"Nh�p ���ng d�n",NhapDuongDanFileCanReLoad},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NhapDuongDanFileCanReLoad()
	return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>Nh�p ���ng d�n")
end

function NhapDuongDanFileCanReLoadOK(Link)
	local ReloadScript = LoadScript(Link)
	if (FALSE(ReloadScript)) then
		Msg2Player("Xu�t hi�n l�i, kh�ng th� Reload!<enter><color=yellow>"..Link.."");
	else
		Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=blue>"..Link.."");
	end
end

function luachonidten() 
local tiendong = 5000
local ktra_tien = CalcEquiproomItemCount(4, 1506, 1, 1) ;
if ktra_tien < tiendong then
Talk(1,"","B�n C�n  "..tiendong.." ��i Kim B�i �� Ki�m Tra Ng��i Kh�c, T�m ���c M�i M�t Ti�n!")
return end
	AskClientForString("TenNhanVat", "", 0,5000,"T�n Nh�n V�t") 
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
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		tinsert(tbSay,"Tho�t./no")
		tinsert(tbSay,"Tr� l�i.")            
		Say("<color=green>Nh�n V�t: "..ObjName.." - �i�m T�ng Kim: "..pr.." �i�m\nC�p ��: "..lev.." - Kinh nghi�m: "..xp.." -\ncai lao: "..vnd.." \nTh�n Ph�p: "..dex.." �i�m  -  S�c m�nh: "..strg.." �i�m\nSinh Kh�: "..vit.." �i�m  -   N�i C�ng: "..eng.." �i�m<color>", getn(tbSay), tbSay)
		ConsumeEquiproomItem(5000,4,1506,1,1) ---  xoa xu
return
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh�ng t�m th�y nh�n v�t t�n <color=green>"..nNameChar.."<color>"); 
	end
end


---------------------------------------------------------------------
function DoPhoThanhCau()
local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 300) then 
	Talk(1,"","B�n C�n  300 Xu ��u Th� T�y T�y, T�y ���c M�i M�t Ti�n!")
	return 
	end 
	local tbOpt = {
		{"T�y �i�m k� n�ng.", clear_skill},
		{"T�y �i�m ti�m n�ng.", clear_prop},
		{"Tr� v�", main},
		{"Tho�t."},
	}
	CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y?", tbOpt)
end
-------------------------------------------------------------------------------------------------------------
function clear_skill()
local tbOpt = {
{"X�c nh�n", do_clear_skill},
{"�� ta suy ngh� l�i."},
{"Tr� v�", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y", tbOpt)
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
Msg2Player("T�y t�y th�nh c�ng! Ng��i c� "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
ConsumeEquiproomItem(300,4,417,1,-1)
KickOutSelf()
end
--------------------------------------------------------------------------------------------------
function clear_prop()
local tbOpt = {
{"X�c nh�n", do_clear_prop},
{"�� ta suy ngh� l�i."},
{"Tr� v�", clear_attibute_point},
}
CreateNewSayEx("<npc>Ng��i v�n quy�t ��nh mu�n t�y t�y?", tbOpt)
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
	Say("Ng��i t�m ta c� vi�c g�?",3,
		"Mua 1 l�n ��i t�n nh�n v�t/dangkydoiten",
		"��t t�n cho nh�n v�t/about_rename_role",
		"Nh�n ti�n gh� qua th�i/cancel")
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("B�n v�n c�n 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end

	Say("M�i l�n ��i t�n nh�n v�t c�n <color=red>10 ��i Kim B�i<color>, ng��i chu�n b� xong ch�a?",
		2,
		"Ta �� chu�n b� xong/#buy_addibox_yes(10)",
		"Khi n�o �� ti�n ta s� quay l�i sau!/cancel");
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
	Talk(1, "", "<color=yellow>B�n nh�n ���c 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t");
end
function about_rename_role()
	local strInfo = "Ch�o b�n! V� t�n nh�n v�t c�a b�n v� ng��i ch�i kh�c gi�ng nhau, cho n�n h� th�ng �� gi�p b�n ��i t�n, b�n c� th� s�a t�n nh�n v�t c�a b�n tr��c ��y, c� th� ki�m tra xem t�n �� c� d�ng ���c kh�ng. Ch� �! B�n ch� c� 1 c� h�i duy nh�t �� ��i t�n, xin h�y c�n th�n t�ng b��c.";
	func_online_rename_role(strInfo);
end

function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"Ta mu�n ki�m tra xem t�n nh�n v�t d�ng ���c kh�ng/query_rolename",
			"Ti�n h�nh thay ��i t�n nh�n v�t c�a m�nh/change_rolename",
			"�� l�n sau ta thay ��i v�y/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("C�c b��c c� th�: R�i Bang H�i n�u c�, ��i tho�i v�i NPC, nh�p t�n nh�n v�t c�n thay ��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng nh�p l�i, n�u t�n nh�n v�t �� thay ��i th� ���c xem ��i t�n th�nh c�ng; n�u ch�a thay ��i, m�i b�n th�c hi�n l�i c�c b��c tr�n. N�u xu�t hi�n m�t s� hi�n t��ng l� xin li�n h� GM gi�i quy�t.",
		2,
		"B�t ��u thay ��i t�n nh�n v�t/change_rolename2",
		"�� ta suy ngh� l�i/cancel")
end
function change_rolename2()

	AskClientForString("on_change_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t m�i v�o");
end
function on_change_rolename(new_name)
--Msg2SubWorld( "��i hi�p <color=yellow>"..GetName().."<color> �� ��i t�n th�nh <color=green>"..new_name.."<color>")
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B�n mu�n ��i t�n g�?")
		else
			RenameRole(new_name);
			
		end
	end
end
function deny()
	Say("<color=yellow>Xin l�i! B�n ph�i mua l�n ��i t�n nh�n v�t r�i h�y ch�n ch�c n�ng n�y!<color>",
		1,
		"Bi�t r�i!/cancel")
end

--------------------------
function PhanThuonghotrocl1()
AskClientForNumber("level1",200,200,"Nh�p C�p ��:") 
end
function level1(num)
if (GetLevel() >= 200) then
	Say("Ng��i �� ho�n th�nh tren 200 r�i, hi�n t�i kh�ng th� ho�n th�nh ���c n�a")
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
Say("Ban Chua trung sinh "..gioihan.." roi, khong the nhan  ���c n�a!")
return end
if ktra_cl < gioihancl1 then
Say("Ban chua "..gioihancl1.."  L�n C�i L�o roi, khong the nhan !")
return end
if ktra_cl >= gioihancl then
Say("Ban �� Qu� "..gioihancl.."  L�n C�i L�o roi, khong the nhan them ���c n�a, ��ng Tham Lam!")
return end
        ST_LevelUp(nAddLevel)		
         Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> c�p ��.") 
           Msg2SubWorld("<color=green>Ch�c M�ng<color> "..GetName().." <color=green> �� Nh�n Qu� H� Tr� <color=violet>code mi�n ph� t�i tan thu len<color>  duoi cai lao 1 tui sever")
       
	end







-----------------------------------------------------------------------------------
function PhanThuonghotro()
AskClientForNumber("level",190,190,"Nh�p C�p ��:") 
end
function level(num)
if (GetLevel() >= 190) then
	Say("Ng��i �� ho�n th�nh tren 190 r�i, hi�n t�i kh�ng th� ho�n th�nh ���c n�a")
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
Say("Ban Chua trung sinh "..gioihan.." roi, khong the nhan  ���c n�a!")
return end
if ktra_cl < gioihancl1 then
Say("Ban chua "..gioihancl1.."  L�n C�i L�o roi, khong the nhan !")
return end
if ktra_cl >= gioihancl then
Say("Ban �� Qu� "..gioihancl.."  L�n C�i L�o roi, khong the nhan them ���c n�a, ��ng Tham Lam!")
return end
        ST_LevelUp(nAddLevel)		
        -- SetTask(3703,1)
Msg2Player("B�n nh�n ���c <color=yellow>"..num.."<color> c�p ��.") 
           Msg2SubWorld("<color=green>Ch�c M�ng<color> "..GetName().." <color=green> �� Nh�n Qu� H� Tr� <color=violet>code mi�n ph� t�i tan thu len<color>  duoi cai lao 2 tui sever")
	end
	
function dkmc()
if GetTask(1789) == 1 then
	Say("Ng��i ��  Nh�n qu� r�i c�n mu�n nh�n th�m, Th�t  th�m lam??") 
	return 0;
	end

if CalcFreeItemCellCount()<=50 then
Say("<color=yellow>H�nh Trang Kh�ng �� 50 Ch� Tr�ng")
return 1;
end

	local tbAward100k ={
               {szName="K� l� kho�ng th�ch",tbProp={4,1506,1,1,0,0},nCount=15000},
            {szName="ngua - Ki�m Di�u",tbProp={0,random(4776,4784)},nQuality=1,nCount=2,nExpiredTime=21600},
         
		}

			tbAwardTemplet:GiveAwardByList(tbAward100k,"Ph�n Th��ng B� S� C�")
WriteLogPro("dulieu/VolamMinhChu"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t �� Nh�n Gi�i V� L�m Minh Ch� Gi�i Nh�t\n");

               SetTask(1789,1) 
		Msg2SubWorld("Ch�c M�ng <color=green>"..GetName().." <color>�� Nh�n Qu�  T�i T�n Th� L�nh Th�nh C�ng. <color=yellow>K�nh Ch�c Ae 1 Tu�n M�i Tr�n ��y N�ng L��ng")
		
	end
-----------------------------------------------------------------------------------
function dkmc2()
--if GetTask(1787) == 1 then
--	Say("Ng��i ��  Nh�n qu� r�i c�n mu�n nh�n th�m, Th�t  th�m lam??") 
--	return 0;
--	end

if CalcFreeItemCellCount()<=50 then
Say("<color=yellow>H�nh Trang Kh�ng �� 50 Ch� Tr�ng")
return 1;
end

	local tbAward1002k ={
--{szName="K� l� kho�ng th�ch",tbProp={6,1,2219,1,0,0},nCount=6},
--{szName="K� l� kho�ng th�ch",tbProp={6,1,40998,1,0,0},nCount=100},
             -- {szName="K� l� kho�ng th�ch",tbProp={6,1,5331,1,0,0},nCount=100},
	      --{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,5399,1,0,0},nCount=2000},
          -- {szName="ngua - Ki�m Di�u",tbProp={0,random(4755,4756)},nQuality=1,nCount=2},
          -- {szName="ngua - Ki�m Di�u",tbProp={0,random(4977,4978)},nQuality=1,nCount=1},
--{szName="ngua - Ki�m Di�u",tbProp={0,random(4993,4997)},nQuality=1,nCount=1},
              -- {szName="K� l� kho�ng th�ch",tbProp={6,1,30160,1,0,0},nCount=100},
             -- {szName="K� l� kho�ng th�ch",tbProp={6,1,30161,1,0,0},nCount=100},
              -- {szName="K� l� kho�ng th�ch",tbProp={6,1,5337,1,0,0},nCount=100},
             -- {szName="K� l� kho�ng th�ch",tbProp={6,1,50008,1,0,0},nCount=6},
{szName="K� l� kho�ng th�ch",tbProp={6,1,6054,1,0,0},nCount=6,tbParam={11,0,0,0,0,0}},
---------------------------------------------------------
 {szName="ngua - Ki�m Di�u",tbProp={0,5110},nQuality=1,nCount=1},

          {szName="ngua - Ki�m Di�u",tbProp={0,random(4755,4756)},nQuality=1,nCount=2},
          {szName="ngua - Ki�m Di�u",tbProp={0,random(5978,5982)},nQuality=1,nCount=1},
           {szName="ngua - Ki�m Di�u",tbProp={0,random(5984,5988)},nQuality=1,nCount=1},
          {szName="ngua - Ki�m Di�u",tbProp={0,random(4989,4992)},nQuality=1,nCount=1},
           {szName="ngua - Ki�m Di�u",tbProp={0,11,841,1,0,0},nCount=1,nExpiredTime=10080},
           {szName="ngua - Ki�m Di�u",tbProp={0,random(6003,6004)},nQuality=1,nCount=1,nExpiredTime=10080},
           {szName="ngua - Ki�m Di�u",tbProp={0,random(5990,5994)},nQuality=1,nCount=1,nExpiredTime=10080},
           {szName="ngua - Ki�m Di�u",tbProp={0,random(5996,6000)},nQuality=1,nCount=1,nExpiredTime=10080},
		}

			tbAwardTemplet:GiveAwardByList(tbAward1002k,"Ph�n Th��ng B� S� C�")
WriteLogPro("dulieu/accsonlaydo"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t �� Nh�n Qu� Sinh Nh�t\n");

              -- SetTask(1787,1) 
		--Msg2SubWorld("Ch�c M�ng <color=green>"..GetName().." <color>�� Nh�n Qu�  T�n Th� L�nh Th�nh C�ng. <color=yellow>K�nh Ch�c"..GetName().."Kinh Chuc Toan Bang H�nh Ph�c V� May M�n ")
		
	end
function dkmc21()
if CalcFreeItemCellCount()<=10 then
Say("<color=yellow>H�nh Trang Kh�ng �� 10 Ch� Tr�ng")
return 1;
end

	local tbAward10021k ={
{szName="K� l� kho�ng th�ch",tbProp={6,1,4258,1,0,0},nCount=6},
		}

			tbAwardTemplet:GiveAwardByList(tbAward10021k,"Ph�n Th��ng B� S� C�")
WriteLogPro("dulieu/accsonlaydo"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t �� Nh�n Qu� Sinh Nh�t\n");
	end
function dkmc1()
--if GetTask(1788) == 1 then
--	Say("Ng��i ��  Nh�n qu� r�i c�n mu�n nh�n th�m, Th�t  th�m lam??") 
--	return 0;
--	end

if CalcFreeItemCellCount()<=50 then
Say("<color=yellow>H�nh Trang Kh�ng �� 50 Ch� Tr�ng")
return 1;
end

	local tbAward1001k ={

               -- {szName="K� l� kho�ng th�ch",tbProp={6,1,128,1,0,0},nCount=100},
               -- {szName="K� l� kho�ng th�ch",tbProp={6,1,2074,1,0,0},nCount=100},
               -- {szName="K� l� kho�ng th�ch",tbProp={6,1,4345,1,0,0},nCount=1},
               {szName="K� l� kho�ng th�ch",tbProp={6,1,4346,1,0,0},nCount=1},
               {szName="K� l� kho�ng th�ch",tbProp={6,1,4347,1,0,0},nCount=1},
               {szName="K� l� kho�ng th�ch",tbProp={6,1,4348,1,0,0},nCount=1},
               -- {szName="K� l� kho�ng th�ch",tbProp={6,1,4369,1,0,0},nCount=1},
               {szName="K� l� kho�ng th�ch",tbProp={6,1,4370,1,0,0},nCount=1},
               {szName="K� l� kho�ng th�ch",tbProp={6,1,4371,1,0,0},nCount=1},
               {szName="K� l� kho�ng th�ch",tbProp={6,1,4372,1,0,0},nCount=1},
		}

			tbAwardTemplet:GiveAwardByList(tbAward1001k,"Ph�n Th��ng B� S� C�")

WriteLogPro("dulieu/sonlay"..date("%d_%m_%Y")..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t �� Nh�n Gi�i V� L�m Minh Ch� Gi�i Nh�\n");
              --SetTask(1788,1) 
		--Msg2SubWorld("Ch�c M�ng <color=green>"..GetName().." <color>�� Nh�n Qu� V� L�m Minh Ch� Tu�n 2 T�i T�n Th� L�nh Th�nh C�ng. <color=yellow>K�nh Ch�c Ae 1 Tu�n M�i Tr�n ��y N�ng L��ng")
		
	end







-----------------------------------------------------------------------------------------
function XoaPK()
local tiendong1 = 5
local ktra_tien = CalcEquiproomItemCount(4, 417, 1, 1) ;
if ktra_tien < tiendong1 then
Talk(1,"","Kh�ng �� "..tiendong1.." DKB L�m Sao Mua Chu�c Qu�n Tr�i ��y!")
return end
	if (GetPK() == 1) then
		SetPK(0) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	elseif (GetPK() == 2) then
		SetPK(1) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	elseif (GetPK() == 3) then
		SetPK(2) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	elseif (GetPK() == 4) then
		SetPK(3) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	elseif (GetPK() == 5) then
		SetPK(4) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	elseif (GetPK() == 6) then
		SetPK(5) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	elseif (GetPK() == 7) then
		SetPK(6) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	elseif (GetPK() == 8) then
		SetPK(7) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	elseif (GetPK() == 9) then
		SetPK(8) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	elseif (GetPK() == 10) then
		SetPK(9) Msg2Player("Ch�c M�ng Ng��i �� Gi�m 1 �i�m PK Th�nh C�ng")
	else
		Talk(1,"","Ng��i Kh�ng C� �i�m PK N�o Kh�ng Th� S� D�ng Ch�c N�ng N�y")
		return 1
	end
ConsumeEquiproomItem(tiendong1,4,1506,1,1) ---  xoa xu
Talk(1,"","�� X�a Pk!")
 --AddGlobalNews("<color=green>Ng�o Xin Ch�c M�ng <color=orange> "..GetName().."<color> �� ti�n V�o b�n �� ��c Bi�t, h�y C�n th�n Qu�i ��y R�t m�nh...<color>")
end
function mattich()
	if CalcFreeItemCellCount() >= 10 then
		local tbAward = {
                        {szName="R��ng Nguy�n Li�u",tbProp={6,1,4873,1,0,0},nCount=1000},
                       
                        
		}
		tbAwardTemplet:GiveAwardByList(tbAward,1)
	else
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
	end
end
function ythiendolong()
local szTitle = "<npc>��y l� chu�i nhi�m v� m�i, sau khi ho�n th�nh, C�c H� s� h�c ���c tuy�t th� v� h�c c�ng nh� truy t�m ���c tung t�ch c�a � Thi�n Ki�m v� �� Long �ao m� Giang H� hay ��n ��i! Ng��i ti�p d�n nhi�m v� l� V� Danh N��ng. N�ng ta �ang t� t�c � L� Qu�n D��ng Ch�u, t�a �� 200/197."
		local tbOpt =	
	{
			{"H�y ��a ta ��n ��", denduongchaugapvodanhnuong},
			{"Kh�ng H�i N�a"},
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
		local tbItem1 = {szName="Truy�n K� L�nh", tbProp={6,1,4257,1,0,0}, nBindState=-2}
		local tbItem2 = {szName="T�c Hi�u Ph�", tbProp={6,1,4629,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem1, "Kich ho�t th�nh c�ng T�i kho�n GM!", 1)
		tbAwardTemplet:GiveAwardByList(tbItem2, "Kich ho�t th�nh c�ng T�i kho�n GM!", 1)
	end
end

function TopTK1()
	Talk(1, "", "H�y �i�n T��ng Top 1 T�i Map T�ng Kim Nh�n Th��ng !!");
end
function dkmod()
	AddMagic(732, 50) --Skill GM
	AddMagic(1209, 50) --Skill GM
	AddSkillState(314,5,1,600*60*18)
	AddSkillState(86,50,1,600*60*18)
	if CalcFreeItemCellCount() >= 1 then
		local tbItem1 = {szName="Thi�n Th�", tbProp={6,1,3076,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem1, "Kich ho�t th�nh c�ng T�i kho�n GM!", 1)
	end
end
----------------------------------------------------T�ng �i�m Thu�c T�nh---------------------------------------------------------------------------------------------------------
function TangDiem()
	local tbOpt = {
		{"T�ng �i�m Ti�m N�ng.", add_prop},
		{"T�ng �i�m K� N�ng.", Tangdiem_kynang},
		{"Th�i Ta Kh�ng C�n N�a",},
	}
	CreateNewSayEx("<npc>Xin M�i "..myplayersex().." Ch�n Ch�c N�ng H� Tr�", tbOpt)
end

function add_prop()
	local tbOpt = 
	{
		{"T�ng s�c m�nh.", add_prop_str},
		{"T�ng th�n ph�p.", add_prop_dex},
		{"T�ng sinh kh�.", add_prop_vit},
		{"T�ng n�i c�ng.", add_prop_eng},
		{"Tr� l�i.", dialog_main},
		{"Tho�t."}
	}
	CreateNewSayEx("<npc>Xin m�i ch�n ti�m n�ng c�n t�ng !", tbOpt)
end
function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "M�i nh�p ch� s� s�c m�nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "M�i nh�p ch� s� th�n ph�p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "M�i nh�p ch� s� sinh kh�:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "M�i nh�p ch� s� n�i c�ng: ");
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
----------------------------------------------------------------------------T�ng �i�m K� N�ng---------------------------------------------------------------------
tb_skill_add = {    [0] = { --thi�u l�m
        [1] = {10,14,4,6,8,15,16,20,11,19,271,21,273},
        [2] = {"Thi�u L�m Quy�n","Quy�n Ph�p",14,8,271,273},
        [3] = {"Thi�u L�m �ao","�ao Ph�p",6,19,273},
        [4] = {"Thi�u L�m C�n","C�n Ph�p",10,4,11,273},
    },
    [1] = { --thi�n v��ng
        [1] = {29,30,34,23,24,26,33,31,35,3740,42,32,36,41,324},
        [2] = {"Thi�n V��ng Th��ng","Th��ng Ph�p",30,23,35,41,36},
        [3] = {"Thi�n V��ng Ch�y","Ch�y Ph�p",29,26,31,324,36},
        [4] = {"Thi�n V��ng �ao","�ao Ph�p",34,24,32,37,36},
    },
    [2] = { --���ng m�n
        [1] = {45,43,347,303,47,50,54,343,345,349,48,58,249,341},
        [2] = {"���ng M�n - Phi Ti�u","Phi Ti�u Thu�t",45,43,47,341,48},
        [3] = {"���ng M�n - Phi �ao","Phi �ao Thu�t",45,43,50,249,48},
        [4] = {"���ng M�n - T� Ti�n","T� Ti�n Thu�t",45,43,54,58,48},
        [5] = {"���ng M�n - B�y","H�m T�nh Thu�t",303,347,343,349,345,48},
    },
    [3] = { --ng� ��c
        [1] = {63,65,60,62,67,66,70,64,68,69,384,73,356,72,71,74,75},
        [2] = {"Ng� ��c �ao","�ao Ph�p",65,60,384,74,75},
        [3] = {"Ng� ��c Ch��ng","Ch��ng Ph�p",63,62,68,71,75},
        [4] = {"Ng� ��c B�a","B�a Ch�",67,70,64,356,72,75},
    },
    [4] = { --nga mi
        [1] = {80,85,77,79,93,82,89,385,86,92,88,91,252,282},
        [2] = {"Nga Mi Ki�m","Ki�m Ph�p",85,77,385,88,252},
        [3] = {"Nga Mi Ch��ng","Ch��ng Ph�p",80,79,82,91,252},
        [4] = {"Nga Mi Ph� Tr�","Ph� Tr�",93,89,86,92,282,252},
    },
    [5] = { --th�y y�n
        [1] = {99,102,95,97,269,105,113,100,109,108,111,114},
        [2] = {"Th�y Y�n �ao","�ao Ph�p",99,95,105,109,108,114},
        [3] = {"Th�y Y�n Song �ao","Ch��ng Ph�p",102,97,113,111, 114},
    },
    [6] = { --c�i bang
        [1] = {119,122,115,116,129,124,274,277,125,128,130,360},
        [2] = {"C�i Bang B�ng","B�ng Ph�p",119,115,124,125,360,130},
        [3] = {"C�i Bang R�ng","Ch��ng Ph�p",122,116,274,128,360,130},
    },
    [7] = { --thi�n nh�n
        [1] = {135,145,131,132,136,137,138,140,141,364,143,142,148,150},
        [2] = {"Thi�n Nh�n M�u","M�u Ph�p",135,132,141,142,150},
        [3] = {"Thi�n Nh�n �ao Ph�p","�ao Ph�p",145,131,138,148,150},
        [4] = {"Thi�n Nh�n B�a","B�a Ch�",136,137,140,364,143,150},
    },
    [8] = { --v� �ang
        [1] = {153,155,151,152,159,158,164,160,157,165,166,267},
        [2] = {"V� �ang Ki�m","Ki�m Ph�p",155,151,158,267,166},
        [3] = {"V� �ang Kh�","Quy�n Ph�p",153,152,164,165,166},
    },
    [9] = { --c�n l�n
        [1] = {169,179,167,168,171,392,174,172,173,178,393,175,181,90,176,182,275,630},
        [2] = {"C�n L�n �ao","�ao Ph�p",169,167,178,176,275},
        [3] = {"C�n L�n Ki�m","Ki�m Ph�p",179,168,172,182,275},
        [4] = {"C�n L�n B�a","B�a Ch�",392,174,393,175,90,275},
    },
    [10] = { --Hoa s�n
        [1] = {1347,1350,1349,1374,1375,1372,1351,1376,1354,1378,1355,1379,1358,1380,1360},
        [2] = {"Hoa S�n Ki�m","Ki�m Ph�p",1347,1351,1355,1360,1358},
        [3] = {"Hoa S�n Kh�","Ch��ng ph�p",1372,1376,1380,1358},
	[4] = {"Ki�m Ph�p H� Tr�","H� Tr�",1350,1374,1349,1375,1354,1379,1378,1358},
    },
    [11] = { --V� H�n
        [1] = {1963,1964,1965,1971,1972,1974,1975,1976,1977,1979,1980,1981,1982},
        [2] = {"V� H�n Thu�n","Thu�n Ph�p",1964,1971,1975,1977,1981},
        [3] = {"V� H�n �ao","�ao Ph�p",1963,1965,1972,1974,1976,1979,1980,1982},
    },
}
NpcName = "<color=yellow>H� Tr�:<color><bclr=blue>C�ng �i�m K� N�ng<color>"
function Tangdiem_kynang()
    local nFaction = GetLastFactionNumber()
    local tab_Content = {
        "C�ng �i�m k� n�ng/#add_magic("..nFaction..")",
        "Tho�t./Quit",
    }
    Say(NpcName, getn(tab_Content), tab_Content);
end

function add_magic(nFaction)
    if nFaction < 0 then
        nMonPhai = "Ch�a Gia Nh�p Ph�i"
    elseif nFaction == 0 then
        nMonPhai = "Thi�u L�m"
    elseif nFaction == 1 then
        nMonPhai = "Thi�n V��ng"
    elseif nFaction == 2 then
        nMonPhai = "���ng M�n"
    elseif nFaction == 3 then
        nMonPhai = "Ng� ��c"
    elseif nFaction == 4 then
        nMonPhai = "Nga My"
    elseif nFaction == 5 then
        nMonPhai = "Th�y Y�n"
    elseif nFaction == 6 then
        nMonPhai = "C�i Bang"
    elseif nFaction == 7 then
        nMonPhai = "Thi�n Nh�n"
    elseif nFaction == 8 then
        nMonPhai = "V� �ang"
    elseif nFaction == 9 then
        nMonPhai = "C�n L�n"
    elseif nFaction == 10 then
        nMonPhai = "Hoa S�n"
    elseif nFaction == 11 then
        nMonPhai = "V� H�n"
    end
    if GetLevel()< 90 or nFaction < 0 then
        local tab_Content = {
        "Quay l�i/main",
        "Tho�t/Quit",
        }
        Say(NpcName.."Nh�n v�t ��t ��ng c�p 90 tr� l�n �� gia nh�p m�n ph�i m�i c� th� s� d�ng ch�c n�ng n�y.", getn(tab_Content),tab_Content);
    return
    end
    local tab_Content = {
    "C�ng theo t�ng k� n�ng/#Add_PointMagic(1,"..nFaction..")",
    "C�ng theo h��ng luy�n c�ng/#Add_PointMagic(2,"..nFaction..")",
    "C�ng to�n b� k� n�ng l�n c�p cao nh�t./#Add_PointMagic(3,"..nFaction..")",
    "Quay l�i/main",
    "Tho�t/Quit",
    }
    Say(NpcName.."Ng��i �� gia nh�p m�n ph�i <color=yellow>"..nMonPhai.."<color>, ng��i mu�n c�ng k� n�ng th� n�o?", getn(tab_Content),tab_Content);
end
function Add_PointMagic(nId,nFaction)
    if nFaction < 0 then
        nMonPhai = "Ch�a Gia Nh�p Ph�i"
    elseif nFaction == 0 then
        nMonPhai = "Thi�u L�m"
    elseif nFaction == 1 then
        nMonPhai = "Thi�n V��ng"
    elseif nFaction == 2 then
        nMonPhai = "���ng M�n"
    elseif nFaction == 3 then
        nMonPhai = "Ng� ��c"
    elseif nFaction == 4 then
        nMonPhai = "Nga My"
    elseif nFaction == 5 then
        nMonPhai = "Th�y Y�n"
    elseif nFaction == 6 then
        nMonPhai = "C�i Bang"
    elseif nFaction == 7 then
        nMonPhai = "Thi�n Nh�n"
    elseif nFaction == 8 then
        nMonPhai = "V� �ang"
    elseif nFaction == 9 then
        nMonPhai = "C�n L�n"
    elseif nFaction == 10 then
        nMonPhai = "Hoa S�n"
    elseif nFaction == 11 then
        nMonPhai = "V� H�n"
    end
    if nId == 1 then
        local tb_Desc = {}; 
        for i = 1, getn(tb_skill_add[nFaction][1]) do
            local skillcur = HaveMagic(tb_skill_add[nFaction][1][i]);
            local skillmax = GetSkillMaxLevel(tb_skill_add[nFaction][1][i]) + GetSkillMaxLevelAddons()
            if skillcur >= 0 and skillcur < skillmax then
                local nPointAdd = skillmax - skillcur
                tinsert(tb_Desc, format("Th�ng c�p ".."%s".."[Max: ".."%s".."]/#Add_PointMagic_Type1(%d,%d,%d,%d,%d)", GetSkillName(tb_skill_add[nFaction][1][i]),skillmax, tb_skill_add[nFaction][1][i],nPointAdd,nFaction,i,skillmax)); 
            end
        end
        tinsert(tb_Desc, 1,NpcName.."L�a ch�n k� n�ng th�ng c�p"); 
        tinsert(tb_Desc,"Quay l�i/#add_magic("..nFaction..")"); 
        tinsert(tb_Desc,"Tho�t/OnCancel"); 
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
            "C�ng theo "..tb_skill_add[nFaction][2][2]..", c�n t�ng c�ng ["..TongSkill1.."] �i�m K� N�ng/#AddHuongLC(2,"..nFaction..","..TongSkill1..")",
            "C�ng theo "..tb_skill_add[nFaction][3][2]..", c�n t�ng c�ng ["..TongSkill2.."] �i�m K� N�ng/#AddHuongLC(3,"..nFaction..","..TongSkill2..")",
            "Quay l�i/#add_magic("..nFaction..")",
            "Tho�t/Quit",
            }
            Say(NpcName.."M�n ph�i "..nMonPhai.." c� "..HuongLC.." h��ng luy�n c�ng �� l�: "..tb_skill_add[nFaction][2][2].." v� "..tb_skill_add[nFaction][3][2]..".<enter>"..tb_skill_add[nFaction][2][2].." bao g�m "..(getn(tb_skill_add[nFaction][2])-2).." K� N�ng.<enter>"..tb_skill_add[nFaction][3][2].." bao g�m "..(getn(tb_skill_add[nFaction][3])-2).." K� N�ng.",getn(tab_Content),tab_Content);
        elseif HuongLC == 3 then
            --local TongSkill3 = (    (getn(tb_skill_add[nFaction][4])-3)*20+30    ) + (getn(tb_skill_add[nFaction][4])-2)*GetSkillMaxLevelAddons()
            local TongSkill3 = 0
            for i=3,getn(tb_skill_add[nFaction][4]) do
                TongSkill3 = TongSkill3 + GetSkillMaxLevel(tb_skill_add[nFaction][4][i]) + GetSkillMaxLevelAddons() - HaveMagic(tb_skill_add[nFaction][4][i]);
            end
            local tab_Content = {
            "C�ng theo "..tb_skill_add[nFaction][2][2]..", c�n t�ng c�ng ["..TongSkill1.."] �i�m K� N�ng/#AddHuongLC(2,"..nFaction..","..TongSkill1..")",
            "C�ng theo "..tb_skill_add[nFaction][3][2]..", c�n t�ng c�ng ["..TongSkill2.."] �i�m K� N�ng/#AddHuongLC(3,"..nFaction..","..TongSkill2..")",
            "C�ng theo "..tb_skill_add[nFaction][4][2]..", c�n t�ng c�ng ["..TongSkill3.."] �i�m K� N�ng/#AddHuongLC(4,"..nFaction..","..TongSkill3..")",
            "Quay l�i/#add_magic("..nFaction..")",
            "Tho�t/Quit",
            }
            Say(NpcName.."M�n ph�i "..nMonPhai.." c� "..HuongLC.." h��ng luy�n c�ng �� l�: "
            ..tb_skill_add[nFaction][2][2]..", "..tb_skill_add[nFaction][3][2]..".v� "..tb_skill_add[nFaction][4][2].."<enter>"
            ..tb_skill_add[nFaction][2][2].." bao g�m "..(getn(tb_skill_add[nFaction][2])-2).." K� N�ng.<enter>"
            ..tb_skill_add[nFaction][3][2].." bao g�m "..(getn(tb_skill_add[nFaction][3])-2).." K� N�ng.<enter>"
            ..tb_skill_add[nFaction][4][2].." bao g�m "..(getn(tb_skill_add[nFaction][4])-2).." K� N�ng.",
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
            "C�ng theo "..tb_skill_add[nFaction][2][2]..", c�n t�ng c�ng ["..TongSkill1.."] �i�m K� N�ng/#AddHuongLC(2,"..nFaction..","..TongSkill1..")",
            "C�ng theo "..tb_skill_add[nFaction][3][2]..", c�n t�ng c�ng ["..TongSkill2.."] �i�m K� N�ng/#AddHuongLC(3,"..nFaction..","..TongSkill2..")",
            "C�ng theo "..tb_skill_add[nFaction][4][2]..", c�n t�ng c�ng ["..TongSkill3.."] �i�m K� N�ng/#AddHuongLC(4,"..nFaction..","..TongSkill3..")",
            "C�ng theo "..tb_skill_add[nFaction][5][2]..", c�n t�ng c�ng ["..TongSkill4.."] �i�m K� N�ng/#AddHuongLC(5,"..nFaction..","..TongSkill4..")",
            "Quay l�i/#add_magic("..nFaction..")",
            "Tho�t/Quit",
            }
            Say(NpcName.."M�n ph�i "..nMonPhai.." c� "..HuongLC.." h��ng luy�n c�ng �� l�: "
            ..tb_skill_add[nFaction][2][2]..", "..tb_skill_add[nFaction][3][2]..", "..tb_skill_add[nFaction][4][2].." v� "..tb_skill_add[nFaction][5][2].."<enter>"
            ..tb_skill_add[nFaction][2][2].." bao g�m "..(getn(tb_skill_add[nFaction][2])-2).." K� N�ng.<enter>"
            ..tb_skill_add[nFaction][3][2].." bao g�m "..(getn(tb_skill_add[nFaction][3])-2).." K� N�ng.<enter>"
            ..tb_skill_add[nFaction][4][2].." bao g�m "..(getn(tb_skill_add[nFaction][4])-2).." K� N�ng.<enter>"
            ..tb_skill_add[nFaction][5][2].." bao g�m "..(getn(tb_skill_add[nFaction][5])-2).." K� N�ng.",
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
        if CheckFullSkill < nTongSoSkill then --N�u ch�a h�c �� skill
            local tab_Content = {
            "Quay l�i/#add_magic("..nFaction..")",
            "Tho�t/Quit",
            }
            Say(NpcName.."Ng��i l� m�t �� t� c�a ph�i <color=yellow>"..nMonPhai.."<color>. M�n ph�i c� t�ng c�ng <color=green>"..nTongSoSkill.."<color> K� n�ng c� th� th�ng c�p. Ng��i m�i ch� l�nh gi�o ���c <color=green>"..CheckFullSkill.."<color> K� n�ng. H�y c� g�ng tu luy�n th�m, khi n�o ��y �� <color=green>"..nTongSoSkill.."<color> K� N�ng m�i c� th� s� d�ng ch�c n�ng n�y.", getn(tab_Content),tab_Content);
            return
        end
        if GetMagicPoint() < nTongSoPoint_Need then --N�u s� �i�m y�u c�u kh�ng �� �� c�ng.
            local tab_Content = {
            "Quay l�i/#add_magic("..nFaction..")",
            "Tho�t/Quit",
            }
            Say(NpcName.."Ng��i l� m�t �� t� c�a ph�i <color=yellow>"..nMonPhai.."<color>. M�n ph�i c� t�ng c�ng <color=green>"..nTongSoSkill.."<color> K� n�ng, y�u c�u ph�i c� �t nh�t <color=green>"..nTongSoPoint_Need.."<color> �i�m K� N�ng m�i c� th� n�ng c�p. H�y tu luy�n th�m �i.", getn(tab_Content),tab_Content);
            return
        end
        for i=1,nTongSoSkill do
            local nIdSkill = tb_skill_add[nFaction][1][i]
            local SkillCaoNhat = GetSkillMaxLevel(nIdSkill) + GetSkillMaxLevelAddons()
            local SkillPointNeed = GetSkillMaxLevel(nIdSkill) + GetSkillMaxLevelAddons() - HaveMagic(nIdSkill);
            AddMagic(nIdSkill,SkillCaoNhat)
            AddMagicPoint(-SkillPointNeed)
            Msg2Player("N�ng th�nh c�ng <color=yellow>"..GetSkillName(nIdSkill).."<color> l�n c�p <color=green>"..SkillCaoNhat.."<color>. �i�m K� N�ng c�n l�i <color=yellow>"..GetMagicPoint().."<color> �i�m.")
        end
    end
end

function AddHuongLC(nId,nFaction,nTotalSkillNeed)
    if GetMagicPoint() < nTotalSkillNeed then
        local tab_Content = {
        "Quay l�i/#Add_PointMagic(2,"..nFaction..")",
        "Tho�t/Quit",
        }
        Say(NpcName.."L��ng �i�m K� N�ng c�n l�i kh�ng �� �� n�ng k� n�ng theo h��ng <color=yellow>"..tb_skill_add[nFaction][nId][2].."<color>. C�n t�i thi�u "..nTotalSkillNeed.." �i�m k� n�ng", getn(tab_Content),tab_Content);
        return
    end
    for i=3,getn(tb_skill_add[nFaction][nId]) do
        local Id_Skill = tb_skill_add[nFaction][nId][i]
        if HaveMagic(Id_Skill) < 0 then
            Msg2Player("Ch�a h�c ��y �� c�c k� n�ng ch�a s� d�ng ���c ch�c n�ng n�y.")
        return
        end
        local DiemCong = GetSkillMaxLevel(Id_Skill) - HaveMagic(Id_Skill);
        local TenSkill = GetSkillName(Id_Skill)
        local Skill_CaoNhat = GetSkillMaxLevel(Id_Skill) + GetSkillMaxLevelAddons()
        AddMagic(Id_Skill,Skill_CaoNhat)
        AddMagicPoint(-DiemCong)
        Msg2Player("N�ng th�nh c�ng <color=yellow>"..TenSkill.."<color> l�n c�p <color=green>"..GetSkillMaxLevel(Id_Skill).."<color>. �i�m K� N�ng c�n l�i <color=yellow>"..GetMagicPoint().."<color> �i�m.")
    end
end

function Add_PointMagic_Type1(nIdSkill,nPointAdd,nFaction,nViTri,nMaxSkill)
    local SkillName = GetSkillName(tb_skill_add[nFaction][1][nViTri])
    if GetMagicPoint() < nPointAdd then
        local tab_Content = {
        "Quay l�i/#Add_PointMagic(1,"..nFaction..")",
        "Tho�t/Quit",
        }
        Say(NpcName.."L��ng �i�m K� N�ng c�n l�i kh�ng �� �� n�ng <color=yellow>"..SkillName.."<color> l�n c�p <color=yellow>"..nMaxSkill.."<color>.", getn(tab_Content),tab_Content);
    else
        AddMagic(nIdSkill,nMaxSkill)
        AddMagicPoint(-nPointAdd)
        Msg2Player("N�ng th�nh c�ng <color=yellow>"..SkillName.."<color> l�n c�p <color=green>"..nMaxSkill.."<color>. �i�m K� N�ng c�n l�i <color=yellow>"..GetMagicPoint().."<color> �i�m.")
    end
end
---------------------------------------------------------------------------------------------------------------
function ReLoadScript()
	local szTitle ="Nh�n ���ng link:<color=red> Y�u c�u ch�nh x�c<color>"
	local tbOpt = 
	{
		{"Nh�p ���ng d�n",NhapDuongDanFileCanReLoad},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function NhapDuongDanFileCanReLoad()
	return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>Nh�p ���ng d�n")
end

function NhapDuongDanFileCanReLoadOK(Link)
	local ReloadScript = LoadScript(Link)
	if (FALSE(ReloadScript)) then
		Msg2Player("Xu�t hi�n l�i, kh�ng th� Reload!<enter><color=yellow>"..Link.."");
	else
		Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=blue>"..Link.."");
	end
end
------------------------------------------------------------------------------------------------------------------------------
function mualenhbai()
local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 200) then 
	Talk(1,"","C�n c� 200 Xu m�i ��i ���c ") 
	return 
	end 
	 ConsumeEquiproomItem(200,4,417,1,1)
local tbAwardcc={
{szName="Chi�n c� ", tbProp={6,1,156,1,0,0},nCount = 999,nExpiredTime=24*60},
{szName="L�nh b�i", tbProp={6,1,157,1,0,0},nCount = 999,nExpiredTime=24*60},
{szName="K�ch C�ng Tr� L�c Ho�n",tbProp={6,1,2952,1,0,0},nCount=999,nExpiredTime=24*60},
{szName="�m d��ng ho�t huy�t ��n",tbProp={6,1,2953,1,0,0},nCount=999,nExpiredTime=24*60},
{szName="�m d��ng ho�t huy�t ��n",tbProp={6,1,190,1,0,0},nCount=999,nExpiredTime=24*60},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ph�n Th��ng");
end
function doixulayvan()
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 100) then 
	Talk(1,"","C�n c� 100 Xu m�i ��i ���c ") 
	return 
	end 
	    ConsumeEquiproomItem(100,4,417,1,1)
	Earn(100000000)
Talk(1, "", "Nh�n th�nh c�ng 10000v.")
end
function moruong()
	if CalcEquiproomItemCount(4,417,1,-1)>=500 then 
		ConsumeEquiproomItem(500,4,417,1,-1);
		OpenStoreBox(1);
		OpenStoreBox(2);
		OpenStoreBox(3);
		SaveNow();
	else
		Talk(1,"no","<color=red>B�n kh�ng �� 500 Xu.")	
	end
end
function giaiket()
if GetTask(5859)> 0  then
		Say("V�n Ti�u �i R�i H�y SD Th�n H�nh Ph�")
		return 1
	end;
          if GetTask(3920)> 0  then
		Say("Ng��i �ang v�n chuy�n Bao L��ng . Mau di chuy�n ��n �i�m t�p k�t �i.")
		return 1
	end;
local nMap,_,_ = GetWorldPos();
	local listmapband = {1007,208,209,527,535,337,338,339,378,379,380,323,324,325,464,465,466,467,468,469,470,471,342,336,595,900}
	for k=1,getn(listmapband) do 
		if nMap == listmapband[k] then 
			Msg2Player("Khu V�c ��t Bi�t Kh�ng Th� S� D�ng Giai Ket T�i N�i ��y.");
			return 1;
		end
	end
	SetFightState(0)
	Msg2Player( "<color=yellow>Bi�n Kinh!");
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
	Msg2Player("<color=yellow>S�a l�i kh�ng s� d�ng ���c Th�n H�nh Ph� v� Th� ��a Ph� th�nh c�ng<color>")
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DisposeItem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n th�n trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)	
		local nBindState = GetItemBindState(nItemIndex)
		--if (nCount ~= 1) then 
		--	Talk(1,"","M�i l�n ch� c� th� h�y ���c m�t v�t ph�m!!")
		--	return
		--end
	
		--if (nBindState >= 0) then
		--	Talk(1,"","V�t ph�m c�n h�y ph�i l� v�t ph�m kh�a!")
		--	return
		--end
		local strItem = GetItemName(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		Talk(1,"","��i hi�p c� th� s�p x�p l�i r��ng ch�a �� r�i!")
		Msg2Player("��i hi�p v�a h�y v�t ph�m th�nh c�ng")
		WriteLog(date("%Y%m%d %H%M%S").."\t".." H�y item kh�a "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
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



	local szTitle = "B�n �ang C� : \n<color=green>"..kimbaivuotai.."/3 <color>Kim B�i V��t �i\n<color=green>"..kimbaipld.."/3 <color> Kim B�i Phong L�ng ��\n<color=green>"..kimbaivsd.."/2 <color>Kim B�i Phong H�a Li�n Th�nh\n<color=green>"..kimbaitongkim.."/3 <color>Kim B�i T�ng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim B�i T�n S�\n<color=green>"..kimbaiviemde.."/3 <color>Kim B�i Li�n ��u\n<color=green>"..kimbaidtau.."/3 <color>Kim B�i D� t�u\n<color=yellow>M�i Nh�n V�t Ch� ���c Tr� Nhi�m V� 1 L�n Duy Nh�t,\n Ng��i C� ��ng � Kh�ng<color>"
		local tbOpt = {
			{"Mau Ho�n Th�nh Nhi�m V� Giang H� K�",HoanThanhNhiemVu},
			{"Tho�t",},
		}
		
		--if GetTask(5969)<=2 then
		--tinsert(tbOpt, 1, {"Ta C�i L�o 2 v� ta mu�n d�ng Kim B�i c�.", NhiemVuGianHoKy_cl2}) 
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


local szTitle = "B�n �ang C� : \n<color=green>"..kimbaivuotai.."/3 <color>Kim B�i V��t �i\n<color=green>"..kimbaipld.."/3 <color> Kim B�i Phong L�ng ��\n<color=green>"..kimbaivsd.."/2 <color>Kim B�i Phong H�a Li�n Th�nh\n<color=green>"..kimbaitongkim.."/3 <color>Kim B�i T�ng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim B�i T�n S�\n<color=green>"..kimbaiviemde.."/3 <color>Kim B�i Li�n ��u\n<color=green>"..kimbaidtau.."/3 <color>Kim B�i D� t�u\n<color=yellow>M�i Nh�n V�t Ch� ���c Tr� Nhi�m V� 1 L�n Duy Nh�t,\n Ng��i C� ��ng � Kh�ng<color>"
		local tbOpt = {
			{"Mau Ho�n Th�nh Nhi�m V� Giang H� K�",HoanThanhNhiemVu_cl2},
			{"Tho�t",},
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
Say("<color=yellow>Nguy�n Li�u Kh�ng �� Xin Ki�m Tra L�i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
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
					WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nh�n "..GetTask(5969).." kn cl4\n");	
			end
	
		else
		Say("<color=yellow>Ng��i �� Ho�n Th�nh Nhi�m V� H�m Nay R�i H�m Nay R�i")
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
Say("<color=yellow>Nguy�n Li�u Kh�ng �� Xin Ki�m Tra L�i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
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
			WriteLogPro("dulieu/nhiemvu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Ho�n th�nh HHK(kb c�) nh�n 50ty kn cl2\n");
		end
		else
		Say("<color=yellow>Ng��i �� Ho�n Th�nh Nhi�m V� H�m Nay R�i H�m Nay R�i")
	end
end
---------------------------------------

---------------------------------------
function KiemTraPhanThuong()
local szView = "<color=green>Ph�n Th��ng Hi�n T�i:<color>\n"..XemPhanThuong()..""
	local tbOpt = {{"K�t Th�c ��i Tho�i",No}} CreateNewSayEx(szView, tbOpt)
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanThuong()
local nTransLife = GetTask(1963)
local nLevel = GetLevel() ClearAll()
	if (nLevel >= 10 and nLevel < 150) then
		local nAddLevel = 150 - nLevel ST_LevelUp(nAddLevel)
		Msg2Player("Ch�c M�ng "..myplayersex().." T�ng C�p 150")
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
AskClientForNumber("layknb",0,500,"Nh�p S� L��ng:") 
end
-----------------------
function QuaTanThu()
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(NHANTHUONG7NGAY) ~= nDate) then
		SetTask(NHANTHUONG7NGAY, nDate) SetTask(NHANTHUONG, 0)
	end
	if (GetTask(NHANTHUONG) == 0) then
		Say("<color=yellow>M�i B�n Nh�n Th��ng",3,"Nh�n Th��ng Ng�y/NhanTanThu","H�y B�/No")
		else
		Say("<color=yellow>Ng��i �� Nh�n Th��ng H�m Nay R�i")
	end

end



function NhanTanThu()
	if (CountFreeRoomByWH(4,7,1) < 1) then
	Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x7 � tr�ng");
		return
	end
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="S�t th� gi�n (c�p 90)",tbProp={6,1,400,90,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh b�i Vi S�n ��o",tbProp={6,1,2432,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Chi�n C�",tbProp={6,1,156,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh B�i Vi�m ��",tbProp={6,1,1617,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LB PLD",tbProp={4,489,1,1,0,0},nCount=1,nExpiredTime=nRestMin},
			{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,4832,1,0,0},nCount=5,nExpiredTime=nRestMin,nBindState = -2},
		}
		local tbAward_cuoituan = {
			{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,4832,1,0,0},nCount=4,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
			tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
						
		
		SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
		end

end
