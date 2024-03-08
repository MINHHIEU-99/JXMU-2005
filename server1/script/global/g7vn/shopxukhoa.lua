IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
Include("\\script\\global\\g7vn\\thientaidongtu.lua")
Include("\\script\\global\\rename_head.lua")



function main()
	
	dofile("script/global/g7vn/shopxukhoa.lua")
	local szTitle = "<npc><color=gold> Gamer_"..GetName().." <color>chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color> - <color=green>volamhaingoai<color> .\nNh÷ng chøc n¨ng bªn d­íi cã thÓ gióp b¹n b«n tÈu giang hå dÔ dµng h¬n \n+Webstie: <color=pink>http://volamhaingoai<color>\n+Facebook: <color=green>https://www.facebook.com/volamvietpk.net<color>"
	local Opt = 
	{
		{"KÕt thóc ®èi tho¹i. ", End},
	}
	CreateNewSayEx(szTitle,Opt)

end


