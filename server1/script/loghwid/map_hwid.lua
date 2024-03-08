Include("\\script\\maps\\newworldscript_default.lua")
Include("\\script\\loghwid\\limitlogin.lua")
MAX_LOGIN_PC = 2
tbHWUIDList = {

}



function OnNewWorld(szParam)
	OnNewWorldDefault(szParam)
--print("join map")
end

function OnLeaveWorld(szParam)
	OnLeaveWorldDefault(szParam)
--print("out map")
remove_player()

end