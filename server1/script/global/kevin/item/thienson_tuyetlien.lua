IncludeLib("SETTING");
Include("\\script\\task\\task_addplayerexp.lua") 
Include("\\script\\lib\\pay.lua")


function main()
	if GetLevel() < 180 then 
		local nCureLevel = GetLevel()
		local nAddLevel = 180 - nCureLevel
		ST_LevelUp(nAddLevel)

		-- Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� s� d�ng <color=yellow>Thi�n S�n Tuy�t Li�n<color> l�n ngay lv 180")
		WriteLogPro("dulieu/thienson_tuyetlien.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An Thien Son 3\n");
		return 0
		else
		Say("Level c�a b�n �� v��t 180, B�n kh�ng �� �i�u ki�n �� s� d�ng, xin ki�m tra l�i")
			return 1;
			end
			
			end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
