IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
 Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

Include("\\script\\lib\\awardtemplet.lua")

function main(nItemIdx)  --task 
dofile("script/global/quanlygame/item/haoquanglenh.lua")
--danhhieunhansinh()
		Msg2Player("L�u � n�u ��t c�p 100 �� c� ���c 10tr EXP tr��c ti�n ��i hi�p c�n �n th�m 1 qu� huy ho�ng m�i c� th� nh�n ���c",0);

	local nDate = tonumber(GetLocalDate("%d"))		
	if GetTask(3330) ~= nDate then -- neu khac se
SetTask(3331, 0); --
SetTask(3332, 0); --
SetTask(3333, 0); --
SetTask(3334, 0);
SetTask(3335, 1); 
end
	if GetLevel() < 90 then
			Say("��ng c�p d��i 90 kh�ng th� s� d�ng v�t ph�m n�y",0);
		return 1;
	end
	if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
local szTitle =  "L�nh b�i h� tr� r�t h�u �t cho member"

local tbOpt = 
{
{"Nh�n H� Tr� M�i Ng�y V� Nhi�m V� H�m Nay", hotrohangngay},
{"Nh�n Ph�n Th��ng Ho�n Th�nh Chu�i Nhi�m V� ",phanthuongnhiemvu},
{"Tho�t"},
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

tbAwardTemplet:GiveAwardByList({{szName="Ti�n th� l�",tbProp={6,1,71,1,0,0,0},nCount=3,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh S�n H� X� T�c",tbProp={6,1,440,1,0,0,0},nCount=3,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName="Qu� hoa t�u",tbProp={6,1,125,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Thi�n S�n",tbProp={6,1,72,1,0,0,0},nCount=2,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
PlayerFunLib:AddSkillState(1555,1,3,1555200,1)
	local szNews = format("Xin Ch�c M�ng ��i hi�p <color=green>"..GetName().."<color=white> nh�n ph�n th��ng h� tr� h�ng ng�y t� V� L�m L�nh.");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	Say("B�t ��u ti�n h�nh chu�i nhi�m v� l�m 20 nhi�m v� d� t�u + t�ng kim 5000 �i�m + �n ph� qu� c�m h�p 6 c�i + �n c� 20 con.Nh� ng��i h�y mau l�m �i",0);
danhhieunhansinh()
else
		Say("M�i ng�y ch� h� tr� 1 l�n ng�y mai h� nh�n nh�.", 0);
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

"Ta �� ho�n th�nh nhi�m v�/dahoanthanh",

	"Ch� xem th�i/no"
	}
Say("<color=white>Th�ng Tin H�m Nay:\nD� T�u " ..GetTask(3331) .. "/20\n�i�m T�ng Kim " ..GetTask(3332) .. "/5000\n�n C�m H�p " ..GetTask(3333) .. "/6\n�n C� " ..GetTask(3334) .. "/20\nL�u � n�u ��t c�p 100 �� c� ���c 10tr EXP tr��c ti�n ��i hi�p c�n �n th�m 1 qu� huy ho�ng m�i c� th� nh�n ���c", getn(tab_Content), tab_Content);       
end;

function dahoanthanh()
if GetTask(3331) < 20 or GetTask(3332) < 5000 or GetTask(3333) < 6 or GetTask(3334) < 20 then
			Say("th�t kh�o ��a ��i hi�p v�n ch�a ho�n th�nh chu�i nhi�m v� ��t ra",0);
		return 
end
	--if GetLevel() >= 100  then

	if GetLevel() >= 100 and GetTask(3336) > 0   then
StackExp(10000000);
SetTask(3336,0)
		Say("B�n nh�n ���c th�m 10tr EXP khi th�a m�n �i�u khi�n tr�n c�p 100 v� s� d�ng 1 h�t huy ho�ng",0);

	end
StackExp(10000000);
--tbAwardTemplet:GiveAwardByList({{szName = "B� Ng� Ma Qu�i",tbProp={6,1,4549,1,1,0},nCount=20,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="Qu� hoa t�u",tbProp={6,1,125,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="t�i danh v�ng",tbProp={6,1,4338,1,0,0,0},nCount=3,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="Thi�n S�n",tbProp={6,1,72,1,0,0,0},nCount=5,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);

	local szNews = format("Xin Ch�c M�ng ��i hi�p <color=green>"..GetName().."<color=white> ho�n th�nh chu�i nhi�m v� V� L�m L�nh nh�n ���c ph�n th��ng.");
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