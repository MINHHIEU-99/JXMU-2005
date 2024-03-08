IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
 Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\g7vn\\g7libgm.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main(nItemIdx)
	if GetLevel() >= 125 then
			Say("§¼ng cÊp d­íi 125 míi cã thÎ sö dông vËt phÈm nµy",0);
		return 1;
	end
	if CalcFreeItemCellCount() < 55 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 55 « trèng råi h·y nhËn.",0);
		return 1;
	end
	local capsenhan = GetLevel()
	ST_LevelUp(125-capsenhan)
	SetTask(3110,100)
	tbAwardTemplet:GiveAwardByList({{szName="Kim phong lÔ bao",tbProp={6,1,4369,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="ThÇn Thµnh Phï",tbProp={6,1,1266,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="Thæ §Þa Phï",tbProp={6,1,438,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="§¹i Thµnh 9x",tbProp={6,1,2424,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="S¬n Hµ X· T¾c",tbProp={6,1,2514,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="NhÊt Kû 7 Ngµy",tbProp={6,1,4471,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="Phi v©n",tbProp={0,10,8,10,0},nCount=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
    PlayerFunLib:AddSkillState(1513,1,3,46656000,1)
	logplayer("dulieu/mothetanthu.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thÎ t©n thñ thµnh c«ng ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	local szNews = format("Xin Chóc Mõng ®¹i hiÖp <color=green>"..GetName().."<color=white> nhËn phÇn th­ëng tõ  thÎ t©n thñ vµ nhËn thµnh c«ng nhiÖm vô luyÖn ®Õn ®¼ng cÊp 130.");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	PhanThuong()
	end

	
	

function PhanThuong()			
local szTitle = "X·y chän 1 trong 2 trang bÞ nÕu kh«ng chän sÏ bÞ mÊt.";
local tbOpt = 
{
{"Set An Bang 7 Ngµy",SetAb},
{"Set §Þnh Quèc 7 Ngµy",SetdQ},
}
CreateNewSayEx(szTitle, tbOpt)
end

function SetAb()
tbAwardTemplet:GiveAwardByList({{szName="AB",tbProp={0,164},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="AB",tbProp={0,165},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="AB",tbProp={0,166},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="AB",tbProp={0,167},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
Msg2SubWorld("<color=green>§¹i hiÖp <color=pink>"..GetName().."<color=green> chän set An Bang 7 ngµy khi më thÎ t©n thñ b¸n trªn kú tr©n c¸c ")
logplayer("dulieu/nhanABDQ.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thÎ t©n thñ nhËn sÐt AB ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function SetdQ()
tbAwardTemplet:GiveAwardByList({{szName="§Q",tbProp={0,159},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§Q",tbProp={0,160},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§Q",tbProp={0,161},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§Q",tbProp={0,162},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§Q",tbProp={0,163},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
logplayer("dulieu/nhanABDQ.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] më thÎ t©n thñ nhËn sÐt §Q ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end