Include("\\script\\lib\\awardtemplet.lua")

TASKAODAIVN = 5321

function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/phunuvietnam.lua");
local tab_Content = {
	"T�ng �o d�i vi�t nam/tangaodai",
	"Ki�m Tra s� �o �� t�ng/mocaodai",
	"Ta ch� ��n h�i th�m/no"
	}
Say("<color=yellow>Ph� N� Vi�t 8-3:<color=green>\n�� t� l�ng th�nh v�i b�c ph� m�u t�nh nh�n c�c h� h�y gom g�p th�t nhi�u qu� �o D�i Ph� N� cho ta.��n h�t s� ki�n ta s� t�ng k�t v� ph�t th��ng h�u h�nh cho v� tr�ng s� n�o nhi�u qu� nh�t", getn(tab_Content), tab_Content);       
end;

function mocaodai()
  local nTask = GetTask(TASKAODAIVN)
  Talk (1, "","B�n �� t�ng t�ng <color=yellow>"..nTask.."<color> �o d�i vi�t nam t��ng �ng v�i <color=pink>"..nTask.."<color> �i�m t�ch l�y.K�t qu� s� ���c t�ng k�t khi h�t event.")
end




function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end




function tangaodai()
	local nSilverCount = CalcEquiproomItemCount(6,1,4368,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong h�nh trang ��i hi�p kh�ng c� c�i �o d�i n�o h�t  xin h�y ki�m tra l�i.")
		return
 else
AskClientForNumber("tangaodai2",0,50,"S� l��ng t�ng")
end
end


function tangaodai2(num)
local aodai = CalcItemCount(3,6,1,4368, -1) ; --aodai 

	if ( num >aodai) then
		Talk(1,"","��i hi�p mu�n t�ng "..num.." �o d�i nh�ng r�t ti�c s� l��ng c� kh�ng ��.") -- go
	return   
                       end
	if (aodai >= num) then
			for i=1,num do
			ConsumeEquiproomItem(1,6,1,4368,-1)
			end
	
			for i=1, num do			
	                                                SetTask(TASKAODAIVN,GetTask(TASKAODAIVN)+1)
end
local nTask = GetTask(TASKAODAIVN)	
Msg2SubWorld("��i hi�p <color=pink>"..GetName().."<color=cyan> v�a t�ng <color=green>"..num.." �o d�i vi�t nam t�ng c�ng �� t�ng ���c <color=pink>"..nTask.." c�i")

		return
end	
		Talk(1,"","��i hi�p mu�n t�ng "..num.." �o d�i nh�ng r�t ti�c s� l��ng c� kh�ng ��.") -- go
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end




