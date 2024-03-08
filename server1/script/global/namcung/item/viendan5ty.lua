
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\translife.lua")

function main()
	dofile("script/global/namcung/item/viendan5ty.lua")
	
	
AddOwnExp(5000000000);
WriteLogPro("dulieu/anexxp/viendan5ty.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da an don 5 ty binh thuong\n");
	--Msg2Player("¡ì¡¤ s? d?ng l?n th?: <color=green>"..HienTaiSuDung .."<color>")
	return 0
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end