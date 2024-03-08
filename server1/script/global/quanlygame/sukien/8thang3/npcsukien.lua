Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")


TASKHOAHONG = 5320
TASKHOACUC = 5319
TASKNHANMOC = 5321

--function main1(NpcIndex)
--Say("Event K�t Th�c !!") 
--return 
--end


function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/npcsukien.lua");
do Say("H�t th�i gian gh�p v�t ph�m !!") return end
local tab_Content = {
	"Gh�p Hoa C�c C�c Ph�m /hoacuc",
	"Gh�p Hoa H�ng Ho�n M� /hoahong",
	"Nh�n M�c Hoa H�ng Ho�n M�/nhanmocfull",
	--"Ki�m Tra M�c C�c/moccuc",
	--"Ki�m Tra M�c H�ng/mochong",
	--"Reset C� 2 m�c test ti�p /resetmocevent",
	"Ta ch�a mang �� nguy�n li�u/no"
	}
Say("<color=yellow>NPC S� Ki�n 8-3:<color>\nNh�n ng�y ph� n�  Vi�t Nam h�y s� h�u th�t nhi�u nh�ng n� hoa c�c c�ng hoa h�ng t�nh y�u l�n m�n �c s� nh�n ���c nhi�u �i�u may m�n\n<color=Red>Hoa h�ng : <color>" ..GetTask(TASKHOAHONG) .. "/300\n<color=yellow>Hoa C�c : <color>" .. GetTask(TASKHOACUC) .. "/300 ", getn(tab_Content), tab_Content);       
end;

function mochong()
  local nTask = GetTask(TASKHOAHONG)
  Talk (1, "","B�n �� s� d�ng <color=yellow>"..nTask.."<color> Hoa H�ng")
end

function moccuc()
  local nTask = GetTask(TASKHOACUC)
  Talk (1, "","B�n �� s� d�ng <color=yellow>"..nTask.."<color> Hoa C�c")
end

function resetmocevent()
SetTask(5320,0)
SetTask(5319,0)
SetTask(5321,0)
end

function hoacuc()
local tab_Content = {
		"Ta �� hi�u b�t ��u gh�p/hoacuc1",
		"Ta ch� ti�n gh� qua ��y th�i..!/no"
	}
Say("<color=yellow>NPC S� Ki�n 8-3:<color> Nguy�n li�u gh�p hoa c�c c�c ph�m c�n: \n1 Nh�nh Hoa C�c - 1 L� N��c - 1 T�i Ph�n B�n", getn(tab_Content), tab_Content);       
end;


function hoahong()
local tab_Content = {
		"Ta �� hi�u b�t ��u gh�p/hoahong1",
		"Ta ch� ti�n gh� qua ��y th�i..!/no"
	}
Say("<color=yellow>NPC S� Ki�n 8-3:<color> Nguy�n li�u gh�p hoa c�c c�c ph�m c�n: \n1 Nh�nh Hoa H�ng - 1 L� N��c - 1 Th�nh Th�y", getn(tab_Content), tab_Content);       
end;


function laynguyenlieu()
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={6,1,4366,1,1},nCount=100,},}, "test", 1);
Earn(1000000)
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={4,417,1,1},nCount=100,},}, "test", 1);


end

function nhanfullhoa()
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={6,1,4363,1,1},nCount=301,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="M�nh",tbProp={6,1,4362,1,1},nCount=301,},}, "test", 1);


end



function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end



-----------------------------------------------------------HOA CUC CUC PHAM---------------------------------------------------

function hoacuc1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4360,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u Nh�nh Hoa C�c xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4361,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u L� N��c xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount3 = CalcEquiproomItemCount(6,1,4364,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u T�i Ph�n B�n xin h�y ki�m tra l�i.")
		return
		end
hoacuc2()
end


function hoacuc2()
local hoacuc = CalcItemCount(3,6,1,4360, -1) ; --hoacuc 
local lonuoc = CalcItemCount(3,6, 1,4361, -1) ; --lonuoc 
local phanbon = CalcItemCount(3,6,1,4364, -1) ; --phanbon 

 

if hoacuc < 1 and lonuoc < 1 and phanbon< 1  then
 Talk(2, "", ""..myplayersex().." Xin th� l�i","Nguy�n li�u ph�i c�: <color=while>\n1 Nh�nh Hoa C�c - 1 L� N��c - 1 T�i Ph�n B�n..!"); 
 else
AskClientForNumber("hoacuc3",0,50,"S� l��ng")
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
		Talk(1, "", ""..myplayersex().." Nguy�n li�u c�n thi�u "..num1-hoacuc.." Nh�nh Hoa C�c, "..num2-lonuoc.." L� N��c , "..num3-phanbon.." Ph�n B�n \n\n"..myplayersex().." kh�ng mang theo �� nguy�n li�u.<color=yellow>\ <color=red>xin ki�m tra l�i..!");
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
			Msg2Player(""..myplayersex().." Ch�c m�ng b�n nh�n ���c <color=green>"..num.." Hoa C�c C�c Ph�m..!")
		return
end	
		Talk(1, "", ""..myplayersex().." Nguy�n li�u c�n thi�u "..num1-hoacuc.." Nh�nh Hoa C�c, "..num2-lonuoc.." L� N��c , "..num3-phanbon.." Ph�n B�n \n\n"..myplayersex().." kh�ng mang theo �� nguy�n li�u.<color=yellow>\ <color=red>xin ki�m tra l�i..!");
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end




-----------------------------------------------------------HOA HONG HOAN MY---------------------------------------------------

function hoahong1()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4359,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u Nh�nh Hoa H�ng xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount2 = CalcEquiproomItemCount(6,1,4361,1) ;
	if(nSilverCount2 < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u L� N��c xin h�y ki�m tra l�i.")
		return
		end
	local nSilverCount3 = CalcEquiproomItemCount(6,1,4365,1) ;
	if(nSilverCount3 < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p c�n thi�u b�nh Th�nh Th�y xin h�y ki�m tra l�i.")
		return
		end
hoahong2()
end


function hoahong2()
local hoahong = CalcItemCount(3,6,1,4359, -1) ; --hoahong
local lonuoc = CalcItemCount(3,6, 1,4361, -1) ; --lonuoc 
local thanhthuy = CalcItemCount(3,6,1,4365, -1) ; --thanhthuy

 

if hoahong < 1 and lonuoc < 1 and thanhthuy< 1  then
 Talk(2, "", ""..myplayersex().." Xin th� l�i","Nguy�n li�u ph�i c�: <color=while>\n1 Nh�nh Hoa H�ng - 1 L� N��c - 1 Th�nh Th�y..!"); 
 else
AskClientForNumber("hoahong3",0,50,"S� l��ng")
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
		Talk(1, "", ""..myplayersex().." Nguy�n li�u c�n thi�u "..num1-hoahong.." Nh�nh Hoa H�ng, "..num2-lonuoc.." L� N��c , "..num3-thanhthuy.." Th�nh Th�y \n\n"..myplayersex().." kh�ng mang theo �� nguy�n li�u.<color=yellow>\ <color=red>xin ki�m tra l�i..!");
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
			Msg2Player(""..myplayersex().." Ch�c m�ng b�n nh�n ���c <color=green>"..num.." Hoa H�ng Ho�n M�..!")
		return
end	
		Talk(1, "", ""..myplayersex().." Nguy�n li�u c�n thi�u "..num1-hoahong.." Nh�nh Hoa H�ng, "..num2-lonuoc.." L� N��c , "..num3-thanhthuy.." Th�nh Th�y \n\n"..myplayersex().." kh�ng mang theo �� nguy�n li�u.<color=yellow>\ <color=red>xin ki�m tra l�i..!");
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end


function nhanmocfull()
	if GetTask(TASKNHANMOC) > 0 then
		Say("M�i nh�n v�t ch� ���c nh�n th��ng 1 l�n")
		return 1
	end
	if GetTask(TASKHOAHONG) >=300 and GetTask(TASKNHANMOC) == 0 then
tl_addPlayerExp(30000000)
phanthuong()
		logplayer("dulieu/thuongmoc8t3.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] th�nh c�ng ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
		local msgtbao = "Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� nh�n th��ng ��t MAX event nh�n ���c ph�n th��ng nh� �"
		SetTask(5321,1)
	else
		Say("Ch�a max Event!",0)
		return
	end
end

function phanthuong()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> May m�n nh�n ���c <color=pink><%s><color=green><enter><color=yellow>< Khi S� D�ng Max Event ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local c = random(1,12)
if c==10 then
tbAwardTemplet:GiveAwardByList({{szName="��c X�",tbProp={6,1,1375,1,1},nCount=1,nRate=20,CallBack= _Message,},}, "test", 1);
--Msg2Player("ttk")
end;
if c==1 then
tbAwardTemplet:GiveAwardByList({{szName="T�y T�y Kinh",tbProp={6,1,22,1,1},nCount=1,nRate=20,CallBack= _Message,},}, "test", 1);
--Msg2Player("ttk")
end;
if c==2 then
tbAwardTemplet:GiveAwardByList({{szName="VLMT",tbProp={6,1,26,1,1},nCount=1,nRate=20,CallBack= _Message,},}, "test", 1);
--Msg2Player("vlmt")
end;
if c==3 then
tbAwardTemplet:GiveAwardByList({{szName="��i Th�nh B� K�p",tbProp={6,1,2424,1,1},nCount=1,nRate=25,CallBack= _Message,},}, "test", 1);
--Msg2Player("daithanh")
end;
if c==4 or c==11 or c == 12 then
tbAwardTemplet:GiveAwardByList({{szName="Kim Phong L� Bao",tbProp={6,1,4367,1,1},nCount=1,nRate=100,CallBack= _Message,},}, "test", 1);
--Msg2Player("kimphong")
end;
if c==5 then
tbAwardTemplet:GiveAwardByList({{szName="L� Bao B� K�p",tbProp={6,1,4347,1,1},nCount=1,nRate=25,CallBack= _Message,},}, "test", 1);
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
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> May m�n nh�n ���c <color=pink><%s><color=green><enter><color=yellow>< Khi S� D�ng Max Event ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local t = random(1,5)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="Tuy�t �nh",tbProp={0,10,5,3,0,0,0},nCount=1,nRate=60,CallBack= _Message,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1,nRate=60,CallBack= _Message,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1,nRate=30,CallBack= _Message,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1,nRate=30,CallBack= _Message,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1,nRate=60,CallBack= _Message,},}, "test", 1);
end;
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end