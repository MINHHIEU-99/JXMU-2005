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
	local szTitle = "<npc><color=gold> Gamer_"..GetName().." <color>ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color> - <color=green>volamhaingoai<color> .\nNh�ng ch�c n�ng b�n d��i c� th� gi�p b�n b�n t�u giang h� d� d�ng h�n \n+Webstie: <color=pink>http://volamhaingoai<color>\n+Facebook: <color=green>https://www.facebook.com/volamvietpk.net<color>"
	local Opt = 
	{
		{"K�t th�c ��i tho�i. ", End},
	}
	CreateNewSayEx(szTitle,Opt)

end


