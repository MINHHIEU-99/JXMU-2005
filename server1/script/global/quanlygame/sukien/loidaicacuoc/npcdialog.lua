 Include("\\script\\global\\quanlygame\\sukien\\loidaicacuoc\\head.lua");
 Include("\\script\\dailogsys\\dailogsay.lua");
 IncludeLib("ITEM") 
 IncludeLib("LEAGUE")


 
 function main() 
dofile("script/global/quanlygame/sukien/loidaicacuoc/npcdialog.lua")
 BattleChallenge:DialogMain();
 end;
 
 function BattleChallenge:DialogMain() 
 local nOldWorld = SubWorld;
 local nWorld,nPosX,nPosY = GetWorldPos();
 SetTask(TASK_SIGNUP_WORLD,nWorld);
 SetTask(TASK_SIGNUP_POSX,nPosX);
 SetTask(TASK_SIGNUP_POSY,nPosY);
 local nState = MISSION_V_STATE;
 local nVS = MISSION_V_VS;
 local nMapIndex = MAP_WORLD;
 local szName = MISSION_S_BATTLENAME;
 local tbCaptainName = BattleChallenge:GetCaptain();
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 if (nSubWorld == -1) then print("[Team] Ban do khu vuc thi dau khong ton tai!");
 return end;
 SubWorld = nSubWorld;
 local nStateMission = GetMissionV(nState);
 local nVSMission = GetMissionV(nVS);
 local szTitle;
 if (nStateMission == 0) then 
 szTitle = format("<color=orange>%s<color=green> l� n�i di�n ra c�c cu�c thi ��u solo ��m m�u tr�n giang h�,bao nhiu anh h�ng h�o ki�t �� ph�i b� m�ng t�i ��y c�ng v� danh ti�ng v� ti�n b�c,xin h�y c�n nh�c k� k�o m�t �i kh�ng v�!",szName); 
 local tbOption = {szTitle}; 
 tinsert(tbOption, "Ta mu�n c� c��c solo v�i ��i th�/#BattleChallenge:OnRegister()"); 
 tinsert(tbOption, "T�m hi�u quy t�c thi ��u!/quytaccacuoc"); 
 tinsert(tbOption, "�� l�c kh�c ta s� ��n./#BattleChallenge:Cancel()"); 
 CreateTaskSay(tbOption);
 elseif (nStateMission == 1) then 
 szTitle = format("<color=orange>%s<color> Hi�n t�i khu v�c n�y �ang trong th�i gian chu�n b� thi ��u gi�a chi�n ��i <color=yellow>%s<color> vs <color=yellow>%s<color> tranh t�i [%d VS %d].<enter>Ng��i c� c�n ta gi�p g� kh�ng?",szName,tbCaptainName[1],tbCaptainName[2],nVSMission,nVSMission); 
 local tbOption = {szTitle};
 tinsert(tbOption, "Ta l� tuy�n th� trong tr�n thi ��u n�y, h�y ��a ta ��n khu v�c thi ��u!/#BattleChallenge:OnEnterMatch()"); 
 tinsert(tbOption, "Ta mu�n v�o xem tr�n thi ��u n�y!/#BattleChallenge:OnLook()"); 
 --tinsert(tbOption, "Ta l� con b�c, mu�n ��t c��c cho tr�n ��u n�y/#BattleChallenge:GameBet()"); 
 tinsert(tbOption, "�� l�c kh�c �i, b�y gi� ta kh�ng h�ng th�./BattleChallenge_OnCancel"); 
 CreateTaskSay(tbOption);
 elseif (nStateMission == 2) then 
 szTitle = format("<color=orange>%s<color> l� n�i di�n ra nh�ng cu�c t� th�, t� v� trong gi�i giang h� v� l�m n�y. Hi�n t�i ch�a c� ai ��ng k� tham gia v�o thi ��u, c�c h� c� mu�n b�o danh kh�ng?",szName); 
 local tbOption = {szTitle};
 if (not self.TimerWait[GetName()]) then tinsert(tbOption, "Ta mu�n v�o xem tr�n thi ��u n�y!/#BattleChallenge:OnLook()");
 end;
 tinsert(tbOption, "�� l�c kh�c �i, b�y gi� ta kh�ng h�ng th�./BattleChallenge_OnCancel");
 CreateTaskSay(tbOption);
 end;
 SubWorld = nOldWorld;
 end;
 
 function quytaccacuoc()
		local tbarytalk ={
			"<dec><npc>Xin ch�o!<color=yellow> "..GetName().."<color><enter><color=green>��i tr��ng ti�n h�nh ra gi� c��c<enter>��i th� ch�p nh�n gi� ti�n c��c solo.<enter>Ai th�ng gom h�t ti�n �� c��c tr� <color=pink>5% <color=green>ph�.<enter>N�u h�t gi� kh�ng ai ch�t s� t�nh theo dame.<color>",
			"�� hi�u r�/Oncane",
		}
		CreateTaskSay(tbarytalk)
		return
end
 
 
 function BattleChallenge:OnRegister() local nMapIndex = MAP_WORLD;
local nCongHuan = CalcEquiproomItemCount(6, 1,4832, 1) ;
		if (nCongHuan > 1) then
				Talk(1,"","<color=white>Cu�c Ch�i C�ng B�ng, Mong Ng��i ���ng Mang T�i M�u Gian L�n!!") 
			return
		end

 local nState = MISSION_V_STATE;
 local nVS = MISSION_V_VS;
 local nOldWorld = SubWorld;
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 SubWorld = nSubWorld;
 local nStateMission = GetMissionV(nState);
 local nVSMission = GetMissionV(nVS);
 if (nStateMission ~= 0) then 
 Say("B�o danh thi ��u th�t b�i! Hi�n t�i �� c� ng��i b�o danh thi ��u r�i, h�y ��i ��n l��t sau nh�!", 0); 
 return 
 end;  
 if (GetTeamSize() ~= 2) then 
 Say("Ph�i l� <color=red>��i tr��ng<color> v� b�t bu�c ph�i �� <color=red>2 ng��i<color> (kh�ng h�n c�ng kh�ng thi�u) th� m�i c� th� b�o danh solo!",0); 
 return 
 end;  
 if (IsCaptain() ~= 1) then 
 Say("Ph�i l� <color=red>��i tr��ng<color> v� b�t bu�c ph�i �� <color=red>2 ng��i<color> (kh�ng h�n c�ng kh�ng thi�u�u) th� m�i c� th� b�o danh solo!",0); 
 return 
 end;  
 local szTitle = "Ng��i mu�n b�o danh thi ��u v�i bao nhi�u ng��i?";
 local tbOption = {szTitle};
 tinsert(tbOption, "��u 1 vs 1/#BattleChallenge:OnCount(1)");
-- tinsert(tbOption, "��u 2 vs 2/#BattleChallenge:OnCount(2)");
-- tinsert(tbOption, "��u 3 vs 3/#BattleChallenge:OnCount(3)");
 --tinsert(tbOption, "��u 4 vs 4/#BattleChallenge:OnCount(4)");
 --tinsert(tbOption, "��u 5 vs 5/#BattleChallenge:OnCount(5)");
-- tinsert(tbOption, "��u 6 vs 6/#BattleChallenge:OnCount(6)");
-- tinsert(tbOption, "��u 7 vs 7/#BattleChallenge:OnCount(7)");
 --tinsert(tbOption, "��u 8 vs 8/#BattleChallenge:OnCount(8)");
 tinsert(tbOption, "R�i kh�i!/#BattleChallenge:Cancel()");
 CreateTaskSay(tbOption);
 SubWorld = nOldWorld;
 end;
 
 function BattleChallenge:OnCount(nCount) local nMoney = CalcEquiproomItemCount(4,1496,1,-1);
 if (nMoney == 0) then 
Say("R�t ti�c! Ng��i kh�ng c� mang theo ti�n tr�n ng��i, l�m sao c� th� c� c��c solo v�i ai ��.",0); 
 return end;
 g_AskClientNumberEx(1,nMoney,"Nh�p s� ti�n c��c:", {self.OnEnterCount,{self,nCount}});
 end;
 function BattleChallenge:OnEnterCount(nCount,nMoney) local nOldWorld = SubWorld;
 local nMapIndex = MAP_WORLD;
 local nState = MISSION_V_STATE;
 local nVS = MISSION_V_VS;
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 if (nSubWorld == -1) then print("[Team] Ban do khu vuc thi dau khong ton tai!");
 return end;
 local nLimitMoney = mod(nMoney,100);
 if (nLimitMoney > 0) then 
 Say("Th�t xin l�i! M�i l�n ��t c��c ch� ���c ��t t� 100, 200, 300, ... knb tr� l�n. Kh�ng cho ph�p ��t c�c s� l�.",0);
 return
 end;
 SubWorld = nSubWorld;
 local nStateMission = GetMissionV(nState);
 local nVSMission = GetMissionV(nVS);
 if (nStateMission ~= 0) then 
Say("B�o danh thi ��u th�t b�i! Hi�n t�i �� c� ng��i b�o danh thi ��u r�i, h�y ��i ��n l��t sau nh�!", 0); 
 return end;
 local nOldPlayer = PlayerIndex;
 local nTimerCur = GetCurServerTime();
 local szCaptainName = GetName();
 self.InvitePlayer[szCaptainName] = {nAccept=0, nDeny=0};
 local tbCaptainName = {};
 for i = 1, 2 do PlayerIndex = GetTeamMember(i) tbCaptainName[i] = GetName();
 PlayerIndex = nOldPlayer;
 end;
 for i = 1, 2 do PlayerIndex = GetTeamMember(i);
 local szPlayerName = GetName();
 self.TimerWait[szPlayerName] = {nTimer=nTimerCur+TIMER_INVITE,szCaptain=szCaptainName};
 if (PlayerIndex ~= nOldPlayer) then self.TimerWait[szPlayerName] = {nTimer=nTimerCur+TIMER_INVITE,szCaptain=szCaptainName};
local szTitle = format("<color=green>Th�ch ��u gi�a chi�n ��i <color=pink>%s<color> vs <color=pink>%s<color>",tbCaptainName[1],tbCaptainName[2]); 
szTitle = szTitle.."<enter>"..format("+ H�nh th�c: <color=yellow>%d<color> vs <color=yellow>%d<color>",nCount,nCount); 
szTitle = szTitle.."<enter>"..format("+ Ti�n c��c: <color=yellow>%d<color> KNB",nMoney); 
szTitle = szTitle.."<enter>".."B�n c� d�m ch�p nh�n l�i th�ch ��u c�a ��i th� kh�ng?.Xin h�y tr� l�i l�i ��i th� trong th�i gian 30 gi�y."; 
 local tbOption = {szTitle};
local tbOption = {szTitle}; 
tinsert(tbOption, format("��m n� lu�n/#BattleChallenge:AcceptChallenge(%d,%d)",nCount,nMoney)); 
tinsert(tbOption, "Kh�ng d�m./#BattleChallenge:DenyBattle()"); 
 CreateTaskSay(tbOption);
 SetTimer(TIMER_FRAME2TIME,MISSION_WAITTIMER);
 else 
Msg2Player("<color=white>��i ph��ng �ang suy ngh� c� n�n nh�n l�i th�ch ��u c�a ��i hi�p hay kh�ng.Xin h�y ki�n nh�n ch� ��i trong gi�y l�t"); 
 end;
 end PlayerIndex = nOldPlayer;
 SubWorld = nOldWorld;
 end;
 function BattleChallenge:AcceptChallenge(nCount,nMoney) StopTimer(MISSION_BETTIMER);
 local nOldPlayer = PlayerIndex;
 local nOldWorld = SubWorld;
 local nMapIndex = MAP_WORLD;
 local nState = MISSION_V_STATE;
 local nVS = MISSION_V_VS;
 local szName = MISSION_S_BATTLENAME;
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 local tbKey,szMsg;
 if (CalcEquiproomItemCount(4,1496,1,-1) < nMoney) then BattleChallenge:DenyBattle();
 Msg2Team(format("Ng��i ch�i %s kh�ng �� %d knb, h�y b� ��t c��c!",GetName(),nMoney));
 return end;
 SubWorld = nSubWorld;
 if (self:AcceptBattle() == 1) then local nStateMission = GetMissionV(nState);
 if (nStateMission ~= 0) then 
 Say("B�o danh thi ��u th�t b�i! Hi�n t�i �� c� ng��i b�o danh thi ��u r�i, h�y ��i ��n l��t sau nh�!", 0);
 return end;
 OpenMission(MISSION_ID);
 if (nCount > 1) then tbKey = self:GetKey();
 if (tbKey[1]) and (tbKey[2]) then SetMissionV(MISSION_V_KEY[1],tbKey[1]);
 SetMissionV(MISSION_V_KEY[2],tbKey[2]);
 end;
 end;
 local szPlayerName = GetName();
 for i = 1, 2 do PlayerIndex = GetTeamMember(i);
 ConsumeEquiproomItem(nMoney,4,1496,1,-1);
 local szPlayerName = GetName();
 SetMissionS(MISSION_S_CAPTAINNAME[i],szPlayerName);
 self.PlayerBG[szPlayerName] = {szBG=szPlayerName, nBG=nMoney};
 if (nCount > 1) then 
Msg2Player(format("M� s� thi ��u c�a ��i b�n l� <color=green>[%d], <color>h�y g�i m� s� n�y ��n c�c th�nh vi�n �� tham gia solo",tbKey[i])); 
 end;
 PlayerIndex = nOldPlayer;
 end;
 local tbCaptainName = self:GetCaptain();
 SetMissionV(MISSION_V_VS,nCount);
 if (nCount > 1) then 
 szMsg1= format("<color=green>%s<color=white>: Chi�n ��i <color=pink>%s<color=red> vs <color=white>Chi�n ��i <color=yellow>%s<color=white> chu�n b� thi ��u, s� ti�n c��c l�<color=green> %d KNB.<color=white>Th�i gian thi ��u <color=yellow>%d<color> ph�t n�a",szName,tbCaptainName[1],tbCaptainName[2],nMoney,floor((TIMER_SIGNUP/18)/60));
 AddGlobalNews(szMsg1);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szMsg1, "", "");
 else 
 szMsg2= format("<color=green>%s<color=white>: ��i <color=pink>%s<color> vs <color=red>��i <color=yellow>%s<color=white> chu�n b� thi ��u, s� ti�n c��c l�<color=green> %d KNB.<color=white>Th�i gian thi ��u <color=yellow>%d<color> ph�t n�a",szName,tbCaptainName[1],tbCaptainName[2],nMoney,floor((TIMER_SIGNUP/18)/60)); 
 AddGlobalNews(szMsg2);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szMsg2, "", "");
 end;
 Msg2SubWorld(szMsg);
 end;
 SubWorld = nOldWorld;
 end;
 
 
 function BattleChallenge:OnEnterMatch() local nOldPlayer = PlayerIndex;
 local nOldWorld = SubWorld;
 local nMapIndex = MAP_WORLD;
 local nState = MISSION_V_STATE;
 local nVS = MISSION_V_VS;
 local szName = MISSION_S_BATTLENAME;
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 local tbCaptainName = self:GetCaptain();
 SubWorld = nSubWorld;
 if (SubWorld <= 0) then return end;
 local nStateMission = GetMissionV(nState);
 local nVSMission = GetMissionV(nVS);
 if (nStateMission ~= 1) then Say("R�t ti�c! �� h�t th�i gian v�o khu v�c thi ��u, l�n sau h�y ��n s�m h�n tr��c khi b�t ��u th�i gian thi ��u!",0);
 return end;
 local nStateLag = Forbid:CheckStateForbid();
 if (nStateLag ~= 1) then Say("Ng��i d�m c� gan �em thu�c l�c v�o ��y sao? H�y Ch�i C�ng B�ng �i M�y �ng C� N�i!",0);
 return end;
 local szPlayerName = GetName();
 if (szPlayerName == tbCaptainName[1]) or (szPlayerName == tbCaptainName[2]) then BattleChallenge:OnGroup(0);
 else if (nVSMission > 1) then Say("Xin m�i nh�p m� s� thi ��u �� ti�n v�o khu v�c thi ��u.",2,"Nh�p m� s�!/#BattleChallenge:OnEnterKey()","Ta kh�ng nh�, �� ta h�i ��i tr��ng./#BattleChallenge:Cancel()");
 else Say("B�n kh�ng ph�i l� tuy�n th� l�n n�y, v� th� kh�ng th� v�o!",0);
 end;
 end;
 SubWorld = nOldWorld;
 end;
 function BattleChallenge:OnEnterKey() g_AskClientNumberEx(1,10000,"M� s� thi ��u:", {self.OnEnterKeyConfirm, {self}});
 end;
 function BattleChallenge:OnEnterKeyConfirm(nKey) local nOldPlayer = PlayerIndex;
 local nOldWorld = SubWorld;
 local nMapIndex = MAP_WORLD;
 local nState = MISSION_V_STATE;
 local nVS = MISSION_V_VS;
 local szName = MISSION_S_BATTLENAME;
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 SubWorld = nSubWorld;
 if (SubWorld <= 0) then return end;
 if (nKey == GetMissionV(MISSION_V_KEY[1])) then BattleChallenge:OnGroup(1);
 elseif (nKey == GetMissionV(MISSION_V_KEY[2])) then BattleChallenge:OnGroup(2);
 else Say("M� s� thi ��u m� b�n nh�p v�o kh�ng h�p l�, vui l�ng li�n h� v�i <color=red>��i tr��ng<color> c�a chi�n ��i m�nh �� nh�n l�i m� s� thi ��u!",0);
 end;
 SubWorld = nOldWorld;
 end;
 function BattleChallenge:OnGroup(nGroup) local nOldPlayer = PlayerIndex;
 local nOldWorld = SubWorld;
 local nMapIndex = MAP_WORLD;
 local nState = MISSION_V_STATE;
 local nVS = MISSION_V_VS;
 local szName = MISSION_S_BATTLENAME;
 local szPlayerName = GetName();
 local tbCaptainName = self:GetCaptain();
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 SubWorld = nSubWorld;
 local nStateMission = GetMissionV(nState);
 local nVSMission = GetMissionV(nVS);
 if (szPlayerName == tbCaptainName[1]) then if (nStateMission ~= 1) then BattleChallenge:OnCamp(3);
 else BattleChallenge:OnCamp(1);
 end;
 elseif (szPlayerName == tbCaptainName[2]) then if (nStateMission ~= 1) then BattleChallenge:OnCamp(3);
 else BattleChallenge:OnCamp(2);
 end;
 elseif (nGroup == 1) or (nGroup == 2) then local nMasterIndex = SearchPlayer(GetMissionS(nGroup));
 local nMasterNum = 0;
 if (nMasterIndex > 0) then if (PIdx2MSDIdx(MISSION_ID,nMasterIndex) > 0) then nMasterNum = 1;
 end;
 if ((GetMSPlayerCount(MISSION_ID,nGroup) - nMasterNum) < (GetMissionV(MISSION_V_VS) - 1)) then BattleChallenge:OnCamp(nGroup);
 else Say("S� ng��i thi ��u hi�n t�i c�a chi�n ��i n�y �� ��, kh�ng th� v�o th�m ���c n�a!",0);
 end;
 end;
 elseif (nGroup == 3) then BattleChallenge:OnCamp(3);
 else Say("C�c h� kh�ng ph�i l� tuy�n th� �� b�o danh v� v�y kh�ng th� v�o l�i ��i, xin h�y ��ng ngo�i xem", 0);
 end;
 SubWorld = nOldWorld;
 end;
 function BattleChallenge:OnLook() 
 local nOldWorld = SubWorld;
 local nMapIndex = MAP_WORLD;
 local szName = MISSION_S_BATTLENAME;
 local nCheckPotion = self:CheckPotion();
 if (nCheckPotion ~= 0) then 
 Say("Mu�n v�o xem thi ��u, y�u c�u ng��i ch�i ph�i b� t�t c� c�c lo�i thu�c ra ngo�i, kh�ng ���c mang theo tr�n ng��i!",0);
 return end;
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 SubWorld = nSubWorld;
 local tbCaptainName = self:GetCaptain();
 local szTitle = format("Hi�n t�i chi�n ��i <color=yellow>%s<color> vs <color=yellow>%s<color> �ang thi ��u, ng��i c� mu�n v�o xem kh�ng?",tbCaptainName[1],tbCaptainName[2]);
 local tbOption = {szTitle};
 tinsert(tbOption,"Ta mu�n v�o xem!/#BattleChallenge:OnWatch()");
 tinsert(tbOption,"Th�i �� khi kh�c./#BattleChallenge:Cancel()");
 CreateTaskSay(tbOption);
 SubWorld = nOldWorld;
 end;
 function BattleChallenge:OnWatch() 
 local nCheckPotion = self:CheckPotion();
 if (nCheckPotion ~= 0) then 
 Say("Mu�n v�o xem thi ��u, y�u c�u ng��i ch�i ph�i b� t�t c� c�c lo�i thu�c ra ngo�i, kh�ng ���c mang theo tr�n ng��i!",0);
 return end;
 local nOldWorld = SubWorld;
 local nMapIndex = MAP_WORLD;
 local szName = MISSION_S_BATTLENAME;
 local tbCaptainName = self:GetCaptain();
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 if (nSubWorld == -1) then return end;
 SubWorld = nSubWorld;
 self:OnGroup(3);
 SubWorld = nOldWorld;
 end;
 function BattleChallenge:GameBet() local nOldWorld = SubWorld;
 local nMapIndex = MAP_WORLD;
 local nState = MISSION_V_STATE;
 local nVS = MISSION_V_VS;
 local szName = MISSION_S_BATTLENAME;
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 if (nSubWorld <= 0) then return end;
 SubWorld = nSubWorld;
 local nStateMission = GetMissionV(nState);
 local nVSMission = GetMissionV(nVS);
 local tbCaptainName = self:GetCaptain();
 if (nStateMission ~= 1) then Say("R�t ti�c! Th�i gian ��t c��c �� h�t, l�n sau h�y quay l�i nh�!",0);
 return end;
 if (GetTeamSize() ~= 2) then Say("T� ��i ��ng 2 ng��i m�i c� th� ��t c��c v�i nhau!",0);
 return end;
 if (IsCaptain() ~= 1) then Say("Ph�i l� ��i tr��ng m�i c� th� kh�i ��ng ��t c��c!",0);
 return end;
 local szTitle = format("Th�ng tin chi�n ��i thi ��u %s:",szName);
 szTitle = szTitle.."<enter>"..format("+ Chi�n ��i thi ��u: <color=yellow>%s<color> vs <color=yellow>%s<color>",tbCaptainName[1],tbCaptainName[2]);
 szTitle = szTitle.."<enter>"..format("+ H�nh th�c thi ��u: <color=yellow>%d<color> vs <color=yellow>%d<color>",nVSMission,nVSMission);
 local tbOption = {szTitle};
 local szPlayerName = GetName();
 for i = 1, 2 do local szCaptainName = GetMissionS(MISSION_S_CAPTAINNAME[i]);
 tinsert(tbOption, format("��t c��c v�o %s th�ng/#BattleChallenge:EnterBG([[%s]])",szCaptainName,szCaptainName));
 end;
 tinsert(tbOption, "H�y b�./#BattleChallenge:Cancel()");
 CreateTaskSay(tbOption);
 SubWorld = nOldWorld;
 end;
 function BattleChallenge:EnterBG(szPlayerBet) local nIsPlayerBet = self:IsPlayerBet();
 if (nIsPlayerBet == 1) then Say("B�n �� ��t c��c r�i, kh�ng th� ��t c��c th�m l�n n�a!",0);
 return else BattleChallenge:CountBG(szPlayerBet);
 end;
 end;
 function BattleChallenge:CountBG(szPlayerBet) local nMoney = CalcEquiproomItemCount(4,1496,1,-1);
 g_AskClientNumberEx(1,nMoney,"Ti�n ��t c��c:", {self.ConfirmBG,{self,szPlayerBet}});
 end;
 function BattleChallenge:ConfirmBG(szPlayerBet,nMoney) local nOldWorld = SubWorld;
 local nOldPlayer = PlayerIndex;
 local nMapIndex = MAP_WORLD;
 local nState = MISSION_V_STATE;
 local nVS = MISSION_V_VS;
 local szName = MISSION_S_BATTLENAME;
 local nLimitMoney = mod(nMoney,100);
 if (nLimitMoney > 0) then Say("Th�t xin l�i! M�i l�n ��t c��c ch� ���c ��t t� 100, 200, 300, ... KNB tr� l�n. Kh�ng cho ph�p ��t c�c s� l�.",0) return end;
 local nSubWorld = SubWorldID2Idx(nMapIndex);
 if (nSubWorld <= 0) then return end;
 SubWorld = nSubWorld;
 local nStateMission = GetMissionV(nState);
 local nVSMission = GetMissionV(nVS);
 local tbCaptainName = self:GetCaptain();
 if (nStateMission ~= 1) then Say("R�t ti�c! Th�i gian ��t c��c �� h�t, l�n sau h�y quay l�i nh�!",0);
 return end;
 local szPlayerName = GetName();
 local nIsPlayerBet = self:IsPlayerBet();
 if (nIsPlayerBet == 0) then self.PlayerBG[szPlayerName] = {szBG=szPlayerBet,nBG=nMoney};
 self.InviteBet[szPlayerName] = {nAccept=0,nDeny=0};
 for i = 1, 2 do PlayerIndex = GetTeamMember(i);
 self.TimerBet[GetName()] = {nTimer=GetCurServerTime()+TIMER_INVITEBET,szCaptain=szPlayerName};
 if (PlayerIndex ~= nOldPlayer) then 
 local szTitle = format("<color=white>Tay c� c��c <color=pink>%s<color=white> �� ��t c��c v� �o�n chi�n ��i <color=green>%s<color=white> s� l� chi�n ��i s� th�ng cu�c v�i gi� c��c  <color=red>%d KNB<color=white>b�n ph�i c��c v�o ng��i c�n l�i.!",szPlayerName,szPlayerBet,nMoney);
 local tbOption = {szTitle};
 for k = 1, 2 do local szCaptainName = GetMissionS(MISSION_S_CAPTAINNAME[k]);
 if (self.PlayerBG[szPlayerName].szBG ~= szCaptainName) then 
 tinsert(tbOption, format("��t c��c v�o %s th�ng/#BattleChallenge:ConfirmPlayerBG(%d,[[%s]])",szCaptainName,nMoney,szCaptainName));
 end;
 end;
 tinsert(tbOption, "H�y b� k�o./#BattleChallenge:DenyBet()");
 CreateTaskSay(tbOption);
 SetTimer(TIMER_FRAME2TIME,MISSION_BETTIMER);
 end;
 PlayerIndex = nOldPlayer;
 end;
 end;
 SubWorld = nOldWorld;
 end;
 function BattleChallenge:ConfirmPlayerBG(nMoney,szPlayerBet) local nOldPlayer = PlayerIndex;
 local szPlayerName = GetName();
 local nAcceptBet = self:AcceptBet();
 if (nAcceptBet == 0) then Say("R�t ti�c! ��t c��c l�n n�y th�t b�i, h�y ch� ��n l�n ��t c��c ti�p theo!",0);
 return end;
 if (CalcEquiproomItemCount(4,1496,1,-1) < nMoney) then BattleChallenge:DenyBet();
 Msg2Team(format("Ng��i ch�i %s kh�ng �� %d KNB, h�y b� ��t c��c l�n n�y xin h�y ki�m tra KNB r�i c��c l�i n�u c�n k�p!",szPlayerName,nMoney));
 return end;
 self.PlayerBG[szPlayerName] = {szBG=szPlayerBet,nBG=nMoney};
 for i = 1, 2 do PlayerIndex = GetTeamMember(i);
 ConsumeEquiproomItem(nMoney,4,1496,1,-1);
 PlayerIndex = nOldPlayer;
 end;
 end;
 function BattleChallenge:IsPlayerBet() local szPlayerName = GetName();
 if (self.PlayerBG[szPlayerName]) then return 1;
 else return 0;
 end;
 end;
