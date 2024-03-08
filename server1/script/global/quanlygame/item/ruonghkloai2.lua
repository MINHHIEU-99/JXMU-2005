Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")





function main(sel)
dofile("script/global/quanlygame/item/ruonghkloai2.lua")
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§¹i hiÖp <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< Khi Më R­¬ng Hoµng Kim Lo¹i 2<color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local s = random(1,80)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Méng Long §¹t Ma T¨ng hµi",tbProp={4,1533,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "Méng Long HuyÒn Ti Ph¸t ®¸i",tbProp={4,1531,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName = "Méng Long §¹t Ma T¨ng hµi",tbProp={4,1533,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName = "Tø Kh«ng Hé ph¸p Yªu ®¸i",tbProp={4,1541,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "Tø Kh«ng Tö Kim Cµ Sa",tbProp={4,1540,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName = "Tø Kh«ng Hé ph¸p Yªu ®¸i",tbProp={4,1541,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==5 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phôc Ma HuyÒn Hoµng Cµ Sa",tbProp={4,1535,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Tø Kh«ng Giíi LuËt Ph¸p giíi",tbProp={4,1543,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==6 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phôc Ma HuyÒn Hoµng Cµ Sa",tbProp={4,1535,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==7 then
			--tbAwardTemplet:GiveAwardByList({{szName = "Phôc Ma Phæ §é T¨ng hµi",tbProp={4,1538,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "Phôc Ma HuyÒn Hoµng Cµ Sa",tbProp={4,1535,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==8 then
			tbAwardTemplet:GiveAwardByList({{szName = "KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",tbProp={4,1550,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==9 then
			tbAwardTemplet:GiveAwardByList({{szName = "KÕ NghiÖp HuyÒn Vò Hoµng Kim Kh¶i",tbProp={4,1550,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "KÕ NghiÖp B¹ch Hæ V« Song khÊu",tbProp={4,1551,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==10 then
			tbAwardTemplet:GiveAwardByList({{szName = "KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",tbProp={4,1553,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==11 then
			tbAwardTemplet:GiveAwardByList({{szName = "KÕ NghiÖp Chu T­íc L¨ng V©n Ngoa",tbProp={4,1553,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",tbProp={4,1555,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==12 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ngù Long Thiªn M«n Thóc Yªu hoµn",tbProp={4,1556,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==13 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ngù Long Thiªn M«n Thóc Yªu hoµn",tbProp={4,1556,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "H¸m Thiªn Vò ThÇn T­¬ng Kim Gi¸p",tbProp={4,1545,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==14 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ngù Long Thiªn M«n Thóc Yªu hoµn",tbProp={4,1556,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "H¸m Thiªn Thõa Long ChiÕn Ngoa",tbProp={4,1548,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;

if s==15 then
			tbAwardTemplet:GiveAwardByList({{szName = "H¸m Thiªn Uy Vò Thóc yªu ®¸i",tbProp={4,1546,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==16 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Cõu Gi¸ng Long C¸i Y",tbProp={4,1620,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==17 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Cõu TiÒm Long Yªu §¸i",tbProp={4,1621,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==18 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Cõu TiÒm Long Yªu §¸i",tbProp={4,1621,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "§ång Cõu KiÕn Long Ban ChØ ",tbProp={4,1623,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==19 then
			tbAwardTemplet:GiveAwardByList({{szName = "§ång Cõu TiÒm Long Yªu §¸i",tbProp={4,1621,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "§Þch Kh¸i Cöu §¹i C¸i Y",tbProp={4,1625,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==20 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þch Kh¸i CÈu TÝch B× Hé uyÓn",tbProp={4,1627,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "§Þch Kh¸i TriÒn M·ng yªu ®¸i",tbProp={4,1626,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==21 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þch Kh¸i CÈu TÝch B× Hé uyÓn",tbProp={4,1627,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "§Þch Kh¸i CÈu TÝch B× Hé uyÓn",tbProp={4,1627,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma Hoµng Khª Cèc Thóc yªu ®¸i",tbProp={4,1636,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Ma Hoµng Kim Gi¸p Kh«i",tbProp={4,1634,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;







if s==23 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={4,1630,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "Ma Hoµng §¨ng §¹p Ngoa",tbProp={4,1638,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma Hoµng Khª Cèc Thóc yªu ®¸i",tbProp={4,1636,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==25 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={4,1642,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",tbProp={4,1635,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==26 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={4,1630,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==27 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={4,1630,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Ma S¸t V©n Long Thæ Ch©u giíi",tbProp={4,1633,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==28 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",tbProp={4,1630,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Ma S¸t XÝch Ký Táa Yªu KhÊu",tbProp={4,1631,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==29 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={4,1642,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==30 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma ThÞ HuyÕt Ngäc ThÊt S¸t Béi",tbProp={4,1642,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Ma ThÞ NghiÖp Háa U Minh Giíi",tbProp={4,1641,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==31 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma ThÞ LÖ Ma PhÖ T©m Liªn",tbProp={4,1640,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==32 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma ThÞ LÖ Ma PhÖ T©m Liªn",tbProp={4,1640,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V« Gian Thanh Phong Truy Y",tbProp={4,1560,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==33 then
			tbAwardTemplet:GiveAwardByList({{szName = "V« Gian PhÊt V©n Ti ®¸i",tbProp={4,1561,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V« Gian B¹ch Ngäc Bµn ChØ",tbProp={4,1563,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==34 then
			tbAwardTemplet:GiveAwardByList({{szName = "V« Gian PhÊt V©n Ti ®¸i",tbProp={4,1561,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==35 then
			tbAwardTemplet:GiveAwardByList({{szName = "V« Ma Ma Ni qu¸n",tbProp={4,1564,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==36 then
			tbAwardTemplet:GiveAwardByList({{szName = "V« Ma Ma Ni qu¸n",tbProp={4,1564,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V« Ma B¨ng Tinh ChØ Hoµn",tbProp={4,1566,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;

if s==37 then
			tbAwardTemplet:GiveAwardByList({{szName = "V« Ma Tö Kh©m Cµ Sa",tbProp={4,1565,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==38 then
			tbAwardTemplet:GiveAwardByList({{szName = "V« Ma Tö Kh©m Cµ Sa",tbProp={4,1565,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V« TrÇn Ngäc N÷ Tè T©m qu¸n",tbProp={4,1569,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==39 then
			tbAwardTemplet:GiveAwardByList({{szName = "V« TrÇn PhËt Quang ChØ Hoµn ",tbProp={4,1573,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",tbProp={4,1570,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==40 then
			tbAwardTemplet:GiveAwardByList({{szName = "V« TrÇn PhËt Quang ChØ Hoµn ",tbProp={4,1573,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==41 then
			tbAwardTemplet:GiveAwardByList({{szName = "V« TrÇn PhËt Quang ChØ Hoµn ",tbProp={4,1573,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "V« TrÇn Tõ Bi Ngäc Ban ChØ",tbProp={4,1571,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==42 then
			tbAwardTemplet:GiveAwardByList({{szName = "Tª Hoµng TuÖ T©m Khinh Sa Y",tbProp={4,1575,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==43 then
			tbAwardTemplet:GiveAwardByList({{szName = "Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",tbProp={4,1576,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==44 then
tbAwardTemplet:GiveAwardByList({{szName = "BÝch H¶i Hoµn Ch©u Vò Liªn",tbProp={4,1580,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "Tª Hoµng Thóy Ngäc ChØ Hoµn",tbProp={4,1578,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;




if s==45 then
tbAwardTemplet:GiveAwardByList({{szName = "BÝch H¶i Hoµn Ch©u Vò Liªn",tbProp={4,1580,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==46 then
tbAwardTemplet:GiveAwardByList({{szName = "BÝch H¶i Hång Linh Kim Ti ®¸i",tbProp={4,1581,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "BÝch H¶i Hång Linh Kim Ti ®¸i",tbProp={4,1581,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==47 then
tbAwardTemplet:GiveAwardByList({{szName = "BÝch H¶i Hång Linh Kim Ti ®¸i",tbProp={4,1581,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "BÝch H¶i Khiªn TÕ ChØ hoµn",tbProp={4,1583,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==48 then
tbAwardTemplet:GiveAwardByList({{szName = "CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",tbProp={4,1652,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "CËp Phong Tam Thanh Phï",tbProp={4,1650,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==49 then
tbAwardTemplet:GiveAwardByList({{szName = "CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",tbProp={4,1652,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "CËp Phong Thanh Tïng Ph¸p giíi",tbProp={4,1653,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==50 then
tbAwardTemplet:GiveAwardByList({{szName = "CËp Phong Thóy Ngäc HuyÒn Hoµng Béi",tbProp={4,1652,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "CËp Phong HuyÒn Ti Tam §o¹n cÈm",tbProp={4,1651,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==51 then
			--tbAwardTemplet:GiveAwardByList({{szName = "L¨ng Nh¹c Né L«i Giíi",tbProp={4,1646,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "L¨ng Nh¹c V« Ng· ®¹o bµo",tbProp={4,1645,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==52 then
			tbAwardTemplet:GiveAwardByList({{szName = "L¨ng Nh¹c V« Ng· ®¹o bµo",tbProp={4,1645,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==53 then
			tbAwardTemplet:GiveAwardByList({{szName = "L¨ng Nh¹c V« Ng· ®¹o bµo",tbProp={4,1645,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "L¨ng Nh¹c Thiªn §Þa HuyÒn Hoµng giíi",tbProp={4,1648,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==54 then
			tbAwardTemplet:GiveAwardByList({{szName = "Vô ¶o Ki B¸n phï chó",tbProp={4,1665,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==55 then
			tbAwardTemplet:GiveAwardByList({{szName = "Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",tbProp={4,1667,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==56 then
			tbAwardTemplet:GiveAwardByList({{szName = "Vô ¶o Tung Phong TuyÕt ¶nh ngoa",tbProp={4,1668,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==57 then
			tbAwardTemplet:GiveAwardByList({{szName = "L«i Khung Thiªn §Þa Hé phï",tbProp={4,1660,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==58 then
			tbAwardTemplet:GiveAwardByList({{szName = "Vô ¶o Tung Phong TuyÕt ¶nh ngoa",tbProp={4,1668,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "L«i Khung Cöu Thiªn DÉn L«i giíi",tbProp={4,1663,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;

if s==59 then
			tbAwardTemplet:GiveAwardByList({{szName = "Vô ¶o Tung Phong TuyÕt ¶nh ngoa",tbProp={4,1668,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "L«i Khung Phong L«i Thanh CÈm ®¸i",tbProp={4,1661,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==60 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",tbProp={4,1614,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==61 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",tbProp={4,1614,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "§Þa Ph¸ch KhÊu T©m tr¹c",tbProp={4,1617,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==62 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn ",tbProp={4,1615,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==63 then
			tbAwardTemplet:GiveAwardByList({{szName = "S©m Hoang Tinh VÉn Phi Lý ",tbProp={4,1613,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "§Þa Ph¸ch TÝch LÞch L«i Háa Giíi",tbProp={4,1616,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==64 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",tbProp={4,1618,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==65 then
			tbAwardTemplet:GiveAwardByList({{szName = "§Þa Ph¸ch §Þa Hµnh Thiªn Lý Ngoa",tbProp={4,1618,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "B¨ng Hµn HuyÒn Y Thóc Gi¸p",tbProp={4,1600,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==66 then
			tbAwardTemplet:GiveAwardByList({{szName = "B¨ng Hµn T©m TiÔn Yªu KhÊu",tbProp={4,1601,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;





if s==67 then
tbAwardTemplet:GiveAwardByList({{szName = "B¨ng Hµn HuyÒn Thiªn B¨ng Háa Béi",tbProp={4,1602,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==68 then
tbAwardTemplet:GiveAwardByList({{szName = "B¨ng Hµn NguyÖt ¶nh Ngoa",tbProp={4,1603,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",tbProp={4,1610,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==69 then
tbAwardTemplet:GiveAwardByList({{szName = "S©m Hoang KimTiÒn Liªn Hoµn Gi¸p",tbProp={4,1610,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={4,1611,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==70 then
tbAwardTemplet:GiveAwardByList({{szName = "S©m Hoang Hån Gi¶o Yªu Thóc",tbProp={4,1611,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "S©m Hoang HuyÒn ThiÕt T­¬ng Ngäc Béi",tbProp={4,1612,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==71 then
			tbAwardTemplet:GiveAwardByList({{szName = "Minh ¶o Hñ Cèt Hé uyÓn",tbProp={4,1592,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==72 then
			tbAwardTemplet:GiveAwardByList({{szName = "Minh ¶o Hñ Cèt Hé uyÓn",tbProp={4,1592,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Minh ¶o U §éc ¸m Y",tbProp={4,1590,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==73 then
			tbAwardTemplet:GiveAwardByList({{szName = "Minh ¶o Song Hoµn Xµ Hµi",tbProp={4,1593,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Minh ¶o §éc YÕt ChØ Hoµn",tbProp={4,1591,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==74 then
			tbAwardTemplet:GiveAwardByList({{szName = "U Lung XÝch YÕt MËt trang",tbProp={4,1585,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==75 then
			tbAwardTemplet:GiveAwardByList({{szName = "U Lung Thanh Ng« TriÒn yªu",tbProp={4,1586,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==76 then
			tbAwardTemplet:GiveAwardByList({{szName = "Chó Ph­îc Ph¸ gi¸p ®Çu hoµn",tbProp={4,1594,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==77 then
			tbAwardTemplet:GiveAwardByList({{szName = "Chó Ph­îc Xuyªn T©m §éc UyÓn",tbProp={4,1597,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "Chó Ph­îc DiÖt L«i C¶nh Phï",tbProp={4,1595,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==78 then
			tbAwardTemplet:GiveAwardByList({{szName = "Chó Ph­îc Xuyªn T©m §éc UyÓn",tbProp={4,1597,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==79 then
			tbAwardTemplet:GiveAwardByList({{szName = "Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",tbProp={4,1598,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Chó Ph­îc U ¶o ChØ Hoµn",tbProp={4,1596,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==80 then
			tbAwardTemplet:GiveAwardByList({{szName = "Chó Ph­îc B¨ng Háa Thùc Cèt Ngoa",tbProp={4,1598,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
--if s==81 then
			--tbAwardTemplet:GiveAwardByList({{szName = "Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï",tbProp={4,1605,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
--end;
--if s==82 then
		--	tbAwardTemplet:GiveAwardByList({{szName = "Thiªn Quang S©m La Thóc §¸i	",tbProp={4,1606,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
--end;
--if s==83 then
		--	tbAwardTemplet:GiveAwardByList({{szName = "Thiªn Quang Thóc Thiªn Ph­îc §Þa Hoµn",tbProp={4,1608,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
--end;

end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end





