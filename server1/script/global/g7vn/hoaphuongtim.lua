IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
GIOHOAHONG = 4965; TANGTHEMLANSUDUNG = 4964
--------------------------------------
function main()
dofile("script/update_feature/even05/hoaphuongtim.lua")
if (GetTask(5122) >= 2) then
		Say("<color=green>Ng­¬i Kh«ng §ñ §iÒu KiÖn NhËn Th­ëng\n<color=violet>Møc N¹p 1000.000!<color>\n<color=orange>PhÇn Th­ëng:<color>\n<color=yellow\tói N¹p ThÎ §Çu Siªu Code\n<color>")
	return end
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	if (nDate >= 201903010000) and (nDate <= 202205292400) then
		if (GetLevel() >= 150) then
			if (GetTask(GIOHOAHONG) >= 30000) then
				SetTask(TANGTHEMLANSUDUNG,1)
				Msg2Player("Chóc Mõng Ng­¬i §· T¨ng Thªm LÇn Sö Dông Hoa Ph­îng §á")
			else
				Talk(1,"","CÇn Ph¶i §¹t 30000 Hoa Ph­îng §á Míi Cã ThÓ Sö Dông") return 1
			end
		else
			Talk(1,"","CÊp 150 Trë Lªn Míi Cã ThÓ Sö Dông") return 1
		end
	else
		Talk(1,"","VËt PhÈm Nµy §· Qu¸ H¹n Tù §éng MÊt §i")
	end
end