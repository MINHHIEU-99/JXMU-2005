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
		return "N� Hi�p"
	else
		return "��i Hi�p"
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
	tbDailog.szTitleMsg = "<npc><color=green>Mu�n Tu Luy�n T�m Ph�p Ngh�ch Thi�n C�i M�nh C�n Ph�i ��t ��ng C�p 200 �� Tu Luy�n B�c ��u Tr��ng Sinh Thu�t L�n Th� 5<color>",
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)
	
	tbDailog:AddOptEntry("Tu Luy�n T�m Ph�p Ngh�ch Thi�n C�i M�nh", ChuyenSinh);

	tbDailog:Show();
end
------------------------------------Tu Luy�n T�m Ph�p Ngh�ch Thi�n C�i M�nh-------------------------------------------------------------------------------------------------------------------------------
function ChuyenSinh()
	local tbOpt =
	{
		{"Ta Mu�n C�i L�o Ho�n ��ng",ChuyenKiep},
		{"Ki�m Tra S� L�n C�i L�o Ho�n ��ng",KiemTra_CaiLao},
		{"Tho�t",},
	}
	if GetTask(5969)>=3 then
	tinsert(tbOpt, 1, {"��i Skill Tr�ng Sinh 3 (1000 KNB)", DoiSkillTrungSinh3}) 
	end
	if GetTask(5969)>=4 then
	tinsert(tbOpt, 1, {"��i Skill Tr�ng Sinh 4 (2000 KNB)", DoiSkillTrungSinh4}) 
	end
		CreateNewSayEx("<npc><bclr=violet>Xin M�i "..myplayersex().." Ch�n Ch�c N�ng<bclr>", tbOpt)
end


------------------------------------------------------------------------------------------------------------------------------------------------------------
function DoiSkillTrungSinh3()
	local tbOpt =
	{
		{"Tho�t",},
	}
	if GetTask(5969)>=3 and HaveMagic(993)>=0 then 
	tinsert(tbOpt, 1, {"Ta Mu�n ��i Sang X�c Xu�t Tr�ng K�ch", DoiSkillTrungSinh993}) 
	end
	if GetTask(5969)>=3 and HaveMagic(998)>=0 then
	tinsert(tbOpt, 1, {"Ta Mu�n ��i Sang X�c Xu�t H�a Gi�i S�t Th��ng", DoiSkillTrungSinh998}) 
	end
	
	CreateNewSayEx("<npc><bclr=violet>Xin M�i "..myplayersex().." Ch�n Ch�c N�ng<bclr>", tbOpt)
end

function DoiSkillTrungSinh4()
	local tbSay = 
{
"Ta Mu�n ��i Sang Dung Kim(B� qua kh�ng v�t l� 30%)/#TienHanhDoiSkillTrungSinh4(1577)",
"Ta Mu�n ��i Sang Ph� M�c(B� qua kh�ng ��c 30%)/#TienHanhDoiSkillTrungSinh4(1578)",
"Ta Mu�n ��i Sang H� Th�y(B� qua kh�ng b�ng 30%)/#TienHanhDoiSkillTrungSinh4(1579)",
"Ta Mu�n ��i Sang Kh� H�a(B� qua kh�ng h�a 30%)/#TienHanhDoiSkillTrungSinh4(1580)",
"Ta Mu�n ��i Sang Li�t Th�(B� qua kh�ng l�i 30%)/#TienHanhDoiSkillTrungSinh4(1581)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n Mua G�",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4(num)
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
if nSilverCount<2000 then
Say("Kh�ng �� 2000 KNB B�n �i")
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
Say("Kh�ng �� 1000   knb  B�n �i")
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
Say("Kh�ng �� 1000 knb B�n �i")
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
Talk(1, "", "<bclr=violet>Hi�n T�i: "..myplayersex().." �� C�i L�o Ho�n ��ng L�n Th�:<bclr=red> "..T_KIEMTRA_SOLAN.." <bclr>")
end
-----------------------------------T� Chuy�n Ti�p S� L�n C�i L�o Ho�n ��ng Hi�n T�i-------------------------------------------------------------------------------------------
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
		Talk(1,"","<bclr=violet>"..myplayersex().." �� ��t S� L�n C�i L�o R�i Kh�ng Th� Ti�p T�c")
	end
end
-----------------------------------------------------T� Ki�m Tra Thu�c T�nh Theo S� L�n C�i L�o Ho�n ��ng-----------------------------------------------------------------------------------------------
function CaiLao()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs1.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>S� L�n C�i L�o Ho�n ��ng L�n Th� 1 S� ���c + Th�m Thu�c T�nh Nh� Sau: \n�i�m Ti�m N�ng + 100  �i�m K� N�ng + 2<bclr>"
	local tbOpt = {
		{"Ti�n H�nh C�i L�o Ho�n ��ng",TienHanhCaiLao_free},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
----------------------------------------------------------------------------------------------------------------------------------------
function CaiLaoLan1()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs2.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>S� L�n C�i L�o Ho�n ��ng L�n Th� 2 S� ���c + Th�m Thu�c T�nh Nh� Sau: \n�i�m Ti�m N�ng + 150  �i�m K� N�ng + 2<bclr>"
	local tbOpt = {
		{"Ti�n H�nh C�i L�o Ho�n ��ng",TienHanhCaiLao_2},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
----------------------------------------------------------------------------------------------------------------------------------------
function CaiLaoLan4()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\danhhieu\\vip6.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>S� L�n C�i L�o Ho�n ��ng L�n Th� 2 S� ���c + Th�m Thu�c T�nh Nh� Sau: \n�i�m Ti�m N�ng + 150  �i�m K� N�ng + 2<bclr>"
	local tbOpt = {
		{"Ti�n H�nh C�i L�o Ho�n ��ng",TienHanhCaiLao_5},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
function CaiLaoLan5()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs6.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>S� L�n C�i L�o Ho�n ��ng L�n Th� 2 S� ���c + Th�m Thu�c T�nh Nh� Sau: \n�i�m Ti�m N�ng + 150  �i�m K� N�ng + 2<bclr>"
	local tbOpt = {
		{"Ti�n H�nh C�i L�o Ho�n ��ng",TienHanhCaiLao_6},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
function CaiLaoLan6()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs7.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>S� L�n C�i L�o Ho�n ��ng L�n Th� 2 S� ���c + Th�m Thu�c T�nh Nh� Sau: \n�i�m Ti�m N�ng + 150  �i�m K� N�ng + 2<bclr>"
	local tbOpt = {
		{"Ti�n H�nh C�i L�o Ho�n ��ng",TienHanhCaiLao_7},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
function CaiLaoLan7()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs8.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>S� L�n C�i L�o Ho�n ��ng L�n Th� 8 S� ���c + Th�m Thu�c T�nh Nh� Sau: \n�i�m Ti�m N�ng + 550  �i�m K� N�ng + 2<bclr>"
	local tbOpt = {
		{"Ti�n H�nh C�i L�o Ho�n ��ng",TienHanhCaiLao_8},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
end
-----------------------------------------------------------------------------------------------------
function CaiLaoLan2()
local n_vongsang = random(1,63)
VONG_SANG = "<#><link=image[0]:\\spr\\skill\\vscs\\vscs3.spr>V�ng S�ng: <link>"
local szTitle = VONG_SANG.."<bclr=violet>S� L�n C�i L�o Ho�n ��ng L�n 3 S� ���c + Th�m Thu�c T�nh Nh� Sau: \n�i�m Ti�m N�ng + 250  �i�m K� N�ng + 2<bclr>"
	local tbOpt = {
		{"C�i L�o Ho�n ��ng 3- Ch�n Skill ��i Di�p Kh� Tr�o",TienHanhCaiLao3_ddkt},
		{"C�i L�o Ho�n ��ng 3- Ch�n Skill X�c Xu�t Tr�ng K�ch",TienHanhCaiLao3_xstk},
		{"Th�i Ta Quay L�i Sau",},
	}
	CreateNewSayEx(szTitle, tbOpt) return 1;
	
end
------------------------------------------------------------------------------------------------------------
function CaiLaoLan3()
	local tbSay = 
{
"C�i L�o 4-Ch�n Dung Kim(B� qua kh�ng v�t l� 30%)/#TienHanhCaiLao4(1577)",
"C�i L�o 4-Ch�n Ph� M�c(B� qua kh�ng ��c 30%)/#TienHanhCaiLao4(1578)",
"C�i L�o 4-Ch�n H� Th�y(B� qua kh�ng b�ng 30%)/#TienHanhCaiLao4(1579)",
"C�i L�o 4-Ch�n Kh� H�a(B� qua kh�ng h�a 30%)/#TienHanhCaiLao4(1580)",
"C�i L�o 4-Ch�n Li�t Th�(B� qua kh�ng l�i 30%)/#TienHanhCaiLao4(1581)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n Mua G�",getn(tbSay),tbSay)


end

function TienHanhCaiLao4(num)
--local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
--local nSilverCounttacsd = CalcEquiproomItemCount(4,1508,1,1)
--local nSilverCounttank = CalcEquiproomItemCount(6,1,4806,1)
local n_solan = GetTask(5969);
	if n_solan <3 then
	Say("Ng��i ch�a c�i l�o 3 m� ��i c�i l�o 4 � ???") 
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
                         Msg2SubWorld("Qu�n l�<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� C�i L�o Ho�n ��ng L�n Th�:<bclr=red> "..GetTask(5969).." Thanh Cong  ")
			WriteLogPro("dulieu/cailao4.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da TienHanhCaiLao4 voi xu "..soxuton.."-chon skill "..num.."\n");	
		else
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: "..soxuton.."  KNB ..\nY�u C�u: "..soxuton1.."  M�nh Hi�m ..\nY�u C�u: "..soxuton2.."  Thi�n Tinh Ng�c ..\nC�i L�o 3+ ��ng C�p Tu Luy�n ��t 200...\n<bclr>")
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
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: 1000 KNB...\n��ng C�p Tu Luy�n ��t 200...\n�� Tu Luy�n T�m Ph�p C� S� Thi�n L�n Th� 5<bclr>")
		end
	--else
	--	Talk(1,"","<color=red>H�y �� Tr�ng 40 � Tr�ng R�i Ti�p T�c C�i T� H�i Sinh")
	--end
end
----
-----------------------------------------------------------------------------------------------------------
function TienHanhCaiLao_2()
--local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
--local nSilverCounttank = CalcEquiproomItemCount(6, 1, 4873, 1)
local n_solan = GetTask(5969);
if n_solan <1 then
	Say("Ng��i ch�a c�i l�o 1 m� ��i c�i l�o 2 � ???") 
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
                     Msg2SubWorld("Qu�n l�<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� C�i L�o Ho�n ��ng L�n Th�:<bclr=red> "..GetTask(5969).." Thanh Cong  ")

			end
		else
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: ��ng C�p Tu Luy�n ��t 200...\n<bclr>")
		end
	else
		Talk(1,"","<color=red>H�y �� Tr�ng 10 � Tr�ng R�i Ti�p T�c C�i T� H�i Sinh")
	end
end

function TienHanhCaiLao_5()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
local nSilverCounttank = CalcEquiproomItemCount(6,1,4806,1)
local n_solan = GetTask(5969);
	if n_solan <4 then
	Say("Ng��i ch�a c�i l�o 4 m� ��i c�i l�o 5 � ???") 
	return 0;
	end
local TASK_HUYETCHIEN = GetTask(3002);
	--if TASK_HUYETCHIEN < soxuton2 then
	--Say("Ng��i C�n T�m �� "..soxuton2.." �i�m huy�t chi�n m�i c� th� c�i l�o 5 ???") 
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
                      Msg2SubWorld("Qu�n l�<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� C�i L�o Ho�n ��ng L�n Th�:<bclr=red> "..GetTask(5969).." Thanh Cong  ")	
		else
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: "..soxuton.."  knb..\n "..soxuton1.."  thien tinh ngoc\n"..soxuton2.."  diem huyet chien..\nC�i L�o 4+ ��ng C�p Tu Luy�n ��t 200...\n<bclr>")
		end
end

function TienHanhCaiLao_6()
local nSilverCount = CalcEquiproomItemCount(6, 1, 30189, 1)
local n_solan = GetTask(5969);
	if n_solan <5 then
	Say("Ng��i ch�a c�i l�o 5 m� ��i c�i l�o 6 � ???") 
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
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: "..soxuton.."  Bach Khoa Toan Thu Ban Hoan Chinh..\nC�i L�o 5+ ��ng C�p Tu Luy�n ��t 200...\n<bclr>")
		end
end

function TienHanhCaiLao_7()
local nSilverCount = CalcEquiproomItemCount(6, 1, 30189, 1)
local nSilverCounttank = CalcEquiproomItemCount(6, 1, 30187, 1)
local nSilverCountdaikimbai = CalcEquiproomItemCount(4, 1506, 1, 1)
local n_solan = GetTask(5969);
	if n_solan <6 then
	Say("Ng��i ch�a c�i l�o 6 m� ��i c�i l�o 7 � ???") 
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
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: "..soxuton.."  Bach Khoa Toan Thu Ban Hoan Chinh.. \n"..soxuton1.."  Truy�n Nh�n-T�n V�t ..\n"..soxuton2.."  dai kim bai ..\nC�i L�o 5+ ��ng C�p Tu Luy�n ��t 200...\n<bclr>")
		end
end

function TienHanhCaiLao_8()
local nSilverCount = CalcEquiproomItemCount(6, 1, 30189, 1)
local nSilverCounttank = CalcEquiproomItemCount(6, 1, 30187, 1)
local nSilvertinvat = CalcEquiproomItemCount(6, 1, 30291, 1)
local nSilverCountdaikimbai = CalcEquiproomItemCount(4, 1506, 1, 1)
local n_solan = GetTask(5969);
	if n_solan <7 then
	Say("Ng��i ch�a c�i l�o 7 m� ��i c�i l�o 8 � ???") 
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
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: "..soxuton.."  Bach Khoa Toan Thu Ban Hoan Chinh.. \n"..soxuton1.."  Truy�n Nh�n-T�n V�t ..\n"..soxuton2.."  dai kim bai ..\n"..soxuton3.."  L�nh B�i C�i L�o ..\nC�i L�o 7+ ��ng C�p Tu Luy�n ��t 200...\n<bclr>")
		end
end
----------------------------------------------------------------------------------------------
function TienHanhCaiLao3_ddkt()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
local nSilverCounttank = CalcEquiproomItemCount(6, 1, 4873, 1)
local n_solan = GetTask(5969);
if n_solan <2 then
Say("Ng��i ch�a c�i l�o 2 m� ��i c�i l�o 3 � ???") 
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
 -- Msg2SubWorld("Qu�n l�<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� C�i L�o Ho�n ��ng L�n Th�:<bclr=red> "..GetTask(5969).." Thanh Cong  ")
		else
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: "..soxuton.."  KNB...\n: "..soxuton1.."  Dai Tinh Ngoc...\nC�i L�o 2+ ��ng C�p Tu Luy�n ��t 200...\n<bclr>")
		end
end

function TienHanhCaiLao3_xstk()
local nSilverCount = CalcEquiproomItemCount(4, 1496, 1, 1)
local nSilverCounttank = CalcEquiproomItemCount(6, 1, 4873, 1)
local n_solan = GetTask(5969);
if n_solan <2 then
Say("Ng��i ch�a c�i l�o 2 m� ��i c�i l�o 3 � ???") 
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
                              -- Msg2SubWorld("Qu�n l�<color=yellow>Ch�c M�ng ��i Cao Th� <color> "..GetName().." <color=violet> �� C�i L�o Ho�n ��ng L�n Th�:<bclr=red> "..GetTask(5969).." Thanh Cong  ")

		else
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: "..soxuton.."  KNB...\n: "..soxuton1.."  Dai Tinh Ngoc...\nC�i L�o 2+ ��ng C�p Tu Luy�n ��t 200...\n<bclr>")
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
			Talk(1, "", "<bclr=violet>Xin Ch�o "..myplayersex().."<bclr=red> Mu�n Tu Luy�n Ngh�ch Thi�n C�i M�nh\nY�u C�u: 60 Xu...\n��ng C�p Tu Luy�n ��t 200...\n<bclr>")
		end
	else
		Talk(1,"","<color=red>H�y �� Tr�ng 40 � Tr�ng R�i Ti�p T�c C�i T� H�i Sinh")
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