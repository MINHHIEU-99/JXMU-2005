Include("\\script\\missions\\宋金战场PK战\\宋金战场头文件.lua");

function InitMission() 
-- script viet hoa By http://tranhba.com Msg2Player("Chi課 s� kh萵 c蕄 , i chi課 v鮝 ch筸 v祇 t鴆 ph竧 ."); 
StartMissionTimer(1,4,TIMER_1); 
SetMissionV(1,1);-- script viet hoa By http://tranhba.com  cho ph衟 b竜 danh 
SetMissionV(MS_KEY, random(100000)) 
RevivalAllNpc(); 
HideNpc("Nam T鑞g tng qu﹏ ",1000000); 
HideNpc("Kim qu鑓 Чi tng ",1000000); 

RestMin, RestSec = GetMinAndSec(1800); 
local str1 = "<#> t鑞g kim i chi課 產ng ti課 v祇 ghi danh giai 畂筺 , mu鑞 ngi tham chi課 xin mau s韒 � t鑞g kim chi課 trng hai nh藀 kh萿 m閠 trong ghi danh , ghi danh c遪 th鮝 l筰 th阨 gian :"..RestMin.."<#> ph﹏ "..RestSec.."<#> gi﹜ ".."<#> . tham chi課 甶襲 ki謓 : c蕄 b薱 kh玭g nh� v韎 40 c蕄 , ti襫 ghi danh 3000 hai . "; 
AddGlobalCountNews(str1, 1); 
end; 

function RunMission() 
SetMissionV(1,2); 
SetMissionV(MS_J_NPCDEATH, 0); 
SetMissionV(MS_S_NPCDEATH, 0); 
SetMissionV(MS_S_SHOWKING, 0); 
SetMissionV(MS_J_SHOWKING, 0); 
RevivalAllNpc(); 
HideNpc("Nam T鑞g tng qu﹏ ",1000000); 
HideNpc("Kim qu鑓 Чi tng ",1000000); 
HideNpc("T鑞g qu﹏ qu﹏ y ",1000000); 
HideNpc("Kim qu鑓 qu﹏ y ",1000000); 
idx = 0; 

for i = 1 , 500 do 
idx, pidx = GetNextPlayer(1,idx, 0); 

if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
SetFightState(1); 
end; 

-- script viet hoa By http://tranhba.com  l骳 n祔 v� GM ph竧 ra m謓h l謓h , ch輓h th鴆 nh vang chi課 u 
PutMessage("мch qu﹏  b総 u h祅h ng , c竎 tng s� ch箉 t韎 ti襫 tuy課 , ph蕁 d騨g gi誸 ch nha !"); 
end; 

StartMissionTimer(1,5, TIMER_2); 
end; 

function EndMission() 

for i = 1, 20 do 
SetMissionV(i , 0); 
end; 

StopMissionTimer(1,4); 
StopMissionTimer(1,5); 
GameOver(); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
str2 = GetName().." th鑙 lui ra kh醝 chi課 trng "; 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nh� ch琲 r琲 tuy課 c騨g s� t� Mission trung OnLeave , v� v藋 kh玭g th� � ch� n祔 甶襲 d鬾g SetLogoutRV(0) , nh蕋 nh ph秈 � 甧m nh� ch琲 NewWorld ra Mission b秐  ch a phng 甶襲 d鬾g Fanghao_Wu 2006-3-21 
SetPKFlag(0) 
ForbidChangePK(0); 
Msg2MSAll(1, str2); 
end; 
