
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
function main()
	
	dofile("script/doldly/event/sinhnhatvltk/hopquavip.lua")
if GetTask(4998)>=1500 then
Say("M�i Nh�n V�t Ch� S� D�ng 1 L�n.",0);
return 1
end
	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
		return 1
	end

	local tbthuongitem = {
		

		
			{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=100},
			{szName="L� bao Huy�t Chi�n (��i)",tbProp={6,1,4898,1,0,0},nCount=10,nBindState = -2},	
			{szName="M�t t�ch K� N�ng 150 C�p 21",tbProp={6,1,4369,1,1},nCount=1,nBindState = -2},	
			{szName="M�t t�ch K� N�ng 150 C�p 22",tbProp={6,1,4370,1,1},nCount=1,nBindState = -2},	
			{szName="M�t t�ch K� N�ng 150 C�p 23",tbProp={6,1,4371,1,1},nCount=1,nBindState = -2},	
			{szName="��i th�nh b� k�p 150 l�n C�p 21",tbProp={6,1,4889,1,1},nCount=1,nBindState = -2},	
			{szName="��i th�nh b� k�p 150 l�n C�p 22",tbProp={6,1,4890,1,1},nCount=1,nBindState = -2},	
			{szName="��i th�nh b� k�p 150 l�n C�p 23",tbProp={6,1,4891,1,1},nCount=1,nBindState = -2},	
			{szName="C�n Kh�n Song Tuy�t B�i(7 Ng�y)",tbProp={6,1,4867,1,1},nCount=1,nBindState = -2},
				{szName="M�t N� Chi�n Tr��ng Vuong Gi�",tbProp={0,11,806,1,0,0},nCount=1,nBindState = -2,nExpiredTime=7*24*60},	
			{szName="Tinh Ng�c",tbProp={6,1,4806,1,1},nCount=2000,nBindState = -2},				
			{szName="Ng�n L��ng",nJxb=100000000,nCount=1},
}


						SetTask(4998,1500)
	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	WriteLogPro("dulieu/an_hopquavip.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An Hop Qua  Vip\n");		
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