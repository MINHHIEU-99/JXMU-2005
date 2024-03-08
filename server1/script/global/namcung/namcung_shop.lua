Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\namcung\\hotrogm.lua")
Include("\\script\\task\\partner\\education\\swordking_people.lua")
Include("\\script\\global\\namcung\\gmquanlyserver\\ds_gm.lua");
Include("\\script\\update_feature\\nhanthuongngay\\award_day.lua")
--======================================================================
Include("\\script\\task\\tollgate\\killer\\mibao_head.lua")
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function main()
	local szTitle = "<npc>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>Giang H� Ho�ng Kim.Com<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... !"
	local tbOpt =
	{
             {"Ph�n Th��ng Ti�u Di�t Boss ��i Ki�m Ti�n + Ti�u Phong",NhiemVuSatThu1},
                -- {"Nh�n Th��ng H�ng Ng�y",NhanThuongHangNgay},
		{"Nh�n Th��ng S�n 8 Boss S�t Th�",NhiemVuSatThu},
		{"3 L�n X�ng V�o �i M�t Th�t", vuotai},
		{"Nh�n Th��ng 8 Con Boss Cu�i L��ng Mi Nhi", viemde},
               {"Nh�n Th��ng 8 L�n V�n Ti�u", vantieu},
		 {"Nh�n Th��ng 6 L�n ��t 10.000 �i�m T�ng Kim", tongkim},
                 {"Nh�n Th��ng 10  Con Boss Th� Gi�i", bosstieu},
               {"Nh�n Th��ng 10  Con Boss Phong L�ng ��", phonglangdo},
              {"Nh�n Th��ng 3  Con Boss Ki�m Gia", kiemgia},
              {"Nh�n Th��ng 3  Thien Bao Kho", thienbaokho},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	


end

function NhiemVuSatThu1()
	if GetTask(5128) >= 1 then
      local  tbAwaZrd = {
              {nExp_tl = 10e9},
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=100},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=100},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=100},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=100},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=100},
		{szName = "Th�n M� �an", tbProp = {6,1,50000,1,0,0},nCount = 100},
		{szName="M� Thu�t",tbProp={6,1,6776,1,0,0},nCount=100},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,30164,1,0,0},nCount=500},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,30189,1,0,0},nCount=100},
                {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=2000},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=100},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=10},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},

     }
		  tbAwardTemplet:GiveAwardByList(tbAwaZrd, "Ph�n th��ng Ti�u Di�t Bos ��i")
		SetTask(5128,GetTask(5128)- 1)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().." <color=green>�� Nh�n Th��ng Ti�u Di�t Boss ��i Ki�m Ti�n + Ti�u Phong <color>")
WriteLogPro("dulieu/hoatdongxu/boss_kiemtien.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nop tong so :"..GetTask(5128).."  cai   \n");

	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� Ti�u Di�t ���c <color=red>"..GetTask(5128).."/1<color> Boss ��i C�a Sever...!<color>")
	end
end					

function NhiemVuSatThu()
if GetTask(1194) >= 8 then
	 tbAward = {
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=50},
               {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="Thi�p gi�ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="Thi�p gi�ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},

                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng Ti�u Di�t 8 S�t Th�")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_8satthu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
		SetTask(1194,0)
	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� Ti�u Di�t ���c <color=red>"..GetTask(1194).."/8<color> L�n Boss S�t Th�...!<color>")
	end
end


function vuotai()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
if GetTask(5135) >= 3 then
	 tbAwardZ = {
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="Thi�p gi�ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="Thi�p gi�ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},

                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardZ, "Ph�n th��ng Ti�u Di�t 8 Ai")
		SetTask(5135,0)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Nh�n Th��ng 8 L�n X�ng V�o M�t Th�t C�a �i Th�nh C�ng <color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Vuot_Ai.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� X�ng V�o �i <color=red>"..GetTask(5135).."/3<color> L�n")
	end
end
--==============================================================================================
function viemde()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
if GetTask(5136) >= 8 then
	 tbAwardX = { 
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
        {szName="Thi�p gi�ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="Thi�p gi�ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="Thi�p gi�ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},

}
		tbAwardTemplet:GiveAwardByList(tbAwardX, "Ph�n th��ng Ti�u Di�t 8 Con")
		SetTask(5136,0)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Nh�n Th��ng 8 Con Boss Cu�i L��ng Mi Nhi Vi�m �� Th�nh C�ng <color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_VuotViem_De.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i Gi�t Boss Vi�m �� <color=red>"..GetTask(5136).."/8<color> Con")
	end
end
--==============================================================================================
function vantieu()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
if GetTask(5137) >= 8 then
	 tbAwardC = { 
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=50},
 {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="Thi�p gi�ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="Thi�p gi�ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="Thi�p gi�ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardC, "Ph�n th��ng 8 Van Ti�u")
		SetTask(5137,0)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Nh�n Th��ng 8 L�n V�n Ti�u Thanh Th�nh Th�nh C�ng <color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Van_tieu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� V�n Ti�u <color=red>"..GetTask(5137).."/8<color> L�n")
	end
end
--==============================================================================================
function tongkim()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
if GetTask(5138) >= 6 then
	 tbAwardB = {
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="Thi�p gi�ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="Thi�p gi�ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="Thi�p gi�ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},

}
		tbAwardTemplet:GiveAwardByList(tbAwardB, "Ph�n th��ng 6 tongkim")
		SetTask(5138,0)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Nh�n Th��ng 6 L�n ��t 10.000 �i�m T�ng Kim<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_TOng_Kim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� ��t 10.000 �i�m<color=red>"..GetTask(5138).."/6<color> L�n")
	end
end
--==============================================================================================
function bosstieu()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
if GetTask(5139) >= 10 then
	 tbAwardV = {
                {szName="Tinh Ngoc",tbProp={6,1,30140,1,0,0},nCount=1}, 
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=50},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="Thi�p gi�ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="Thi�p gi�ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="Thi�p gi�ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardV, "Ph�n th��ng 10 boss ti�u")
		SetTask(5139,0)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Nh�n Th��ng  Ti�u Di�t 10 con boss Th� Gi�i<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Bos_HK.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� Ti�u Di�t<color=red>"..GetTask(5139).."/20<color> Con")
	end
end
--==============================================================================================
function phonglangdo()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
if GetTask(5140) >= 10 then
	 tbAwardm = {
                {szName="Tinh Ngoc",tbProp={6,1,30140,1,0,0},nCount=1}, 
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="Thi�p gi�ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="Thi�p gi�ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="Thi�p gi�ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardm, "Ph�n th��ng 5 lan ho�n th�nh pld")
		SetTask(5140,0)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Nh�n Th��ng  Ti�u Di�t 10 Con Boss PLD<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Bos_PLD.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� Ti�u Di�t<color=red>"..GetTask(5140).."/10<color> Con")
	end
end
--=====================
function kiemgia()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
if GetTask(5141) >= 3 then
	 tbAwardn = {
                {szName="Tinh Ngoc",tbProp={6,1,30140,1,0,0},nCount=1}, 
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="Thi�p gi�ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="Thi�p gi�ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="Thi�p gi�ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardn, "Ph�n th��ng 3 boss ki�m gia")
		SetTask(5141,0)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Nh�n Th��ng  Ti�u Di�t 3 Con Boss Ki�m Gia<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Bos_kiemgia.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� Ti�u Di�t<color=red>"..GetTask(5141).."/3<color> Con")
	end
end


--=====================
function thienbaokho()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
if GetTask(5142) >= 3 then
	 tbAwardb = {
		{szName="kho�ng th�ch",tbProp={6,1,30205,1,0,0},nCount=10},
		{szName="kho�ng th�ch",tbProp={6,1,30217,1,0,0},nCount=10},
		{szName="kho�ng th�ch",tbProp={6,1,30223,1,0,0},nCount=10},
		{szName="kho�ng th�ch",tbProp={6,1,30256,1,0,0},nCount=10},
		{szName="kho�ng th�ch",tbProp={6,1,30267,1,0,0},nCount=10},
           {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=2},

	{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="Thi�p gi�ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="Thi�p gi�ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="Thi�p gi�ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},    	      
}
		tbAwardTemplet:GiveAwardByList(tbAwardb, "Ph�n th��ng 3 L�n Thi�n B�o Kh�")
		SetTask(5142,0)
Msg2SubWorld("<color=green>Ch�c M�ng "..myplayersex().." <color=yellow>"..GetName().."�� Nh�n Th��ng  3 l�n thi�n b�o kh�<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Bos_thienbaokho.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng��i Ch�a �� �i�u Ki�n Nh�n Th��ng\n                               H�y C� G�ng H�n N�a.","<color=yellow>Hi�n T�i �� V��t<color=red>"..GetTask(5142).."/3<color> L�n")
	end
end
