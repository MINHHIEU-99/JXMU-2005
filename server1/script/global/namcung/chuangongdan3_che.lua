
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\translife.lua")
Include("\\script\\global\\titlefuncs.lua")

function main()
	dofile("script/item/chuangongdan3_che.lua")
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	local nTime = tonumber(GetLocalDate("%H%M"));
	
	


			local n_solan = GetTask(5969)
			if n_solan>5 then 
			Say("C«ng Lùc Cña B¹n §· Th­îng Thõa, Kh«ng ThÓ Sö Dông Thªm")
			return 1
			end
			local n_solan = GetTask(5969)
AddOwnExp(410000000000);
WriteLogPro("dulieu/ancucexp.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetLevel().."\t Da an huyen chan don\n");

	return 0
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end