
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")




TASKHOLO = 5345
TASKBANHKEM = 5346
TASKMUTNHO = 5347
TASKMUTTO = 5348
TASKMOC = 5349
TASKMOC2 = 5350


-------------------------------------- TU khuyao NOI CHUYEN --------------------------------
function OnTimer(nNpcIndex,nTimeOut)
	local tab_Chat = {
		"Quèc TÕ ThiÕu Nhi",
		"Cïng ¤n Ký øc",
		"Event TiÕu Ng¹o Giang Hå",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = 10
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\sukien\\quoctethieunhi\\npcsukien.lua")
end

function main()
dofile("script/global/quanlygame/sukien/quoctethieunhi/npcsukien.lua");
			--tbAwardTemplet:GiveAwardByList({{szName = "Ch©n ®¬n kü n¨ng",tbProp={0,10,28,1,0},nCount=1,},}, "test", 1);
			--tbAwardTemplet:GiveAwardByList({{szName = "Ch©n ®¬n kü n¨ng",tbProp={0,10,28,2,0},nCount=1,},}, "test", 1);
			--tbAwardTemplet:GiveAwardByList({{szName = "Ch©n ®¬n kü n¨ng",tbProp={0,10,28,3,0},nCount=1,},}, "test", 1);
			--tbAwardTemplet:GiveAwardByList({{szName = "Ch©n ®¬n kü n¨ng",tbProp={0,10,28,4,0},nCount=1,},}, "test", 1);

--	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	--if nDate >= 20200516 then
	--	Say("Ho¹t ®éng event ®· kÕt thóc.", 0);
	--	return
	--end;
	local tbSay = {}
tinsert(tbSay,"GhÐp Hå L« Ngµo §­êng/#aolinh()")
tinsert(tbSay,"GhÐp B¸nh Kem S÷a T­¬i/#aotruongson()")
	tinsert(tbSay,"Nép Lo¹i KÑo Mót Event/#nopkeomut()")
tinsert(tbSay,"Mua Kem T­¬i 2xu/#muakemtuoi()")
		tinsert(tbSay,"NhËn PhÇn Th­ëng Max B¸nh Kem /#nhanmocmaxne()")
		tinsert(tbSay,"NhËn PhÇn Th­ëng Max 2 Lo¹i /#nhanmocmaxne2()")
--	tinsert(tbSay,"NhËn Test Max 10 LÇn /#testmax10()")
-- tinsert(tbSay,"NhËn nguyªn liÖu/#nhannltest()")
	--tinsert(tbSay,"NhËn thµnh phÈm/#thanhpham()")
--tinsert(tbSay,"Reset mèc vÒ 398/#resetmocevent()")
--tinsert(tbSay,"Reset mèc vÒ 0 hÕt /#resetmocevent0()")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ! /#no()")
	Say("Event:<color>\nQuèc tÕ thiÕu nhi 1 th¸ng 6 cïng «n l¹i ký øc tuæi th¬ hµo hïng bªn nh÷ng trang s¸ch vë vµ nh÷ng ngµy tinh nghÞch phiªu l­u cïng VLTK\n<color=Red>Hå L« Ngµo §­êng: <color>" ..GetTask(TASKHOLO) .. "/300\n<color=yellow>B¸nh Kem: <color>" .. GetTask(TASKBANHKEM) .. "/300", getn(tbSay), tbSay)
	return 1	
end;

function testmax10()
MaXEventThuong()
MaXEventThuong()
MaXEventThuong()
MaXEventThuong()
MaXEventThuong()
MaXEventThuong()
MaXEventThuong()
MaXEventThuong()
MaXEventThuong()
MaXEventThuong()
end


function nhanmocmaxne2()
if GetTask(5345) < 300 then
		Say("B¹n ch­a max hå l« event kh«ng thÓ nhËn", 0);
		return
	end;
	if GetTask(5346) < 300 then
		Say("B¹n ch­a max b¸nh kem event kh«ng thÓ nhËn", 0);
		return
	end;
	if GetTask(5350) > 0 then
		Say("ChØ ®­îc nhËn 1 lÇn", 0);
		return
	end;
if GetTask(5345) >= 300 and GetTask(5346) >= 300 then
StackExp(100000000)
SetTask(5350,1)
	logplayer("dulieu/eventthieunhi.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhan max 2 event",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn thµnh c«ng <color=yellow>PhÇn Th­ëng Mèc Max Event<color>")

end
end


function nhanmocmaxne()
if GetTask(5346) < 300 then
		Say("B¹n ch­a max event kh«ng thÓ nhËn", 0);
		return
	end;
	if GetTask(5349) > 0 then
		Say("ChØ ®­îc nhËn 1 lÇn", 0);
		return
	end;
if GetTask(5346) >= 300 then
MaXEventThuong()
SetTask(5349,1)
	logplayer("dulieu/eventthieunhi.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhan max event banh kem",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end
end

function MaXEventThuong()
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> nhËn thµnh c«ng <color=yellow>PhÇn Th­ëng Mèc Max Event<color>")

local s = random(1,100)
if s>=1 and s <11 then
			tbAwardTemplet:GiveAwardByList({{szName = "§¹i thµnh",tbProp={6,1,2424,1,1},nCount=1,},}, "test", 1);
end;
if s>=11 and s <15 then
			tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1,},}, "test", 1);
end;
if s>=15 and s <20 then
			tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,},}, "test", 1);
end;
if s>=20 and s <31 then
			tbAwardTemplet:GiveAwardByList({{szName = "Tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1,},}, "test", 1);
end;
if s>=31 and s <50 then
			tbAwardTemplet:GiveAwardByList({{szName = "LÖnh bµi boss tiÓu",tbProp={6,1,4427,1,1},nCount=1,},}, "test", 1);
end;
if s>=50 and s <61 then
		tbAwardTemplet:GiveAwardByList({{szName = "Lª bao kim phong",tbProp={6,1,4367,1,1},nCount=1,},}, "test", 1);

end;
if s>=61 and s <66 then
nguangaunhien()
end;
if s>=66 and s <90 then
		tbAwardTemplet:GiveAwardByList({{szName = "lª bao tiÒn v¹n",tbProp={6,1,4580,1,1},nCount=1,},}, "test", 1);
end;
if s>=90 and s <101 then
		tbAwardTemplet:GiveAwardByList({{szName = "Lª bao kim phong",tbProp={6,1,4367,1,1},nCount=1,},}, "test", 1);

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
tbAwardTemplet:GiveAwardByList({{szName="TuyÕt ¶nh",tbProp={0,10,5,3,0,0,0},nCount=1,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="« V©n §¹p TuyÕt",tbProp={0,10,5,6,0,0,0},nCount=1,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="ChiÕu D¹",tbProp={0,10,5,10,0,0,0},nCount=1,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="XÝch Thè",tbProp={0,10,5,7,0,0,0},nCount=1,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="§Ých L«",tbProp={0,10,5,9,0,0,0},nCount=1,},}, "test", 1);
end;

end


function muakemtuoi()
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
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." kem t­¬i") -- go
	return  
	end
	if (tienxu >= num*2) then

					for i=1,num do
					ConsumeEquiproomItem(2,4,417,1,-1)
					end
	
			for i=1, num do			
			AddItem(6,1,4599,1,1,0) 			
end	
	Msg2Player("B¹n Mua thµnh c«ng <color=green>"..num.." kem t­¬i..!")

		return end	
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." kem t­¬i") -- go
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color> online vui vÎ..!"); 	
	end
end




function nopkeomut()
local tab_Content = {
		"Nép kÑo mót nhá/nopkeonho",
		"Nép kÑo mót to/nopkeoto",
		"kÕt thóc/no"
	}
Say("<color=green>Quèc tÕ thiÕu nhi:<color> S­u tÇm kÑo mót ®Ó nép nhËn EXP", getn(tab_Content), tab_Content);       
end;

function nopkeomut()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4603,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=pink>Hµnh trang kh«ng cã 1 kÑo mót nhá")
		return
		end
		if GetTask(5347) >=500 then
				Talk(1, "no", "<color=pink>Mçi nh©n vËt chØ ®­îc sö dông 500 kÑo mót nhá")
		return
		end
				ConsumeEquiproomItem(1,6,1,4603,-1)
		StackExp(1000000);
SetTask(5347,GetTask(5347)+1)
	Msg2Player("Tæng nép thµnh c«ng <color=green>"..GetTask(5347).." kÑo mót nhá.!")
			logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nop 1 keo mut nho",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))


end

function nopkeoto()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4604,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=pink>Hµnh trang kh«ng cã 1 kÑo mót nhá")
		return
		end
		if GetTask(5348) >=1000 then
				Talk(1, "no", "<color=pink>Mçi nh©n vËt chØ ®­îc sö dông 500 kÑo mót nhá")
		return
		end
		ConsumeEquiproomItem(1,6,1,4604,-1)
		StackExp(3000000);
SetTask(5348,GetTask(5348)+1)
	Msg2Player("Tæng nép thµnh c«ng <color=green>"..GetTask(5348).." kÑo mót to.!")
			logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nop 1 keo mut to",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end


function testaolinh()
mocmaxaolinh()
Msg2Player("<color=white>võa max ¸o lÝnh");

end

function testaotruongson()
mocmaxaotruongson()
Msg2Player("<color=white>võa max ¸o tr­êng s¬n");

end


function resetmocevent()
SetTask(5345,298)
SetTask(5346,298)
end

function resetmocevent0()
SetTask(5345,0)
SetTask(5346,0)
end

function aolinh()
local tab_Content = {
		"b¾t ®Çu ghÐp event/aolinh1",
		"kÕt thóc/no"
	}
Say("<color=green>Quèc tÕ thiÕu nhi:<color> Nguyªn liÖu cÇn cã: <color=green>\n1 Tói ®­êng c¸t\n1 Hå L«\n1 S÷a t­¬i", getn(tab_Content), tab_Content);       
end;


function aotruongson()
local tab_Content = {
		"b¾t ®Çu ghÐp event/aotruongson1",
		"kÕt thóc/no"
	}
Say("<color=green>Quèc tÕ thiÕu nhi:<color> Nguyªn liÖu cÇn cã: <color=green>\n1 Tói ®­êng c¸t\n1 Bét B¸nh\n1 Kem T­¬i\n1 S÷a t­¬i", getn(tab_Content), tab_Content);       
end;


function nhannltest()
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4595,1,1},nCount=49,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4596,1,1},nCount=49,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4597,1,1},nCount=49,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4598,1,1},nCount=49,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4599,1,1},nCount=49,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4600,1,1},nCount=49,},}, "test", 1);
Earn(10000000)
end

function thanhpham()
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4601,1,1},nCount=301,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4602,1,1},nCount=301,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4603,1,1},nCount=501,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4604,1,1},nCount=1001,},}, "test", 1);
end



function myplayersex()
	if GetSex() == 1 then 
		return "N÷ chiÕn SÜ";
	else
		return "Nam chiÕn SÜ";
	end
end
-----------------------------------------------------------MUA SACH--------------------------------------------------


function muathuocnhuom()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ 2 xu.") -- go
	return
 else
AskClientForNumber("muathuocnhuom2",1,50,"Sè l­îng mua")
end
end
function muathuocnhuom2(num)
if num > 50 or num == 0 or  num < 0 then
	OfflineLive(PlayerIndex); 
	KickOutSelf()	
return
end
local tienxu  = CalcItemCount(3,4,417,1, -1) ; --xu 

	if ( num*2 > tienxu) then
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." thuèc nhuém") -- go
	return  
	end
	if (tienxu >= num*2) then

					for i=1,num do
					ConsumeEquiproomItem(2,4,417,1,-1)
					end
	
			for i=1, num do			
			AddItem(6,1,4408,1,1,0) 			
end	
	Msg2Player("B¹n Mua thµnh c«ng <color=green>"..num.." thuèc nhuém..!")
--	local szNews = format("<color=cyan>§¹i hiÖp <color=pink>"..GetName().."<color> ®· mua thµnh c«ng <color=yellow>"..num.." giá hoa t¹i S¹p Hoa T­¬ng D­¬ng")
--	AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		return end	
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng TiÒn ®ång ®Ó mua ®ñ "..num.." thuèc nhuém") -- go
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color> online vui vÎ..!"); 	
	end
end

-----------------------------------------------------------TRONG THO SO--------------------------------------------------

function aolinh1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4596,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=pink>Cßn thiÕu tói ®­êng c¸t")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4598,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "<color=pink>Cßn thiÕu hå l«.")
		return
		end
					local nSilverCount3 = CalcEquiproomItemCount(6,1,4600,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "<color=pink>Cßn thiÕu s÷a t­¬i.")
		return
		end
aolinh2()
end


function aolinh2()
local duongcat = CalcItemCount(3,6,1,4596, -1) ; --khuyao 
local holo = CalcItemCount(3,6, 1,4598, -1) ; --vaitho 
local suatuoi = CalcItemCount(3,6,1,4600, -1) ; --aolinh


if duongcat < 1 and holo < 1 and suatuoi < 1  then
 Talk(2, "", ""..myplayersex().." Xin thø lçi"," Nguyªn liÖu cÇn cã: <color=green>\n1 Tói ®­êng c¸t\n1 Hå L«\n1 S÷a t­¬i"); 
 else
AskClientForNumber("aolinh3",0,50,"Sè l­îng")
end
end

function aolinh3(num)
if num > 50 or num == 0 or  num < 0 or num == nil then
	OfflineLive(PlayerIndex); 
	KickOutSelf()
return	
end
local duongcat = CalcItemCount(3,6,1,4596, -1) ; --khuyao 
local holo = CalcItemCount(3,6, 1,4598, -1) ; --vaitho 
local suatuoi = CalcItemCount(3,6,1,4600, -1) ; --aolinh
 
			num1= num*1;
			num2= num*1;
			num3= num*1;


	if ( num1 >duongcat and num2 >holo and num3 >suatuoi ) then
 Talk(2, "", ""..myplayersex().." Xin thø lçi"," Nguyªn liÖu cÇn cã: <color=green>\n1 Tói ®­êng c¸t\n1 Hå L«\n1 S÷a t­¬i"); 
	return   
                       end
	if (duongcat >= num1 and holo >= num2 and suatuoi >= num3) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4596,-1)
			end
				for i=1,num2 do
				ConsumeEquiproomItem(1,6,1,4598,-1)
				end
								for i=1,num3 do
				ConsumeEquiproomItem(1,6,1,4600,-1)
				end
			for i=1, num do			
				AddItem(6,1,4601,1,1,0) 			
end	
			Msg2Player(" <color=white>B¹n may ®­îc <color=pink>"..num.." <color=white>Hå L« Ngµo §­êng.")
		return
end	
 Talk(2, "", ""..myplayersex().." Xin thø lçi"," Nguyªn liÖu cÇn cã: <color=green>\n1 Tói ®­êng c¸t\n1 Hå L«\n1 S÷a t­¬i"); 
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end




-----------------------------------------------------------TRONG khuyao---------------------------------------------------

function aotruongson1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4596,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=pink>Cßn thiÕu tói ®­êng c¸t.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4597,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "<color=pink>Cßn thiÕu bét b¸nh.")
		return
		end
			local nSilverCount3 = CalcEquiproomItemCount(6,1,4599,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "<color=pink>Cßn thiÕu kem t­¬i")
		return
		end
					local nSilverCount4 = CalcEquiproomItemCount(6,1,4600,1) ;
	if(nSilverCount4 < 1) then
		Talk(1, "no", "<color=pink>Cßn thiÕu s÷a t­¬i")
		return
		end
aotruongson2()
end


function aotruongson2()
local tuiduong = CalcItemCount(3,6,1,4596, -1) ; --khuyao 
local botbanh = CalcItemCount(3,6, 1,4597, -1) ; --vaitho 
local kemtuoi = CalcItemCount(3,6,1,4599, -1) ; --aolinh
local suatuoi = CalcItemCount(3,6, 1,4600, -1) ; --thuocnhuom 

 

if tuiduong < 1 and botbanh < 1  and kemtuoi < 1 and suatuoi < 1 then
 Talk(2, "", ""..myplayersex().." Xin thø lçi","Nguyªn liÖu cÇn cã: <color=green>\n1 Tói ®­êng c¸t\n1 Bét B¸nh\n1 Kem T­¬i\n1 S÷a t­¬i"); 
 else
AskClientForNumber("aotruongson3",0,50,"Sè l­îng")
end
end

function aotruongson3(num)
if num > 50 or num == 0 or  num < 0 or num == nil then
	OfflineLive(PlayerIndex); 
	KickOutSelf()
return	
end
local tuiduong = CalcItemCount(3,6,1,4596, -1) ; --khuyao 
local botbanh = CalcItemCount(3,6, 1,4597, -1) ; --vaitho 
local kemtuoi = CalcItemCount(3,6,1,4599, -1) ; --aolinh
local suatuoi = CalcItemCount(3,6, 1,4600, -1) ; --thuocnhuom 
 
			num1= num*1;
			num2= num*1;
			num3= num*1;
			num4= num*1;


	if ( num1 >tuiduong and num2 >botbanh and num3 >kemtuoi and num4 >suatuoi) then
 Talk(2, "", ""..myplayersex().." Xin thø lçi","Nguyªn liÖu cÇn cã: <color=green>\n1 Tói ®­êng c¸t\n1 Bét B¸nh\n1 Kem T­¬i\n1 S÷a t­¬i"); 
	return   
                       end
	if (tuiduong >= num1 and botbanh >= num2 and kemtuoi >= num3 and suatuoi >= num4) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4596,-1)
			end
				for i=1,num2 do
				ConsumeEquiproomItem(1,6,1,4597,-1)
				end
								for i=1,num3 do
				ConsumeEquiproomItem(1,6,1,4599,-1)
				end
								for i=1,num4 do
				ConsumeEquiproomItem(1,6,1,4600,-1)
				end
			for i=1, num do			
			AddItem(6,1,4602,1,1,0) 			
end	
			Msg2Player("<color=white>B¹n may ®­îc <color=pink>"..num.." <color=white>B¸nh Kem S÷a T­¬iB¸nh Kem S÷a T­¬i.")
		return
end	
 Talk(2, "", ""..myplayersex().." Xin thø lçi","Nguyªn liÖu cÇn cã: <color=green>\n1 Tói ®­êng c¸t\n1 Bét B¸nh\n1 Kem T­¬i\n1 S÷a t­¬i"); 
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end



function maxevent()
local taskmaxev = GetTask(5335)
if taskmaxev < 300 then
	Say("B¹n cÇn ph¶i max 300 ¸o tr­êng s­¬ng míi cã thÓ nhËn th­ëng")
    return
	end
local taskmax = GetTask(5338)
	if taskmax > 0 then
Say("Mçi nh©n vËt chØ ®­îc nhËn 1 lÇn")
  return
end
local diemsoevt10 = docmax()
--Msg2Player("<color=pink>"..diemsoevt10..".");

if  diemsoevt10 == 25 or diemsoevt10 == 45 or diemsoevt10 == 65 or diemsoevt10 == 85 or diemsoevt10 == 105 or diemsoevt10 == 125 or diemsoevt10 == 145 or diemsoevt10 == 165 or diemsoevt10 == 185  then
VLMTBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 20 or diemsoevt10 == 40 or diemsoevt10 == 50 or diemsoevt10 == 60 or diemsoevt10 == 70 or diemsoevt10 == 80 or diemsoevt10 == 90   then
TKKBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 7 or diemsoevt10 == 17 or diemsoevt10 == 27 or diemsoevt10 == 37 or diemsoevt10 == 47 or diemsoevt10 == 57   then
CongNguyetBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 6 or diemsoevt10 == 16 or diemsoevt10 == 26 or diemsoevt10 == 36 or diemsoevt10 == 46 or diemsoevt10 == 56 or diemsoevt10 == 76 or diemsoevt10 == 67  then
Ngua8XBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 3 or diemsoevt10 == 13 or diemsoevt10 == 23 or diemsoevt10 == 33 or diemsoevt10 == 43 or diemsoevt10 == 53 or diemsoevt10 == 63 or diemsoevt10 == 73 or diemsoevt10 == 83 or diemsoevt10 == 54 or diemsoevt10 == 31 or diemsoevt10 == 74  or diemsoevt10 == 59 or diemsoevt10 == 66 or diemsoevt10 == 68  or diemsoevt10 == 100 then
LBHCBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 2 or diemsoevt10 == 12 or diemsoevt10 == 22 or diemsoevt10 == 32 or diemsoevt10 == 42 or diemsoevt10 == 52 or diemsoevt10 == 62 or diemsoevt10 == 72 or diemsoevt10 == 82 or diemsoevt10 == 92 or diemsoevt10 == 94 or diemsoevt10 == 98 or diemsoevt10 == 69  or diemsoevt10 == 77 or diemsoevt10 == 78 or diemsoevt10 == 97  then
LBNTBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 1 or diemsoevt10 == 11 or diemsoevt10 == 21 or diemsoevt10 == 35 or diemsoevt10 == 41  then
DQLBBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 4 or diemsoevt10 == 14 or diemsoevt10 == 24 or diemsoevt10 == 34 or diemsoevt10 == 44 or diemsoevt10 == 55 or diemsoevt10 == 64 or diemsoevt10 == 75 or diemsoevt10 == 84 or diemsoevt10 == 86 or diemsoevt10 == 87 or diemsoevt10 == 88  or diemsoevt10 == 91 or diemsoevt10 == 93  then
HuanChuongBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 8 or diemsoevt10 == 18 or diemsoevt10 == 28 or diemsoevt10 == 38 or diemsoevt10 == 58 or diemsoevt10 == 89 then
PhungNguyetBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 9 or diemsoevt10 == 19 or diemsoevt10 == 29 or diemsoevt10 == 39 or diemsoevt10 == 49 or diemsoevt10 == 79 or diemsoevt10 == 15 or diemsoevt10 == 51 or diemsoevt10 == 61 or diemsoevt10 == 81   then
BossTieuBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 == 5 or diemsoevt10 == 30 or diemsoevt10 == 48 or  diemsoevt10 == 99   or  diemsoevt10 == 10 or diemsoevt10 == 71  or diemsoevt10 == 100 or diemsoevt10 == 95 or diemsoevt10 == 96 then
MatNaBonus()
SetTask(5338,1)
StackExp(200000000);
ghimax()
return
end
if diemsoevt10 > 100 then
BossTieuBonus()
SetTask(5338,1)
StackExp(200000000);
resetdiem()
return
end
end

function MatNaBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={0,11,random(900,904),1,0},nCount=1,nExpiredTime=10080, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn mat na",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function VLMTBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn vltm",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function TKKBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn TTK",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function CongNguyetBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "Cãng nguyÖt",tbProp={6,1,128,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);

--	tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,10,0},nCount=1,nExpiredTime=10080, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn Cãng nguyÖ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;


function Ngua8XBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
nguangaunhien()
--	tbAwardTemplet:GiveAwardByList({{szName = "ChiÕu d¹",tbProp={0,10,5,10,0},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn chiÕu d¹",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;


function LBHCBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao HiÖp Cèt",tbProp={6,1,1250,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn lÔ bao hiÖp cèt",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function LBNTBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao Nhu T×nh",tbProp={6,1,1251,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn lÔ bao nhu t×nh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function DQLBBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao §Þnh Quèc",tbProp={6,1,1260,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn lÔ bao ®Þnh quèc",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function HuanChuongBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "Hu©n Ch­¬ng",tbProp={6,1,4409,1,1},nCount=1,nExpiredTime=1440, CallBack= _Message,},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Hu©n Ch­¬ng",tbProp={6,1,4409,1,1},nCount=9,nExpiredTime=1440,},}, "test", 1);

	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn huy ch­¬ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function PhungNguyetBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "phông nguyÖt",tbProp={6,1,127,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);

--	tbAwardTemplet:GiveAwardByList({{szName = "§¹i thµnh",tbProp={6,1,2424,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn ®¹i phông nguyÖ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function BossTieuBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "LÖnh bµi boss tiÓu",tbProp={6,1,4427,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
		--tbAwardTemplet:GiveAwardByList({{szName = "phông nguyÖt",tbProp={6,1,127,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);

	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] max event nhËn lÖnh bµi boss tiÓu",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;



function mocmaxxx()
for i=1, 10 do	
randomthuongmax()
end
end
 


function nguangaunhien()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Chóc Mõng §¹i hiÖp <color>%s<color=pink> May m¾n nhËn ®­îc <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local t = random(1,4)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="TuyÕt ¶nh",tbProp={0,10,5,3,0,0,0},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="« V©n §¹p TuyÕt",tbProp={0,10,5,6,0,0,0},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="ChiÕu D¹",tbProp={0,10,5,10,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="XÝch Thè",tbProp={0,10,5,7,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="§Ých L«",tbProp={0,10,5,9,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
end;
end




function docmax()
szPath = "dulieu/demeventthang4.txt"
		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tonumber(nValue)
		end
		closefile(handle)	
		return nValue		
end

function ghimax()
local evdem = docmax()
szPath = "dulieu/demeventthang4.txt"
	handle = openfile(szPath, "w+")
	write(handle, evdem + 1)	
	closefile(handle)
end

function resetdiem()
local evdem = docmax()
szPath = "dulieu/demeventthang4.txt"
	handle = openfile(szPath, "w+")
	write(handle, 1)	
	closefile(handle)
end



function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end




function ghihuancong()
tbTop10:LuuDSNhanVat()
end


function nopconghuan()
local szName = GetName()
local nCongHuan = CalcEquiproomItemCount(6, 1, 4409, 1) ;
local nNhanCongHuan = GetTask(TASKCONGHUAN) + nCongHuan
	if(nCongHuan < 1) then -- gia xu
		Talk(1,"","<color=white>Oh thiÕu hiÖp kh«ng mang theo Huy Ch­¬ng §éc LËp råi !!") -- go
	return
end
local nCongHuan = CalcEquiproomItemCount(6, 1, 4409, 1) ;
local nNhanCongHuan = GetTask(5337) + nCongHuan
SetTask(5337,nNhanCongHuan)
ConsumeEquiproomItem(nCongHuan, 6, 1, 4409, 1)
Ladder_NewLadder(10263, szName, GetTask(5337) , 0);
end

function xemtopconghuan()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=Green>%d <color> - <color=red>%s<color> sè l­îng C«ng Hu©n <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10263,i)))
	end
	Say(szMsg,0)
end


function nhanconghuan()
tbAwardTemplet:GiveAwardByList({{szName="Hu©n ch­¬ng",tbProp={6,1,4409,1,1},nCount=100,},}, "test", 1);
end