---Script -- By-NguyenKhai-------
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\global\\judgeoffline_limit.lua");
Include("\\script\\missions\\basemission\\lib.lua")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")


-----------------------



---Script -- By-NguyenKhai-------
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\global\\judgeoffline_limit.lua");
Include("\\script\\missions\\basemission\\lib.lua")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")

Include("\\script\\lib\\droptemplet.lua")


local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=red>V�t ph�m <color=pink><%s><color=green><enter> v�a r�i t� <color=yellow>Th�y T�c ��i ��u L�nh<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end



tbItem1 =
{
	{{szName="truy c�ng l�nh",tbProp={6,1,2015,1,1},nCount=1,nExpiredTime=1440},},
	--{{szName="s�t th� l�nh",tbProp={6,1,4564,1,1},nCount=10,nExpiredTime=10080},},

	--{{szName="Ti�n th� l�",tbProp={6,1,71,1,1},nCount=1,},},
		--{{szName="Phi T�c ho�n",tbProp={6,0,6,1,0},nCount=1,},},
			--{{szName="��i L�c ho�n",tbProp={6,0,3,1,0},nCount=1,},},
				--{{szName="Thi�t La H�n",tbProp={6,1,23,1,1},nCount=1,},},
				--	{{szName="T�m T�m T��ng �nh ph�",tbProp={6,1,18,1,1},nCount=1,},},
					--	{{szName="ph�c duy�n",tbProp={6,1,122,1,1},nCount=1,nRate=50},},
	--{{szName="ph�c duy�n",tbProp={6,1,123,1,1},nCount=1,nRate=25},},
	--{{szName="ph�c duy�n",tbProp={6,1,124,1,1},nCount=1,nRate=10},},
}

tbItem2 =
{
	{{szName="Ti�n th� l� db",tbProp={6,1,1765,1,1},nCount=1,CallBack= _Message},},

}
tbItem3 =
{
	{{szName="��i th�nh b� k�p 90",tbProp={6,1,2424,1,1},nCount=1,},},

}
tbItem4 =
{
	{{szName="m� b�i",tbProp={6,1,2328,1,1},nCount=1,},},

}
tbItem5 =
{
	{{szName="m� b�i",tbProp={6,1,2329,1,1},nCount=1,},},

}
tbItem6 =
{
	{{szName="m� b�i",tbProp={6,1,2330,1,1},nCount=1,},},

}
tbItem7 =
{
	{{szName="m� b�i",tbProp={6,1,2331,1,1},nCount=1, CallBack= _Message,},},

}
tbItem8 =
{
	{{szName="m� b�i",tbProp={6,1,2332,1,1},nCount=1, CallBack= _Message,},},

}
tbItem9 =
{
	{{szName="b�n nh��c",tbProp={6,1,12,1,1},nCount=1, CallBack= _Message,},},

}
tbItem10 =
{
	{{szName="L� bao b� k�p",tbProp={6,1,4347,1,0},nCount=1, CallBack= _Message,},},

}

tbItem11 =
{
	{{szName="Th� ��c x� tri�u ��nh",tbProp={6,1,1375,1,0},nCount=1, CallBack= _Message,},},

}
tbItem12 =
{
	{{szName="L� Bao Kim Phong",tbProp={6,1,4367,1,0},nCount=1, CallBack= _Message,},},

}
tbItem13 =
{
	{{szName="Trung Th�nh B� K�p",tbProp={6,1,4544,1,0},nCount=1, CallBack= _Message,},},

}
tbItem14 =
{
	{{szName="TTK",tbProp={6,1,22,1,0},nCount=1, CallBack= _Message,},},

}
tbItem15 =
{
	{{szName="VLMT",tbProp={6,1,26,1,0},nCount=1, CallBack= _Message,},},

}
tbItem16 =
{
	{{szName="��i th�nh",tbProp={6,1,2424,1,0},nCount=1, CallBack= _Message,},},

}

tbItem17 =
{
	{{szName="Ti�n th� l� db",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},},

}

tbItem18 =
{
	{{szName="ng�a",tbProp={0,10,5,10,0},nCount=1, CallBack= _Message,},},

}
tbItem19 =
{
	{{szName="N�n H�nh Ph�c",tbProp={6,1,4400,1,1},nCount=1, CallBack= _Message,},},

}
tbItem20 =
{
	{{szName="N�n may man",tbProp={6,1,4399,1,1},nCount=1, CallBack= _Message,},},

}
tbItem21 =
{
	{{szName="ng�a",tbProp={0,10,5,7,0},nCount=1, CallBack= _Message,},},

}
tbItem22 =
{
	{{szName="ng�a",tbProp={0,10,5,9,0},nCount=1, CallBack= _Message,},},

}
tbItem23 =
{
	{{szName="ng�a",tbProp={0,10,5,6,0},nCount=1, CallBack= _Message,},},

}
tbItem24 =
{
	{{szName="kimphong",tbProp={0,random(177,185)},nCount=1,nQuality=1, CallBack= _Message,},},

}
tbItem25 =
{
	{{szName="DTBK",tbProp={6,1,2424,1,1},nCount=1, CallBack= _Message,},},
}
tbItem26 =
{
	{{szName="Tam s�c chi b�o",tbProp={6,1,2135,1,1},nCount=1, CallBack= _Message,},},
}
tbItem27 =
{
	{{szName="Tr�ng luy�n ng�c",tbProp={4,1677,1,1,0},nCount=1, CallBack= _Message,},},
}
function OnDeath(nNpcIndex)
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> C�c may m�n nh�n ���c <color=pink><%s><color=green><enter><color=yellow>< Khi Ti�u Di�t ��i Th�y T�c B�n Thuy�n 1 ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local ngaunhienttt = random(1,100)
if (ngaunhienttt >= 1 and ngaunhienttt  < 11)  then
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem14,TitleStr, 1) --ttk
AddOwnExp(5000000)
end
if (ngaunhienttt >= 11 and ngaunhienttt  < 21)  then
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem15,TitleStr, 1) --vlmt
AddOwnExp(5000000)
end
if (ngaunhienttt >= 21 and ngaunhienttt  < 31)  then
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem18,TitleStr, 1) --vlmt
AddOwnExp(5000000)
end
if (ngaunhienttt >= 31 and ngaunhienttt  < 51)  then
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem2,TitleStr, 1) --tientholo
AddOwnExp(5000000)
end
if (ngaunhienttt >= 51 and ngaunhienttt  < 101)  then
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem16,TitleStr, 1)  --chieuda
AddOwnExp(5000000)
end
tbDropTemplet:GiveAwardByList(nNpcIndex, -1, tbItem1,TitleStr, 1)
	local szNews = format("<color=green>Ch�c m�ng cao th� <color=yellow>"..GetName().." �� Ti�u di�t  th�nh c�ng ��i Th�y T�c ��u L�nh => B�n 2 Phong L�ng ��");
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	end


function OnTimer(nNpcIndex,nTimeOut)
DelNpc(nNpcIndex)
end











