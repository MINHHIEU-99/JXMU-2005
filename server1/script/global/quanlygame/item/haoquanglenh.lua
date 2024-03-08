IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
 Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

Include("\\script\\lib\\awardtemplet.lua")

function main(nItemIdx)  --task 
dofile("script/global/quanlygame/item/haoquanglenh.lua")
--danhhieunhansinh()
		Msg2Player("L­u ý nÕu ®¹t cÊp 100 ®Ó cã ®­îc 10tr EXP tr­íc tiªn ®¹i hiÖp cÇn ¨n thªm 1 qu¶ huy hoµng míi cã thÓ nhËn ®­îc",0);

	local nDate = tonumber(GetLocalDate("%d"))		
	if GetTask(3330) ~= nDate then -- neu khac se
SetTask(3331, 0); --
SetTask(3332, 0); --
SetTask(3333, 0); --
SetTask(3334, 0);
SetTask(3335, 1); 
end
	if GetLevel() < 90 then
			Say("§¼ng cÊp d­íi 90 kh«ng thÎ sö dông vËt phÈm nµy",0);
		return 1;
	end
	if CalcFreeItemCellCount() < 10 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y nhËn.",0);
		return 1;
	end
local szTitle =  "LÖnh bµi hç trî rÊt h÷u Ýt cho member"

local tbOpt = 
{
{"NhËn Hç Trî Mçi Ngµy Vµ NhiÖm Vô H«m Nay", hotrohangngay},
{"NhËn PhÇn Th­ëng Hoµn Thµnh Chuçi NhiÖm Vô ",phanthuongnhiemvu},
{"Tho¸t"},
}
CreateNewSayEx(szTitle, tbOpt)
return 1	
end
	
function hotrohangngay()	
	local nDate = tonumber(GetLocalDate("%d"))		
	if GetTask(3330) ~= nDate then -- neu khac se
--SetTask(3331, 0); --
--SetTask(3332, 0); --
--SetTask(3333, 0); --
--SetTask(3334, 0);
--SetTask(3335, 1); 
	SetTask(3330, nDate); --

tbAwardTemplet:GiveAwardByList({{szName="Tiªn thæ lé",tbProp={6,1,71,1,0,0,0},nCount=3,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M·nh S¬n Hµ X· T¾c",tbProp={6,1,440,1,0,0,0},nCount=3,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="QuÕ hoa töu",tbProp={6,1,125,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thiªn S¬n",tbProp={6,1,72,1,0,0,0},nCount=2,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
PlayerFunLib:AddSkillState(1555,1,3,1555200,1)
	local szNews = format("Xin Chóc Mõng ®¹i hiÖp <color=green>"..GetName().."<color=white> nhËn phÇn th­ëng hç trî h»ng ngµy tõ Vâ L©m LÖnh.");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	Say("B¾t ®Çu tiÕn hµnh chuæi nhiÖm vô lµm 20 nhiÖm vô d· tÈu + tèng kim 5000 ®iÓm + ¨n phó quý cÈm h¹p 6 c¸i + ¨n c¸ 20 con.Nhµ ng­¬i h·y mau lµm ®i",0);
danhhieunhansinh()
else
		Say("Mçi ngµy chØ hç trî 1 lÇn ngµy mai h· nhËn nhÐ.", 0);
end
end

function danhhieunhansinh()
n_title = 368 --- ID Danh hieu
local nServerTime = GetCurServerTime()+ 82000;
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
SetTask(1122, n_title);
	PlayerFunLib:AddSkillState(1555,1,3,1555200*7,1)
end


function phanthuongnhiemvu()
local tab_Content = {

"Ta ®· hoµn thµnh nhiÖm vô/dahoanthanh",

	"ChØ xem th«i/no"
	}
Say("<color=white>Th«ng Tin H«m Nay:\nD· TÈu " ..GetTask(3331) .. "/20\n§iÓm Tèng Kim " ..GetTask(3332) .. "/5000\n¡n CÈm H¹p " ..GetTask(3333) .. "/6\n¡n C¸ " ..GetTask(3334) .. "/20\nL­u ý nÕu ®¹t cÊp 100 ®Ó cã ®­îc 10tr EXP tr­íc tiªn ®¹i hiÖp cÇn ¨n thªm 1 qu¶ huy hoµng míi cã thÓ nhËn ®­îc", getn(tab_Content), tab_Content);       
end;

function dahoanthanh()
if GetTask(3331) < 20 or GetTask(3332) < 5000 or GetTask(3333) < 6 or GetTask(3334) < 20 then
			Say("thËt khÐo ®ïa ®¹i hiÖp vÉn ch­a hoµn thµnh chuçi nhiÖm vô ®Æt ra",0);
		return 
end
	--if GetLevel() >= 100  then

	if GetLevel() >= 100 and GetTask(3336) > 0   then
StackExp(10000000);
SetTask(3336,0)
		Say("B¹n nhËn ®­îc thªm 10tr EXP khi tháa m·n ®iÒu khiÖn trªn cÊp 100 vµ sö dông 1 h¹t huy hoµng",0);

	end
StackExp(10000000);
--tbAwardTemplet:GiveAwardByList({{szName = "BÝ Ng« Ma Qu¸i",tbProp={6,1,4549,1,1,0},nCount=20,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="QuÕ hoa töu",tbProp={6,1,125,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="tói danh väng",tbProp={6,1,4338,1,0,0,0},nCount=3,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Thiªn S¬n",tbProp={6,1,72,1,0,0,0},nCount=5,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);

	local szNews = format("Xin Chóc Mõng ®¹i hiÖp <color=green>"..GetName().."<color=white> hoµn thµnh chuçi nhiÖm vô Vâ L©m LÖnh nhËn ®­îc phÇn th­ëng.");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
SetTask(3331, 0); --
SetTask(3332, 0); --
SetTask(3333, 0); --
SetTask(3334, 0); --
--DynamicExecuteByPlayer(PlayerIndex, "\\script\\task\\random\\treasure_head.lua", "CreateTreasureMap")
	end



function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end