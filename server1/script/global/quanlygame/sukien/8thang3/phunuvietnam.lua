Include("\\script\\lib\\awardtemplet.lua")

TASKAODAIVN = 5321

function main(NpcIndex)
dofile("script/global/quanlygame/sukien/8thang3/phunuvietnam.lua");
local tab_Content = {
	"TÆng ¸o dµi viÖt nam/tangaodai",
	"KiÓm Tra sè ¸o ®· tÆng/mocaodai",
	"Ta chØ ®Õn hái th¨m/no"
	}
Say("<color=yellow>Phô N÷ ViÖt 8-3:<color=green>\n§Ó tá lßng thµnh víi bËc phô mÉu t×nh nh©n c¸c h¹ h·y gom gãp thËt nhiÒu quµ ¸o Dµi Phô N÷ cho ta.§Õn hÕt sù kiÖn ta sÏ tæng kÕt vµ ph¸t th­ëng hËu hÜnh cho vŞ tr¸ng sÜ nµo nhiÒu quµ nhÊt", getn(tab_Content), tab_Content);       
end;

function mocaodai()
  local nTask = GetTask(TASKAODAIVN)
  Talk (1, "","B¹n ®· tÆng tæng <color=yellow>"..nTask.."<color> ¸o dµi viÖt nam t­¬ng øng víi <color=pink>"..nTask.."<color> ®iÓm tİch lòy.KÕt qu¶ sÏ ®­îc tæng kÕt khi hÕt event.")
end




function myplayersex()
	if GetSex() == 1 then 
		return "N÷ hiÖp";
	else
		return "§¹i hiÖp";
	end
end




function tangaodai()
	local nSilverCount = CalcEquiproomItemCount(6,1,4368,1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "Trong hµnh trang ®¹i hiÖp kh«ng cã c¸i ¸o dµi nµo hÕt  xin h·y kiÓm tra l¹i.")
		return
 else
AskClientForNumber("tangaodai2",0,50,"Sè l­îng tÆng")
end
end


function tangaodai2(num)
local aodai = CalcItemCount(3,6,1,4368, -1) ; --aodai 

	if ( num >aodai) then
		Talk(1,"","§¹i hiÖp muèn tÆng "..num.." ¸o dµi nh­ng rÊt tiÕc sè l­îng cã kh«ng ®ñ.") -- go
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
Msg2SubWorld("§¹i hiÖp <color=pink>"..GetName().."<color=cyan> võa tÆng <color=green>"..num.." ¸o dµi viÖt nam tæng céng ®· tÆng ®­îc <color=pink>"..nTask.." c¸i")

		return
end	
		Talk(1,"","§¹i hiÖp muèn tÆng "..num.." ¸o dµi nh­ng rÊt tiÕc sè l­îng cã kh«ng ®ñ.") -- go
	if num <  1 then
		Talk(2, "", "Chóc ®¹i hiÖp "..myplayersex().." <color=green>"..GetName().." <color>mét ngµy online vui vÎ ...!"); 	
	end
end




