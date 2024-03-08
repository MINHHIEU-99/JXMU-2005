Include("\\script\\maps\\newworldscript_default.lua")
Include("\\script\\fwcloud\\nguyetcadao\\logout_nguyet_ca.lua")



function OnNewWorld(szParam)
	OnNewWorldDefault(szParam)
print("join map")
AddMSPlayer(73,1)
end

function OnLeaveWorld(szParam)
	OnLeaveWorldDefault(szParam)
print("out map")
logout_ncd()

end