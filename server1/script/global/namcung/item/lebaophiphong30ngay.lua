Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex)
dofile("script/global/namcung/item/lebaophiphong30ngay.lua")
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


	if P == 30045 then
		idcanadd=5347+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30045,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P ==30046 then
		idcanadd=5348+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30046,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P == 30047 then
		idcanadd=5349+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30047,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end		
	end
	if P == 30048 then
		idcanadd=5350+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30048,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
		end
	if P == 30049 then
		idcanadd=5351+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30049,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end

	if P == 30050 then
		idcanadd=5352+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30050,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30051 then
		idcanadd=5353+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30051,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30052 then
		idcanadd=5354+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30052,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30053 then
		idcanadd=5355+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30053,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30054 then
		idcanadd=5356+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 30054,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=30*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
WriteLogPro("dulieu/moruongphiphong30ngay.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mo ruong "..P.." nhan duoc "..idcanadd.."-\n");	

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
