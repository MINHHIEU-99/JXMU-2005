IncludeLib("SETTING");
Include("\\script\\task\\task_addplayerexp.lua") 
Include("\\script\\lib\\pay.lua")


function main()
	if GetLevel() < 180 then 
		local nCureLevel = GetLevel()
		local nAddLevel = 180 - nCureLevel
		ST_LevelUp(nAddLevel)

		-- Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Thiªn S¬n TuyÕt Liªn<color> lªn ngay lv 180")
		WriteLogPro("dulieu/thienson_tuyetlien.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An Thien Son 3\n");
		return 0
		else
		Say("Level cña b¹n ®· v­ît 180, B¹n kh«ng ®ñ ®iÒu kiÖn ®Ó sö dông, xin kiÓm tra l¹i")
			return 1;
			end
			
			end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
