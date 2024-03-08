
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
function main()
	
	dofile("script/doldly/event/sinhnhatvltk/hopquahoatdong.lua")
if GetTask(4997)>=1503 then
Say("M�i Nh�n V�t Ch� S� D�ng 1 L�n.",0);
return 1
end
	if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
		return 1
	end

	local tbthuongitem = {
		

		
			{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=600},
			{szName="Thanh Hanh Phu",tbProp={6,1,1266,1,0,0},nCount=1,nBindState = -2,nExpiredTime=30*24*60},	
			{szName="Tho Dia Phu",tbProp={6,1,438,1,1},nCount=1,nBindState = -2,nExpiredTime=30*24*60},	
			{szName="100 Xu kh�a",tbProp={6,1,4893,1,0,0},nCount=100,nBindState = -2},
			{szName="Ng�n L��ng",nJxb=50000000,nCount=1},
			{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount=100,nExpiredTime=30*24*60,nBindState = -2},
			{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount=100,nExpiredTime=30*24*60,nBindState = -2},
			{szName="Chi�n C�",tbProp={6,1,156,1,0,0},nCount=100,nExpiredTime=30*24*60,nBindState = -2},
}


	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
WriteLogPro("dulieu/an_hopquahoatdong.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da An Hop Qua Hoat Dong \n");		
			SetTask(4997,1503)
	return 0
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
