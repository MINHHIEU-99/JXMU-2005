Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex)
dofile("script/global/namcung/item/lebaophiphong10ngay.lua")
G,D,P,nLevel = GetItemProp(nItemIndex);
num=0



local tbSay = 
{

"B� qua kh�ng h�a/#chonboquakhang(0)",
"B� qua kh�ng b�ng/#chonboquakhang(1)",
"B� qua kh�ng l�i/#chonboquakhang(2)",
"B� qua kh�ng ��c/#chonboquakhang(3)",
"B� qua ph� ph�ng/#chonboquakhang(4)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)
return 1;	


end

function chonboquakhang(num)
numtrong=num
local tbSay = 
{

"Ch�n PLVL/#chonkhang(0)",
"Ch�n Kh�ng B�ng/#chonkhang(1)",
"Ch�n Kh�ng L�i/#chonkhang(2)",
"Ch�n Kh�ng H�a/#chonkhang(3)",
"Ch�n Kh�ng ��c/#chonkhang(4)",
"Ch�n Kh�ng XSTK/#chonkhang(5)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)

end

function chonkhang(khang)
if CalcFreeItemCellCount()<5 then
Say("H�nh Trang Ph�i Tr�ng H�n 5 �")
return 1;
end	
         if P == 30175 then
		idcanadd=6005+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30175,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=6*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
      if P == 30176 then
		idcanadd=6006+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30176,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=3*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end

	if P == 30177 then
		idcanadd=6007+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30177,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=3*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P ==30178 then
		idcanadd=6008+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30178,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=3*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P == 30179 then
		idcanadd=6009+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30179,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=3*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end		
	end
	if P == 30180 then
		idcanadd=6010+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1,30180,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=7*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
		end
	if P == 30181 then
		idcanadd=6011+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30181,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=7*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end

	if P == 30182 then
		idcanadd=6012+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30182,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=1*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30183 then
		idcanadd=6013+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30183,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=7*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30184 then
		idcanadd=6014+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30184,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=7*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 30185 then
		idcanadd=6015+numtrong*66 +khang*11
		if ConsumeEquiproomItem(1, 6,1, 30185,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1,nExpiredTime=7*24*60},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
WriteLogPro("dulieu/moruongphiphong10ngay.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mo ruong "..P.." nhan duoc "..idcanadd.."-\n");	

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
