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
		--Talk(1,"no","C�n 50 � tr�ng trong h�nh trang.")
		--return 
	--end;
--	if (CountFreeRoomByWH(5,10,1) < 1) then
	--	Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 5x10 � tr�ng");
		--return;
	--end
	
SetItemBindState(nItemIndex, -2)
if ITEM_GetExpiredTime(nItemIndex) ==0 then

Msg2Player("ok da xoa")
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName="Lenh Bai",tbProp={6,1,48075,1,1},nCount=1,nExpiredTime=24*60},}, "test", 1);
--return
end
	local szTitlezs = "<color=yellow>M�i Ng�y S� Nh�n ���c:<color>\n<color=red>T�ng Kim - V��t �i - Phong L�ng �� - B�o T�ng Vi�m ��\nV�n Ti�u Ph��ng T��ng - S�n Boss S�t Th� - VLMC\nLo�n Chi�n C�u Ch�u - S�n Boss Ho�ng Kim\nHo�ng Chi Ch��ng - Chi�n Long ��ng Nh�t Qu� Ho�ng Kim<color>\n<color=green>S� Nh�n ���c Ph�n Th��ng H�p D�n...!<color>"
		local tbOpt = {
			{"Nh�n Th��ng H�ng Ng�y",QuaTanThu},
			--{"Nh�n H� Tr� 1 Lb VS�",QuaLenhBai},
			{"Nhi�m V� T�ng C�p Giang H� K�",NhiemVuGianHoKy},
			{"Tho�t",},
		}
	CreateNewSayEx(szTitlezs, tbOpt)

	return 1	
end;
function QuaLenhBai()
	Say("<color=yellow>H�y ��n T�y S�n Th�n, t�m T�y S�n Ti�u Nh�  �� l�m nhi�m v� nh�")
end
function QuaLenhBai1()
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(MOCNHANTHUONGLB) ~= nDate) then
		SetTask(MOCNHANTHUONGLB, nDate) SetTask(NHANTHUONGLB, 0)
	end
	if (GetTask(NHANTHUONGLB) == 0) then
		Say("<color=yellow>M�i B�n Nh�n Th��ng",3,"Nh�n Th��ng Ng�y/QuaLenhBaiNhan","H�y B�/No")
		else
		Say("<color=yellow>Ng��i �� Nh�n Th��ng H�m Nay R�i")
	end

end



function QuaLenhBaiNhan()

if (CountFreeRoomByWH(2,2,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 2x2 � tr�ng");
		return 1;
	end

local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {

			{szName="Kim B�i Vi S�n ��o",tbProp={6,1,40984,1,0,0},nCount=1,nBindState = -2,nExpiredTime=20201030},
	--		{szName="Kim B�i V��t �i",tbProp={6,1,48068,1,0,0},nCount=1,nBindState = -2},
			--{szName="Kim B�i T�n S�",tbProp={6,1,48072,1,0,0},nCount=2,nBindState = -2},
			--{szName="Kim B�i Vi�m ��",tbProp={6,1,48073,1,0,0},nCount=3,nBindState = -2},

		}
		if (CalcFreeItemCellCount() >= 3) then
			tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")		
			SetTask(NHANTHUONGLB,1)
			else
		Talk(1,"","H�y �� Tr�ng 3 � R�i Nh�n Th��ng")
		end

end

function NhiemVuGianHoKy()




local kimbaivuotai= CalcEquiproomItemCount(6,1,48068,-1)
local kimbaipld= CalcEquiproomItemCount(6,1,48069,-1)
local kimbaivsd= CalcEquiproomItemCount(6,1,48070,-1)
local kimbaitongkim= CalcEquiproomItemCount(6,1,48071,-1)
local kimbaitinsu= CalcEquiproomItemCount(6,1,48072,-1)
local kimbaiviemde= CalcEquiproomItemCount(6,1,48073,-1)


	local szTitle = "B�n �ang C� : \n<color=green>"..kimbaivuotai.."/3 <color>Kim B�i V��t �i\n<color=green>"..kimbaipld.."/3 <color> Kim B�i Phong L�ng ��\n<color=green>"..kimbaivsd.."/2 <color>Kim B�i Vi S�n ��o\n<color=green>"..kimbaitongkim.."/3 <color>Kim B�i T�ng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim B�i T�n S�\n<color=green>"..kimbaiviemde.."/3 <color>Kim B�i Vi�m ��\n<color=yellow>M�i Nh�n V�t Ch� ���c Tr� Nhi�m V� 1 L�n Duy Nh�t,\n Ng��i C� ��ng � Kh�ng<color>"
		local tbOpt = {
			{"Mau Ho�n Th�nh Nhi�m V� Giang H� K�",HoanThanhNhiemVu},
			{"Tho�t",},
		}
		
		--if GetTask(5969)>=2 then
		--tinsert(tbOpt, 1, {"Ta C�i L�o 2 v� ta mu�n d�ng Kim B�i c�.", NhiemVuGianHoKy_cl2}) 
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



	local szTitle = "B�n �ang C� : \n<color=green>"..kimbaivuotai.."/3 <color>Kim B�i V��t �i\n<color=green>"..kimbaipld.."/3 <color> Kim B�i Phong L�ng ��\n<color=green>"..kimbaivsd.."/2 <color>Kim B�i Vi S�n ��o\n<color=green>"..kimbaitongkim.."/3 <color>Kim B�i T�ng Kim \n<color=green>"..kimbaitinsu.."/3 <color>Kim B�i T�n S�\n<color=green>"..kimbaiviemde.."/3 <color>Kim B�i Vi�m ��\n<color=yellow>M�i Nh�n V�t Ch� ���c Tr� Nhi�m V� 1 L�n Duy Nh�t,\n Ng��i C� ��ng � Kh�ng<color>"
		local tbOpt = {
			{"Mau Ho�n Th�nh Nhi�m V� Giang H� K�",HoanThanhNhiemVu_cl2},
			{"Tho�t",},
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
Say("<color=yellow>Nguy�n Li�u Kh�ng �� Xin Ki�m Tra L�i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
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
					WriteLogPro("dulieu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t nh�n "..GetTask(5969).." kn cl4\n");	
			end
	
		else
		Say("<color=yellow>Ng��i �� Ho�n Th�nh Nhi�m V� H�m Nay R�i H�m Nay R�i")
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
Say("<color=yellow>Nguy�n Li�u Kh�ng �� Xin Ki�m Tra L�i")
return 1;
end

if CalcFreeItemCellCount()<=20 then
Say("<color=yellow>H�nh Trang Kh�ng �� 20 Ch� Tr�ng")
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
			WriteLogPro("dulieu/dulieuhanhhiepky.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Ho�n th�nh HHK(kb c�) nh�n 50ty kn cl2\n");
		end
		else
		Say("<color=yellow>Ng��i �� Ho�n Th�nh Nhi�m V� H�m Nay R�i H�m Nay R�i")
	end
end

function QuaTanThu()
local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(NHANTHUONG7NGAY) ~= nDate) then
		SetTask(NHANTHUONG7NGAY, nDate) SetTask(NHANTHUONG, 0)
	end
	if (GetTask(NHANTHUONG) == 0) then
		Say("<color=yellow>M�i B�n Nh�n Th��ng",3,"Nh�n Th��ng Ng�y/NhanTanThu","H�y B�/No")
		else
		Say("<color=yellow>Ng��i �� Nh�n Th��ng H�m Nay R�i")
	end

end



function NhanTanThu()
	if (CountFreeRoomByWH(4,7,1) < 1) then
	Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 4x7 � tr�ng");
		return
	end
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="S�t th� gi�n (c�p 90)",tbProp={6,1,400,90,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh b�i Vi S�n ��o",tbProp={6,1,2432,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="Chi�n C�",tbProp={6,1,156,1,0,0},nCount=20,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh B�i Vi�m ��",tbProp={6,1,1617,1,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
			{szName="LB PLD",tbProp={4,489,1,1,0,0},nCount=1,nExpiredTime=nRestMin},
			{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,4832,1,0,0},nCount=5,nExpiredTime=nRestMin,nBindState = -2},
		}
		local tbAward_cuoituan = {
			{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,4832,1,0,0},nCount=4,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
			tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
						
		
		SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
		end

end

function NhanLBPT()
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));
		local tbAward = {
			{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount=100,nExpiredTime=nRestMin,nBindState = -2},
			{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=100,nExpiredTime=nRestMin,nBindState = -2},
		}
		if (CalcFreeItemCellCount() >= 40) then
		tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
	--	SetTask(NHANTHUONG,1)
			else
		Talk(1,"","H�y �� Tr�ng 40 � R�i Nh�n Th��ng")
		end

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
