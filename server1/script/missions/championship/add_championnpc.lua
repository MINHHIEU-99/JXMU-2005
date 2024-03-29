IncludeLib("FILESYS") 
CP_MAPTAB = { 
{396, 397}, 
{398, 399}, 
{400, 401}, 
{402, 403}, 
{404, 405}, 
{406, 407}, 
{408, 409}, 
{410, 411}, 
{412, 413}, 
{414, 415}, 
} 
CP_TRAPIN = "\\settings\\maps\\championship\\linantoplace_trap.txt"
CP_TRAPOUT = "" 
CP_TRAPIN_FILE = "\\script\\missions\\championship\\trap\\trap_linantoplace.lua"
CP_TRAPOUT_FILE = "\\script\\missions\\championship\\trap\\trap_placetolinan.lua"

CHAMPIONNPC = { 
	{393, 1461, 3022,"车夫","\\script\\missions\\championship\\npc\\chefu.lua"},
	{625, 1522, 3083, "储物箱", "\\script\\missions\\championship\\obj\\box.lua"},
	{389, 1556, 3050, "药商", "\\script\\missions\\championship\\npc\\yaofan.lua"},
	{308, 1584, 2965, "会场侍卫","\\script\\missions\\championship\\npc\\shiwei_nei.lua"},
	{308, 1514, 3015, "会场官员","\\script\\missions\\championship\\npc\\shiwei_wai.lua"},
	{308, 1534, 3050, "会场官员","\\script\\missions\\championship\\npc\\shiwei_wai.lua"},
	{308, 1484, 2999, "会场官员","\\script\\missions\\championship\\npc\\shiwei_wai.lua"}
} 
CHAMPIONSHIP_GUANYUAN = {308, 1457,3259, "武林大会官员", "\\script\\missions\\championship\\npc\\manager.lua"}
function add_championnpc() 
-- script viet hoa By http://tranhba.com  th猰 t竔 h閕 trng NPC 
local npcidx = 0 
local mapidx = 0 
for j = 1 , getn(CP_MAPTAB) do 
for i = 1 , getn(CHAMPIONNPC) do 
mapidx = SubWorldID2Idx(CP_MAPTAB[j][1]); 
if (mapidx >= 0) then 
npcidx = AddNpc(CHAMPIONNPC[i][1],1,mapidx,CHAMPIONNPC[i][2]*32,CHAMPIONNPC[i][3]*32,1,CHAMPIONNPC[i][4]); 
SetNpcScript(npcidx, CHAMPIONNPC[i][5]); 
end; 
end; 
end; 
if (SubWorldID2Idx(176) > 0) then 
npcidx = AddNpc(CHAMPIONSHIP_GUANYUAN[1],1,SubWorldID2Idx(176),CHAMPIONSHIP_GUANYUAN[2]*32,CHAMPIONSHIP_GUANYUAN[3]*32,1,CHAMPIONSHIP_GUANYUAN[4]); 
SetNpcScript(npcidx, CHAMPIONSHIP_GUANYUAN[5]); 
end 
-- script viet hoa By http://tranhba.com  th猰 t竔 trc khi an n h閕 trng ch TRAP 
trapidx = SubWorldID2Idx(176) 
if ( trapidx > 0) then 
local count = GetTabFileHeight(CP_TRAPIN) 
for i=1 , count do 
local posx = GetTabFileData(CP_TRAPIN, i, 1) 
local posy = GetTabFileData(CP_TRAPIN, i, 2) 
AddMapTrap(176, posx * 32, posy * 32, CP_TRAPIN_FILE); 
end 
else 
print("ANNOUNCE: THE LINAN IS NOT IN THIS SEVER, AND CAN'T ADD TRAP OF CHAMPIONSHIP!!!!") 
end 

end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function GetIniFileData(mapfile, sect, key) 
if (IniFile_Load(mapfile, mapfile) == 0) then 
print("Load IniFile Error!"..mapfile) 
return "" 
else 
return IniFile_GetData(mapfile, sect, key) 
end 
end 

function GetTabFileHeight(mapfile) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFileError!"..mapfile); 
return 0 
end 
return TabFile_GetRowCount(mapfile) - 1 
end; 

function GetTabFileData(mapfile, row, col) 
if (TabFile_Load(mapfile, mapfile) == 0) then 
print("Load TabFile Error!"..mapfile) 
return 0 
else 
		return tonumber(TabFile_GetCell(mapfile, row + 1, col))
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com 
