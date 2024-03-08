Include("\\script\\maps\\newworldscript_default.lua")
Include("\\script\\fwcloud\\limitsongjin_tung\\limitsongjin_tung.lua")
MAX_SONGJIN_PC = 1
tbSongJinHWUIDList = {

}



function OnNewWorld(szParam)
	OnNewWorldDefault(szParam)
--print("join map")
end

function OnLeaveWorld(szParam)
	OnLeaveWorldDefault(szParam)
--print("out map")
--remove_player()

end