Include("\\script\\missions\\宋金战场PK战\\宋金战场头文件.lua");

function OnDeath() 

State = GetMissionV(1) ; 
if (State ~= 2) then 
return 
end; 

-- script viet hoa By http://tranhba.com if ( GetMissionV(5) + GetMissionV(6) >= (MAX_S_COUNT + MAX_J_COUNT) * 7 / 10) then

if (GetMissionV(5) >= (MAX_S_COUNT / 2) and GetMissionV(6) >= (MAX_J_COUNT / 2)) then 

if (random(100) > 70) then 
return 
end; 

AddEventItem(195); 
Msg2Player("Ng礽 thu 頲 nh筩 vng ki誱 !"); 
end; 


str1 = "<#> t鑞g kim chi課 d辌h k誸 qu� : ngi T鑞g "..GetName().."<#> gi誸 ch誸 kim phng Чi tng , t鑞g phng t 頲 th緉g l頸 !"; 
str = "<#> th藅 t鑤 qu� #["..GetName().."<#>] gi誸 ch誸 kim 甧m , ch髇g ta ngi T鑞g th緉g cu閏 chi課 u n祔 ! c竎 tng s� hoan h� nha #"; 
Msg2MSAll(1, str1); 
Msg2MSGroup(1, str, 1); 
resultstr = WinBonus(1,2); 
str1 = str1..resultstr; 
SetMissionV(2,2); 
SetMissionV(1,3); 
AddGlobalCountNews(str1 , 3); 
CloseMission(1); 
end;
