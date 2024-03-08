Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex)
dofile("script/global/namcung/item/lebaophiphong8.lua")
G,D,P,nLevel = GetItemProp(nItemIndex);
num=0



local tbSay = 
{

"Bá qua kh¸ng háa/#chonboquakhang(0)",
"Bá qua kh¸ng b¨ng/#chonboquakhang(1)",
"Bá qua kh¸ng l«i/#chonboquakhang(2)",
"Bá qua kh¸ng ®éc/#chonboquakhang(3)",
"Bá qua phæ phßng/#chonboquakhang(4)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)
return 1;	


end

function chonboquakhang(num)
numtrong=num
local tbSay = 
{

"Chän PLVL/#chonkhang(0)",
"Chän Kh¸ng B¨ng/#chonkhang(1)",
"Chän Kh¸ng L«i/#chonkhang(2)",
"Chän Kh¸ng Háa/#chonkhang(3)",
"Chän Kh¸ng §éc/#chonkhang(4)",
"Chän Kh¸ng XSTK/#chonkhang(5)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)

end

function chonkhang(khang)
if CalcFreeItemCellCount()<5 then
Say("Hµnh Trang Ph¶i Trèng H¬n 5 ¤")
return 1;
end	


	if P == 43045 then
		idcanadd=5347+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43045,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P ==43046 then
		idcanadd=5348+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43046,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P == 43047 then
		idcanadd=5349+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43047,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end		
	end
	if P == 43048 then
		idcanadd=5350+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43048,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
		end
	if P == 43049 then
		idcanadd=5351+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43049,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end

	if P == 43050 then
		idcanadd=5352+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43050,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 43051 then
		idcanadd=5353+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43051,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 43052 then
		idcanadd=5354+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43052,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 43053 then
		idcanadd=5355+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43053,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 43054 then
		idcanadd=5356+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 43054,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
WriteLogPro("dulieu/moruongphiphong8.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mo ruong "..P.." nhan duoc "..idcanadd.."-\n");	

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
