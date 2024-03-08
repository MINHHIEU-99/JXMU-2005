Include("\\script\\global\\quanlygame\\sukien\\loidaicacuoc\\head.lua");
 function OnTimer() local nStateMission = GetMissionV(MISSION_V_STATE);
 if (nStateMission == 0) then return end local tbCaptainName = BattleChallenge:GetCaptain();
 local szMsg = format("K�t qu� %s l�n n�y l�: ",MISSION_S_BATTLENAME);
 local szName = MISSION_S_BATTLENAME;
 local nGroup1PlayerCount = GetMSPlayerCount(MISSION_ID,1);
 local nGroup2PlayerCount = GetMSPlayerCount(MISSION_ID,2);
 local nGroup1Damage = DamagePlayer:GetGroupDamage(2);
 local nGroup2Damage = DamagePlayer:GetGroupDamage(1);
 if (nGroup1PlayerCount <= 0) and (nGroup2PlayerCount <= 0) then 
 szMsg = szMsg..format("Hai b�n kh�ng tham gia l�i ��i, tr�n ��u b� h�y b�!",tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage);
 BattleChallenge:PlayerBetWinner(-1,tbCaptainName[1]);
 BattleChallenge:PlayerBetWinner(-1,tbCaptainName[2]);
 BattleChallenge:AllGone(szMsg);
 return 
 end;
 if (nGroup1PlayerCount <= 0) and (nGroup2PlayerCount > 0) then 
szMsg = format("<color=green>K�t qu� %s :<color=pink> %s<color=white> t�i h�n s�c m�n kh�ng d�m b��c v�o l�i ��i solo n�n<color=pink> %s d�nh th�ng l�i kh�ng t�n ch�t s�c l�c n�o xin ch�c m�ng <pic=0>.",MISSION_S_BATTLENAME,tbCaptainName[1],tbCaptainName[2]); 
 BattleChallenge:PlayerBetWinner(2,tbCaptainName[2]);
 BattleChallenge:AllGone(szMsg);
 return 
 end;
 if (nGroup2PlayerCount <= 0)and (nGroup1PlayerCount > 0) then 
szMsg = format("<color=green>K�t qu� %s :<color=pink> %s<color=white> t�i h�n s�c m�n kh�ng d�m b��c v�o l�i ��i solo n�n<color=pink> %s d�nh th�ng l�i kh�ng t�n ch�t s�c l�c n�o xin ch�c m�ng <pic=0>.",MISSION_S_BATTLENAME,tbCaptainName[2],tbCaptainName[1]); 
 BattleChallenge:PlayerBetWinner(1,tbCaptainName[1]);
 BattleChallenge:AllGone(szMsg);
 AddGlobalNews(szMsg);
 AddGlobalNews(szMsg);
 return 
 end;
 if (nGroup1PlayerCount == nGroup2PlayerCount) then 
 if (nGroup1Damage == nGroup2Damage) then 
szMsg = format("<color=green>K�t qu� %s <color=white>c� 2 �i�u r�i kh�i l�i ��i: <color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame], <color=green> hai b�n h�a nhau.<pic=0>.",MISSION_S_BATTLENAME,tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage); 
 BattleChallenge:PlayerBetWinner(0,tbCaptainName[1]);
 BattleChallenge:PlayerBetWinner(0,tbCaptainName[2]);
 elseif (nGroup1Damage > nGroup2Damage) then 
szMsg = format("<color=green>K�t qu� l�i ��i c� c��c:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame], <color=green> %s <color=white>dame nhi�u h�n gi�nh chi�n th�ng cu�i c�ng xin ch�c m�ng<pic=125>.",tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage,tbCaptainName[1]); 
 BattleChallenge:PlayerBetWinner(1,tbCaptainName[1]);
 elseif (nGroup2Damage > nGroup1Damage) then 
szMsg = format("<color=green>K�t qu� l�i ��i c� c��c:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame], <color=green> %s <color=white>dame nhi�u h�n gi�nh chi�n th�ng cu�i c�ng xin ch�c m�ng<pic=125>.",tbCaptainName[2],nGroup2Damage,tbCaptainName[1],nGroup1Damage,tbCaptainName[2]); 
 BattleChallenge:PlayerBetWinner(2,tbCaptainName[2]);
 end;
 elseif (nGroup1PlayerCount > nGroup2PlayerCount) then 
 if (nGroup1Damage == nGroup2Damage) then 
szMsg = format("<color=green>K�t qu� %s <color=white>c� 2 �i�u r�i kh�i l�i ��i:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame], <color=green> hai b�n h�a nhau.<pic=0>.",MISSION_S_BATTLENAME,tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage); 
 BattleChallenge:PlayerBetWinner(0,tbCaptainName[1]);
 BattleChallenge:PlayerBetWinner(0,tbCaptainName[2]);
 elseif (nGroup1Damage > nGroup2Damage) then 
szMsg = format("<color=green>K�t qu� l�i ��i c� c��c:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame], <color=green> %s <color=white>dame nhi�u h�n gi�nh chi�n th�ng cu�i c�ng xin ch�c m�ng<pic=125>.",tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage,tbCaptainName[1]); 
 BattleChallenge:PlayerBetWinner(1,tbCaptainName[1]);
 elseif (nGroup2Damage > nGroup1Damage) then 
szMsg = format("<color=green>K�t qu� l�i ��i c� c��c:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame], <color=green> %s <color=white>dame nhi�u h�n gi�nh chi�n th�ng cu�i c�ng xin ch�c m�ng<pic=125>.",tbCaptainName[2],nGroup2Damage,tbCaptainName[1],nGroup1Damage,tbCaptainName[2]); 
 BattleChallenge:PlayerBetWinner(2,tbCaptainName[2]);
 end;
 elseif (nGroup2PlayerCount > nGroup1PlayerCount) then 
 if (nGroup1Damage == nGroup2Damage) then 
szMsg = format("Hai b�n c�ng r�i kh�i %s, ��i %s [%d �i�m] v� ��i %s [%d �i�m] b�ng �i�m nhau, ��nh ngang t�i ngang s�c!",MISSION_S_BATTLENAME,tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage); BattleChallenge:PlayerBetWinner(0,tbCaptainName[1]); 
 BattleChallenge:PlayerBetWinner(0,tbCaptainName[1]);
 BattleChallenge:PlayerBetWinner(0,tbCaptainName[2]);
 elseif (nGroup1Damage > nGroup2Damage) then
szMsg = format("<color=green>K�t qu� l�i ��i c� c��c:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame], <color=green> %s <color=white>dame nhi�u h�n gi�nh chi�n th�ng cu�i c�ng xin ch�c m�ng<pic=125>.",tbCaptainName[1],nGroup1Damage,tbCaptainName[2],nGroup2Damage,tbCaptainName[1]); 
 BattleChallenge:PlayerBetWinner(1,tbCaptainName[1]);
 elseif (nGroup2Damage > nGroup1Damage) then 
szMsg = format("<color=green>K�t qu� l�i ��i c� c��c:<color=pink> %s [%d dame] <color=white>trong khi ��<color=pink> %s [%d dame], <color=green> %s <color=white>dame nhi�u h�n gi�nh chi�n th�ng cu�i c�ng xin ch�c m�ng<pic=125>.",tbCaptainName[2],nGroup2Damage,tbCaptainName[1],nGroup1Damage,tbCaptainName[2]); 
 BattleChallenge:PlayerBetWinner(2,tbCaptainName[2]);
 end;
 end;
 BattleChallenge:AllGone(szMsg);
 AddGlobalNews(szMsg);
AddGlobalNews(szMsg);
 return 
 end;
