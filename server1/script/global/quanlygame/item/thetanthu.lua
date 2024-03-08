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
			Say("��ng c�p d��i 125 m�i c� th� s� d�ng v�t ph�m n�y",0);
		return 1;
	end
	if CalcFreeItemCellCount() < 55 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 55 � tr�ng r�i h�y nh�n.",0);
		return 1;
	end
	local capsenhan = GetLevel()
	ST_LevelUp(125-capsenhan)
	SetTask(3110,100)
	tbAwardTemplet:GiveAwardByList({{szName="Kim phong l� bao",tbProp={6,1,4369,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="Th�n Th�nh Ph�",tbProp={6,1,1266,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="Th� ��a Ph�",tbProp={6,1,438,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="��i Th�nh 9x",tbProp={6,1,2424,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="S�n H� X� T�c",tbProp={6,1,2514,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="Nh�t K� 7 Ng�y",tbProp={6,1,4471,1,0,0,0},nCount=1,nExpiredTime=43200 ,nBindState=-2},}, "test", 1);
	tbAwardTemplet:GiveAwardByList({{szName="Phi v�n",tbProp={0,10,8,10,0},nCount=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
    PlayerFunLib:AddSkillState(1513,1,3,46656000,1)
	logplayer("dulieu/mothetanthu.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th� t�n th� th�nh c�ng ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	local szNews = format("Xin Ch�c M�ng ��i hi�p <color=green>"..GetName().."<color=white> nh�n ph�n th��ng t�  th� t�n th� v� nh�n th�nh c�ng nhi�m v� luy�n ��n ��ng c�p 130.");
	AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	PhanThuong()
	end

	
	

function PhanThuong()			
local szTitle = "X�y ch�n 1 trong 2 trang b� n�u kh�ng ch�n s� b� m�t.";
local tbOpt = 
{
{"Set An Bang 7 Ng�y",SetAb},
{"Set ��nh Qu�c 7 Ng�y",SetdQ},
}
CreateNewSayEx(szTitle, tbOpt)
end

function SetAb()
tbAwardTemplet:GiveAwardByList({{szName="AB",tbProp={0,164},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="AB",tbProp={0,165},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="AB",tbProp={0,166},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="AB",tbProp={0,167},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
Msg2SubWorld("<color=green>��i hi�p <color=pink>"..GetName().."<color=green> ch�n set An Bang 7 ng�y khi m� th� t�n th� b�n tr�n k� tr�n c�c ")
logplayer("dulieu/nhanABDQ.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th� t�n th� nh�n s�t AB ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function SetdQ()
tbAwardTemplet:GiveAwardByList({{szName="�Q",tbProp={0,159},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�Q",tbProp={0,160},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�Q",tbProp={0,161},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�Q",tbProp={0,162},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="�Q",tbProp={0,163},nCount=1,nQuality=1,nExpiredTime=10080 ,nBindState=-2},}, "test", 1);
logplayer("dulieu/nhanABDQ.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] m� th� t�n th� nh�n s�t �Q ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end