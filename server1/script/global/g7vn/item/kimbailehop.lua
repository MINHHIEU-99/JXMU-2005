--Th�n h�nh ph� edit by mcteam
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\vng_lib\\files_lib.lua")


function main()
	
	dofile("script/global/g7vn/item/kimbailehop.lua")
local tbSay1 = {
"Kim B�i V��t �i/#addvatpham(48068)",
"Kim B�i Phong L�ng ��/#addvatpham(48069)",
"Kim B�i Vi S�n ��o/#addvatpham(48070)",
"Kim B�i T�ng Kim/#addvatpham(48071)",
"Kim B�i T�n S�/#addvatpham(48072)",
"Kim B�i Vi�m ��/#addvatpham(48073)",
"Th�i ta kh�ng mu�n n�a/no"
}
Say("B�n Mu�n Nh�n G� N�o",getn(tbSay1),tbSay1)
	return 1	
end;

function addvatpham(nId)
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="L�nh b�i",tbProp={6,1,nId,1,0,0},nCount=1,nBindState = -2,nExpiredTime=ThoiHanHanhHiepKy},
		}
		if (CalcFreeItemCellCount() >= 5) then
				if 	ConsumeEquiproomItem(1,6,1,48074,-1)>0 then
				tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
				end
			else
		Talk(1,"","H�y �� Tr�ng 5 � R�i Nh�n Th��ng")
		end

end
