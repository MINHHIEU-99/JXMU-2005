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
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function main()
	local szTitle = "<npc>.<enter><color=yellow>Vâ L©m TruyÒn Kú<color><enter><color=red>Giang Hå Hoµng Kim.Com<color>.<enter>Hoan nghªnh c¸c anh hïng hµo kiÖt... !"
	local tbOpt =
	{
             {"PhÇn Th­ëng Tiªu DiÖt Boss §¹i KiÕm Tiªn + Tiªu Phong",NhiemVuSatThu1},
                -- {"NhËn Th­ëng Hµng Ngµy",NhanThuongHangNgay},
		{"NhËn Th­ëng S¨n 8 Boss S¸t Thñ",NhiemVuSatThu},
		{"3 LÇn X«ng Vµo ¶i MËt ThÊt", vuotai},
		{"NhËn Th­ëng 8 Con Boss Cuèi L­ìng Mi Nhi", viemde},
               {"NhËn Th­ëng 8 LÇn VËn Tiªu", vantieu},
		 {"NhËn Th­ëng 6 LÇn ®¹t 10.000 §iÓm Tèng Kim", tongkim},
                 {"NhËn Th­ëng 10  Con Boss ThÕ Giíi", bosstieu},
               {"NhËn Th­ëng 10  Con Boss Phong L¨ng §é", phonglangdo},
              {"NhËn Th­ëng 3  Con Boss KiÕm Gia", kiemgia},
              {"NhËn Th­ëng 3  Thien Bao Kho", thienbaokho},
		{"Tho¸t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	


end

function NhiemVuSatThu1()
	if GetTask(5128) >= 1 then
      local  tbAwaZrd = {
              {nExp_tl = 10e9},
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=100},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=100},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=100},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=100},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=100},
		{szName = "ThÇn M· §an", tbProp = {6,1,50000,1,0,0},nCount = 100},
		{szName="M· ThuËt",tbProp={6,1,6776,1,0,0},nCount=100},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,30164,1,0,0},nCount=500},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,30189,1,0,0},nCount=100},
                {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=2000},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=100},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=10},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},

     }
		  tbAwardTemplet:GiveAwardByList(tbAwaZrd, "PhÇn th­ëng Tiªu DiÖt Bos §¹i")
		SetTask(5128,GetTask(5128)- 1)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().." <color=green>§· NhËn Th­ëng Tiªu DiÖt Boss §¹i KiÕm Tiªn + Tiªu Phong <color>")
WriteLogPro("dulieu/hoatdongxu/boss_kiemtien.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nop tong so :"..GetTask(5128).."  cai   \n");

	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· Tiªu DiÖt §­îc <color=red>"..GetTask(5128).."/1<color> Boss §¹i Cña Sever...!<color>")
	end
end					

function NhiemVuSatThu()
if GetTask(1194) >= 8 then
	 tbAward = {
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=50},
               {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},

                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAward, "PhÇn th­ëng Tiªu DiÖt 8 S¸t Thñ")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_8satthu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
		SetTask(1194,0)
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· Tiªu DiÖt §­îc <color=red>"..GetTask(1194).."/8<color> LÇn Boss S¸t Thñ...!<color>")
	end
end


function vuotai()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
if GetTask(5135) >= 3 then
	 tbAwardZ = {
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},

                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardZ, "PhÇn th­ëng Tiªu DiÖt 8 Ai")
		SetTask(5135,0)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· NhËn Th­ëng 8 LÇn X«ng Vµo MËt ThÊt Cöa ¶i Thµnh C«ng <color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Vuot_Ai.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· X«ng Vµo ¶i <color=red>"..GetTask(5135).."/3<color> LÇn")
	end
end
--==============================================================================================
function viemde()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
if GetTask(5136) >= 8 then
	 tbAwardX = { 
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
        {szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},

}
		tbAwardTemplet:GiveAwardByList(tbAwardX, "PhÇn th­ëng Tiªu DiÖt 8 Con")
		SetTask(5136,0)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· NhËn Th­ëng 8 Con Boss Cuèi L­ìng Mi Nhi Viªm §Õ Thµnh C«ng <color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_VuotViem_De.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i GiÕt Boss Viªm §Õ <color=red>"..GetTask(5136).."/8<color> Con")
	end
end
--==============================================================================================
function vantieu()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
if GetTask(5137) >= 8 then
	 tbAwardC = { 
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=50},
 {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardC, "PhÇn th­ëng 8 Van Tiªu")
		SetTask(5137,0)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· NhËn Th­ëng 8 LÇn VËn Tiªu Thanh Thµnh Thµnh C«ng <color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Van_tieu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· VËn Tiªu <color=red>"..GetTask(5137).."/8<color> LÇn")
	end
end
--==============================================================================================
function tongkim()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
if GetTask(5138) >= 6 then
	 tbAwardB = {
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},

}
		tbAwardTemplet:GiveAwardByList(tbAwardB, "PhÇn th­ëng 6 tongkim")
		SetTask(5138,0)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· NhËn Th­ëng 6 LÇn §¹t 10.000 §iÓm Tèng Kim<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_TOng_Kim.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· §¹t 10.000 §iÓm<color=red>"..GetTask(5138).."/6<color> LÇn")
	end
end
--==============================================================================================
function bosstieu()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
if GetTask(5139) >= 10 then
	 tbAwardV = {
                {szName="Tinh Ngoc",tbProp={6,1,30140,1,0,0},nCount=1}, 
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=50},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardV, "PhÇn th­ëng 10 boss tiÓu")
		SetTask(5139,0)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· NhËn Th­ëng  Tiªu DiÖt 10 con boss ThÕ Giíi<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Bos_HK.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· Tiªu DiÖt<color=red>"..GetTask(5139).."/20<color> Con")
	end
end
--==============================================================================================
function phonglangdo()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
if GetTask(5140) >= 10 then
	 tbAwardm = {
                {szName="Tinh Ngoc",tbProp={6,1,30140,1,0,0},nCount=1}, 
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardm, "PhÇn th­ëng 5 lan hoµn thµnh pld")
		SetTask(5140,0)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· NhËn Th­ëng  Tiªu DiÖt 10 Con Boss PLD<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Bos_PLD.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· Tiªu DiÖt<color=red>"..GetTask(5140).."/10<color> Con")
	end
end
--=====================
function kiemgia()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
if GetTask(5141) >= 3 then
	 tbAwardn = {
                {szName="Tinh Ngoc",tbProp={6,1,30140,1,0,0},nCount=1}, 
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=50},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=50},
{szName="KNB",tbProp={4,1506,1,1,0,0},nCount=10},
	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=10},

	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,30189,1,0,0},nCount=5},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},
}
		tbAwardTemplet:GiveAwardByList(tbAwardn, "PhÇn th­ëng 3 boss kiÕm gia")
		SetTask(5141,0)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· NhËn Th­ëng  Tiªu DiÖt 3 Con Boss KiÕm Gia<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Bos_kiemgia.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· Tiªu DiÖt<color=red>"..GetTask(5141).."/3<color> Con")
	end
end


--=====================
function thienbaokho()
 if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H·y §Ó Trèng 30 ¤ Råi NhËn Th­ëng")
		return
	end
if GetTask(5142) >= 3 then
	 tbAwardb = {
		{szName="kho¸ng th¹ch",tbProp={6,1,30205,1,0,0},nCount=10},
		{szName="kho¸ng th¹ch",tbProp={6,1,30217,1,0,0},nCount=10},
		{szName="kho¸ng th¹ch",tbProp={6,1,30223,1,0,0},nCount=10},
		{szName="kho¸ng th¹ch",tbProp={6,1,30256,1,0,0},nCount=10},
		{szName="kho¸ng th¹ch",tbProp={6,1,30267,1,0,0},nCount=10},
           {szName="KNB",tbProp={4,1506,1,1,0,0},nCount=2},

	{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,4806,1,0,0},nCount=100},
{szName="ThiÖp gi¸ng sinh 1",tbProp={6,1,1328,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 2",tbProp={6,1,1329,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 3",tbProp={6,1,1330,1,0,0},nCount=10},
       {szName="ThiÖp gi¸ng sinh 4",tbProp={6,1,1331,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,1332,1,0,0},nCount=10},
	{szName="ThiÖp gi¸ng sinh 5",tbProp={6,1,50002,1,0,0},nCount=10},
                {szName="Tinh Ngoc",tbProp={6,1,30276,1,0,0},nCount=100},    	      
}
		tbAwardTemplet:GiveAwardByList(tbAwardb, "PhÇn th­ëng 3 LÇn Thiªn B¶o Khè")
		SetTask(5142,0)
Msg2SubWorld("<color=green>Chóc Mõng "..myplayersex().." <color=yellow>"..GetName().."§· NhËn Th­ëng  3 lÇn thiªn b¶o khè<color>")
WriteLogPro("dulieu/hoason/thongtin"..date("%d_%m_%Y").."thuong_Bos_thienbaokho.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nhan thuong phong ky phe kim  \n");
	else
		Talk(2,"","<color=green>Ng­¬i Ch­a §ñ §iÒu KiÖn NhËn Th­ëng\n                               H·y Cè G¨ng H¬n N÷a.","<color=yellow>HiÖn T¹i §· V­ît<color=red>"..GetTask(5142).."/3<color> LÇn")
	end
end
