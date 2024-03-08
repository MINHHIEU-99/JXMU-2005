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




	local szTitle = "<npc><color=gold> Gamer_"..GetName().." <color>chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color> - <color=green>VoLamVietPK<color> .\nNh÷ng chøc n¨ng bªn d­íi cã thÓ gióp b¹n b«n tÈu giang hå dÔ dµng h¬n \n<color>"
	local Opt = 
	{		
--	{"NhËn Hç Trî Test ", nhanhotrotest},
--		{"NhËn quµ chóc mõng n¨m míi 2021", NhanDenBuSuCo_2},
{"§¨ng Ký ChuyÓn Server 4 --> Server 3 (100xu)", DangKyChuyenNhanVat},
		{"KÕt thóc ®èi tho¹i. ", End},
	}
				local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
		if  nDate <= 202103112359 and GetTask(5997)<=13  then
	--	tinsert(Opt, 1, {"NhËn quµ chóc mõng 8-3-2021.", NhanDenBuSuCo_2}) 
		end
--i--f GetAccount()=="boquyx123" then
--		SetTask(5996,0)
--end
	CreateNewSayEx(szTitle,Opt)

end

function NhanDenBuSuCo_2()
if (CountFreeRoomByWH(5,6,1) < 1) then
		Talk(1, "", "Kh«ng ®ñ chç trèng, xin söa sang l¹i hµnh trang 5x6 « trèng");
		return 1;
	end

	local tbAward100k ={

		{szName="TÝn vËt m«n ph¸i",tbProp={6,1,1670,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*7},
	--	{szName="500 Xu khãa",tbProp={6,1,4893,1,0,0},nCount=500,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="MÆt N¹ ChÝ T«n",tbProp={0,11,841,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*3},

	--	{szName="HuyÕt chiÕn lÔ bao(§¹i)",tbProp={6,1,4898,1,0,0},nCount=2,nBindState = -2,nExpiredTime=60*24*30},
	--	{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2},
		--{szName="Kim Bµi LÔ Hép",tbProp={6,1,4874,1,0,0},nCount=10,nBindState = -2,nExpiredTime=60*24*30},
		{szName="D­¬ng §µ",tbProp={0,6761},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=20210312},
		{szName="TuÇn Léc",tbProp={0,6762},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=20210312},
	--	{szName="Huynh §Ö §ång T©m Chi Liªn",tbProp={0,5987},nCount=1,nQuality=1,nBindState = -2,nExpiredTime=60*24*3},


		}
	if (GetTask(5997) <=13) then

			tbAwardTemplet:GiveAwardByList(tbAward100k,"PhÇn Th­ëng Bï Sù Cè")
	WriteLogPro("dulieu/nhanqua0803.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   \t da nhan qua "..GetTask(5997).."\n");	
		Msg2SubWorld("Chóc Mõng <color=green>"..GetName().." <color>§· NhËn Quµ Chóc Mõng 8-3 T¹i Sø Gi¶ Admin Thµnh C«ng")
		SetTask(5997,14) else Talk(1,"","<bclr=violet>§· NhËn Th­ëng Råi Kh«ng ThÓ NhËn N÷a")

	end
end

function DangKyChuyenNhanVat()
	if CalcEquiproomItemCount(4,417,1,-1)<100 then 
	Talk(1,"no","<color=red>B¹n kh«ng ®ñ 100 Xu.")	
	return 0;
	end
		if GetTask(5996)<13 then
		WriteLogPro("dulieu/dangkychuyennhanvat_moi.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da dang ky chuyen acc\n");
		ConsumeEquiproomItem(100,4,417,1,-1);
		Talk(1, "", "Thµnh C«ng");	
		SetTask(5996,13)
		else
		Talk(1, "", "B¹n ®· ®¨ng ký råi nhÐ");
		end

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end