
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\translife.lua")
function main()
	dofile("script/global/namcung/chuangongdan4_che.lua")
	
local n_solan = GetTask(5969)
if n_solan>7 then 
Say("C«ng Lùc Cña B¹n §· Th­îng Thõa, Kh«ng ThÓ Sö Dông Thªm")
return 1
end
if n_solan<7 then 
Say("C«ng Lùc Cña B¹n §· Th­îng Thõa, Kh«ng ThÓ Sö Dông Thªm")
return 1
end
local n_solan = GetTask(5969)
if n_solan==7 and GetLevel()>=150 then 
Say("C«ng Lùc Cña B¹n §· Th­îng Thõa, Kh«ng ThÓ Sö Dông Thªm Level >150")
return 1
end


ST_LevelUp(50)

WriteLogPro("dulieu/ancucexp.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetLevel().."\t Da an cuc event  4\n");

	return 0
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end