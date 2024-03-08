
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
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
		"Qu�c T� Thi�u Nhi",
		"C�ng �n K� �c",
		"Event Ti�u Ng�o Giang H�",
	}
	local ran = random(1,getn(tab_Chat))
	NpcChat(nNpcIndex,tab_Chat[ran])
	local ranTimer = 10
	SetNpcTimer(nNpcIndex,ranTimer*18)
	SetNpcScript(nNpcIndex,"\\script\\global\\quanlygame\\sukien\\quoctethieunhi\\npcsukien.lua")
end

function main()
dofile("script/global/quanlygame/sukien/quoctethieunhi/npcsukien.lua");
			--tbAwardTemplet:GiveAwardByList({{szName = "Ch�n ��n k� n�ng",tbProp={0,10,28,1,0},nCount=1,},}, "test", 1);
			--tbAwardTemplet:GiveAwardByList({{szName = "Ch�n ��n k� n�ng",tbProp={0,10,28,2,0},nCount=1,},}, "test", 1);
			--tbAwardTemplet:GiveAwardByList({{szName = "Ch�n ��n k� n�ng",tbProp={0,10,28,3,0},nCount=1,},}, "test", 1);
			--tbAwardTemplet:GiveAwardByList({{szName = "Ch�n ��n k� n�ng",tbProp={0,10,28,4,0},nCount=1,},}, "test", 1);

--	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	--if nDate >= 20200516 then
	--	Say("Ho�t ��ng event �� k�t th�c.", 0);
	--	return
	--end;
	local tbSay = {}
tinsert(tbSay,"Gh�p H� L� Ng�o ���ng/#aolinh()")
tinsert(tbSay,"Gh�p B�nh Kem S�a T��i/#aotruongson()")
	tinsert(tbSay,"N�p Lo�i K�o M�t Event/#nopkeomut()")
tinsert(tbSay,"Mua Kem T��i 2xu/#muakemtuoi()")
		tinsert(tbSay,"Nh�n Ph�n Th��ng Max B�nh Kem /#nhanmocmaxne()")
		tinsert(tbSay,"Nh�n Ph�n Th��ng Max 2 Lo�i /#nhanmocmaxne2()")
--	tinsert(tbSay,"Nh�n Test Max 10 L�n /#testmax10()")
-- tinsert(tbSay,"Nh�n nguy�n li�u/#nhannltest()")
	--tinsert(tbSay,"Nh�n th�nh ph�m/#thanhpham()")
--tinsert(tbSay,"Reset m�c v� 398/#resetmocevent()")
--tinsert(tbSay,"Reset m�c v� 0 h�t /#resetmocevent0()")
	tinsert(tbSay,"K�t th�c ��i tho�i ! /#no()")
	Say("Event:<color>\nQu�c t� thi�u nhi 1 th�ng 6 c�ng �n l�i k� �c tu�i th� h�o h�ng b�n nh�ng trang s�ch v� v� nh�ng ng�y tinh ngh�ch phi�u l�u c�ng VLTK\n<color=Red>H� L� Ng�o ���ng: <color>" ..GetTask(TASKHOLO) .. "/300\n<color=yellow>B�nh Kem: <color>" .. GetTask(TASKBANHKEM) .. "/300", getn(tbSay), tbSay)
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
		Say("B�n ch�a max h� l� event kh�ng th� nh�n", 0);
		return
	end;
	if GetTask(5346) < 300 then
		Say("B�n ch�a max b�nh kem event kh�ng th� nh�n", 0);
		return
	end;
	if GetTask(5350) > 0 then
		Say("Ch� ���c nh�n 1 l�n", 0);
		return
	end;
if GetTask(5345) >= 300 and GetTask(5346) >= 300 then
StackExp(100000000)
SetTask(5350,1)
	logplayer("dulieu/eventthieunhi.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nhan max 2 event",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n th�nh c�ng <color=yellow>Ph�n Th��ng M�c Max Event<color>")

end
end


function nhanmocmaxne()
if GetTask(5346) < 300 then
		Say("B�n ch�a max event kh�ng th� nh�n", 0);
		return
	end;
	if GetTask(5349) > 0 then
		Say("Ch� ���c nh�n 1 l�n", 0);
		return
	end;
if GetTask(5346) >= 300 then
MaXEventThuong()
SetTask(5349,1)
	logplayer("dulieu/eventthieunhi.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nhan max event banh kem",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end
end

function MaXEventThuong()
	Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> nh�n th�nh c�ng <color=yellow>Ph�n Th��ng M�c Max Event<color>")

local s = random(1,100)
if s>=1 and s <11 then
			tbAwardTemplet:GiveAwardByList({{szName = "��i th�nh",tbProp={6,1,2424,1,1},nCount=1,},}, "test", 1);
end;
if s>=11 and s <15 then
			tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1,},}, "test", 1);
end;
if s>=15 and s <20 then
			tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,},}, "test", 1);
end;
if s>=20 and s <31 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ti�n th� l� ��c bi�t",tbProp={6,1,1765,1,1},nCount=1,},}, "test", 1);
end;
if s>=31 and s <50 then
			tbAwardTemplet:GiveAwardByList({{szName = "L�nh b�i boss ti�u",tbProp={6,1,4427,1,1},nCount=1,},}, "test", 1);
end;
if s>=50 and s <61 then
		tbAwardTemplet:GiveAwardByList({{szName = "L� bao kim phong",tbProp={6,1,4367,1,1},nCount=1,},}, "test", 1);

end;
if s>=61 and s <66 then
nguangaunhien()
end;
if s>=66 and s <90 then
		tbAwardTemplet:GiveAwardByList({{szName = "l� bao ti�n v�n",tbProp={6,1,4580,1,1},nCount=1,},}, "test", 1);
end;
if s>=90 and s <101 then
		tbAwardTemplet:GiveAwardByList({{szName = "L� bao kim phong",tbProp={6,1,4367,1,1},nCount=1,},}, "test", 1);

end;
end


function nguangaunhien()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> May m�n nh�n ���c <color=pink><%s><color=green><enter><color=yellow>< Khi S� D�ng Max Event ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local t = random(1,5)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="Tuy�t �nh",tbProp={0,10,5,3,0,0,0},nCount=1,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1,},}, "test", 1);
end;

end


function muakemtuoi()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� 2 xu.") -- go
	return
 else
AskClientForNumber("muakhando1",1,50,"S� l��ng mua")
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
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." kem t��i") -- go
	return  
	end
	if (tienxu >= num*2) then

					for i=1,num do
					ConsumeEquiproomItem(2,4,417,1,-1)
					end
	
			for i=1, num do			
			AddItem(6,1,4599,1,1,0) 			
end	
	Msg2Player("B�n Mua th�nh c�ng <color=green>"..num.." kem t��i..!")

		return end	
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." kem t��i") -- go
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color> online vui v�..!"); 	
	end
end




function nopkeomut()
local tab_Content = {
		"N�p k�o m�t nh�/nopkeonho",
		"N�p k�o m�t to/nopkeoto",
		"k�t th�c/no"
	}
Say("<color=green>Qu�c t� thi�u nhi:<color> S�u t�m k�o m�t �� n�p nh�n EXP", getn(tab_Content), tab_Content);       
end;

function nopkeomut()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4603,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=pink>H�nh trang kh�ng c� 1 k�o m�t nh�")
		return
		end
		if GetTask(5347) >=500 then
				Talk(1, "no", "<color=pink>M�i nh�n v�t ch� ���c s� d�ng 500 k�o m�t nh�")
		return
		end
				ConsumeEquiproomItem(1,6,1,4603,-1)
		StackExp(1000000);
SetTask(5347,GetTask(5347)+1)
	Msg2Player("T�ng n�p th�nh c�ng <color=green>"..GetTask(5347).." k�o m�t nh�.!")
			logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nop 1 keo mut nho",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))


end

function nopkeoto()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4604,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=pink>H�nh trang kh�ng c� 1 k�o m�t nh�")
		return
		end
		if GetTask(5348) >=1000 then
				Talk(1, "no", "<color=pink>M�i nh�n v�t ch� ���c s� d�ng 500 k�o m�t nh�")
		return
		end
		ConsumeEquiproomItem(1,6,1,4604,-1)
		StackExp(3000000);
SetTask(5348,GetTask(5348)+1)
	Msg2Player("T�ng n�p th�nh c�ng <color=green>"..GetTask(5348).." k�o m�t to.!")
			logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nop 1 keo mut to",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end


function testaolinh()
mocmaxaolinh()
Msg2Player("<color=white>v�a max �o l�nh");

end

function testaotruongson()
mocmaxaotruongson()
Msg2Player("<color=white>v�a max �o tr��ng s�n");

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
		"b�t ��u gh�p event/aolinh1",
		"k�t th�c/no"
	}
Say("<color=green>Qu�c t� thi�u nhi:<color> Nguy�n li�u c�n c�: <color=green>\n1 T�i ���ng c�t\n1 H� L�\n1 S�a t��i", getn(tab_Content), tab_Content);       
end;


function aotruongson()
local tab_Content = {
		"b�t ��u gh�p event/aotruongson1",
		"k�t th�c/no"
	}
Say("<color=green>Qu�c t� thi�u nhi:<color> Nguy�n li�u c�n c�: <color=green>\n1 T�i ���ng c�t\n1 B�t B�nh\n1 Kem T��i\n1 S�a t��i", getn(tab_Content), tab_Content);       
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
		return "N� chi�n S�";
	else
		return "Nam chi�n S�";
	end
end
-----------------------------------------------------------MUA SACH--------------------------------------------------


function muathuocnhuom()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� 2 xu.") -- go
	return
 else
AskClientForNumber("muathuocnhuom2",1,50,"S� l��ng mua")
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
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." thu�c nhu�m") -- go
	return  
	end
	if (tienxu >= num*2) then

					for i=1,num do
					ConsumeEquiproomItem(2,4,417,1,-1)
					end
	
			for i=1, num do			
			AddItem(6,1,4408,1,1,0) 			
end	
	Msg2Player("B�n Mua th�nh c�ng <color=green>"..num.." thu�c nhu�m..!")
--	local szNews = format("<color=cyan>��i hi�p <color=pink>"..GetName().."<color> �� mua th�nh c�ng <color=yellow>"..num.." gi� hoa t�i S�p Hoa T��ng D��ng")
--	AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		return end	
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." thu�c nhu�m") -- go
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color> online vui v�..!"); 	
	end
end

-----------------------------------------------------------TRONG THO SO--------------------------------------------------

function aolinh1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4596,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=pink>C�n thi�u t�i ���ng c�t")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4598,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "<color=pink>C�n thi�u h� l�.")
		return
		end
					local nSilverCount3 = CalcEquiproomItemCount(6,1,4600,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "<color=pink>C�n thi�u s�a t��i.")
		return
		end
aolinh2()
end


function aolinh2()
local duongcat = CalcItemCount(3,6,1,4596, -1) ; --khuyao 
local holo = CalcItemCount(3,6, 1,4598, -1) ; --vaitho 
local suatuoi = CalcItemCount(3,6,1,4600, -1) ; --aolinh


if duongcat < 1 and holo < 1 and suatuoi < 1  then
 Talk(2, "", ""..myplayersex().." Xin th� l�i"," Nguy�n li�u c�n c�: <color=green>\n1 T�i ���ng c�t\n1 H� L�\n1 S�a t��i"); 
 else
AskClientForNumber("aolinh3",0,50,"S� l��ng")
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
 Talk(2, "", ""..myplayersex().." Xin th� l�i"," Nguy�n li�u c�n c�: <color=green>\n1 T�i ���ng c�t\n1 H� L�\n1 S�a t��i"); 
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
			Msg2Player(" <color=white>B�n may ���c <color=pink>"..num.." <color=white>H� L� Ng�o ���ng.")
		return
end	
 Talk(2, "", ""..myplayersex().." Xin th� l�i"," Nguy�n li�u c�n c�: <color=green>\n1 T�i ���ng c�t\n1 H� L�\n1 S�a t��i"); 
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end




-----------------------------------------------------------TRONG khuyao---------------------------------------------------

function aotruongson1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4596,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=pink>C�n thi�u t�i ���ng c�t.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4597,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "<color=pink>C�n thi�u b�t b�nh.")
		return
		end
			local nSilverCount3 = CalcEquiproomItemCount(6,1,4599,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "<color=pink>C�n thi�u kem t��i")
		return
		end
					local nSilverCount4 = CalcEquiproomItemCount(6,1,4600,1) ;
	if(nSilverCount4 < 1) then
		Talk(1, "no", "<color=pink>C�n thi�u s�a t��i")
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
 Talk(2, "", ""..myplayersex().." Xin th� l�i","Nguy�n li�u c�n c�: <color=green>\n1 T�i ���ng c�t\n1 B�t B�nh\n1 Kem T��i\n1 S�a t��i"); 
 else
AskClientForNumber("aotruongson3",0,50,"S� l��ng")
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
 Talk(2, "", ""..myplayersex().." Xin th� l�i","Nguy�n li�u c�n c�: <color=green>\n1 T�i ���ng c�t\n1 B�t B�nh\n1 Kem T��i\n1 S�a t��i"); 
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
			Msg2Player("<color=white>B�n may ���c <color=pink>"..num.." <color=white>B�nh Kem S�a T��iB�nh Kem S�a T��i.")
		return
end	
 Talk(2, "", ""..myplayersex().." Xin th� l�i","Nguy�n li�u c�n c�: <color=green>\n1 T�i ���ng c�t\n1 B�t B�nh\n1 Kem T��i\n1 S�a t��i"); 
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end



function maxevent()
local taskmaxev = GetTask(5335)
if taskmaxev < 300 then
	Say("B�n c�n ph�i max 300 �o tr��ng s��ng m�i c� th� nh�n th��ng")
    return
	end
local taskmax = GetTask(5338)
	if taskmax > 0 then
Say("M�i nh�n v�t ch� ���c nh�n 1 l�n")
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
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={0,11,random(900,904),1,0},nCount=1,nExpiredTime=10080, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n mat na",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function VLMTBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n vltm",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function TKKBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n TTK",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function CongNguyetBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "C�ng nguy�t",tbProp={6,1,128,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);

--	tbAwardTemplet:GiveAwardByList({{szName = "Phi V�n",tbProp={0,10,8,10,0},nCount=1,nExpiredTime=10080, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n C�ng nguy�",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;


function Ngua8XBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
nguangaunhien()
--	tbAwardTemplet:GiveAwardByList({{szName = "Chi�u d�",tbProp={0,10,5,10,0},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n chi�u d�",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;


function LBHCBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "L� Bao Hi�p C�t",tbProp={6,1,1250,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n l� bao hi�p c�t",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function LBNTBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "L� Bao Nhu T�nh",tbProp={6,1,1251,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n l� bao nhu t�nh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function DQLBBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "L� Bao ��nh Qu�c",tbProp={6,1,1260,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n l� bao ��nh qu�c",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function HuanChuongBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "Hu�n Ch��ng",tbProp={6,1,4409,1,1},nCount=1,nExpiredTime=1440, CallBack= _Message,},}, "test", 1);
		tbAwardTemplet:GiveAwardByList({{szName = "Hu�n Ch��ng",tbProp={6,1,4409,1,1},nCount=9,nExpiredTime=1440,},}, "test", 1);

	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n huy ch��ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function PhungNguyetBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "ph�ng nguy�t",tbProp={6,1,127,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);

--	tbAwardTemplet:GiveAwardByList({{szName = "��i th�nh",tbProp={6,1,2424,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n ��i ph�ng nguy�",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;

function BossTieuBonus()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
	tbAwardTemplet:GiveAwardByList({{szName = "L�nh b�i boss ti�u",tbProp={6,1,4427,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
		--tbAwardTemplet:GiveAwardByList({{szName = "ph�ng nguy�t",tbProp={6,1,127,1,1},nCount=1,nExpiredTime=43200, CallBack= _Message,},}, "test", 1);

	logplayer("dulieu/maxeventhang4.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] max event nh�n l�nh b�i boss ti�u",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
end;



function mocmaxxx()
for i=1, 10 do	
randomthuongmax()
end
end
 


function nguangaunhien()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=cyan>Xin Ch�c M�ng ��i hi�p <color>%s<color=pink> May m�n nh�n ���c <color=cyan><%s><enter><color=pink>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local t = random(1,4)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="Tuy�t �nh",tbProp={0,10,5,3,0,0,0},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1, CallBack= _Message},}, "test", 1);
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
		Talk(1,"","<color=white>Oh thi�u hi�p kh�ng mang theo Huy Ch��ng ��c L�p r�i !!") -- go
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
		szMsg = szMsg ..(format("Top <color=Green>%d <color> - <color=red>%s<color> s� l��ng C�ng Hu�n <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10263,i)))
	end
	Say(szMsg,0)
end


function nhanconghuan()
tbAwardTemplet:GiveAwardByList({{szName="Hu�n ch��ng",tbProp={6,1,4409,1,1},nCount=100,},}, "test", 1);
end