Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
IncludeLib("LEAGUE")



function main()
dofile("script/global/quanlygame/sukien/quoctethieunhi/npchangrong.lua");

local nDate = tonumber(GetLocalDate("%Y%m%d"));
if nDate > 20200618 then
	Say("Event �� h�t", 0);
		return
	end;

local tab_Content = {



"Mua H� L� 2 v�n./phanbon",

"Ta ch�a mang �� nguy�n li�u./no"
	}
Say("<color=gold>H� l� m�i d�", getn(tab_Content), tab_Content);       
end;

function phanbon()
	if (GetCash() < 20000) then
		Say("C�n �t nh�t 2 v�n l��ng �� mua 1 h� l�", 0)
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
tienvan = GetCash()
num1 = num*20000

	if ( num1 >tienvan) then
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng ti�n v�n �� mua �� "..num.." h� l�") -- go
	return   end
	if (tienvan >= num1) then

					for i=1,num do
					Pay(20000)
                    end

			for i=1, num do			
			AddItem(6,1,4598,1,1,0) 	
end		
			Msg2Player("Mua th�nh c�ng <color=green>"..num.." h� l�..!")
		return end	
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng ti�n v�n �� mua �� "..num.." h� l�") -- go
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p <color=green>"..GetName().." <color> online vui v�..!"); 	
	end
end