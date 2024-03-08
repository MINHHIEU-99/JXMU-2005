
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
IncludeLib("LEAGUE")
Include("\\script\\bonus_onlinetime\\func_onlineaward.lua")



TASKVACXIN = 3700


function main()
dofile("script/global/quanlygame/sukien/corona/npcsukien.lua");
local nLog = read_event()
local nDate = tonumber(GetLocalDate("%Y%m%d"));
if nDate > 20300320 then
	Say("Event �� h�t", 0);
		return
	end;
local tab_Content = {

"Gh�p V�cxin Corona/tuyetxanh",
"Mua Kim Ti�m (1 ph�c duy�n)./muakimtiem",

"Ta ch�a mang �� nguy�n li�u./no"
	}
Say("<color=yellow>Event Ph�ng Ch�ng D�ch<color>\n\n<color=yellow>�� s� d�ng v�c xin : <color>" ..GetTask(TASKVACXIN) .. "/300 c�i \nS� nh�n v�t Max Event : ".. nLog, getn(tab_Content), tab_Content);       
end;


function muakimtiem()
	if (GetTask(151) == 0) or (GetTask(151) < 1)  then
		Say("C�n �t nh�t 2 �i�m ph�c duy�n �� mua 1 kim ti�m", 0)
		return
 end
	if (GetTask(151) < 2) then
		Say("C�n �t nh�t 2 �i�m ph�c duy�n �� mua 1 kim ti�m", 0)
		return
 else
AskClientForNumber("phanbon1",1,50,"S� l��ng mua")
end
end

function phanbon1(num)
if num > 50 or num == 0 or  num < 0 then
	OfflineLive(PlayerIndex); 
	KickOutSelf()	
return
end
tienvan = GetTask(151)
num1 = num*2

	if ( num1 >tienvan) then
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng ph�c duy�n �� mua �� "..num.." kim ti�m.") -- go
	return   
	end
	if (tienvan >= num1) then
					SetTask(151,GetTask(151)-num1)
                    end

			for i=1, num do			
			AddItem(6,1,4586,1,1,0) 	
end		
			Msg2Player(""..myplayersex().." Mua th�nh c�ng <color=green>"..num.." kim ti�m ..!")
		return 
		end	




function tuyetxanh()
local tab_Content = {
		"Ta mu�n l�m ngay/tuyetxanh1",
		"k�t th�c/no"
	}
Say("<color=yellow>Ti�u Ng�o Giang H�:<color> Nguy�n li�u c�n: \n<color=white>+ 1 t�i thu�c\+ 1 kim ti�m\n + 3 v�n l��ng", getn(tab_Content), tab_Content);       
end;



function resetmoc395()
SetTask(3700,298)
end

function resetmoc00()
SetTask(3700,0)
end

function nhantuinguyenlieu()
SetTask(151,100)
end

function nhannltest()
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4585,1,1},nCount=10,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4586,1,1},nCount=10,},}, "test", 1);

end

function thanhpham()
tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4587,1,1},nCount=301,},}, "test", 1);


end



function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end



function tuyetxanh1()
	local nSilverCount = CalcEquiproomItemCount(6,1,4585,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>C�n thi�u 1 t�i thu�c.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4586,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>C�n thi�u 1 kim ti�m.")
		return
		end
	if (GetCash() < 30000) then
		Talk(1, "no", "<color=white>C�n thi�u 3 v�n l��ng")
		return
		end
tuyetxanh2()
end



function tuyetxanh2()
local hoacuc = CalcItemCount(3,6, 1,4585, -1);
local hoahong = CalcItemCount(3,6, 1,4586, -1);
local tienvan = GetCash()


if hoacuc < 1 and hoahong < 1 and tienvan < 30000 then
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay","Nguy�n li�u c�n: \n<color=white>+ 1 t�i thu�c\+ 1 kim ti�m\n + 3 v�n l��ng"); 
 else
AskClientForNumber("tuyetxanh3",0,50,"S� l��ng gh�p")
end
end


function tuyetxanh3(num)
if num > 50 or num == 0 or  num < 0 then
	OfflineLive(PlayerIndex); 
	KickOutSelf()
return	
end
local hoacuc = CalcItemCount(3,6, 1,4585, -1);
local hoahong = CalcItemCount(3,6, 1,4586, -1);
local tienvan = GetCash()

			num1= num*1;
			num2= num*1;
			num3= num*30000;


	if ( num1 >hoacuc and num2 >hoahong and num3 > tienvan) then
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay","Nguy�n li�u c�n: \n<color=white>+ 1 t�i thu�c\+ 1 kim ti�m\n + 3 v�n l��ng"); 
	return   
      end
	if (hoacuc >= num1 and hoahong >= num2 and tienvan >= num3 ) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4585,-1)
			end
				for i=1,num2 do
			ConsumeEquiproomItem(1,6,1,4586,-1)
				end
			for i=1,num do
			Pay(30000)
				end
			for i=1, num do			
			AddItem(6,1,4587,1,1,0) 			
end	
	Msg2Player(" <color=white>�� l�m ra ���c <color=red>"..num.." <color=white>V�c Xin Corona.")
	--local szNews = format("<color=cyan>��i hi�p <color=red>"..GetName().."<color> �� l�m th�nh c�ng <color=yellow>"..num.." V�c Xin Corona.")
	--AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		return
end	
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay","Nguy�n li�u c�n: \n<color=white>+ 1 t�i thu�c\+ 1 kim ti�m\n + 3 v�n l��ng"); 
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end





function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

function read_event()
szPath = "dulieu/logevent.txt"
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


function write_event()
local nLog = read_event()
dem = nLog + 1
szPath = "dulieu/logevent.txt"
	handle = openfile(szPath, "w+")
	write(handle, dem)	
	closefile(handle)
end