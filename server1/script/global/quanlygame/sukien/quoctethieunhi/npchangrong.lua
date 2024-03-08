Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
IncludeLib("LEAGUE")



function main()
dofile("script/global/quanlygame/sukien/quoctethieunhi/npchangrong.lua");

local nDate = tonumber(GetLocalDate("%Y%m%d"));
if nDate > 20200618 then
	Say("Event ®· hÕt", 0);
		return
	end;

local tab_Content = {



"Mua Hå L« 2 v¹n./phanbon",

"Ta ch­a mang ®ñ nguyªn liÖu./no"
	}
Say("<color=gold>Hå l« m¹i d«", getn(tab_Content), tab_Content);       
end;

function phanbon()
	if (GetCash() < 20000) then
		Say("CÇn Ýt nhÊt 2 v¹n l­îng ®Ó mua 1 hå l«", 0)
		return
 else
AskClientForNumber("phanbon1",1,50,"Sè l­îng mua")
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
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng tiÒn v¹n ®Ó mua ®ñ "..num.." hå l«") -- go
	return   end
	if (tienvan >= num1) then

					for i=1,num do
					Pay(20000)
                    end

			for i=1, num do			
			AddItem(6,1,4598,1,1,0) 	
end		
			Msg2Player("Mua thµnh c«ng <color=green>"..num.." hå l«..!")
		return end	
		Talk(1,"","Trªn ng­êi ®¹i hiÖp kh«ng cã ®ñ sè l­îng tiÒn v¹n ®Ó mua ®ñ "..num.." hå l«") -- go
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp <color=green>"..GetName().." <color> online vui vÎ..!"); 	
	end
end