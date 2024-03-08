IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
HOAPHUONGDO = 4994
tbAward = {
	[1] = {
		{nExp_tl = 1e7},
	},
	[2] = {
		{szName="hanh hiep lenh",tbProp={6,1,2566,1,0,0},nCount=1,nRate=2.5},
		{szName="hanh hiep lenh",tbProp={6,1,2566,1,0,0},nCount=1,nRate=2.5},
		{szName="Håi Thiªn T¸i T¹o LÔ Bao",tbProp={6,1,4832,1,0,0},nCount=1,nExpiredTime=10080,nRate=2.5},
		{szName="Håi Thiªn T¸i T¹o LÔ Bao",tbProp={6,1,2527,1,0,0},nCount=1,nExpiredTime=10080,nRate=2.5},
	},
}
--------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------------------
function main()
if (CalcFreeItemCellCount() < 10) then
		Talk(1,"","H·y §Ó Trèng 10 « trèng råi h·y sö dông")
		return
	end
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=20  then
		Msg2Player("ChØ sö dông ë Giang T©n Th«n nhÐ b¹n.");
		return 1
	end
local nDate = tonumber(GetLocalDate("%Y%m%d"));
local nTime = tonumber(GetLocalDate("%H%M"));
if GetLevel() < 150 and ST_IsTransLife() ~= 1 then
	Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 Trïng Sinh Kh«ng Giíi H¹n §¼ng CÊp")
return end
	if (nDate >= 20180512 and nDate <= 20220830 and nTime >= 0000 and nTime <= 2359) then
		if GetTask(HOAPHUONGDO) < 1500 then
			if CalcFreeItemCellCount() >= 10 then
				SetTask(HOAPHUONGDO,GetTask(HOAPHUONGDO)+1) tbAwardTemplet:GiveAwardByList(tbAward,"PhÇn Th­ëng B¸nh Kem")
			else
				Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y sö dông",0) return 1
			end
		else
			Say(""..myplayersex().." §· Sö Dông Tèi §a 1500 B¸nh Kem­\nTrong Suèt Thêi Gian Ho¹t §éng") return 1
		end
	else
		Talk(1,"","VËt PhÈm §· Qu¸ H¹n Sö Dông SÏ Tù §éng MÊt §i")
	end
end
