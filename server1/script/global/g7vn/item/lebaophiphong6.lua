Include("\\script\\lib\\awardtemplet.lua")


function main(nItemIndex)
dofile("script/global/g7vn/item/lebaophiphong6.lua")
G,D,P,nLevel = GetItemProp(nItemIndex);
num=0



local tbSay = 
{

"Ch�n PLVL/#chonkhang(6037)",
"Ch�n Kh�ng B�ng/#chonkhang(6038)",
"Ch�n Kh�ng L�i/#chonkhang(6039)",
"Ch�n Kh�ng H�a/#chonkhang(6040)",
"Ch�n Kh�ng ��c/#chonkhang(6041)",
"Ch�n Kh�ng XSTK/#chonkhang(6042)",

"Th�i ta kh�ng mu�n n�a/no"
}
Say("Ng��i mu�n ch�n b� qua kh�ng t�nh n�o ?  ",getn(tbSay),tbSay)
return 1;	


end


function chonkhang(khang)
if CalcFreeItemCellCount()<5 then
Say("H�nh Trang Ph�i Tr�ng H�n 5 �")
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
