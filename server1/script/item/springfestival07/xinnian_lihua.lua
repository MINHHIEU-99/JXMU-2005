-- script viet hoa By http://tranhba.com  n�m m�i l� hoa 
-- script viet hoa By http://tranhba.com 6,1,1345,1,0,0 
-- script viet hoa By http://tranhba.com  ch�n t�i nh�t k� 2007-3-6 

Include("\\script\\item\\springfestival07\\xinnian_head.lua")

TB_XINNIANLIHUA_SKILL = {756,760}; 
TB_XINNIANLIHUA_AREA = {174,121,153,101,99,100,20,53,1,11,37,78,80,162,176,2,21,167,193} 

function main(nItemIdx) 
if (isTakeXinNianItem(nItemIdx) ~= 1) then 
return 1; 
end; 

local nresttime = TM_GetRestCount(TIMER_XINNIANLIHUA); 
if (not nresttime or nresttime <= 0) then 
if (nresttime and nresttime <= 0) then 
TM_StopTimer(TIMER_XINNIANLIHUA); 
end; 

local nw1, nx1, ny1 = GetWorldPos(); 
local nb = 0; 
for i = 1, getn(TB_XINNIANLIHUA_AREA) do 
if (nw1 == TB_XINNIANLIHUA_AREA[i]) then 
nb = 1; 
break 
end; 
end; 
if (nb == 0) then 
Msg2Player("Ng�y l� ph�o b�ng c� th� � 7 ��i th�nh th� , 8 c� tay m�i th�n c�p m�t 4 c� phong c�nh khu s� d�ng "); 
return 1; 
end; 
SetTask(1593, nw1); 
SetTask(1594, nx1); 
SetTask(1595, ny1); 
Msg2Player("Ng�i �� �i�m m�t ng�y l� ph�o b�ng !"); 
CastSkill(TB_XINNIANLIHUA_SKILL[random(1,2)],1); 
TM_SetTimer(5 * 18,TIMER_XINNIANLIHUA,60,0); -- script viet hoa By http://tranhba.com  h� tuy�n bi�n m�t 
else 
Msg2Player("Ng�i �� �i�m �� ng�y l� ph�o b�ng , xin ��i ph�o b�ng ��t xong sau m�i c� th� ti�p t�c !"); 
return 1; 
end; 
end; 

function OnTimer() 
local oldPlayer = PlayerIndex; 
local nw1, nx1, ny1 = GetTask(1593),GetTask(1594),GetTask(1595); 
if (nw1 == 0) then 
nw1, nx1, ny1 = GetWorldPos(); 
end; 
local tb_team = {PlayerIndex}; 
local ncount = GetTeamSize(); 
local nExp = 30000; 

if (ncount >= 1) then 
		nExp = nExp + floor(20000 * ((ncount-1)/7));
for i = 1, ncount do 
PlayerIndex = GetTeamMember(i); 
local nw2, nx2, ny2 = GetWorldPos(); 
if (nw2 == nw1 and GetLevel() >= 80 and getDistance(nx1,nx2,ny1,ny2) <= 144 and GetTask(TSK_XINNIANLIHUA_MAXEXP) < XINNIAN_MAXEXP) then 
AddOwnExp(nExp); 
				SetTask(TSK_XINNIANLIHUA_MAXEXP, GetTask(TSK_XINNIANLIHUA_MAXEXP)+nExp);
end; 
end; 
PlayerIndex = oldPlayer; 
else 
local nw2, nx2, ny2 = GetWorldPos(); 
if (getDistance(nx1,nx2,ny1,ny2) <= 144 and GetTask(TSK_XINNIANLIHUA_MAXEXP) < XINNIAN_MAXEXP) then 
AddOwnExp(nExp); 
			SetTask(TSK_XINNIANLIHUA_MAXEXP, GetTask(TSK_XINNIANLIHUA_MAXEXP)+nExp);
end; 
end; 
end; 

function getDistance(nx1, nx2, ny1, ny2) 
	return ( (nx1-nx2)^2 + (ny1-ny2)^2 )
end;
