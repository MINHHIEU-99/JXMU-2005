Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex)
dofile("script/global/namcung/item/lebaophiphong6ngay.lua")
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
         if P == 30004 then
		idcanadd=5647+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30004,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
      if P == 30005 then
		idcanadd=5648+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30005,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end

	if P == 30006 then
		idcanadd=5649+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30006,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P ==30007 then
		idcanadd=5650+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30007,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P == 30008 then
		idcanadd=5651+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30008,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end		
	end
	if P == 30009 then
		idcanadd=5652+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1,30009,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
		end
	if P == 30010 then
		idcanadd=5653+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30010,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end

	if P == 30011 then
		idcanadd=5654+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30011,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30012 then
		idcanadd=5655+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30012,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30013 then
		idcanadd=5656+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30013,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=1440,nBindState=-2},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30014 then
		idcanadd=5657+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30014,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=4320},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
--WriteLogPro("dulieu/moruongphiphong6ngay.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mo ruong "..P.." nhan duoc ff-\n");	

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
