Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")


function main()
dofile("script/global/g7vn/item/ruongngua2.lua")

local tbSay = 
{

"S� T� Ho�ng Gia/#LayNguaLuaChon(5993,30)",
"H�a Tinh Kim H� V��ng/#LayNguaLuaChon(5994,30)",
"Kim Tinh B�ch H� V��ng/#LayNguaLuaChon(5995,30)",
"Long Tinh H�c H� V��ng/#LayNguaLuaChon(5996,30)",
"L�c ��/#LayNguaLuaChon(5997,30)",
"D��ng ��/#LayNguaLuaChon(5998,30)",
"Tu�n L�c /#LayNguaLuaChon(5999,30)",
--"Si�u Quang /#LayNguaLuaChon(6000,14)",


"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n Ch�n Em N�o",getn(tbSay),tbSay)
return 1;

end

function no()
return 1;

end
function LayNguaLuaChon(id,ngay)
		if CalcFreeItemCellCount() >= 20 then
			if ConsumeEquiproomItem(1,6,1,1989,-1)>0 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ng�a VIP",tbProp={0,id},nQuality=1,nExpiredTime=ngay*24*60},}, "test", 1);
			WriteLogPro("dulieu/monamtao.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   \t mo nam tao nhan dc id "..id.."\n");	
			--	tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
			--	Msg2Player("Nh�n Th��ng <color=yellow>GIFTCODE <color> Th�nh C�ng")
			end
		else Say("Kh�ng �� 20 � Tr�ng")
			return 1;
			end

end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end