
Include("\\script\\dailogsys\\dailogsay.lua")


function main()
dofile("script/global/g7vn/caythongnoel.lua")

local tbSay = 
{

"Ta mu�n ��i h�nh d�ng �ng gi� Noel/#DoiHinhDang(1)",
"Ta mu�n ��i h�nh Thi�n S�/#DoiHinhDang(2)",
"Ta mu�n ��i h�nh Tu�n L�c/#DoiHinhDang(4)",
"Th�i v�y/no"
}
	--if GetAccount()=="boquyx123" or GetAccount()=="luuhuanvlv201904" then
	Say("Gi�ng Sinh An L�nh",getn(tbSay),tbSay)
	--end
end;

function DoiHinhDang(nType)
	if nType==1 then
			ChangeOwnFeature( 1, 18*60*60*24, random(1131,1134),  0, 0, 0, 0)
	end
	if nType==2 then
			ChangeOwnFeature( 1, 18*60*60*24, random(1135,1137),  0, 0, 0, 0)
	end
	if nType==3 then
			ChangeOwnFeature( 1, 18*60*60*24, 1235,  0, 0, 0, 0)
	end
	if nType==4 then
			ChangeOwnFeature( 1, 18*60*60*24, 1125,  0, 0, 0, 0)
	end
	Msg2SubWorld("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> �� thay ��i h�nh gi�ng ��n gi�ng sinh t�i T��ng D��ng trung t�m")
end