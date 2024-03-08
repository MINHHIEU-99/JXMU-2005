
Include("\\script\\lib\\awardtemplet.lua");
nEnd = 20190615

tbhonganh =
	{
              		[1]	={szName = "Hång ¶nh ThÈm Viªn UyÓn", tbProp = {0, 204,}, nQuality = 1, nCount = 1, },
 		[2]	={szName = "Hång ¶nh KiÕm Bµi", tbProp = {0,205,}, nQuality = 1, nCount = 1,   },
             		[3]	={szName = "Hång ¶nh Môc Tóc", tbProp = {0, 206,}, nQuality = 1, nCount = 1, },
 		[4]	={szName = "Hång ¶nh Tô Chiªu", tbProp = {0,207,}, nQuality = 1, nCount = 1,   },
	}

function main(nItemIndex)
	if ( CalcFreeItemCellCount() < 1 ) then
		Say("Hµnh trang kh«ng ®ñ chç, xin h·y ®Ó trèng ra Ýt nhÊt 1 «.",0);
		return 1;
	end
		
	tbAwardTemplet:GiveAwardByList(tbhonganh, "lebaohonganh");
end



