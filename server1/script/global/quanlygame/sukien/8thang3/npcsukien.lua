Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")


TASKHOAHONG = 5320
TASKHOACUC = 5319
TASKNHANMOC = 5321

--function main1(NpcIndex)
--Say("Event KÕt Thóc !!") 
--return 
--end


function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/npcsukien.lua");
do Say("HÕt thêi gian ghÐp vËt phÈm !!") return end
local tab_Content = {
	"GhÐp Hoa Cóc Cùc PhÈm /hoacuc",
	"GhÐp Hoa Hång Hoµn Mü /hoahong",
	"NhËn Mèc Hoa Hång Hoµn Mü/nhanmocfull",
	--"KiÓm Tra Mèc Cóc/moccuc",
	--"KiÓm Tra Mèc Hång/mochong",
	--"Reset C¶ 2 mèc test tiÕp /resetmocevent",
	"Ta ch­a mang ®ñ nguyªn liÖu/no"
	}
Say("<color=yellow>NPC Sù KiÖn 8-3:<color>\nNh©n ngµy phô n÷  ViÖt Nam h¶y sì h÷u thËt nhiÒu nh÷ng nô hoa cóc cïng hoa hång t×nh yªu l·n m¹n ¾c sÏ nhËn ®­îc nhiÒu ®iÒu may m¾n\n<color=Red>Hoa hång : <color>" ..GetTask(TASKHOAHONG) .. "/300\n<color=yellow>Hoa Cóc : <color>" .. GetTask(TASKHOACUC) .. "/300 ", getn(tab_Content), tab_Content);       
end;

function mochong()
  local nTask = GetTask(TASKHOAHONG)
  Talk (1, "","B¹n ®· sö dông <color=yellow>"..nTask.."<color> Hoa Hång")
end

function moccuc()
  local nTask = GetTask(TASKHOACUC)
  Talk (1, "","B¹n ®· sö dông <color=yellow>"..nTask.."<color> Hoa Cóc")
end

function resetmocevent()
SetTask(5320,0)
SetTask(5319,0)
SetTask(5321,0)
end

function hoacuc()
local tab_Content = {
		"Ta ®· hiÓu b¾t ®Çu ghÐp/hoacuc1",
		"Ta chØ tiÖn ghÐ qua ®©y th«i..!/no"
	}
Say("<color=yellow>NPC Sù KiÖn 8-3:<color> Nguyªn liÖu ghÐp hoa cóc cùc phÈm cÇn: \n1 Nh¸nh Hoa Cóc - 1 Lä N­íc - 1 Tói Ph©n Bãn", getn(tab_Content), tab_Content);       
end;


function hoahong()
local tab_Content = {
		"Ta ®· hiÓu b¾t ®Çu ghÐp/hoahong1",
		"Ta chØ tiÖn ghÐ qua ®©y th«i..!/no"
	}
Say("<color=yellow>NPC Sù KiÖn 8-3:<color> Nguyªn liÖu ghÐp hoa cóc cùc phÈm cÇn: \n1 Nh¸nh Hoa Hång - 1 Lä N­íc - 1 Th¸nh Thñy", getn(tab_Content), tab_Content);       
end;


function laynguyenlieu()
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={6,1,4366,1,1},nCount=100,},}, "test", 1);
Earn(1000000)
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={4,417,1,1},nCount=100,},}, "test", 1);


end

function nhanfullhoa()
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={6,1,4363,1,1},nCount=301,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M¶nh",tbProp={6,1,4362,1,1},nCount=301,},}, "test", 1);


end



function myplayersex()
	if GetSex() == 1 then 
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end



-----------------------------------------------------------HOA CUC CUC PHAM---------------------------------------------------

function hoacuc1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4360,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu Nh¸nh Hoa Cóc xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4361,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu Lä N­íc xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount3 = CalcEquiproomItemCount(6,1,4364,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu Tói Ph©n Bãn xin h·y kiÓm tra l¹i.")
		return
		end
hoacuc2()
end


function hoacuc2()
local hoacuc = CalcItemCount(3,6,1,4360, -1) ; --hoacuc 
local lonuoc = CalcItemCount(3,6, 1,4361, -1) ; --lonuoc 
local phanbon = CalcItemCount(3,6,1,4364, -1) ; --phanbon 

 

if hoacuc < 1 and lonuoc < 1 and phanbon< 1  then
 Talk(2, "", ""..myplayersex().." Xin thø lçi","Nguyªn liÖu ph¶i cã: <color=while>\n1 Nh¸nh Hoa Cóc - 1 Lä N­íc - 1 Tói Ph©n Bãn..!"); 
 else
AskClientForNumber("hoacuc3",0,50,"Sè l­îng")
end
end

function hoacuc3(num)
local hoacuc = CalcItemCount(3,6,1,4360, -1) ; --hoacuc 
local lonuoc = CalcItemCount(3,6, 1,4361, -1) ; --lonuoc 
local phanbon = CalcItemCount(3,6,1,4364, -1) ; --phanbon 
 


			num1= num*1;
			num2= num*1;
			num3= num*1;


	if ( num1 >hoacuc and num2 >lonuoc and num3 >phanbon) then
		Talk(1, "", ""..myplayersex().." Nguyªn liÖu cßn thiÕu "..num1-hoacuc.." Nh¸nh Hoa Cóc, "..num2-lonuoc.." Lä N­íc , "..num3-phanbon.." Ph©n Bãn \n\n"..myplayersex().." kh«ng mang theo ®ñ nguyªn liªu.<color=yellow>\ <color=red>xin kiÓm tra l¹i..!");
	return   
                       end
	if (hoacuc >= num1 and lonuoc >= num2 and phanbon >= num3) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4360,-1)
			end
				for i=1,num2 do
				ConsumeEquiproomItem(1,6,1,4361,-1)
				end
					for i=1,num3 do
					ConsumeEquiproomItem(1,6,1,4364,-1)
					end
	
			for i=1, num do			
				AddItem(6,1,4363,1,1,0) 			
end	
			Msg2Player(""..myplayersex().." Chóc mõng b¹n nhËn ®­îc <color=green>"..num.." Hoa Cóc Cùc PhÈm..!")
		return
end	
		Talk(1, "", ""..myplayersex().." Nguyªn liÖu cßn thiÕu "..num1-hoacuc.." Nh¸nh Hoa Cóc, "..num2-lonuoc.." Lä N­íc , "..num3-phanbon.." Ph©n Bãn \n\n"..myplayersex().." kh«ng mang theo ®ñ nguyªn liªu.<color=yellow>\ <color=red>xin kiÓm tra l¹i..!");
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end




-----------------------------------------------------------HOA HONG HOAN MY---------------------------------------------------

function hoahong1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4359,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu Nh¸nh Hoa Hång xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4361,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu Lä N­íc xin h·y kiÓm tra l¹i.")
		return
		end
	local nSilverCount3 = CalcEquiproomItemCount(6,1,4365,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp cßn thiÕu b×nh Th¸nh Thñy xin h·y kiÓm tra l¹i.")
		return
		end
hoahong2()
end


function hoahong2()
local hoahong = CalcItemCount(3,6,1,4359, -1) ; --hoahong
local lonuoc = CalcItemCount(3,6, 1,4361, -1) ; --lonuoc 
local thanhthuy = CalcItemCount(3,6,1,4365, -1) ; --thanhthuy

 

if hoahong < 1 and lonuoc < 1 and thanhthuy< 1  then
 Talk(2, "", ""..myplayersex().." Xin thø lçi","Nguyªn liÖu ph¶i cã: <color=while>\n1 Nh¸nh Hoa Hång - 1 Lä N­íc - 1 Th¸nh Thñy..!"); 
 else
AskClientForNumber("hoahong3",0,50,"Sè l­îng")
end
end

function hoahong3(num)
local hoahong = CalcItemCount(3,6,1,4359, -1) ; --hoahong
local lonuoc = CalcItemCount(3,6, 1,4361, -1) ; --lonuoc 
local thanhthuy = CalcItemCount(3,6,1,4365, -1) ; --thanhthuy
 


			num1= num*1;
			num2= num*1;
			num3= num*1;


	if ( num1 >hoahong and num2 >lonuoc and num3 >thanhthuy) then
		Talk(1, "", ""..myplayersex().." Nguyªn liÖu cßn thiÕu "..num1-hoahong.." Nh¸nh Hoa Hång, "..num2-lonuoc.." Lä N­íc , "..num3-thanhthuy.." Th¸nh Thñy \n\n"..myplayersex().." kh«ng mang theo ®ñ nguyªn liªu.<color=yellow>\ <color=red>xin kiÓm tra l¹i..!");
	return   
                       end
	if (hoahong >= num1 and lonuoc >= num2 and thanhthuy >= num3) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4359,-1)
			end
				for i=1,num2 do
				ConsumeEquiproomItem(1,6,1,4361,-1)
				end
					for i=1,num3 do
					ConsumeEquiproomItem(1,6,1,4365,-1)
					end
	
			for i=1, num do			
				AddItem(6,1,4362,1,1,0) 			
end	
			Msg2Player(""..myplayersex().." Chóc mõng b¹n nhËn ®­îc <color=green>"..num.." Hoa Hång Hoµn Mü..!")
		return
end	
		Talk(1, "", ""..myplayersex().." Nguyªn liÖu cßn thiÕu "..num1-hoahong.." Nh¸nh Hoa Hång, "..num2-lonuoc.." Lä N­íc , "..num3-thanhthuy.." Th¸nh Thñy \n\n"..myplayersex().." kh«ng mang theo ®ñ nguyªn liªu.<color=yellow>\ <color=red>xin kiÓm tra l¹i..!");
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end


function nhanmocfull()
	if GetTask(TASKNHANMOC) > 0 then
		Say("Mçi nh©n vËt chØ ®­îc nhËn th­ëng 1 lÇn")
		return 1
	end
	if GetTask(TASKHOAHONG) >=300 and GetTask(TASKNHANMOC) == 0 then
tl_addPlayerExp(30000000)
phanthuong()
		logplayer("dulieu/thuongmoc8t3.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] thµnh c«ng ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		local msgtbao = "Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· nhËn th­ëng ®¹t MAX event nhËn ®­îc phÇn th­ëng nh­ ý"
		SetTask(5321,1)
	else
		Say("Ch­a max Event!",0)
		return
	end
end

function phanthuong()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> May m¾n nhËn ®­îc <color=pink><%s><color=green><enter><color=yellow>< Khi Sö Dông Max Event ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local c = random(1,12)
if c==10 then
tbAwardTemplet:GiveAwardByList({{szName="§Æc X¸",tbProp={6,1,1375,1,1},nCount=1,nRate=20,CallBack= _Message,},}, "test", 1);
--Msg2Player("ttk")
end;
if c==1 then
tbAwardTemplet:GiveAwardByList({{szName="TÈy Tñy Kinh",tbProp={6,1,22,1,1},nCount=1,nRate=20,CallBack= _Message,},}, "test", 1);
--Msg2Player("ttk")
end;
if c==2 then
tbAwardTemplet:GiveAwardByList({{szName="VLMT",tbProp={6,1,26,1,1},nCount=1,nRate=20,CallBack= _Message,},}, "test", 1);
--Msg2Player("vlmt")
end;
if c==3 then
tbAwardTemplet:GiveAwardByList({{szName="§¹i Thµnh BÝ KÝp",tbProp={6,1,2424,1,1},nCount=1,nRate=25,CallBack= _Message,},}, "test", 1);
--Msg2Player("daithanh")
end;
if c==4 or c==11 or c == 12 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong LÔ Bao",tbProp={6,1,4367,1,1},nCount=1,nRate=100,CallBack= _Message,},}, "test", 1);
--Msg2Player("kimphong")
end;
if c==5 then
tbAwardTemplet:GiveAwardByList({{szName="LÔ Bao BÝ KÝp",tbProp={6,1,4347,1,1},nCount=1,nRate=25,CallBack= _Message,},}, "test", 1);
--Msg2Player("lebao")
end;
if c==6 or c==7 or c==8 or c==9  then
nguangaunhien()
--Msg2Player("ngua")
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
tbAwardTemplet:GiveAwardByList({{szName="TuyÕt ¶nh",tbProp={0,10,5,3,0,0,0},nCount=1,nRate=60,CallBack= _Message,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="« V©n §¹p TuyÕt",tbProp={0,10,5,6,0,0,0},nCount=1,nRate=60,CallBack= _Message,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="ChiÕu D¹",tbProp={0,10,5,10,0,0,0},nCount=1,nRate=30,CallBack= _Message,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="XÝch Thè",tbProp={0,10,5,7,0,0,0},nCount=1,nRate=30,CallBack= _Message,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="§Ých L«",tbProp={0,10,5,9,0,0,0},nCount=1,nRate=60,CallBack= _Message,},}, "test", 1);
end;
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end