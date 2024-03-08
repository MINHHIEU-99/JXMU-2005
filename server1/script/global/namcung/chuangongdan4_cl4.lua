
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\translife.lua")
Include("\\script\\global\\titlefuncs.lua")

function main()
	dofile("script/global/namcung/chuangongdan4_cl4.lua")
	
	


local n_solan = GetTask(5969)
if n_solan ~=8  then 
Say("ChØ sö dông cho c·i l·o 8")
return 1
end
local n_solan = GetTask(5969)
if n_solan==8 and GetLevel()>=95 then 
Say("C«ng Lùc Cña B¹n §· Th­îng Thõa, Kh«ng ThÓ Sö Dông Thªm Level >90")
return 1
end

ST_LevelUp(60)
WriteLogPro("dulieu/ancucexp8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetLevel().."\t Da an cuc event  8\n");

	return 0
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end