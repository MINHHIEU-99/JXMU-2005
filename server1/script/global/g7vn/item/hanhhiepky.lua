--ThÇn hµnh phï edit by mcteam
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\vng_lib\\files_lib.lua")
IncludeLib("ITEM")
NHANTHUONG		 = 5981
NHANTHUONG7NGAY	 = 5983
HOANTHANHGHK		 = 5987;
MOCGHK=5982
NHANTHUONGLB=5700
MOCNHANTHUONGLB=5701
function main(nItemIndex)
	
	dofile("script/global/g7vn/item/hanhhiepky.lua")
	--if(CalcFreeItemCellCount() < 50)then
		--Talk(1,"no","CÇn 50 « trèng trong hµnh trang.")
		--return 
	--end;
--	if (CountFreeRoomByWH(5,10,1) < 1) then
	--	Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 5x10 « trèng");
		--return;
	--end
	
SetItemBindState(nItemIndex, -2)
if ITEM_GetExpiredTime(nItemIndex) ==0 then

Msg2Player("ok da xoa")
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName="Lenh Bai",tbProp={6,1,48075,1,1},nCount=1,nExpiredTime=24*60},}, "test", 1);
--return
end
	local szTitlezs = "<color=yellow>Mçi Ngµy SÏ NhËn §­îc:<color>\n<color=red>Tèng Kim - V­ît ¶i - Phong L¨ng §é - B¶o Tµng Viªm §Õ\nVËn Tiªu Ph­îng T­êng - S¨n Boss S¸t Thñ - VLMC\nLo¹n ChiÕn Cöu Ch©u - S¨n Boss Hoµng Kim\nHoµng Chi Ch­¬ng - ChiÕn Long §éng NhÆt Qu¶ Hoµng Kim<color>\n<color=green>SÏ NhËn §­îc PhÇn Th­ëng HÊp DÉn...!<color>"
		local tbOpt = {
			{"NhËn Th­ëng Hµng Ngµy",QuaTanThu},
			--{"NhËn Hç Trî 1 Lb VS§",QuaLenhBai},
			{"NhiÖm Vô T¨ng CÊp Giang Hå Ký",NhiemVuGianHoKy},
			{"Tho¸t",},
		}
	CreateNewSayEx(szTitlezs, tbOpt)

	return 1	
end;
function QuaLenhBai()
	Say("<color=yellow>H·y ®Õn T©y S¬n Th«n, t×m T©y S¬n TiÓu NhÞ  ®Ó lµm nhiÖm vô nhÐ")
end
function QuaLenhBai1()
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCNHANTHUONGLB) ~= nDate) then
		SetTask(MOCNHANTHUONGLB, nDate) SetTask(NHANTHUONGLB, 0)
	end
	if (GetTask(NHANTHUONGLB) == 0) then
		Say("<color=yellow>Mêi B¹n NhËn Th­ëng",3,"NhËn Th­ëng Ngµy/QuaLenhBaiNhan","Hñy Bá/No")
		else
		Say("<color=yellow>Ng­¬i §· NhËn Th­ëng H«m Nay Råi")
	end

end



function QuaLenhBaiNhan()

if (CountFreeRoomByWH(2,2,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 2x2 « trèng");
		return 1;
	end

local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {

			{szName="Kim Bµi Vi S¬n §¶o",tbProp={6,1,40984,1,0,0},nCount=1,nBindState = -2,nExpiredTime=20201030},
	--		{szName="Kim Bµi V­ît ¶i",tbProp={6,1,48068,1,0,0},nCount=1,nBindState = -2},
			--{szName="Kim Bµi TÝn Sø",tbProp={6,1,48072,1,0,0},nCount=2,nBindState = -2},
			--{szName="Kim Bµi Viªm §Õ",tbProp={6,1,48073,1,0,0},nCount=3,nBindState = -2},

		}
		if (CalcFreeItemCellCount() >= 3) then
			tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")		
			SetTask(NHANTHUONGLB,1)
			else
		Talk(1,"","H·y §Ó Trèng 3 ¤ Råi NhËn Th­ëng")
		end

end

function NhiemVuGianHoKy()




local kimbaivuotai= CalcEquiproomItemCount(6,1,48068,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,48069,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,48070,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,48071,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,48072,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,48073,-1)


	local szTitle = "B¹n §ang Cã : \n<color=green>"..kimbaivuotai.."/3 <color>Kim Bµi V­ît ¶i\n<color=green>"..kimbaipld.."/3 <color> Kim Bµi Phong L¨ng §é\n<color=green>"..kimbaivsd.."/2 <color>Kim Bµi Vi S¬n §¶o\n<color=green>"..kimbaitongkim.."/3 <color>Kim Bµi Tèng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim Bµi TÝn Sø\n<color=green>"..kimbaiviemde.."/3 <color>Kim Bµi Viªm §Õ\n<color=yellow>Mçi Nh©n VËt ChØ §­îc TrÈ NhiÖm Vô 1 LÇn Duy NhÊt,\n Ng­¬i Cã §ång ý Kh«ng<color>"
		local tbOpt = {
			{"Mau Hoµn Thµnh NhiÖm Vô Giang Hå Ký",HoanThanhNhiemVu},
			{"Tho¸t",},
		}
		
		--if GetTask(5969)>=2 then
		--tinsert(tbOpt, 1, {"Ta C¶i L·o 2 vµ ta muèn dïng Kim Bµi cò.", NhiemVuGianHoKy_cl2}) 
		--end
	CreateNewSayEx(szTitle, tbOpt)

end

function NhiemVuGianHoKy_cl2()

local kimbaivuotai= CalcEquiproomItemCount(6,1,40982,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,40983,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,40984,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,40985,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,40986,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,40987,-1)



	local szTitle = "B¹n §ang Cã : \n<color=green>"..kimbaivuotai.."/3 <color>Kim Bµi V­ît ¶i\n<color=green>"..kimbaipld.."/3 <color> Kim Bµi Phong L¨ng §é\n<color=green>"..kimbaivsd.."/2 <color>Kim Bµi Vi S¬n §¶o\n<color=green>"..kimbaitongkim.."/3 <color>Kim Bµi Tèng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim Bµi TÝn Sø\n<color=green>"..kimbaiviemde.."/3 <color>Kim Bµi Viªm §Õ\n<color=yellow>Mçi Nh©n VËt ChØ §­îc TrÈ NhiÖm Vô 1 LÇn Duy NhÊt,\n Ng­¬i Cã §ång ý Kh«ng<color>"
		local tbOpt = {
			{"Mau Hoµn Thµnh NhiÖm Vô Giang Hå Ký",HoanThanhNhiemVu_cl2},
			{"Tho¸t",},
		}
		
	CreateNewSayEx(szTitle, tbOpt)

end

-------------------------------Luyen cong tan thu----------------------------------------------
function HoanThanhNhiemVu()

local kimbaivuotai= CalcEquiproomItemCount(6,1,48068,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,48069,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,48070,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,48071,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,48072,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,48073,-1)


if kimbaivuotai<3 or kimbaipld <3 or kimbaivsd <2 or kimbaitongkim <3 or kimbaitinsu <3 or kimbaiviemde <3 then
Say("<color=yellow>Nguyªn LiÖu Kh«ng §ñ Xin KiÓm Tra L¹i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
return 1;
end

local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCGHK) ~= nDate) then
		SetTask(MOCGHK, nDate) SetTask(HOANTHANHGHK, 0)
	end
	if (GetTask(HOANTHANHGHK) == 0) then
			if ConsumeEquiproomItem(3, 6,1, 48068,-1)>0 and ConsumeEquiproomItem(3, 6,1, 48069,-1)>0 and ConsumeEquiproomItem(2, 6,1, 48070,-1)>0 and ConsumeEquiproomItem(3, 6,1, 48071,-1)>0 and 	ConsumeEquiproomItem(3, 6,1, 48072,-1)>0 and  ConsumeEquiproomItem(3, 6,1, 48073,-1)>0 then
			if GetTask(5969)==1 then
						tbAwardTemplet:GiveAwardByList({{nExp_tl = 3e9}}, "test", 1);		
					else
						tbAwardTemplet:GiveAwardByList({{nExp_tl = 30e9}}, "test", 1);		
					end
					SetTask(HOANTHANHGHK,1)
					WriteLogPro("dulieu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nhËn "..GetTask(5969).." kn cl4\n");	
			end
	
		else
		Say("<color=yellow>Ng­¬i §· Hoµn Thµnh NhiÖm Vô H«m Nay Råi H«m Nay Råi")
	end
end

-------------------------------Luyen cong tan thu----------------------------------------------
function HoanThanhNhiemVu_cl2()

local kimbaivuotai= CalcEquiproomItemCount(6,1,48068,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,48069,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,48070,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,48071,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,48072,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,48073,-1)


if kimbaivuotai<3 or kimbaipld <3 or kimbaivsd <2 or kimbaitongkim <3 or kimbaitinsu <3 or kimbaiviemde <3 then
Say("<color=yellow>Nguyªn LiÖu Kh«ng §ñ Xin KiÓm Tra L¹i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>Hµnh Trang Kh«ng §ñ 20 Chç Trèng")
return 1;
end

local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCGHK) ~= nDate) then
		SetTask(MOCGHK, nDate) SetTask(HOANTHANHGHK, 0)
	end
	if (GetTask(HOANTHANHGHK) == 0) then
		if ConsumeEquiproomItem(3, 6,1, 48068,-1)>0 and ConsumeEquiproomItem(3, 6,1, 48069,-1)>0 and ConsumeEquiproomItem(2, 6,1, 48070,-1)>0 and ConsumeEquiproomItem(3, 6,1, 48071,-1)>0 and 	ConsumeEquiproomItem(3, 6,1, 48072,-1)>0 and  ConsumeEquiproomItem(3, 6,1, 48073,-1)>0 then
			tbAwardTemplet:GiveAwardByList({{nExp_tl = 50e9}}, "test", 1);	
			SetTask(HOANTHANHGHK,1)
			WriteLogPro("dulieu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Hoµn thµnh HHK(kb cò) nhËn 50ty kn cl2\n");
		end
		else
		Say("<color=yellow>Ng­¬i §· Hoµn Thµnh NhiÖm Vô H«m Nay Råi H«m Nay Råi")
	end
end

function QuaTanThu()
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(NHANTHUONG7NGAY) ~= nDate) then
		SetTask(NHANTHUONG7NGAY, nDate) SetTask(NHANTHUONG, 0)
	end
	if (GetTask(NHANTHUONG) == 0) then
		Say("<color=yellow>Mêi B¹n NhËn Th­ëng",3,"NhËn Th­ëng Ngµy/NhanTanThu","Hñy Bá/No")
		else
		Say("<color=yellow>Ng­¬i §· NhËn Th­ëng H«m Nay Råi")
	end

end



function NhanTanThu()
	if (CountFreeRoomByWH(4,7,1) < 1) then
	Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 4x7 « trèng");
		return
	end
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="S¸t thñ gi¶n (cÊp 90)",tbProp={6,1,400,90,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh bµi Vi S¬n ®¶o",tbProp={6,1,2432,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="ChiÕn Cæ",tbProp={6,1,156,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh Bµi Viªm §Õ",tbProp={6,1,1617,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LB PLD",tbProp={4,489,1,1,0,0},nCount=1,nExpiredTime=nRestMin},
			{szName="Håi thiªn t¸i t¹o lÔ bao",tbProp={6,1,4832,1,0,0},nCount=5,nExpiredTime=nRestMin,nBindState = -2},
		}
		local tbAward_cuoituan = {
			{szName="Håi thiªn t¸i t¹o lÔ bao",tbProp={6,1,4832,1,0,0},nCount=4,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
			tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
						
		
		SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
		end

end

function NhanLBPT()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount=100,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount=100,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
		tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
	--	SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
		end

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
