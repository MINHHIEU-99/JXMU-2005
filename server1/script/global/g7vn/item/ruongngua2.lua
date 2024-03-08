Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")


function main()
dofile("script/global/g7vn/item/ruongngua2.lua")

local tbSay = 
{

"S­ Tö Hoµng Gia/#LayNguaLuaChon(5993,30)",
"Háa Tinh Kim Hæ V­¬ng/#LayNguaLuaChon(5994,30)",
"Kim Tinh B¹ch Hæ V­¬ng/#LayNguaLuaChon(5995,30)",
"Long Tinh H¾c Hæ V­¬ng/#LayNguaLuaChon(5996,30)",
"L¹c §µ/#LayNguaLuaChon(5997,30)",
"D­¬ng §µ/#LayNguaLuaChon(5998,30)",
"TuÇn Léc /#LayNguaLuaChon(5999,30)",
--"Siêu Quang /#LayNguaLuaChon(6000,14)",


"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn Chän Em Nµo",getn(tbSay),tbSay)
return 1;

end

function no()
return 1;

end
function LayNguaLuaChon(id,ngay)
		if CalcFreeItemCellCount() >= 20 then
			if ConsumeEquiproomItem(1,6,1,1989,-1)>0 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ngùa VIP",tbProp={0,id},nQuality=1,nExpiredTime=ngay*24*60},}, "test", 1);
			WriteLogPro("dulieu/monamtao.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   \t mo nam tao nhan dc id "..id.."\n");	
			--	tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
			--	Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE <color> Thµnh C«ng")
			end
		else Say("Kh«ng §ñ 20 ¤ Trèng")
			return 1;
			end

end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end