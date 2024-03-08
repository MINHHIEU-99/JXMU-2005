--------------------------------------------------------------------------------------------------------
-- File Name		:	thorenhoangkim.lua
--	Author			:	Alone_ (Nguyen Khai)
--	Create Time	:	27/10/2017 - 20:20
--	Description		:	
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
Include("\\script\\lib\\awardtemplet.lua")

NANGDONG = 5110


function main()
dofile("script/global/quanlygame/shopnangdong.lua")
local tab_Content = {
"Cµn Kh«n 7 Ngµy(2000)/cankhon7",
"B«n Tiªu 7 Ngµy(3000)/bontieu7",
"TÝn VËt M«n Ph¸i(7000)/tinvat",
"Thiªn S¬n TuyÕt Liªn(10000)/thienson",
"Cµn Kh«n 15 Ngµy(4000)/cankhon15",
"SÐt AB 15 Ngµy(5000)/anbang15",
	"Trang kÕ/trang2vatpham"
	}
Say("<color=cyan>Shop n¨ng ®éng:<color=yellow>\nChµo mõng b¹n ®Õn shop n¨ng ®éng VlTruyenKy.Net.\n<color=green>HiÖn t¹i b¹n nh©n vËt ®ang cã: <color=pink>" ..GetTask(NANGDONG) .. " ®iÔm n¨ng ®éng\n<color=gold>§¹i hiÖp cã thÓ dïng ®iÓm n¨ng ®éng ®Ó ®æi c¸c vËt phÈm sau ®©y.", getn(tab_Content), tab_Content);       
end;

function trang2vatpham()
local tab_Content = {
				  	 "Set Hång ¶nh 7 ngµy(5000)/honganh7",
		  		  "LÖnh Bµi Kim Quang(3000)/kimquang",
				  	 "Set Hång ¶nh 15 ngµy(9000)/honganh15",
				  	 "Set An Bang VÜnh ViÔn(20000)/anbangvv",
				  "B«n Tiªu VÜnh ViÔn(30000)/bontieu",
				  	"Set Hång ¶nh VÜnh ViÔn(20000)/honganhvv",
		"KÕt thóc ®èi tho¹i./no",
	}
Say("<color=cyan>Shop n¨ng ®éng:<color=yellow>\nChµo mõng b¹n ®Õn shop n¨ng ®éng VlTruyenKy.Net.\n<color=green>HiÖn t¹i b¹n nh©n vËt ®ang cã: <color=pink>" ..GetTask(NANGDONG) .. " ®iÔm n¨ng ®éng\n<color=gold>§¹i hiÖp cã thÓ dïng ®iÓm n¨ng ®éng ®Ó ®æi c¸c vËt phÈm sau ®©y.", getn(tab_Content), tab_Content);       
end;


function cankhon7()
if GetTask(5110) < 2000 then
Talk(1, "no", "CÇn cã 2000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-2000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={6,1,4473,1,1},nCount=1,nExpiredTime=10080},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy Cµn Kh«n 7 Ngµy.")
end

function bontieu7()
if GetTask(5110) < 3000 then
Talk(1, "no", "CÇn cã 3000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-3000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,10,6,10,0},nCount=1,nExpiredTime=10080},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy B«n Tiªu 7 Ngµy.")
end

function tinvat()
if GetTask(5110) < 7000 then
Talk(1, "no", "CÇn cã 4500 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-7000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={6,1,1670,1,1},nCount=1},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy TÝn VËt M«n Ph¸i.")
end


function thienson()
if GetTask(5110) < 10000 then
Talk(1, "no", "CÇn cã 10000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-10000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={6,1,1431,1,1},nCount=1,nExpiredTime=43200},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy Thiªn S¬n TuyÕt Liªn.")
end


function anbang15()
if GetTask(5110) < 5000 then
Talk(1, "no", "CÇn cã 5000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-5000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,164},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,165},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,166},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,167},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy Set AB 15 ngµy.")
end

function cankhon15()
if GetTask(5110) < 4000 then
Talk(1, "no", "CÇn cã 4000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-4000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={6,1,4497,1,1},nCount=1,nExpiredTime=21600},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy Cµn Kh«n 15 Ngµy.")
end


function honganh7()
if GetTask(5110) < 5000 then
Talk(1, "no", "CÇn cã 5000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-5000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,204},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,205},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,206},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,207},nCount=1,nQuality=1,nExpiredTime=10080},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy Set Hång ¶nh 7 ngµy.")
end

function kimquang()
if GetTask(5110) < 3000 then
Talk(1, "no", "CÇn cã 3000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-3000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={6,1,4479,1,1},nCount=1,nExpiredTime=43200},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy LÖnh Bµi Kim Quang.")
end

function honganh15()
if GetTask(5110) < 9000 then
Talk(1, "no", "CÇn cã 9000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-9000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,204},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,205},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,206},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,207},nCount=1,nQuality=1,nExpiredTime=21600},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy Set Hång ¶nh 15 ngµy.")
end

function honganhvv()
if GetTask(5110) < 20000 then
Talk(1, "no", "CÇn cã 20000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-20000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,204},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,205},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,206},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,207},nCount=1,nQuality=1},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy Set Hång ¶nh vÜnh viÔn.")
end

function anbangvv()
if GetTask(5110) < 20000 then
Talk(1, "no", "CÇn cã 20000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-20000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,164},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,165},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,166},nCount=1,nQuality=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,167},nCount=1,nQuality=1},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy Set AB VÜnh ViÔn.")
end

function bontieuvv()
if GetTask(5110) < 30000 then
Talk(1, "no", "CÇn cã 30000 ®iÓm hiÖn t¹i ®¹i hiÖp ch­a ®ñ ®iÓm h·y cè g¾ng luyÖn tËp thªm. ")
return
end
SetTask(5110,GetTask(5110)-30000)
tbAwardTemplet:GiveAwardByList({{szName="§æi thµnh c«ng",tbProp={0,10,6,10,0},nCount=1,},}, "test", 1);
Msg2SubWorld("®¹i hiÖp <color=pink>"..GetName().."<color=green> ®æi thµnh c«ng ®iÓm n¨ng ®éng lÊy B«n Tiªu VÜnh ViÔn.")
end





