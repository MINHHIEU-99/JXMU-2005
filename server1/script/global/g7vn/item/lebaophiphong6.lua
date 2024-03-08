Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex)
dofile("script/global/g7vn/item/lebaophiphong6.lua")
G,D,P,nLevel = GetItemProp(nItemIndex);
num=0



local tbSay = 
{

"Chän PLVL/#chonkhang(6037)",
"Chän Kh¸ng B¨ng/#chonkhang(6038)",
"Chän Kh¸ng L«i/#chonkhang(6039)",
"Chän Kh¸ng Háa/#chonkhang(6040)",
"Chän Kh¸ng §éc/#chonkhang(6041)",
"Chän Kh¸ng XSTK/#chonkhang(6042)",

"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn chän bá qua kh¸ng tÝnh nµo ?  ",getn(tbSay),tbSay)
return 1;	


end


function chonkhang(khang)
if CalcFreeItemCellCount()<5 then
Say("Hµnh Trang Ph¶i Trèng H¬n 5 ¤")
return 1;
end	


	if P == 5015 then

		if ConsumeEquiproomItem(1, 6,1, 5015,-1) >0 then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,khang},nQuality=1,nCount=1},}, "test", 1);	

			return 0;
		end	
	end

WriteLogPro("dulieu/moruongphiphong6.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mo ruong "..P.." nhan duoc "..idcanadd.."-\n");	

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
