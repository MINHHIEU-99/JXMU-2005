IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
----------------------------------------------------------
function main()
dofile("script/global/g7vn/item/thiemvuongdan.lua")
if (GetTask(5134) >= 1) then
	Talk(1,"","Mçi  Nh©n VËt ChØ §­îc §çi Tèi §a 1 c¸i")
		return
	end;
	local tbAward = {
			{szName="Xu",tbProp={4,417,1,1,0,0},nCount=10000,nExpiredTime=2*60,nBindState = -2},
                        {szName="Skill 21",tbProp={6,1,4345,1,0,0},nCount=1,nExpiredTime=3*24*60,nBindState = -2},
		         {szName="®¹i thµnh 21",tbProp={6,1,4369,1,0,0},nCount=1,nExpiredTime=3*24*60,nBindState = -2},
	}
	if (CalcFreeItemCellCount() >= 40) then
	tbAwardTemplet:GiveAwardByList(tbAward,"NhËn Th­ëng Thµnh C«ng")
             SetTask(5134,GetTask(5134)+1) 
     Msg2SubWorld("<color=yellow>Chóc Mõng §¹i Cao Thñ <color> "..GetName().." <color=violet> "..GetIP().." <color> §· Më Thµnh C«ng Tói Xu Hç Trî T©n Thñ Chøa 10.000 Xu  ")
WriteLogPro("dulieu/hoatdongxu/xu_tan_thu.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\tmo thanh cong tui htro tan thu \n");	

			else
		Talk(1,"","H·y §Ó Trèng 40 ¤ Råi NhËn Th­ëng")
		return 1
		end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end