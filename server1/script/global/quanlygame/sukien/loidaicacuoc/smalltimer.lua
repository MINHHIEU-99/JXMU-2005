Include("\\script\\global\\quanlygame\\sukien\\loidaicacuoc\\head.lua");
 function OnTimer() local nTotalTimer = GetMSRestTime(MISSION_ID,MISSION_TOTALTIMER);
 local nStateMission = GetMissionV(MISSION_V_STATE);
 local nVSMission = GetMissionV(MISSION_V_VS);
 if (nStateMission == 1) then local nRestMinSignUp = floor(((nTotalTimer-TIMER_MATCH)/18)/60);
 local nRestSecSignUp = mod(floor((nTotalTimer-TIMER_MATCH)/18),60);
 if (nRestMinSignUp > 0) and (nRestSecSignUp <= 0) then Msg2MSAll(MISSION_ID, format("<color=white>Th�i gian chu�n b� thi ��u c�n <color>%d<color> ph�t!",nRestMinSignUp));
 elseif (nRestMinSignUp <= 0) and (nRestSecSignUp > 0) then Msg2MSAll(MISSION_ID, format("<color=white>Th�i gian chu�n b� thi ��u c�n <color>%d<color> gi�y!",nRestSecSignUp));
 end;
 if (nVSMission > 1) then BattleChallenge:NoticeKey();
 end;
 if (nRestMinSignUp <= 0) and (nRestSecSignUp <= 0) then 
 Msg2MSAll(MISSION_ID, format("<pic=8><color=green>Thi ��u ch�nh th�c b�t ��u"));
 RunMission(MISSION_ID);
 end;
 elseif (nStateMission == 2) then local nRestMinMatch = floor(((nTotalTimer)/18)/60);
 local nRestSecMatch = mod(floor((nTotalTimer)/18),60);
 BattleChallenge:NoticeTime(nTotalTimer);
 BattleChallenge:CheckPlayerWinnerSmallTimer();
 if (nRestMinMatch <= 0) and (nRestSecMatch <= 0) then Msg2MSAll(MISSION_ID, format("Th�i gian thi ��u �� k�t th�c!"));
 SetMissionV(MISSION_V_STATE,3);
 end;
 elseif (nStateMission == 3) then BattleChallenge:GetPlayerWinnerTimeOut();
 end;
 end;
 function BattleChallenge:CheckPlayerWinnerSmallTimer() 
 local szMsg = format("K�t qu� <color=yellow>%s<color> l�n n�y l�: ",MISSION_S_BATTLENAME);
 local szName = MISSION_S_BATTLENAME;
 local tbCaptainName = BattleChallenge:GetCaptain();
 local nGroup1PlayerCount = GetMSPlayerCount(MISSION_ID,1);
 local nGroup2PlayerCount = GetMSPlayerCount(MISSION_ID,2);
 local nGroup1Damage = DamagePlayer:GetGroupDamage(2);
 local nGroup2Damage = DamagePlayer:GetGroupDamage(1);
 if (nGroup1PlayerCount <= 0) and (nGroup2PlayerCount <= 0) then 
 szMsg = szMsg..format("<color=pink>Hai b�n kh�ng tham gia l�i ��i, tr�n ��u b� h�y b� hai b�n m�t to�n b� ti�n c��c.",tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage);
 BattleChallenge:PlayerBetWinner(-1,tbCaptainName[1]);
 BattleChallenge:PlayerBetWinner(-1,tbCaptainName[2]);
 BattleChallenge:AllGone(szMsg);
  AddGlobalNews(szMsg);
  AddGlobalNews(szMsg);
 return 
 end;
 if (nGroup1PlayerCount <= 0) and (nGroup2PlayerCount > 0) then 
szMsg = format("<color=green>K�t qu� %s :<color=pink> %s<color=white> t�i h�n s�c m�n kh�ng �� s�c b��c v�o l�i ��i solo n�n<color=pink> %s <color=white>d�nh th�ng l�i kh�ng t�n ch�t s�c l�c xin ch�c m�ng <pic=0>.",MISSION_S_BATTLENAME,tbCaptainName[1],tbCaptainName[2]); 
 BattleChallenge:PlayerBetWinner(2,tbCaptainName[2]);
 BattleChallenge:AllGone(szMsg);
   AddGlobalNews(szMsg);
  AddGlobalNews(szMsg);
 return end;
 if (nGroup2PlayerCount <= 0)and (nGroup1PlayerCount > 0) then 
szMsg = format("<color=green>K�t qu� %s :<color=pink> %s<color=white> t�i h�n s�c m�n kh�ng �� s�c b��c v�o l�i ��i solo n�n<color=pink> %s <color=white>d�nh th�ng l�i kh�ng t�n ch�t s�c l�c xin ch�c m�ng <pic=0>.",MISSION_S_BATTLENAME,tbCaptainName[2],tbCaptainName[1]); 
 BattleChallenge:PlayerBetWinner(1,tbCaptainName[1]);
 BattleChallenge:AllGone(szMsg);
  AddGlobalNews(szMsg);
  AddGlobalNews(szMsg);
 return 
 end;
 end;
 function BattleChallenge:GetPlayerWinnerTimeOut() 
 local szMsg = format("K�t qu� <color=yellow>%s<color> l�n n�y l�: ",MISSION_S_BATTLENAME);
 local szName = MISSION_S_BATTLENAME;
 local tbCaptainName = BattleChallenge:GetCaptain();
 local nGroup1PlayerCount = GetMSPlayerCount(MISSION_ID,1);
 local nGroup2PlayerCount = GetMSPlayerCount(MISSION_ID,2);
 local nGroup1Damage = DamagePlayer:GetGroupDamage(2);
 local nGroup2Damage = DamagePlayer:GetGroupDamage(1);
 if (nGroup1PlayerCount > 0) and (nGroup2PlayerCount > 0) then 
 if (nGroup1Damage == nGroup2Damage) then 
szMsg = format("<color=green>K�t qu� %s <color=white>c� 2 �i�u r�i kh�i l�i ��i:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame], <color=green> hai b�n h�a nhau.<pic=0>",MISSION_S_BATTLENAME,tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage); 
 BattleChallenge:PlayerBetWinner(0,tbCaptainName[1]);
 BattleChallenge:PlayerBetWinner(0,tbCaptainName[2]);
 elseif (nGroup1Damage > nGroup2Damage) then 
szMsg = format("<color=green>K�t qu� l�i ��i c� c��c:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame]  =><color=green> %s <color=white>dame nhi�u h�n gi�nh chi�n th�ng cu�i c�ng xin ch�c m�ng<pic=125>",tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage,tbCaptainName[1]); 
 BattleChallenge:PlayerBetWinner(1,tbCaptainName[1]);
 elseif (nGroup2Damage > nGroup1Damage) then 
szMsg = format("<color=green>K�t qu� l�i ��i c� c��c:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame] =><color=green> %s <color=white>dame nhi�u h�n gi�nh chi�n th�ng cu�i c�ng xin ch�c m�ng<pic=125>",tbCaptainName[2],nGroup2Damage,tbCaptainName[1],nGroup1Damage,tbCaptainName[2]); 
 BattleChallenge:PlayerBetWinner(2,tbCaptainName[2]);
 end;
 BattleChallenge:AllGone(szMsg);
 AddGlobalNews(szMsg);
AddGlobalNews(szMsg);
 return 
 else if (nGroup1PlayerCount <= 0) and (nGroup2PlayerCount <= 0) then 
 szMsg = szMsg..format("<colo=pink>Hai b�n kh�ng tham gia l�i ��i, tr�n ��u b� h�y b� hai b�n m�t to�n b� ti�n c��c.",tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage);
 BattleChallenge:PlayerBetWinner(-1,tbCaptainName[1]);
 BattleChallenge:PlayerBetWinner(-1,tbCaptainName[2]);
 BattleChallenge:AllGone(szMsg);
 AddGlobalNews(szMsg);
AddGlobalNews(szMsg);
 return 
 end;
 if (nGroup1PlayerCount <= 0) and (nGroup2PlayerCount > 0) then 
 szMsg = szMsg..format("<color=green>K�t qu� l�i ��i c� c��c:��i <color=green>%s <color=white>kh�ng c� ai tham gia ��i <color=pink> %s<color=white> d�nh th�ng cu�c<pic=125>",tbCaptainName[1],tbCaptainName[2]);
 BattleChallenge:PlayerBetWinner(2,tbCaptainName[2]);
 BattleChallenge:AllGone(szMsg);
 AddGlobalNews(szMsg);
AddGlobalNews(szMsg);
 return 
 end;
 if (nGroup2PlayerCount <= 0)and (nGroup1PlayerCount > 0) then 
 szMsg = szMsg..format("<color=green>K�t qu� l�i ��i c� c��c:��i <color=green>%s <color=white>kh�ng c� ai tham gia ��i <color=pink> %s<color=white> d�nh th�ng cu�c<pic=125>",tbCaptainName[2],tbCaptainName[1]);
 BattleChallenge:PlayerBetWinner(1,tbCaptainName[1]);
 BattleChallenge:AllGone(szMsg);
 AddGlobalNews(szMsg);
AddGlobalNews(szMsg);
 return end;
 end;
 end;
