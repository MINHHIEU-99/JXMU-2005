
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
function main()
dofile("script/global/namcung/hopquacode30ngay.lua")


local tbSay = 
{
"Ta Muèn L¹c §µ/#TienHanhDoiSkillTrungSinh4(4953)",
"Ta Muèn D­¬ng §µ/#TienHanhDoiSkillTrungSinh4(4954)",
"Ta Muèn H­¬u §èm/#TienHanhDoiSkillTrungSinh4(4955)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n ®­îc chän 1 Lo¹i Ngùa Napf, muèn chän lo¹i nµo ?  ",getn(tbSay),tbSay)
return 1;	

end

function TienHanhDoiSkillTrungSinh4(num)
	if CalcFreeItemCellCount() < 40 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y nhËn.",0);
		return 1
	end
if ConsumeEquiproomItem(1, 6,1, 30143,-1) >0 then
	local tbthuongitem = {
	   {szName="an",tbProp={0,4907},nCount=1,nQuality=1},
	   {szName="trang suc",tbProp={0,random(4969,4973)},nCount=1,nQuality=1},
            {szName="MÆt N¹ ChiÕn Tr­êng Thanh Gi¶",tbProp={0,11,806,1,0,0},nCount=1},
	    {szName="Ngôa",tbProp={0,num},nQuality=1,nCount=1},	
            -- {szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,4371,1,0,0},nCount = 1},	
             --  {szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,4347,1,0,0},nCount = 1},
               {szName="Håi thiªn t¸i t¹o lÔ bao", tbProp={6,1,43049,1,0,0},nCount = 1},
        --{szName="ruong nguyen lieu",tbProp={6,1,4346,1,0,0},nCount=1},
       -- {szName="ruong nguyen lieu",tbProp={6,1,4370,1,0,0},nCount=1},	   	   
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	WriteLogPro("dulieu/an_hopquavip.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An Hop Qua  Vip\n");	
AddGlobalNews("Chóc Mõng Nh©n VËt: <color=red>"..GetName().."<color> §· NhËn Thµnh C«ng Quµ N¹p §Çu 100 VND Gåm Ngùa, Ên, Trang Søc, Vµ MÆt N¹ VIp ")		

		---------------------------ad vong ---------------------
	local tm = GetSkillState(1616)
	if tm >= 1 then 
			return
			end
		RemoveSkillState(1615,20,3,559872000,1) 
		RemoveSkillState(1614,20,3,559872000,1) 
			local ntime = 18*60*60*24*14
			local n_title = 256	
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
			PlayerFunLib:AddSkillState(1616,1,3,18*60*60*24*14,1)

	return 0
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end