IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
GIOHOAHONG = 4965; TANGTHEMLANSUDUNG = 4964
--------------------------------------
function main()
dofile("script/update_feature/even05/hoaphuongtim.lua")
if (GetTask(5122) >= 2) then
		Say("<color=green>Ng��i Kh�ng �� �i�u Ki�n Nh�n Th��ng\n<color=violet>M�c N�p 1000.000!<color>\n<color=orange>Ph�n Th��ng:<color>\n<color=yellow\t�i N�p Th� ��u Si�u Code\n<color>")
	return end
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	if (nDate >= 201903010000) and (nDate <= 202205292400) then
		if (GetLevel() >= 150) then
			if (GetTask(GIOHOAHONG) >= 30000) then
				SetTask(TANGTHEMLANSUDUNG,1)
				Msg2Player("Ch�c M�ng Ng��i �� T�ng Th�m L�n S� D�ng Hoa Ph��ng ��")
			else
				Talk(1,"","C�n Ph�i ��t 30000 Hoa Ph��ng �� M�i C� Th� S� D�ng") return 1
			end
		else
			Talk(1,"","C�p 150 Tr� L�n M�i C� Th� S� D�ng") return 1
		end
	else
		Talk(1,"","V�t Ph�m N�y �� Qu� H�n T� ��ng M�t �i")
	end
end