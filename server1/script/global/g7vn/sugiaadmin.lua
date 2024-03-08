IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")



function main()
	
	dofile("script/global/g7vn/sugiaadmin.lua")




	local szTitle = "<npc><color=gold> Gamer_"..GetName().." <color>ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color> - <color=green>VoLamVietPK<color> .\nNh�ng ch�c n�ng b�n d��i c� th� gi�p b�n b�n t�u giang h� d� d�ng h�n \n<color>"
	local Opt = 
	{		
--	{"Nh�n H� Tr� Test ", nhanhotrotest},
--		{"Nh�n qu� ch�c m�ng n�m m�i 2021", NhanDenBuSuCo_2},
{"��ng K� Chuy�n Server 4 --> Server 3 (100xu)", DangKyChuyenNhanVat},
		{"K�t th�c ��i tho�i. ", End},
	}
				local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
		if  nDate <= 202103112359 and GetTask(5997)<=13  then
	--	tinsert(Opt, 1, {"Nh�n qu� ch�c m�ng 8-3-2021.", NhanDenBuSuCo_2}) 
		end
--i--f GetAccount()=="boquyx123" then
--		SetTask(5996,0)
--end
	CreateNewSayEx(szTitle,Opt)

end

function NhanDenBuSuCo_2()
if (CountFreeRoomByWH(5,6,1) < 1) then
		Talk(1, "", "Kh�ng �� ch� tr�ng, xin s�a sang l�i h�nh trang 5x6 � tr�ng");
		return 1;
	end

	local tbAward100k ={

		{szName="T�n v�t m�n ph�i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
	--	{szName="500 Xu kh�a",tbProp={6,1,4893,1,0,0},nCount=500,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="M�t N� Ch� T�n",tbProp={0,11,841,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*3},

	--	{szName="Huy�t chi�n l� bao(��i)",tbProp={6,1,4898,1,0,0},nCount=2,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="Kim B�i L� H�p",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2},
		--{szName="Kim B�i L� H�p",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
		{szName="D��ng ��",tbProp={0,6761},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=20210312},
		{szName="Tu�n L�c",tbProp={0,6762},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=20210312},
	--	{szName="Huynh �� ��ng T�m Chi Li�n",tbProp={0,5987},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*3},


		}
	if (GetTask(5997) <=13) then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"Ph�n Th��ng B� S� C�")
	WriteLogPro("dulieu/nhanqua0803.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   \t da nhan qua "..GetTask(5997).."\n");	
		Msg2SubWorld("Ch�c M�ng <color=green>"..GetName().." <color>�� Nh�n Qu� Ch�c M�ng 8-3 T�i S� Gi� Admin Th�nh C�ng")
		SetTask(5997,14) else Talk(1,"","<bclr=violet>�� Nh�n Th��ng R�i Kh�ng Th� Nh�n N�a")

	end
end

function DangKyChuyenNhanVat()
	if CalcEquiproomItemCount(4,417,1,-1)<100 then 
	Talk(1,"no","<color=red>B�n kh�ng �� 100 Xu.")	
	return 0;
	end
		if GetTask(5996)<13 then
		WriteLogPro("dulieu/dangkychuyennhanvat_moi.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da dang ky chuyen acc\n");
		ConsumeEquiproomItem(100,4,417,1,-1);
		Talk(1, "", "Th�nh C�ng");	
		SetTask(5996,13)
		else
		Talk(1, "", "B�n �� ��ng k� r�i nh�");
		end

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end