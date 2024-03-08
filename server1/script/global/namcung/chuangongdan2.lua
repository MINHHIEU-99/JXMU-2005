
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\translife.lua")

function main()
	dofile("script/global/namcung/chuangongdan2.lua")
	
	




local n_solan = GetTask(5969)
if n_solan>6 then 
Say("C«ng Lùc Cña B¹n §· Th­îng Thõa, Kh«ng ThÓ Sö Dông Thªm")
return 1
end

local n_solan = GetTask(5969)
if n_solan==6 and GetLevel()>=180 then 
Say("C«ng Lùc Cña B¹n §· Th­îng Thõa, Kh«ng ThÓ Sö Dông Thªm Level >180")
return 1
end

--tbAwardTemplet:GiveAwardByList({{nExp_tl = 410e9}}, "test", 1);
AddOwnExp(410000000000);
--ST_LevelUp(50)
WriteLogPro("dulieu/log_xu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da an don binh thuong\n");
	--Msg2Player("¡ì¡¤ s? d?ng l?n th?: <color=green>"..HienTaiSuDung .."<color>")
	return 0
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end