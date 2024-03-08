IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\global\\translife.lua")
Include("\\script\\global\\titlefuncs.lua")
---------------------------------------------------------------
function myplayersex()
	if (GetSex() == 1) then
		return "N÷ HiÖp"
	else
		return "§¹i HiÖp"
	end
end
----------------------------------------------------
function main()
dofile("script/global/g7vn/thientaidongtu.lua")
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<npc><color=green>Muèn Tu LuyÖn T©m Ph¸p NghÞch Thiªn C¶i MÖnh CÇn Ph¶i §¹t §¼ng CÊp 200 §· Tu LuyÖn B¾c §Èu Tr­êng Sinh ThuËt LÇn Thø 5<color>",
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	tbDailog:AddOptEntry("Tu LuyÖn T©m Ph¸p NghÞch Thiªn C¶i MÖnh", ChuyenSinh);

	tbDailog:Show();
end
------------------------------------Tu LuyÖn T©m Ph¸p NghÞch Thiªn C¶i MÖnh-------------------------------------------------------------------------------------------------------------------------------
function ChuyenSinh()
	local tbOpt =
	{
		{"Ta Muèn C¶i L·o Hoµn §ång",ChuyenKiep},
		{"KiÓm Tra Sè LÇn C¶i L·o Hoµn §ång",KiemTra_CaiLao},
		{"Tho¸t",},
	}
	if GetTask(5969)>=3 then
	tinsert(tbOpt, 1, {"§æi Skill Trïng Sinh 3 (1000 KNB)", DoiSkillTrungSinh3}) 
	end
	if GetTask(5969)>=4 then
	tinsert(tbOpt, 1, {"§æi Skill Trïng Sinh 4 (2000 KNB)", DoiSkillTrungSinh4}) 
	end
		CreateNewSayEx("<npc><bclr=violet>Xin Mêi "..myplayersex().." Chän Chøc N¨ng<bclr>", tbOpt)
end


------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiSkillTrungSinh3()
	local tbOpt =
	{
		{"Tho¸t",},
	}
	if GetTask(5969)>=3 and HaveMagic(993)>=0 then 
	tinsert(tbOpt, 1, {"Ta Muèn §æi Sang X¸c XuÊt Träng KÝch", DoiSkillTrungSinh993}) 
	end
	if GetTask(5969)>=3 and HaveMagic(998)>=0 then
	tinsert(tbOpt, 1, {"Ta Muèn §æi Sang X¸c XuÊt Hãa Gi¶i S¸t Th­¬ng", DoiSkillTrungSinh998}) 
	end
	
	CreateNewSayEx("<npc><bclr=violet>Xin Mêi "..myplayersex().." Chän Chøc N¨ng<bclr>", tbOpt)
end

function DoiSkillTrungSinh4()
	local tbSay = 
{
"Ta Muèn §æi Sang Dung Kim(Bá qua kh¸ng vËt lý 30%)/#TienHanhDoiSkillTrungSinh4(1577)",
"Ta Muèn §æi Sang Ph¸ Méc(Bá qua kh¸ng ®éc 30%)/#TienHanhDoiSkillTrungSinh4(1578)",
"Ta Muèn §æi Sang Hñ Thñy(Bá qua kh¸ng b¨ng 30%)/#TienHanhDoiSkillTrungSinh4(1579)",
"Ta Muèn §æi Sang Kh­ Háa(Bá qua kh¸ng háa 30%)/#TienHanhDoiSkillTrungSinh4(1580)",
"Ta Muèn §æi Sang LiÖt Thæ(Bá qua kh¸ng l«i 30%)/#TienHanhDoiSkillTrungSinh4(1581)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn Mua G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4(num)
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
if nSilverCount<2000 then
Say("Kh«ng §ñ 2000 KNB B¹n ¬i")
return 0;
end

DelMagic(1577)
DelMagic(1578)
DelMagic(1579)
DelMagic(1580)
DelMagic(1581)
AddMagic(num,20)
ConsumeEquiproomItem(2000,4,1496,1,1)
WriteLogPro("dulieu/cailao4.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi Skill "..num.."-100xu\n");	
end
------------------------------------------------------------------------------------------------------------------------------------------------------------

function DoiSkillTrungSinh993()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
if nSilverCount<1000 then
Say("Kh«ng §ñ 1000   knb  B¹n ¬i")
return 0;
end

DelMagic(993)
DelMagic(998)
AddMagic(998,20)
ConsumeEquiproomItem(1000,4,1496,1,1)
WriteLogPro("dulieu/cailao3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi Skill 998-100xu\n");	
end

function DoiSkillTrungSinh998()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
if nSilverCount<1000 then
Say("Kh«ng §ñ 1000 knb B¹n ¬i")
return 0;
end

DelMagic(993)
DelMagic(998)
AddMagic(993,20)
ConsumeEquiproomItem(1000,4,1496,1,1)
WriteLogPro("dulieu/cailao3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da Doi Skill 993-100xu\n");	
end
------------------------------------------------------------------------------------------------------------------------------------------------------------
function KiemTra_CaiLao()
local T_KIEMTRA_SOLAN = GetTask(5969);
Talk(1, "", "<bclr=violet>HiÖn T¹i: "..myplayersex().." §· C¶i L·o Hoµn §ång LÇn Thø:<bclr=red> "..T_KIEMTRA_SOLAN.." <bclr>")
end
-----------------------------------Tù ChuyÓn TiÕp Sè LÇn C¶i L·o Hoµn §ång HiÖn T¹i-------------------------------------------------------------------------------------------
function ChuyenKiep()
local n_solan = GetTask(5969)
	if (n_solan == 0) then
		CaiLao()
	elseif (n_solan == 1) then
		--CaiLaoLan1()
	elseif (n_solan == 2) then
		--CaiLaoLan2()
	elseif (n_solan == 3) then
		--CaiLaoLan3()
	elseif (n_solan == 4) then
		--CaiLaoLan4()
	elseif (n_solan == 5) then
		--CaiLaoLan5()
	elseif (n_solan == 6) then
		--CaiLaoLan6()
	elseif (n_solan == 7) then
		--CaiLaoLan7()
	elseif (n_solan == 8) then
--		CaiLaoLan8()
	elseif (n_solan == 9) then
--		CaiLaoLan9()
	else
		Talk(1,"","<bclr=violet>"..myplayersex().." §· §¹t Sè LÇn C¶i L·o Råi Kh«ng ThÓ TiÕp Tôc")
	end
end
-----------------------------------------------------Tù KiÓm Tra Thuéc TÝnh Theo Sè LÇn C¶i L·o Hoµn §ång-----------------------------------------------------------------------------------------------
function CaiLao()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs1.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Sè LÇn C¶i L·o Hoµn §ång LÇn Thø 1 SÏ §­îc + Thªm Thuéc TÝnh Nh­ Sau: \n§iÓm TiÒm N¨ng + 100  §iÓm Kü N¨ng + 2<bclr>"
	local tbOpt = {
		{"TiÕn Hµnh C¶i L·o Hoµn §ång",TienHanhCaiLao_free},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
----------------------------------------------------------------------------------------------------------------------------------------
function CaiLaoLan1()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs2.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Sè LÇn C¶i L·o Hoµn §ång LÇn Thø 2 SÏ §­îc + Thªm Thuéc TÝnh Nh­ Sau: \n§iÓm TiÒm N¨ng + 150  §iÓm Kü N¨ng + 2<bclr>"
	local tbOpt = {
		{"TiÕn Hµnh C¶i L·o Hoµn §ång",TienHanhCaiLao_2},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
----------------------------------------------------------------------------------------------------------------------------------------
function CaiLaoLan4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\danhhieu\\vip6.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Sè LÇn C¶i L·o Hoµn §ång LÇn Thø 2 SÏ §­îc + Thªm Thuéc TÝnh Nh­ Sau: \n§iÓm TiÒm N¨ng + 150  §iÓm Kü N¨ng + 2<bclr>"
	local tbOpt = {
		{"TiÕn Hµnh C¶i L·o Hoµn §ång",TienHanhCaiLao_5},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
function CaiLaoLan5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs6.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Sè LÇn C¶i L·o Hoµn §ång LÇn Thø 2 SÏ §­îc + Thªm Thuéc TÝnh Nh­ Sau: \n§iÓm TiÒm N¨ng + 150  §iÓm Kü N¨ng + 2<bclr>"
	local tbOpt = {
		{"TiÕn Hµnh C¶i L·o Hoµn §ång",TienHanhCaiLao_6},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
function CaiLaoLan6()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs7.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Sè LÇn C¶i L·o Hoµn §ång LÇn Thø 2 SÏ §­îc + Thªm Thuéc TÝnh Nh­ Sau: \n§iÓm TiÒm N¨ng + 150  §iÓm Kü N¨ng + 2<bclr>"
	local tbOpt = {
		{"TiÕn Hµnh C¶i L·o Hoµn §ång",TienHanhCaiLao_7},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
function CaiLaoLan7()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs8.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Sè LÇn C¶i L·o Hoµn §ång LÇn Thø 8 SÏ §­îc + Thªm Thuéc TÝnh Nh­ Sau: \n§iÓm TiÒm N¨ng + 550  §iÓm Kü N¨ng + 2<bclr>"
	local tbOpt = {
		{"TiÕn Hµnh C¶i L·o Hoµn §ång",TienHanhCaiLao_8},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
-----------------------------------------------------------------------------------------------------
function CaiLaoLan2()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs3.spr>Vßng S¸ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>Sè LÇn C¶i L·o Hoµn §ång LÇn 3 SÏ §­îc + Thªm Thuéc TÝnh Nh­ Sau: \n§iÓm TiÒm N¨ng + 250  §iÓm Kü N¨ng + 2<bclr>"
	local tbOpt = {
		{"C¶i L·o Hoµn §ång 3- Chän Skill §¹i DiÖp KhÝ Tr¸o",TienHanhCaiLao3_ddkt},
		{"C¶i L·o Hoµn §ång 3- Chän Skill X¸c XuÊt Träng KÝch",TienHanhCaiLao3_xstk},
		{"Th«i Ta Quay L¹i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
	
end
------------------------------------------------------------------------------------------------------------
function CaiLaoLan3()
	local tbSay = 
{
"C¶i L·o 4-Chän Dung Kim(Bá qua kh¸ng vËt lý 30%)/#TienHanhCaiLao4(1577)",
"C¶i L·o 4-Chän Ph¸ Méc(Bá qua kh¸ng ®éc 30%)/#TienHanhCaiLao4(1578)",
"C¶i L·o 4-Chän Hñ Thñy(Bá qua kh¸ng b¨ng 30%)/#TienHanhCaiLao4(1579)",
"C¶i L·o 4-Chän Kh­ Háa(Bá qua kh¸ng háa 30%)/#TienHanhCaiLao4(1580)",
"C¶i L·o 4-Chän LiÖt Thæ(Bá qua kh¸ng l«i 30%)/#TienHanhCaiLao4(1581)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn Mua G×",getn(tbSay),tbSay)


end

function TienHanhCaiLao4(num)
--local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
--local nSilverCounttacsd = CalcEquiproomItemCount(4,1508,1,1)
--local nSilverCounttank = CalcEquiproomItemCount(6,1,4806,1)
local n_solan = GetTask(5969);
	if n_solan <3 then
	Say("Ng­¬i ch­a c¶i l·o 3 mµ ®ßi cµi l·o 4 µ ???") 
	return 0;
	end

local nCurLevel = GetLevel();
local soxuton =4000 
local soxuton1 =1000 
local soxuton2 =3000 


		--if (nSilverCounttank >= soxuton2 and nSilverCounttacsd >= soxuton1 and nSilverCount >= soxuton and n_solan == 3 and nCurLevel >= 200) then

		if ( n_solan == 3 and nCurLevel >= 200) then
			nAddLevel = 180 - nCurLevel; ST_LevelUp(nAddLevel); 
			AddProp(450) SetTask(5969,4); do_clear_prop(); TaySkill();
			--ConsumeEquiproomItem(soxuton,4,1496,1,1)
                   --  ConsumeEquiproomItem(soxuton1,4,1508,1,1)
                     --  ConsumeEquiproomItem(soxuton2,6, 1, 4806, 1)
			DelMagic(1717)
			DelMagic(1718)
			AddMagic(1719,20) ---add skill cl4
			AddMagic(num,20)
                        RemoveSkillState(1729,20,3,559872000,1)
                        RemoveSkillState(1727,20,3,559872000,1)
		       PlayerFunLib:AddSkillState(1728,1,3,18*60*60*24*300,1)
SetTask(4955,0)
SetTask(4956,0)
SetTask(4957,0)
SetTask(4958,0)
SetTask(4959,0)
SetTask(4960,0)
SetTask(4962,0)
SetTask(4963,0)
SetTask(4964,0)
SetTask(4965,0)
                         Msg2SubWorld("Qu¶n lý<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· C¶i L·o Hoµn §ång LÇn Thø:<bclr=red> "..GetTask(5969).." Thanh Cong  ")
			WriteLogPro("dulieu/cailao4.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao4 voi xu "..soxuton.."-chon skill "..num.."\n");	
		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: "..soxuton.."  KNB ..\nYªu CÇu: "..soxuton1.."  M·nh HiÕm ..\nYªu CÇu: "..soxuton2.."  Thiªn Tinh Ngäc ..\nC¶i L·o 3+ §¼ng CÊp Tu LuyÖn §¹t 200...\n<bclr>")
		end
end
-----------------------------------------------------------------------------------------------------------
function TienHanhCaiLao_free()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
local n_solan = GetTask(5969);
local nTransLife = ST_GetTransLifeCount();
local nCurLevel = GetLevel();
local soxuton =1000
	--if CalcFreeItemCellCount() >= 40 then

		if (nSilverCount >= soxuton and  nTransLife >= 5 and nCurLevel >= 200) then
			nAddLevel = 150 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(2)
			AddProp(250) SetTask(5969,GetTask(5969)+1); do_clear_prop(); TaySkill();
                        ConsumeEquiproomItem(soxuton,4,1496,1,1)
                	--PlayerFunLib:AddSkillState(1725,1,3,18*60*60*24*300,1)
	                WriteLogPro("dulieu/cailao1.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao3_ddkt voi xu\n");	

		
		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: 1000 KNB...\n§¼ng CÊp Tu LuyÖn §¹t 200...\n§· Tu LuyÖn T©m Ph¸p C¬ Së Thiªn LÇn Thø 5<bclr>")
		end
	--else
	--	Talk(1,"","<color=red>H·y §Ó Trèng 40 ¤ Trèng Råi TiÕp Tôc C¶i Tö Håi Sinh")
	--end
end
----
-----------------------------------------------------------------------------------------------------------
function TienHanhCaiLao_2()
--local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
--local nSilverCounttank = CalcEquiproomItemCount(6, 1, 4873, 1)
local n_solan = GetTask(5969);
if n_solan <1 then
	Say("Ng­¬i ch­a c¶i l·o 1 mµ ®ßi cµi l·o 2 µ ???") 
	return 0;
	end
local nTransLife = ST_GetTransLifeCount();
local nCurLevel = GetLevel();
--local soxuton =300
--local soxuton1 =2000
	if CalcFreeItemCellCount() >= 10 then
		if ( nTransLife >= 5 and nCurLevel >= 200) then
			nAddLevel = 200 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(2)
			AddProp(250) SetTask(5969,GetTask(5969)+1); do_clear_prop(); TaySkill();-- VongSangCaiLao()
			if n_solan ==1 then
			AddMagic(1717,20)
                       -- RemoveSkillState(1726,20,3,559872000,1)
                        -- ConsumeEquiproomItem(soxuton,4,1496,1,1)
                        -- ConsumeEquiproomItem(soxuton1,6, 1, 4873, 1)
			--PlayerFunLib:AddSkillState(1726,1,3,18*60*60*24*300,1)
	                WriteLogPro("dulieu/cailao2.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao3_ddkt \n");	
                     Msg2SubWorld("Qu¶n lý<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· C¶i L·o Hoµn §ång LÇn Thø:<bclr=red> "..GetTask(5969).." Thanh Cong  ")

			end
		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: §¼ng CÊp Tu LuyÖn §¹t 200...\n<bclr>")
		end
	else
		Talk(1,"","<color=red>H·y §Ó Trèng 10 ¤ Trèng Råi TiÕp Tôc C¶i Tö Håi Sinh")
	end
end

function TienHanhCaiLao_5()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
local nSilverCounttank = CalcEquiproomItemCount(6,1,4806,1)
local n_solan = GetTask(5969);
	if n_solan <4 then
	Say("Ng­¬i ch­a c¶i l·o 4 mµ ®ßi cµi l·o 5 µ ???") 
	return 0;
	end
local TASK_HUYETCHIEN = GetTask(3002);
	--if TASK_HUYETCHIEN < soxuton2 then
	--Say("Ng­¬i CÇn T×m §ñ "..soxuton2.." ®iÓm huyÕt chiÕn míi cã thÓ c·i l·o 5 ???") 
	--return 0;
	--end
local nCurLevel = GetLevel();
local soxuton =8000
local soxuton1 = 5000
local soxuton2 =1200000

		if (TASK_HUYETCHIEN >= soxuton2 and nSilverCounttank >= soxuton1 and nSilverCount >= soxuton and n_solan == 4 and nCurLevel >= 200) then
			nAddLevel = 150 - nCurLevel; ST_LevelUp(nAddLevel); 
			AddProp(250) SetTask(5969,5); do_clear_prop(); TaySkill();
			ConsumeEquiproomItem(soxuton,4,1496,1,1)
                         ConsumeEquiproomItem(soxuton1,6, 1, 4806, 1)
                        SetTask(3002,GetTask(3002)-1200000)
			DelMagic(1717)
			DelMagic(1718)
			DelMagic(1719) ---add skill cl4
			AddMagic(1720,20) ---add skill cl4
                        RemoveSkillState(1728,20,3,559872000,1)
                        RemoveSkillState(1729,20,3,559872000,1)
                        RemoveSkillState(1727,20,3,559872000,1)
                        RemoveSkillState(1752,20,3,559872000,1)
                        RemoveSkillState(1754,20,3,559872000,1)
		       PlayerFunLib:AddSkillState(1755,1,3,18*60*60*24*300,1)
                       PlayerFunLib:AddSkillState(1753,1,3,18*60*60*24*300,1)
SetTask(4955,0)
SetTask(4956,0)
SetTask(4957,0)
SetTask(4958,0)
SetTask(4959,0)
SetTask(4960,0)
SetTask(4962,0)
SetTask(4963,0)
SetTask(4964,0)
SetTask(4965,0)
SetTask(4953,4)
			WriteLogPro("dulieu/cailao5.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao5 voi xu "..soxuton.."\n");
                      Msg2SubWorld("Qu¶n lý<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· C¶i L·o Hoµn §ång LÇn Thø:<bclr=red> "..GetTask(5969).." Thanh Cong  ")	
		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: "..soxuton.."  knb..\n "..soxuton1.."  thien tinh ngoc\n"..soxuton2.."  diem huyet chien..\nC¶i L·o 4+ §¼ng CÊp Tu LuyÖn §¹t 200...\n<bclr>")
		end
end

function TienHanhCaiLao_6()
local nSilverCount = CalcEquiproomItemCount(6, 1, 30189, 1)
local n_solan = GetTask(5969);
	if n_solan <5 then
	Say("Ng­¬i ch­a c¶i l·o 5 mµ ®ßi cµi l·o 6 µ ???") 
	return 0;
	end

local nCurLevel = GetLevel();
local soxuton =2000 

		if (nSilverCount >= soxuton and n_solan == 5 and nCurLevel >= 200) then
			nAddLevel = 200 - nCurLevel; ST_LevelUp(nAddLevel); 
			AddProp(150) SetTask(5969,6); do_clear_prop(); TaySkill();
                        ConsumeEquiproomItem(soxuton, 6, 1, 30189, 1)
			DelMagic(1717)
			DelMagic(1718)
			DelMagic(1719) ---add skill cl4
			DelMagic(1720) ---add skill cl4
			AddMagic(1721,20) ---add skill cl4
                        RemoveSkillState(1730,20,3,559872000,1)
                        RemoveSkillState(1729,20,3,559872000,1)
                        RemoveSkillState(1728,20,3,559872000,1)
                        RemoveSkillState(1727,20,3,559872000,1)
                        RemoveSkillState(1726,20,3,559872000,1)
                        RemoveSkillState(1725,20,3,559872000,1)
		       PlayerFunLib:AddSkillState(1731,1,3,18*60*60*24*300,1)
			WriteLogPro("dulieu/cailao6.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao4 voi xu "..soxuton.."\n");	
		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: "..soxuton.."  Bach Khoa Toan Thu Ban Hoan Chinh..\nC¶i L·o 5+ §¼ng CÊp Tu LuyÖn §¹t 200...\n<bclr>")
		end
end

function TienHanhCaiLao_7()
local nSilverCount = CalcEquiproomItemCount(6, 1, 30189, 1)
local nSilverCounttank = CalcEquiproomItemCount(6, 1, 30187, 1)
local nSilverCountdaikimbai = CalcEquiproomItemCount(4, 1506, 1, 1)
local n_solan = GetTask(5969);
	if n_solan <6 then
	Say("Ng­¬i ch­a c¶i l·o 6 mµ ®ßi cµi l·o 7 µ ???") 
	return 0;
	end

local nCurLevel = GetLevel();
local soxuton =5000 
local soxuton1 =2000 
local soxuton2 =5000 

		if (nSilverCount >= soxuton and nSilverCounttank >= soxuton1 and nSilverCountdaikimbai >= soxuton2 and n_solan == 6 and nCurLevel >= 200) then
			nAddLevel = 180 - nCurLevel; ST_LevelUp(nAddLevel); 
			AddProp(450) SetTask(5969,7); do_clear_prop(); TaySkill();
                        ConsumeEquiproomItem(soxuton, 6, 1, 30189, 1)
                        ConsumeEquiproomItem(soxuton1, 6, 1, 30187, 1)
                        ConsumeEquiproomItem(soxuton2,4,1506,1,1)
			DelMagic(1717)
			DelMagic(1718)
			DelMagic(1719) ---add skill cl4
			DelMagic(1720) ---add skill cl4
			DelMagic(1721) ---add skill cl4
			AddMagic(1722,20) ---add skill cl4
                        RemoveSkillState(1730,20,3,559872000,1)
                        RemoveSkillState(1729,20,3,559872000,1)
                        RemoveSkillState(1728,20,3,559872000,1)
                        RemoveSkillState(1727,20,3,559872000,1)
                        RemoveSkillState(1726,20,3,559872000,1)
                        RemoveSkillState(1725,20,3,559872000,1)
                        RemoveSkillState(1731,20,3,559872000,1)
		       PlayerFunLib:AddSkillState(1732,1,3,18*60*60*24*300,1)
			WriteLogPro("dulieu/cailao7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao7 voi xu "..soxuton.."\n");	
		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: "..soxuton.."  Bach Khoa Toan Thu Ban Hoan Chinh.. \n"..soxuton1.."  TruyÒn Nh©n-TÝn VËt ..\n"..soxuton2.."  dai kim bai ..\nC¶i L·o 5+ §¼ng CÊp Tu LuyÖn §¹t 200...\n<bclr>")
		end
end

function TienHanhCaiLao_8()
local nSilverCount = CalcEquiproomItemCount(6, 1, 30189, 1)
local nSilverCounttank = CalcEquiproomItemCount(6, 1, 30187, 1)
local nSilvertinvat = CalcEquiproomItemCount(6, 1, 30291, 1)
local nSilverCountdaikimbai = CalcEquiproomItemCount(4, 1506, 1, 1)
local n_solan = GetTask(5969);
	if n_solan <7 then
	Say("Ng­¬i ch­a c¶i l·o 7 mµ ®ßi cµi l·o 8 µ ???") 
	return 0;
	end

local nCurLevel = GetLevel();
local soxuton =8000 
local soxuton1 =3000 
local soxuton2 =8000 
local soxuton3 =4 

		if (nSilverCount >= soxuton and nSilverCounttank >= soxuton1 and nSilvertinvat >= soxuton3 and nSilverCountdaikimbai >= soxuton2 and n_solan == 7 and nCurLevel >= 200) then
			nAddLevel = 90 - nCurLevel; ST_LevelUp(nAddLevel); 
			AddProp(550) SetTask(5969,8); do_clear_prop(); TaySkill();
                        ConsumeEquiproomItem(soxuton, 6, 1, 30189, 1)
                        ConsumeEquiproomItem(soxuton1, 6, 1, 30187, 1)
                        ConsumeEquiproomItem(soxuton2,4,1506,1,1)
                        ConsumeEquiproomItem(soxuton3, 6, 1, 30291, 1)
			DelMagic(1717)
			DelMagic(1718)
			DelMagic(1719) ---add skill cl4
			DelMagic(1720) ---add skill cl4
			DelMagic(1721) ---add skill cl4
			DelMagic(1722) ---add skill cl4
			AddMagic(1723,20) ---add skill cl4
                        RemoveSkillState(1730,20,3,559872000,1)
                        RemoveSkillState(1729,20,3,559872000,1)
                        RemoveSkillState(1728,20,3,559872000,1)
                        RemoveSkillState(1727,20,3,559872000,1)
                        RemoveSkillState(1726,20,3,559872000,1)
                        RemoveSkillState(1725,20,3,559872000,1)
                        RemoveSkillState(1731,20,3,559872000,1)
                        RemoveSkillState(1732,20,3,559872000,1)
		       PlayerFunLib:AddSkillState(1749,1,3,18*60*60*24*300,1)
			WriteLogPro("dulieu/cailao8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao7 voi xu "..soxuton.."\n");	
		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: "..soxuton.."  Bach Khoa Toan Thu Ban Hoan Chinh.. \n"..soxuton1.."  TruyÒn Nh©n-TÝn VËt ..\n"..soxuton2.."  dai kim bai ..\n"..soxuton3.."  LÖnh Bµi C·i L·o ..\nC¶i L·o 7+ §¼ng CÊp Tu LuyÖn §¹t 200...\n<bclr>")
		end
end
----------------------------------------------------------------------------------------------
function TienHanhCaiLao3_ddkt()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
local nSilverCounttank = CalcEquiproomItemCount(6, 1, 4873, 1)
local n_solan = GetTask(5969);
if n_solan <2 then
Say("Ng­¬i ch­a c¶i l·o 2 mµ ®ßi cµi l·o 3 µ ???") 
return 0;
end
local nCurLevel = GetLevel();
local soxuton =800
local soxuton1 =4000

		--if (nSilverCounttank >= soxuton1 and nSilverCount >= soxuton and n_solan == 2 and nCurLevel >= 200) then
if ( n_solan == 2 and nCurLevel >= 200) then
			nAddLevel = 200 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(2)
			AddProp(400) SetTask(5969,GetTask(5969)+1); do_clear_prop(); TaySkill();-- VongSangCaiLao()
			--ConsumeEquiproomItem(soxuton,4,1496,1,1)
                     --  ConsumeEquiproomItem(soxuton1,6, 1, 4873, 1)
			AddMagic(993,20)
                         DelMagic(1717,20)
                         AddMagic(1718,20)

                        RemoveSkillState(1726,20,3,559872000,1)
			PlayerFunLib:AddSkillState(1727,1,3,18*60*60*24*300,1)
			WriteLogPro("dulieu/cailao3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao3_ddkt voi xu "..soxuton.."\n");	
 -- Msg2SubWorld("Qu¶n lý<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· C¶i L·o Hoµn §ång LÇn Thø:<bclr=red> "..GetTask(5969).." Thanh Cong  ")
		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: "..soxuton.."  KNB...\n: "..soxuton1.."  Dai Tinh Ngoc...\nC¶i L·o 2+ §¼ng CÊp Tu LuyÖn §¹t 200...\n<bclr>")
		end
end

function TienHanhCaiLao3_xstk()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
local nSilverCounttank = CalcEquiproomItemCount(6, 1, 4873, 1)
local n_solan = GetTask(5969);
if n_solan <2 then
Say("Ng­¬i ch­a c¶i l·o 2 mµ ®ßi cµi l·o 3 µ ???") 
return 0;
end
local nCurLevel = GetLevel();
local soxuton =800
local soxuton1 =4000

		--if (nSilverCounttank >= soxuton1 and nSilverCount >= soxuton and n_solan == 2 and nCurLevel >= 200) then
if ( n_solan == 2 and nCurLevel >= 200) then
			nAddLevel = 200 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(2)
			AddProp(400) SetTask(5969,GetTask(5969)+1); do_clear_prop(); TaySkill();-- VongSangCaiLao()
			--ConsumeEquiproomItem(soxuton,4,1496,1,1)
                      -- ConsumeEquiproomItem(soxuton1,6, 1, 4873, 1)
			AddMagic(998,20)
                        DelMagic(1717,20)
                         AddMagic(1718,20)

                        RemoveSkillState(1726,20,3,559872000,1)
			PlayerFunLib:AddSkillState(1727,1,3,18*60*60*24*300,1)
				WriteLogPro("dulieu/cailao3.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao3_xstk voi "..soxuton1.." \n");	
                              -- Msg2SubWorld("Qu¶n lý<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> §· C¶i L·o Hoµn §ång LÇn Thø:<bclr=red> "..GetTask(5969).." Thanh Cong  ")

		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: "..soxuton.."  KNB...\n: "..soxuton1.."  Dai Tinh Ngoc...\nC¶i L·o 2+ §¼ng CÊp Tu LuyÖn §¹t 200...\n<bclr>")
		end
end
-----------------------------------------------------------------------------------------------------------
function TienHanhCaiLao()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1)
local n_solan = GetTask(5969);
local nTransLife = ST_GetTransLifeCount();
local nCurLevel = GetLevel();
	if CalcFreeItemCellCount() >= 40 then
		if (nSilverCount >= 60 and nTransLife >= 5 and nCurLevel >= 200) then
			nAddLevel = 181 - nCurLevel; ST_LevelUp(nAddLevel); AddMagicPoint(2)
			AddProp(181) SetTask(5969,GetTask(5969)+1); do_clear_prop(); TaySkill();-- VongSangCaiLao()
			ConsumeEquiproomItem(60,4,417,1,1)
			if n_solan ==1 then
			DelMagic(1534,20)
			AddMagic(1535,20)
			end
		else
			Talk(1, "", "<bclr=violet>Xin Chµo "..myplayersex().."<bclr=red> Muèn Tu LuyÖn NghÞch Thiªn C¶i MÖnh\nYªu CÇu: 60 Xu...\n§¼ng CÊp Tu LuyÖn §¹t 200...\n<bclr>")
		end
	else
		Talk(1,"","<color=red>H·y §Ó Trèng 40 ¤ Trèng Råi TiÕp Tôc C¶i Tö Håi Sinh")
	end
end


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
end
------------------------------------------------------------------------
function TaySkill()
	local i = HaveMagic(210)		
	local j = HaveMagic(400)		
	local h = HaveMagic(732)		
	local k = HaveMagic(733)		
	local n = RollbackSkill()		
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		
	if (j ~= -1) then x = x + j end
	if (h ~= -1) then x = x + h end
	if (k ~= -1) then x = x + k end
	local rollback_point = n - x			
	if (rollback_point + GetMagicPoint() < 0) then		
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			
	if (j ~= -1) then AddMagic(400, j) end			
	if (h ~= -1) then AddMagic(732, h) end
	if (k ~= -1) then AddMagic(733, k) end
	KickOutSelf()
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------------------------


function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end