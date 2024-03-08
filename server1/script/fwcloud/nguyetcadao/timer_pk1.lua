IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\fwcloud\\nguyetcadao\\head.lua")
Include("\\script\\fwcloud\\nguyetcadao\\lib.lua")
tbKandy = {}
tbKandy.szFile = "\\dulieu\\nguyetcadao.dat"
server_loadfile(tbKandy.szFile)
GccPos = 	{{50297,89761},};





function GetNearstPos(X,Y, PosTab)
	PosCount = getn(PosTab);
	PosId = 0;
	MaxDist = 999999999;

	BeyondCount = 0;---gi do

	for i = 1, PosCount do 
		Dist = sqrt( (X-PosTab[i][1]) * (X-PosTab[i][1]) + (Y - PosTab[i][2]) * (Y - PosTab[i][2]))
		if (Dist >= 460) then 
			BeyondCount = BeyondCount + 1;
		end;
		if (i == 1) then 
			PosId = 1
			MaxDist = Dist
		elseif (MaxDist > Dist) then 
			PosId = i
			MaxDist = Dist
		end
	end;

	if (BeyondCount >= PosCount) then
		return 0
	else
		return PosId;
	end;
end

function vongbo()

	w,x,y=GetWorldPos()
	
	PosId = GetNearstPos(x*32,y*32, GccPos);
	if (PosId == 0) and (GetTaskTemp(150) == 1) then 
	--	Say("B¹n kh«ng ®­îc phÐp rêi khái l«i ®µi")
		SetPos(1571, 2804)
		return 1
	end;
	
end

function ReturnLoiDai()
Msg2Player("ahiahiahoaho")
	local A,B,C = GetWorldPos();
	local nMapId = A;	
	local PlayerIndexOld = PlayerIndex
	for i=1, 500 do
		PlayerIndex = i
		if GetTaskTemp(230) == 1  then
			--SetPos(1571, 2804)
		vongbo()
		end
	end
	PlayerIndex = PlayerIndexOld
end


function OnTimer()
	for i=1, 500 do
		PlayerIndex = i
		if GetTaskTemp(150) == 1  then	
		vongbo()
		end
	end

end

