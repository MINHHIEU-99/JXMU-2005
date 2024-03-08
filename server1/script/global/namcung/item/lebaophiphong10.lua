Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex)
dofile("script/global/namcung/item/lebaophiphong10.lua")
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
         if P == 30165 then
		idcanadd=6005+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30165,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
      if P == 30166 then
		idcanadd=6006+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30166,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end

	if P == 30167 then
		idcanadd=6007+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30167,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P ==30168 then
		idcanadd=6008+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30168,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P == 30169 then
		idcanadd=6009+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30169,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end		
	end
	if P == 30170 then
		idcanadd=6010+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1,30170,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
		end
	if P == 30171 then
		idcanadd=6011+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30171,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end

	if P == 30172 then
		idcanadd=6012+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30172,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30173 then
		idcanadd=6013+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30173,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30174 then
		idcanadd=6014+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30174,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30175 then
		idcanadd=6015+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30175,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
WriteLogPro("dulieu/moruongphiphong10.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mo ruong "..P.." nhan duoc "..idcanadd.."-\n");	

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
