------------------------------------ TONG THE NPC HO TRO TAN THU ----------------
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua")
Include("\\script\\global\\lottery_gold.lua")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\changefeature\\feature_man.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
IncludeLib("LEAGUE")


------------------------------------ TONG THE NPC HO TRO TAN THU ----------------
	
function main()			
dofile("script/global/quanlygame/hotrotonghop.lua")
local szTitle = "hç trî tæng hîp c¸c chøc n¨ng h©n hoan chµo ®ãn c¸c vÞ anh hïng b¹n h÷u ®Õn víi server.";
local tbOpt = 
{
{"NhËn PhÇn Th­ëng NhiÖm Vô ThÎ T©n Thñ",NhanPhanThuongTT},
{"Tho¸t",OnCancel},
}
CreateNewSayEx(szTitle, tbOpt)
end

function NhanPhanThuongTT()
if GetTask(3110) ~=100 then
			Say("Nhµ ng­¬i ch­a nhËn nhiÖm vô luyÖn tõ cÊp 125 lªn 130 t¹i thÎ t©n thñ h·y mau mau mua t¹i Kú Tr©n C¸c sö dông cè g¾ng luyÖn tíi 130 råi h· t×m ta nhËn th­ëng",0);
		return
	end
	if GetLevel() < 130 then
			Say("ph¶i lµ cÊp tren 130 míi cã thÓ nhËn",0);
		return
	end
	if CalcFreeItemCellCount() < 50 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 50 « trèng råi h·y nhËn.",0);
		return
	end
if GetTask(3110) ==100 and GetLevel() >= 130  then
tbAwardTemplet:GiveAwardByList({{szName="NhÊt Kû 15 Ngµy",tbProp={6,1,4448,1,0,0,0},nCount=1,nExpiredTime=21600 },}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Phi van",tbProp={0,10,8,10,0},nCount=1,nExpiredTime=21600,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="mat na",tbProp={0,11,561,1,0},nCount=1,nExpiredTime=21600,},}, "test", 1);

tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,164},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,165},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,166},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="An Bang",tbProp={0,167},nCount=1,nQuality = 1,nExpiredTime=43200,},}, "test", 1);
SetTask(3110,0)
logplayer("dulieu/hoanthanhnhiemvutanthu.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] hoan thanh nhiem vu tan thu 120 ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	local szNews = format("Xin Chóc Mõng ®¹i hiÖp <color=green>"..GetName().."<color=white> Hoµn thµnh nhiÖm vô t©n thñ 120 nhËn ®­îc phÇn th­ëng 1 sÐt An Bang vµ nhÊt kû cµn kh«n phï.");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	end
	end