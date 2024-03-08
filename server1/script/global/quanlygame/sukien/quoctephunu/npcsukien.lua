Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
IncludeLib("LEAGUE")
Include("\\script\\bonus_onlinetime\\func_onlineaward.lua")



HOACUCCP = 4576
BOHOAHONGCP = 4577
THIETLAHAN = 4548
CHECKDAY = 4579



function main()
dofile("script/global/quanlygame/sukien/quoctephunu/npcsukien.lua");

local nDate = tonumber(GetLocalDate("%Y%m%d"));
if nDate > 20200320 then
	Say("Event ®· hÕt", 0);
		return
	end;

local tab_Content = {


"Nép Vßng Hoa Sóng/nopquocky",


"GhÐp Hoa Cóc Hoµn Mü./tuyetxanh",
"GhÐp Bã Hoa TuyÖt S¾c./tuyetdo",

"Mua GiÊy KiÕn 2 xu./muakhando",
--"NhËn tói nguyªn liÖu vµ xu/nhantuinguyenlieu",
--"NhËn Nguyªn LiÖu Test/nhannltest",
--"NhËn Thµnh PhÈm Test/thanhpham",
--"Reset mèc vÒ mèc cuoi/resetmoc395",
--"Reset mèc vÒ  00/resetmoc00",
"Ta ch­a mang ®ñ nguyªn liÖu./no"
	}
Say("<color=gold>Eventt Quèc TÕ Phô N÷:<color>\nChµo mõng b¹n ®Õn víi event\n\n<color=yellow>Dïng Hoa Cóc Hoµn Mü<color>" ..GetTask(HOACUCCP) .. "/300 c¸i\n<color=Cyan>Dïng Bã Hoa TuyÖt S¾c: <color>" ..GetTask(BOHOAHONGCP) .. "/300 c¸i", getn(tab_Content), tab_Content);       
end;

function nopquocky()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4578,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=white>trªn ng­êi c¸c h¹ kh«ng cã mang c©y hoa sóng.")
		return
		end
	local nDate = tonumber(GetLocalDate("%d"))		
	if ( GetTask(5341) ~= nDate) and ( GetTask(5340) >= 10) then -- neu khac se
SetTask(5340, 0); --set ngay 6
end
	local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(5341) == nDate) and ( GetTask(5340) >= 10) then -- neu khac se
		Say("Mçi ngµy chØ giao nép 10 c©y hoa sóng xin h·y quay l¹i ngµy h«m sau.", 0);
		return 
end
nopquocky1()
end


function nopquocky1()
local quockyne = CalcItemCount(3,6,1,4578, -1); 


if quockyne < 1 then
 Talk(2, "", ""..myplayersex().." Qu¸ tiÕc thay <color=white>trªn ng­êi c¸c h¹ kh«ng cã mang c©y hoa hång",""); 
 else
AskClientForNumber("nopquocky2",0,1,"Sè l­îng nép")
end
end


function nopquocky2(num)
if num > 1 or num == 0 then
Say(" <color=white>kh«ng ®­îc nép qu¸ 1 c©y 1 lÇn..")
return
end
local quockyne = CalcItemCount(3,6,1,4578, -1); 
			num1= num*1;
	if  num1 > quockyne  then
		Talk(1, "", " Cã lén kh«ng : thiÕu "..num1-quockyne.." Hoa Sóng\n"..myplayersex().." \ <color=green>h·y ®i t×m vÒ ®©y.!");
	return   
    end
	if quockyne >= num1 then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4578,-1)
			end
			for i=1, num do			
StackExp(1000000);
end	
	Msg2Player(" <color=white>§· giao nép  <color=red>"..num.." <color=white>Hoa Sóng.")
	--local szNews = format("<color=cyan>§¹i hiÖp <color=pink>"..GetName().."<color> ®· lµm thµnh c«ng <color=yellow>"..num.." Hoa Sóng..")
	--AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	CastSkill(251,1)
CastSkill(681,1)
CastSkill(285,1)
CastSkill(688,1)
end
local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(5341) ~= nDate) and ( GetTask(5340) < 10) then -- neu khac se
SetTask(5340,GetTask(5340)+num)
end
local nDate = tonumber(GetLocalDate("%d"))		
if (GetTask(5340) == 10) then -- neu khac se
SetTask(5341, nDate); --set ngay 6
end	
end





function muakhando()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ 2 xu.") -- go
	return
 else
AskClientForNumber("muakhando1",1,50,"Sè l­îng mua")
end
end
function muakhando1(num)
if num > 50 or num == 0 or  num < 0 then
	OfflineLive(PlayerIndex); 
	KickOutSelf()	
return
end
local tienxu  = CalcItemCount(3,4,417,1, -1) ; --xu 

	if ( num*2 > tienxu) then
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." GiÊy KiÕng") -- go
	return  
	end
	if (tienxu >= num*2) then

					for i=1,num do
					ConsumeEquiproomItem(2,4,417,1,-1)
					end
	
			for i=1, num do			
			AddItem(6,1,4575,1,1,0) 			
end	
	Msg2Player("B¹n Mua thµnh c«ng <color=green>"..num.." GiÊy KiÕng ..!")
--	local szNews = format("<color=cyan>§¹i hiÖp <color=pink>"..GetName().."<color> ®· mua thµnh c«ng <color=yellow>"..num.." giá hoa t¹i S¹p Hoa T­¬ng D­¬ng")
--	AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		return end	
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." GiÊy KiÕng") -- go
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color> online vui vÎ..!"); 	
	end
end



function tuyetxanh()
local tab_Content = {
		"Ta muèn lµm ngay/tuyetxanh1",
		"kÕt thóc/no"
	}
Say("<color=yellow>Tieungaogiangho.net:<color> Nguyªn liÖu cÇn: \n<color=white> + 1 Cµnh Hoa Cóc \n + 1 Cµnh Hoa Hång\n + 3 v¹n l­îng", getn(tab_Content), tab_Content);       
end;


function tuyetdo()
local tab_Content = {
		"Ta muèn lµm ngay/tuyetdo1",
		"kÕt thóc/no"
	}
Say("<color=yellow>Tieungaogiangho.net:<color> Nguyªn liÖu cÇn: \n<color=white> + 1 Cµnh Hoa Cóc \n + 1 Cµnh Hoa Hång\n + 1 D©y Cuéc Hoa\n + 1 GiÊy KiÕn", getn(tab_Content), tab_Content);       
end;




function resetmoc395()
SetTask(4576,298)
SetTask(4577,298)

end

function resetmoc00()
SetTask(4576,0)
SetTask(4577,0)
end

function nhantuinguyenlieu()
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4571,1,1},nCount=500,},}, "test", 1);
--Earn(1000000)

--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={4,417,1,1,0},nCount=100,},}, "test", 1);
end

function nhannltest()
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4572,1,1},nCount=10,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4573,1,1},nCount=10,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4574,1,1},nCount=10,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4575,1,1},nCount=10,},}, "test", 1);

end

function thanhpham()
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4576,1,1},nCount=301,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4577,1,1},nCount=301,},}, "test", 1);
end



function myplayersex()
	if GetSex() == 1 then 
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end



function tuyetxanh1()
	local nSilverCount = CalcEquiproomItemCount(6,1,4572,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>Cßn thiÕu 1 hoa cóc.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4573,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>Cßn thiÕu 1 hoa hång.")
		return
		end
	if (GetCash() < 30000) then
		Talk(1, "no", "<color=white>Cßn thiÕu  3 v¹n l­îng")
		return
		end
tuyetxanh2()
end



function tuyetdo1()
	local nSilverCount = CalcEquiproomItemCount(6,1,4572,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>Cßn thiÕu 1 hoa cóc.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4573,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>Cßn thiÕu 1 hoa hång.")
		return
		end
			local nSilverCount = CalcEquiproomItemCount(6,1,4574,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>Cßn thiÕu 1 D©y Cét Hoa.")
		return
		end
			local nSilverCount = CalcEquiproomItemCount(6,1,4575,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>Cßn thiÕu 1 GiÊy KiÕng.")
		return
		end
tuyetdo2()
end



function tuyetxanh2()
local hoacuc = CalcItemCount(3,6, 1,4572, -1);
local hoahong = CalcItemCount(3,6, 1,4573, -1);
local daycot = CalcItemCount(3,6, 1,4574, -1);
local giaykieng = CalcItemCount(3,6, 1,4575, -1);
local tienvan = GetCash()


if hoacuc < 1 and hoahong < 1 and tienvan < 30000 then
 Talk(2, "", ""..myplayersex().." Qu¸ tiÕc thay","Nguyªn liÖu cÇn: \n<color=white> + 1 Cµnh Hoa Cóc \n + 1 Cµnh Hoa Hång\n + 3 v¹n l­îng"); 
 else
AskClientForNumber("tuyetxanh3",0,50,"Sè l­îng ghÐp")
end
end


function tuyetxanh3(num)
if num > 50 or num == 0 or  num < 0 then
	OfflineLive(PlayerIndex); 
	KickOutSelf()
return	
end
local hoacuc = CalcItemCount(3,6, 1,4572, -1);
local hoahong = CalcItemCount(3,6, 1,4573, -1);
local daycot = CalcItemCount(3,6, 1,4574, -1);
local giaykieng = CalcItemCount(3,6, 1,4575, -1);
local tienvan = GetCash()

			num1= num*1;
			num2= num*1;
			num3= num*30000;


	if ( num1 >hoacuc and num2 >hoahong and num3 > tienvan) then
 Talk(2, "", ""..myplayersex().." Qu¸ tiÕc thay","Nguyªn liÖu cÇn: \n<color=white> + 1 Cµnh Hoa Cóc \n + 1 Cµnh Hoa Hång\n + 3 v¹n l­îng"); 
	return   
      end
	if (hoacuc >= num1 and hoahong >= num2 and tienvan >= num3 ) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4572,-1)
			end
				for i=1,num2 do
			ConsumeEquiproomItem(1,6,1,4573,-1)
				end
												for i=1,num do
			Pay(30000)
				end
			for i=1, num do			
			AddItem(6,1,4576,1,1,0) 			
end	
	Msg2Player(" <color=white>§· lµm ra ®­îc <color=red>"..num.." <color=white>Hoa Cóc Hoµn Mü.")
	--local szNews = format("<color=cyan>§¹i hiÖp <color=red>"..GetName().."<color> ®· lµm thµnh c«ng <color=yellow>"..num.." thiÖp chóc xu©n..")
	--AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		return
end	
 Talk(2, "", ""..myplayersex().." Qu¸ tiÕc thay","Nguyªn liÖu cÇn: \n<color=white> + 1 Cµnh Hoa Cóc \n + 1 Cµnh Hoa Hång\n + 3 v¹n l­îng"); 
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end



function tuyetdo2()
local hoacuc = CalcItemCount(3,6, 1,4572, -1);
local hoahong = CalcItemCount(3,6, 1,4573, -1);
local daycot = CalcItemCount(3,6, 1,4574, -1);
local giaykieng = CalcItemCount(3,6, 1,4575, -1);
local tienvan = GetCash()


if hoacuc < 1 and hoahong < 1 and daycot < 1 and giaykieng < 1 then
 Talk(2, "", ""..myplayersex().." Qu¸ tiÕc thay","Nguyªn liÖu cÇn: \n<color=white> + 1 Cµnh Hoa Cóc \n + 1 Cµnh Hoa Hång\n + 1 D©y Cuéc Hoa\n + 1 GiÊy KiÕn"); 
 else
AskClientForNumber("tuyetdo3",0,50,"Sè l­îng ghÐp")
end
end


function tuyetdo3(num)
if num > 50 or num == 0 or  num < 0 then
	OfflineLive(PlayerIndex); 
	KickOutSelf()
return	
end
local hoacuc = CalcItemCount(3,6, 1,4572, -1);
local hoahong = CalcItemCount(3,6, 1,4573, -1);
local daycot = CalcItemCount(3,6, 1,4574, -1);
local giaykieng = CalcItemCount(3,6, 1,4575, -1);
local tienvan = GetCash()

			num1= num*1;
			num2= num*1;
			num3= num*1;
			num4= num*1;



	if ( num1 >hoacuc and num2 >hoahong and num3 >daycot and num4 > giaykieng) then
 Talk(2, "", ""..myplayersex().." Qu¸ tiÕc thay","Nguyªn liÖu cÇn: \n<color=white> + 1 Cµnh Hoa Cóc \n + 1 Cµnh Hoa Hång\n + 1 D©y Cuéc Hoa\n + 1 GiÊy KiÕn"); 
	return   
      end
	if (hoacuc >= num1 and hoahong >= num2 and daycot >= num3 and giaykieng >= num4 ) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4572,-1)
			end
				for i=1,num2 do
			ConsumeEquiproomItem(1,6,1,4573,-1)
				end
								for i=1,num3 do
			ConsumeEquiproomItem(1,6,1,4574,-1)
				end
								for i=1,num4 do
			ConsumeEquiproomItem(1,6,1,4575,-1)
				end
			for i=1, num do			
			AddItem(6,1,4577,1,1,0) 			
end	
	Msg2Player(" <color=white>§· lµm ra ®­îc <color=red>"..num.." <color=white>Bã Hoa TuyÖt S¾c.")
	--local szNews = format("<color=cyan>§¹i hiÖp <color=red>"..GetName().."<color> ®· lµm thµnh c«ng <color=yellow>"..num.." thiÖp chóc xu©n..")
	--AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		return
end	
 Talk(2, "", ""..myplayersex().." Qu¸ tiÕc thay","Nguyªn liÖu cÇn: \n<color=white> + 1 Cµnh Hoa Cóc \n + 1 Cµnh Hoa Hång\n + 1 D©y Cuéc Hoa\n + 1 GiÊy KiÕn"); 
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end





function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end




function randommaxeventt()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local s = random(1,100)

if s>=1 and s < 4  then
			tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s>=4 and s < 8  then
			tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s>=8 and s < 14  then
nguangaunhien()
end;
if s>=14 and s < 24  then
			tbAwardTemplet:GiveAwardByList({{szName = "lÖnh bµi boss tiÓu",tbProp={6,1,4427,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=24 and s < 45  then
			tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao TiÒn V¹n",tbProp={6,1,4580,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=45 and s < 56  then
			tbAwardTemplet:GiveAwardByList({{szName = "Tien thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=56 and s < 72  then
			tbAwardTemplet:GiveAwardByList({{szName = "§¹i thµnh",tbProp={6,1,2424,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

end;
if s>=72 and s < 101  then
		tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,random(177,185)},nQuality=1,nCount=1,CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "lÔ bao kim phong",tbProp={6,1,4367,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
end


function nguangaunhien()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> May m¾n nhËn ®­îc <color=pink><%s><color=green><enter><color=yellow>< Khi Sö Dông Max Event ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local t = random(1,5)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="TuyÕt ¶nh",tbProp={0,10,5,3,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="« V©n §¹p TuyÕt",tbProp={0,10,5,6,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="ChiÕu D¹",tbProp={0,10,5,10,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="XÝch Thè",tbProp={0,10,5,7,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="§Ých L«",tbProp={0,10,5,9,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
end



