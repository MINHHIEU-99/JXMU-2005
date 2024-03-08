
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\titlefuncs.lua")
function main()
	
	dofile("script/doldly/event/sinhnhatvltk/hopqua.lua")

	
if GetTask(4999)>=1500 then
Say("Mçi Nh©n VËt ChØ Sö Dông 1 LÇn,"..GetTask(4999)..".",0);
return 1
end
	if CalcFreeItemCellCount() < 20 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 20 « trèng råi h·y nhËn.",0);
		return 1
	end

	local tbthuongitem = {
		

		
			{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=50},
			{szName="LÔ bao HuyÕt ChiÕn (§¹i)",tbProp={6,1,4898,1,0,0},nCount=5,nBindState = -2},	
			{szName="MËt tÞch Kü N¨ng 150 CÊp 21",tbProp={6,1,4369,1,1},nCount=1,nBindState = -2},	
			{szName="MËt tÞch Kü N¨ng 150 CÊp 22",tbProp={6,1,4370,1,1},nCount=1,nBindState = -2},	
			{szName="§¹i thµnh bÝ kÝp 150 lªn CÊp 21",tbProp={6,1,4889,1,1},nCount=1,nBindState = -2},	
			{szName="§¹i thµnh bÝ kÝp 150 lªn CÊp 22",tbProp={6,1,4890,1,1},nCount=1,nBindState = -2},	
			{szName="Tinh Ngäc",tbProp={6,1,4806,1,1},nCount=1000},	
			{szName="Cµn Kh«n Song TuyÖt Béi(7 Ngµy)",tbProp={6,1,4867,1,1},nCount=1,nBindState = -2},	
			{szName="MÆt N¹ ChiÕn Tr­êng Vuong Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nBindState = -2,nExpiredTime=7*24*60},	
			{szName="Ng©n L­îng",nJxb=50000000,nCount=1},
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
			SetTask(4999,1500)
		WriteLogPro("dulieu/an_hopqua.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An Hop Qua \n");		
	---------------------------ad vong ---------------------
	
	
		

	local tm = GetSkillState(1532)
	if tm >= 1 then 
			return
			end
		RemoveSkillState(1546,20,3,559872000,1) 
			RemoveSkillState(1547,20,3,559872000,1) 
				local ntime = 18*60*60*24*7
			local n_title = 256	
			Title_AddTitle(n_title, 2, nTime)
			Title_ActiveTitle(n_title)
			PlayerFunLib:AddSkillState(1532,1,3,18*60*60*24*7,1)
	
	return 0
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end