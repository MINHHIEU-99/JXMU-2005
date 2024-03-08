Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
IncludeLib("LEAGUE")

-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------
local tbItemNewBossDropAward={

	[1] = {
                 {szName="Ng�n L��ng",nJxb=900000,nCount=1},
		--{szName="��i Kim Nguy�n b�o",tbProp={4,1509,1,1,0,0},nCount=700},
                {szName="Tinh Ngoc",tbProp={6,1,4807,1,0,0},nCount=1000},

    	--{szName="Huy�n Th�y V�n Tinh- �t ",tbProp={6,1,53011,1,0,0},nCount=200},
           
	},
		[2] = {--100%/10 mon trang Bi

		{szName="Nhat Ky",tbProp={6,1,2126,1,0,0},nCount=1,nRate=1,CallBack= _Message},
		--{szName="B�ch Ngh� Thi�n Th�ch",tbProp={6,1,49004,1,0,0},nCount=100,nRate=7,CallBack= _Message},

	},
}


function OnDeath(nNpcIndex)
	tenboss=GetNpcName(nNpcIndex)
	if (PlayerIndex == nil or PlayerIndex == 0) then
		return
	end
	--	 StackExp(500000000);
PlayerFunLib:AddExp(0, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i Admin"));
	local nTeamSize = GetTeamSize();
	local szName;
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 200000000, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c Th�ng So�i ��u Tr��ng b� ti�u di�t"));
	end
	szNews = format("��i Hi�p <color=green>"..GetName().."<color> �� ��nh b�i <color=Cyan>Th�ng So�i ��u Tr��ng<color>, t�n tu�i s� vang v�ng giang h� !");
	AddGlobalNews(szNews);
	Msg2SubWorld(szNews);
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbItemNewBossDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
        WriteLogPro("dulieu/hoatdongxu/boss_kiemtien_chet.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da danh bai kiem tien, t�ng  so :"..GetTask(5128).."  con   \n");
        SetTask(5128,GetTask(5128)+1)	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,roiboss(),format("killed_%s",GetNpcName(nNpcIndex)))
		local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
			if nDate <= TimeKetThucEventFree then
			tbAwardTemplet:GiveAwardByList({{szName = "Event Free", tbProp ={ 6, 1, ideventfree, 1, 0, 0}, nCount=20, nExpiredTime=TimeHetHanEventFree}},  "test", 1)
			end

end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end

function roiboss()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>Boss Ho�ng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local c = random(1,50)
if c==30 then
--	tbAwardTemplet:GiveAwardByList({{szName = "M�t T�ch K� N�ng 150 C�p 23",tbProp={6,1,4347,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;

local d= random(1,3)
if d==2 then
--	tbAwardTemplet:GiveAwardByList({{szName = "B�ch Luy�n Th�nh C��ng",tbProp={6,1,6090,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;

			local f1= random(1,5)

				if f1==3 then
									local i2 = random(1,3)
									if i2==1 then
									--tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t Kh�i",tbProp={6,1,5561,1,1},nCount=1,CallBack= _Message},}, "test", 1);
									else if i2==2 then
									--tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t Y�u ��i",tbProp={6,1,5564,1,1},nCount=1,CallBack= _Message},}, "test", 1);
									else if i2==3 then
									--	tbAwardTemplet:GiveAwardByList({{szName = "�� Ph� Nguy�t Khuy�t B�i",tbProp={6,1,5568,1,1},nCount=1,CallBack= _Message},}, "test", 1);
										end
										end
										end
				end;
				
local d1= random(1,3)
if d1==2 then
	local d12=random(1,2)
	if d12==1 then
	--tbAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng Kh�i",tbProp={6,1,6025,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},CallBack= _Message,},}, "test", 1);
	else if d12==2 then
	--bAwardTemplet:GiveAwardByList({{szName = "B�o R��ng Tinh S��ng V� Kh�",tbProp={6,1,6026,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},CallBack= _Message,},}, "test", 1);
	end
	end
end;

end
