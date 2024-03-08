
Include("\\script\\dailogsys\\dailogsay.lua")


function main()
dofile("script/global/g7vn/caythongnoel.lua")

local tbSay = 
{

"Ta muèn ®æi h×nh d¸ng «ng giµ Noel/#DoiHinhDang(1)",
"Ta muèn ®æi h×nh Thiªn Sø/#DoiHinhDang(2)",
"Ta muèn ®æi h×nh TuÇn Léc/#DoiHinhDang(4)",
"Th«i vËy/no"
}
	--if GetAccount()=="boquyx123" or GetAccount()=="luuhuanvlv201904" then
	Say("Gi¸ng Sinh An Lµnh",getn(tbSay),tbSay)
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
	Msg2SubWorld("<color=green>Chóc mõng cao thñ <color=yellow>"..GetName().."<color> ®· thay ®æi h×nh gi¸ng ®ãn gi¸ng sinh t¹i T­¬ng D­¬ng trung t©m")
end