Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex)
dofile("script/global/g7vn/item/lebaophiphong8.lua")
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


	if P == 4932 then
		idcanadd=6161+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4932,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P == 4933 then
		idcanadd=6162+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4933,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	
	if P == 4934 then
		idcanadd=6163+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4934,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end		
	end
	if P == 4935 then
		idcanadd=6164+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4935,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
		end
	if P == 4936 then
		idcanadd=6165+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4936,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end

	if P == 4937 then
		idcanadd=6166+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4937,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 4938 then
		idcanadd=6167+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4938,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 4939 then
		idcanadd=6168+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4939,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 4940 then
		idcanadd=6169+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4940,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
			Msg2Player(" numtrong:"..numtrong.." + khang:"..khang.."")
			return 0;
		end	
	end
	if P == 4941 then
		idcanadd=6170+numtrong*60 +khang*10
		if ConsumeEquiproomItem(1, 6,1, 4941,-1) >0 then
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
