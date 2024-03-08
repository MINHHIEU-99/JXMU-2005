IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")

HOACUCCP = 4576
BOHOAHONGCP = 4577


function main(sel)
dofile("script/global/quanlygame/sukien/quoctephunu/tuyetsac.lua");
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi sö dông bã hoa tuyÖt s¾c><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local nDate = tonumber(GetLocalDate("%Y%m%d"));
if nDate > 20200320 then
	Say("Event ®· hÕt hÖ thèng tù hñy vËt phÈm.", 0);
		return
	end;
	 
 	if (CalcFreeItemCellCount() < 5) then
		Talk(1,"","Hµnh trang cña b¹n kh«ng ®ñ 5 « trèng!");
		return 1;
	end
	 	if (GetLevel() < 10) then
		Talk(1,"","§¼ng cÊp nµy kh«ng thÓ sö dông");
		return 1;
	end
	
	local nTask = GetTask(4577);
	if nTask >= 300 then
		 Say("§· max 300 c¸i kh«ng thÓ sö dông thªm")
		return 1;
	end
		if nTask == 50  or nTask == 150 or nTask == 250  then
		tbAwardTemplet:GiveAwardByList({{szName="Thñy tinh",tbProp={4,random(238,240),1,1,0},nCount=1,Rate=25, CallBack= _Message},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName="Phóc duyªn",tbProp={6,1,random(122,124),1,0},nCount=1,nRate=90, CallBack= _Message,},}, "test", 1);

	end
			if nTask == 190  or nTask == 290  then
		tbAwardTemplet:GiveAwardByList({{szName="Tinh Hång",tbProp={4,353,1,1,0},nCount=1,nRate=50,},}, "test", 1);
								tbAwardTemplet:GiveAwardByList({{szName="ttiªn thç lé",tbProp={6,1,71,1,1},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);

	end
		if nTask == 40 or  nTask == 80 or nTask == 120 or nTask == 200 or nTask == 240 or nTask == 280  then
		tbAwardTemplet:GiveAwardByList({{szName="QuÕ hoa töu",tbProp={6,1,125,1,0},nCount=1,nRate=10, CallBack= _Message},}, "test", 1);
					tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao TiÒn V¹n",tbProp={6,1,4579,1,1},nCount=1,nRate=70, CallBack= _Message},}, "test", 1);

	end
		if nTask == 10 or  nTask == 20 or nTask == 30 or nTask == 60 or nTask == 70 or nTask == 90 or nTask == 110 or nTask == 130 or nTask == 140 or nTask == 180 or nTask == 210 or nTask == 230 or nTask == 250 or nTask == 270  then
		tbAwardTemplet:GiveAwardByList({{szName="thiÕt la h¸n",tbProp={6,1,23,1,1},nCount=1,nRate=20, CallBack= _Message},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName="Hoa hång",tbProp={6,0,20,1,1},nCount=1,nRate=10},}, "test", 1);
	end
			if nTask == 10 or  nTask == 20 or nTask == 30 or nTask == 60 or nTask == 70 or nTask == 90 or nTask == 110 or nTask == 130 or nTask == 140 or nTask == 180 or nTask == 210 or nTask == 230 or nTask == 250 or nTask == 270  then
		tbAwardTemplet:GiveAwardByList({{szName="thiÕt la h¸n",tbProp={6,1,23,1,1},nCount=1,nRate=20, CallBack= _Message},}, "test", 1);
	end
				if  nTask == 25 or nTask == 35 or nTask == 65 or nTask == 85 or nTask == 195 or nTask == 215 or nTask == 235 or nTask == 255   then
		tbAwardTemplet:GiveAwardByList({{szName="Thiªn s¬n",tbProp={6,1,72,1,1},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName="b¸ch háa lé",tbProp={6,1,73,1,1},nCount=1,nRate=30, CallBack= _Message},}, "test", 1);
						tbAwardTemplet:GiveAwardByList({{szName="tiªn thç lé",tbProp={6,1,71,1,1},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);

	end
					if  nTask == 77 or nTask == 237  then
		tbAwardTemplet:GiveAwardByList({{szName="lÔ bao bý kiÕp",tbProp={6,1,4347,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
								tbAwardTemplet:GiveAwardByList({{szName="tiªn thç lé",tbProp={6,1,71,1,1},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);

	end
		if nTask == 10 or  nTask == 20 or nTask == 30 or nTask == 60 or nTask == 70 or nTask == 90 or nTask == 110 or nTask == 130 or nTask == 140 or nTask == 180 or nTask == 210 or nTask == 230 or nTask == 250 or nTask == 270  then
		tbAwardTemplet:GiveAwardByList({{szName="tói danh väng",tbProp={6,1,4338,1,0},nCount=1,nRate=20, CallBack= _Message},}, "test", 1);
	end
						if  nTask == 259  then
		tbAwardTemplet:GiveAwardByList({{szName="bµn nh­îc",tbProp={6,1,12,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
	end
			if nTask == 209 or nTask == 233   then
		tbAwardTemplet:GiveAwardByList({{szName="Ngùa",tbProp={0,10,5,5,0},nCount=1,nExpiredTime=10080,nRate=50, CallBack= _Message},}, "test", 1);
		--nguabayngay()
	end
			if nTask == 38 or  nTask == 78 or nTask == 118 or nTask == 198 or nTask == 238 or nTask == 278  then
		tbAwardTemplet:GiveAwardByList({{szName="Phóc duyªn",tbProp={6,1,random(122,124),1,0},nCount=1,nRate=70, CallBack= _Message,},}, "test", 1);
	end
			if nTask == 96  or nTask == 196  then
		tbAwardTemplet:GiveAwardByList({{szName="thÇn thµnh",tbProp={6,1,1266,1,1,0},nCount=1,nExpiredTime=10080,nRate=90, CallBack= _Message,},}, "test", 1);
	end
				if  nTask == 246  then
		tbAwardTemplet:GiveAwardByList({{szName="thæ ®Þa",tbProp={6,1,438,1,1,0},nCount=1,nExpiredTime=10080, CallBack= _Message,},}, "test", 1);
	end
				if nTask == 38 or  nTask == 78 or nTask == 118 or nTask == 198 or nTask == 238 or nTask == 278  then
		tbAwardTemplet:GiveAwardByList({{szName="S¸t thñ lÖnh",tbProp={6,1,4564,1,0},nCount=1,nRate=50, CallBack= _Message},}, "test", 1);
	end
							if  nTask == 122 or nTask == 222  then
		tbAwardTemplet:GiveAwardByList({{szName="hµo quang lÔ bao",tbProp={6,1,4566,1,1},nCount=1,nRate=70, CallBack= _Message,},}, "test", 1);
	end
								if  nTask == 144 or nTask == 244  then
										tbAwardTemplet:GiveAwardByList({{szName="NÕn h¹nh phóc",tbProp={6,1,4400,1,1,0},nCount=1,nExpiredTime=10080,nRate=70, CallBack= _Message,},}, "test", 1);

		--tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,random(177,185)},nCount=1,},}, "test", 1);
	end
						if  nTask == 166 or nTask == 256  then
		tbAwardTemplet:GiveAwardByList({{szName="nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,nRate=70, CallBack= _Message,},}, "test", 1);

	end
									if  nTask == 299  then
		randommaxeventt()
		StackExp(50000000);

	end

SetTask(4577,GetTask(4577)+1)
StackExp(2000000);
		tbAwardTemplet:GiveAwardByList({{szName="Phi tèc",tbProp={6,0,3,1,0},nCount=1,nRate=5},}, "test", 1);
				tbAwardTemplet:GiveAwardByList({{szName="Phi tèc",tbProp={6,0,6,1,0},nCount=1,nRate=5,},}, "test", 1);

					tbAwardTemplet:GiveAwardByList({{szName="Hoa Sóng",tbProp={6,1,4578,1,1},nCount=1,nRate=3,},}, "test", 1);

end



function randommaxeventt()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local s = random(1,100)

if s>=1 and s < 4  then
			tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s>=4 and s < 8  then
			tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s>=8 and s < 14  then
nguangaunhien()
end;
if s>=14 and s < 24  then
			tbAwardTemplet:GiveAwardByList({{szName = "lÖnh bµi boss tiÓu",tbProp={6,1,4427,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=24 and s < 35  then
			tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao TiÒn V¹n",tbProp={6,1,4580,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=35 and s < 46  then
			tbAwardTemplet:GiveAwardByList({{szName = "Tien thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=46 and s < 62  then
			tbAwardTemplet:GiveAwardByList({{szName = "§¹i thµnh",tbProp={6,1,2424,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

end;
if s>=62 and s < 101  then
		tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,random(177,185)},nQuality=1,nCount=1,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "lÔ bao kim phong",tbProp={6,1,4367,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
logplayer("dulieu/max8thang3.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn thµnh c«ng mèc max 8 thang 3 ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end


function nguangaunhien()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=cyan> May m¾n nhËn ®­îc <color=pink><%s><color=green><enter><color=yellow>< Khi Sö Dông Max Event ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local t = random(1,5)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="TuyÕt ¶nh",tbProp={0,10,5,3,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="« V©n §¹p TuyÕt",tbProp={0,10,5,6,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="ChiÕu D¹",tbProp={0,10,5,10,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="XÝch Thè",tbProp={0,10,5,7,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="§Ých L«",tbProp={0,10,5,9,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;

end


function nguabayngay()
local t = random(1,5)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="TuyÕt ¶nh",tbProp={0,10,5,3,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="« V©n §¹p TuyÕt",tbProp={0,10,5,6,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="ChiÕu D¹",tbProp={0,10,5,10,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="XÝch Thè",tbProp={0,10,5,7,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="§Ých L«",tbProp={0,10,5,9,0,0,0},nCount=1,nExpiredTime=10080,},}, "test", 1);
end;
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end


