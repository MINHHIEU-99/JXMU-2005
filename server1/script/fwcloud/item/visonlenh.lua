Include("\\script\\maps\\checkmap.lua");

Include("\\script\\global\\g7vn\\g7configall.lua")

function main()
Say("HiÖn t¹i ch­a ho¹t ®éng")
return 1
end

function main1()
	

	local pMapID, pMx, pMy = GetWorldPos();
	if GetFightState()>=1 or (IsCityMap(pMapID)~=1 and IsFreshmanMap(pMapID)~=1 and pMapID ~= 175)  then
		Msg2Player("<color=yellow>Cuén truyÒn tèng Vi S¬n §¶o chØ cã thÓ sö dông t¹i khu vùc phi chiÕn ®Êu cña thµnh thŞ, t©n thñ th«n vµ t©y s¬n th«n<color>");
		return 1;
	end;
	--DinhHQ
	--20110407: kh«ng cho sö dông m¹c b¾c truyÒn tèng trong v­ît ¶i 30
	if pMapID == 957 then
		Msg2Player("<color=yellow>Cuén truyÒn tèng Vi S¬n §¶oc chØ cã thÓ sö dông t¹i khu vùc phi chiÕn ®Êu cña thµnh thŞ, t©n thñ th«n vµ t©y s¬n th«n<color>");
		return 1;
	end
	NewWorld(342, 1411, 2828)
	SetFightState(0);
	SetRevPos(175,1)
	return 0;
end;


