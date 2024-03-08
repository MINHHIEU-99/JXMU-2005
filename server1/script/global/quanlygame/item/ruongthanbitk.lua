Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")





function main(sel)
dofile("script/global/quanlygame/item/ruongthanbitk.lua")
--if GetAccount() ~= "adminvltruyenky" then
--if GetAccount() ~= "gmvltruyenky" then

		--Say("§ang cËp nhËt l¹i nhe1")
--return 1
--end
	local nSilverCount = CalcEquiproomItemCount(6,1,4459,1) ;
	if(nSilverCount < 1) then -- gia xu
	Talk(1,"","CÇn cã 1 ch×a khãa thÇn bÝ míi cã thÓ më b¸o r­¬ng nµy..") -- go
	return 1
	end
doclog()
if nValue == 200 or nValue == 400 or nValue == 600  or nValue == 800 or nValue == 1000 then
ConsumeEquiproomItem(1,6,1,4459,1)
thuongngauhungtb2()
else
ConsumeEquiproomItem(1,6,1,4459,1)
thuongngauhungtb()
tbAwardTemplet:GiveAwardByList({{szName = "lÖnh bµi n¨ng ®éng",tbProp={6,1,4498,1,1,0},nCount=1,},}, "test", 1);
end
end




function thuongngauhungtb2()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Më B¶o R­¬ng ThÇn BÝ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
	ghilog()
end
local s = random(1,2)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName = "An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={0,165},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;
if s==2 then
			tbAwardTemplet:GiveAwardByList({{szName = "An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,166},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;
end


function thuongngauhungtb()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Më B¶o R­¬ng ThÇn BÝ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
	ghilog()
end
local s = random(1,169)

if s==1 then
tl_addPlayerExp(10000000)
end;
if s==2 then
tl_addPlayerExp(15000000)
end;
if s==3 then
tl_addPlayerExp(20000000)
end;
if s==4 then
			tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,238,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==5 then
			tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,239,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==6 then
			tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,240,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==7 then
			tbAwardTemplet:GiveAwardByList({{szName = "TH",tbProp={4,353,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==8 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==9 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==10 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==11 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==12 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==13 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==14 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==15 then
			tbAwardTemplet:GiveAwardByList({{szName = "vlmt",tbProp={6,1,26,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==16 then
			tbAwardTemplet:GiveAwardByList({{szName = "ttk",tbProp={6,1,22,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==17 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);
end;
if s==18 then
			tbAwardTemplet:GiveAwardByList({{szName = "nhÊt kû 3 ngµy",tbProp={6,1,4436,1,1},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==19 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==20 then
			tbAwardTemplet:GiveAwardByList({{szName = "LÔ bao nhu t×nh",tbProp={6,1,1251,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
if s==21 then
			tbAwardTemplet:GiveAwardByList({{szName = "lÔ bao hiÖp cèt",tbProp={6,1,1250,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
if s==22 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",tbProp={0,161},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;
if s==23 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc Tö §»ng Hé uyÓn",tbProp={0,162},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;
if s==24 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc Ng©n Tµm Yªu ®¸i",tbProp={0,163},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;
if s==25 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={0,165},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;
if s==26 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={0,166},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;


if s==27 then
tl_addPlayerExp(10000000)
end;
if s==28 then
tl_addPlayerExp(15000000)
end;
if s==29 then
tl_addPlayerExp(20000000)
end;
if s==30 then
			tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,238,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==31 then
			tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,239,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==32 then
			tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,240,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==33 then
			tbAwardTemplet:GiveAwardByList({{szName = "TH",tbProp={4,353,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==34 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==35 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==36 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==37 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==38 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==39 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==40 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==41 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==42 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==43 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);
end;
if s==44 then
			tbAwardTemplet:GiveAwardByList({{szName = "nhÊt kû 3 ngµy",tbProp={6,1,4436,1,1},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==45 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==46 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==47 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==48 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",tbProp={0,161},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;
if s==49 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc Tö §»ng Hé uyÓn",tbProp={0,162},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;


if s==50 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==51 then
tl_addPlayerExp(15000000)
end;
if s==52 then
tl_addPlayerExp(20000000)
end;
if s==53 then
			tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,238,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==54 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==55 then
			tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,240,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==56 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);

end;
if s==57 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==58 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==59 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==60 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==61 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==62 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==63 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==64 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==65 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==66 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);
end;
if s==67 then
			tbAwardTemplet:GiveAwardByList({{szName = "nhÊt kû 3 ngµy",tbProp={6,1,4436,1,1},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==68 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==69 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==70 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==71 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==72 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==73 then
tl_addPlayerExp(10000000)
end;
if s==74 then
tl_addPlayerExp(15000000)
end;
if s==75 then
tl_addPlayerExp(20000000)
end;
if s==76 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==77 then
			tbAwardTemplet:GiveAwardByList({{szName = "TT",tbProp={4,239,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==78 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==79 then
			tbAwardTemplet:GiveAwardByList({{szName = "TH",tbProp={4,353,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==80 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==81 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==82 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==83 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==84 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==85 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==86 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==87 then
			tbAwardTemplet:GiveAwardByList({{szName = "vlmt",tbProp={6,1,26,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==88 then
			tbAwardTemplet:GiveAwardByList({{szName = "ttk",tbProp={6,1,22,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==89 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);
end;
if s==90 then
			tbAwardTemplet:GiveAwardByList({{szName = "nhÊt kû 3 ngµy",tbProp={6,1,4436,1,1},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==91 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==92 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==93 then
			tbAwardTemplet:GiveAwardByList({{szName = "tiªn thæ lé ®Æc biÖt",tbProp={6,1,1765,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==94 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==95 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==96 then
tl_addPlayerExp(10000000)
end;
if s==97 then
tl_addPlayerExp(15000000)
end;
if s==98 then
tl_addPlayerExp(20000000)
end;
if s==99 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc Thanh Sa Tr­êng Sam",tbProp={0,159},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;
if s==100 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "§Þnh Quèc ¤ Sa Ph¸t Qu¸n",tbProp={0,160},nCount=1, nQuality=1, CallBack= _Message,},}, "test", 1);
end;
if s==101 then
tl_addPlayerExp(10000000)
end;
if s==102 then
tl_addPlayerExp(15000000)
end;
if s==103 then
tl_addPlayerExp(20000000)
end;
if s==104 then
tl_addPlayerExp(10000000)
end;
if s==105 then
tl_addPlayerExp(15000000)
end;
if s==106 then
tl_addPlayerExp(20000000)
end;
if s==107 then
tl_addPlayerExp(10000000)
end;
if s==108 then
tl_addPlayerExp(15000000)
end;
if s==109 then
tl_addPlayerExp(20000000)
end;
if s==110 then
tl_addPlayerExp(10000000)
end;
if s==111 then
tl_addPlayerExp(15000000)
end;
if s==112 then
tl_addPlayerExp(20000000)
end;
if s==113 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==114 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==115 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==116 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==117 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);
end;
if s==118 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);
end;
if s==119 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);
end;
if s==120 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);
end;
if s==121 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==122 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==123 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==124 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==125 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==126 then
			tbAwardTemplet:GiveAwardByList({{szName = "TH",tbProp={4,353,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==127 then
			tbAwardTemplet:GiveAwardByList({{szName = "TH",tbProp={4,353,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==128 then
			tbAwardTemplet:GiveAwardByList({{szName = "MÆt n¹",tbProp={0,11,561,1,0,0},nCount=1, nExpiredTime=4320,CallBack= _Message,},}, "test", 1);

end;
if s==129 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);

end;
if s==130 then
			tbAwardTemplet:GiveAwardByList({{szName = "TH",tbProp={4,353,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==131 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end
if s==132 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end
if s==133 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end
if s==134 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end
if s==135 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end
if s==136 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end
if s==137 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Bµi",tbProp={6,1,4434,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end
if s==138 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==139 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==140 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==141 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==142 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==143 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==144 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==145 then
			tbAwardTemplet:GiveAwardByList({{szName = "QHT",tbProp={6,1,125,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==146 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==147 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==148 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==149 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==150 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==151 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==152 then
			tbAwardTemplet:GiveAwardByList({{szName = "LÔ bao nhu t×nh",tbProp={6,1,1251,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
if s==153 then
			tbAwardTemplet:GiveAwardByList({{szName = "lÔ bao hiÖp cèt",tbProp={6,1,1250,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
if s==154 then
			tbAwardTemplet:GiveAwardByList({{szName = "LÔ bao nhu t×nh",tbProp={6,1,1251,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
if s==155 then
			tbAwardTemplet:GiveAwardByList({{szName = "lÔ bao hiÖp cèt",tbProp={6,1,1250,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
if s==156 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==157 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==158 then
			tbAwardTemplet:GiveAwardByList({{szName = "nhÊt kû 3 ngµy",tbProp={6,1,4436,1,1},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==159 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==160 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==161 then
			tbAwardTemplet:GiveAwardByList({{szName = "méc Bµi",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==162 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi V©n",tbProp={0,10,8,1,0,0},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==163 then
			tbAwardTemplet:GiveAwardByList({{szName = "nhÊt kû 3 ngµy",tbProp={6,1,4436,1,1},nCount=1, nExpiredTime=4320, CallBack= _Message,},}, "test", 1);
end;
if s==164 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn may m¾n",tbProp={6,1,4399,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==165 then
			tbAwardTemplet:GiveAwardByList({{szName = "nÕn h¹nh phóc",tbProp={6,1,4400,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==166 then
			tbAwardTemplet:GiveAwardByList({{szName = "LÔ bao nhu t×nh",tbProp={6,1,1251,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
if s==167 then
			tbAwardTemplet:GiveAwardByList({{szName = "lÔ bao hiÖp cèt",tbProp={6,1,1250,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
if s==168 then
			tbAwardTemplet:GiveAwardByList({{szName = "LÔ bao nhu t×nh",tbProp={6,1,1251,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
if s==169 then
			tbAwardTemplet:GiveAwardByList({{szName = "lÔ bao hiÖp cèt",tbProp={6,1,1250,1,1},nCount=1, nExpiredTime=43200, CallBack= _Message,},}, "test", 1);
end;
end


function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end


function ghilog()
doclog()
dem = nValue + 1
szPath = "dulieu/diembaoruong.txt"
	handle = openfile(szPath, "w+")
	write(handle, dem)	
	closefile(handle)
end

function doclog()
szPath = "dulieu/diembaoruong.txt"
		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tonumber(nValue)
		end
		closefile(handle)	
		return nValue		
end

