Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")





function main(sel)
dofile("script/global/quanlygame/item/ruonghkloai2.lua")
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi M� R��ng Ho�ng Kim Lo�i 2<color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local s = random(1,80)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName = "M�ng Long ��t Ma T�ng h�i",tbProp={4,1533,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "M�ng Long Huy�n Ti Ph�t ��i",tbProp={4,1531,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName = "M�ng Long ��t Ma T�ng h�i",tbProp={4,1533,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName = "T� Kh�ng H� ph�p Y�u ��i",tbProp={4,1541,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "T� Kh�ng T� Kim C� Sa",tbProp={4,1540,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName = "T� Kh�ng H� ph�p Y�u ��i",tbProp={4,1541,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==5 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={4,1535,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "T� Kh�ng Gi�i Lu�t Ph�p gi�i",tbProp={4,1543,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==6 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={4,1535,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==7 then
			--tbAwardTemplet:GiveAwardByList({{szName = "Ph�c Ma Ph� �� T�ng h�i",tbProp={4,1538,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={4,1535,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==8 then
			tbAwardTemplet:GiveAwardByList({{szName = "K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={4,1550,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==9 then
			tbAwardTemplet:GiveAwardByList({{szName = "K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={4,1550,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "K� Nghi�p B�ch H� V� Song kh�u",tbProp={4,1551,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==10 then
			tbAwardTemplet:GiveAwardByList({{szName = "K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={4,1553,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==11 then
			tbAwardTemplet:GiveAwardByList({{szName = "K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={4,1553,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "Ng� Long Chi�n Th�n Phi Qu�i gi�p",tbProp={4,1555,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==12 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={4,1556,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==13 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={4,1556,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "H�m Thi�n V� Th�n T��ng Kim Gi�p",tbProp={4,1545,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==14 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={4,1556,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "H�m Thi�n Th�a Long Chi�n Ngoa",tbProp={4,1548,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;

if s==15 then
			tbAwardTemplet:GiveAwardByList({{szName = "H�m Thi�n Uy V� Th�c y�u ��i",tbProp={4,1546,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==16 then
			tbAwardTemplet:GiveAwardByList({{szName = "��ng C�u Gi�ng Long C�i Y",tbProp={4,1620,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==17 then
			tbAwardTemplet:GiveAwardByList({{szName = "��ng C�u Ti�m Long Y�u ��i",tbProp={4,1621,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==18 then
			tbAwardTemplet:GiveAwardByList({{szName = "��ng C�u Ti�m Long Y�u ��i",tbProp={4,1621,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "��ng C�u Ki�n Long Ban Ch� ",tbProp={4,1623,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==19 then
			tbAwardTemplet:GiveAwardByList({{szName = "��ng C�u Ti�m Long Y�u ��i",tbProp={4,1621,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "��ch Kh�i C�u ��i C�i Y",tbProp={4,1625,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==20 then
			tbAwardTemplet:GiveAwardByList({{szName = "��ch Kh�i C�u T�ch B� H� uy�n",tbProp={4,1627,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "��ch Kh�i Tri�n M�ng y�u ��i",tbProp={4,1626,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==21 then
			tbAwardTemplet:GiveAwardByList({{szName = "��ch Kh�i C�u T�ch B� H� uy�n",tbProp={4,1627,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "��ch Kh�i C�u T�ch B� H� uy�n",tbProp={4,1627,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==22 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma Ho�ng Kh� C�c Th�c y�u ��i",tbProp={4,1636,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Ma Ho�ng Kim Gi�p Kh�i",tbProp={4,1634,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;







if s==23 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={4,1630,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "Ma Ho�ng ��ng ��p Ngoa",tbProp={4,1638,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==24 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma Ho�ng Kh� C�c Th�c y�u ��i",tbProp={4,1636,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==25 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={4,1642,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "Ma Ho�ng �n Xu�t H� H�ng Khuy�n",tbProp={4,1635,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==26 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={4,1630,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==27 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={4,1630,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Ma S�t V�n Long Th� Ch�u gi�i",tbProp={4,1633,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==28 then
tbAwardTemplet:GiveAwardByList({{szName = "Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={4,1630,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Ma S�t X�ch K� T�a Y�u Kh�u",tbProp={4,1631,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==29 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={4,1642,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==30 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={4,1642,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Ma Th� Nghi�p H�a U Minh Gi�i",tbProp={4,1641,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==31 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma Th� L� Ma Ph� T�m Li�n",tbProp={4,1640,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==32 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ma Th� L� Ma Ph� T�m Li�n",tbProp={4,1640,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V� Gian Thanh Phong Truy Y",tbProp={4,1560,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==33 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� Gian Ph�t V�n Ti ��i",tbProp={4,1561,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V� Gian B�ch Ng�c B�n Ch�",tbProp={4,1563,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==34 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� Gian Ph�t V�n Ti ��i",tbProp={4,1561,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==35 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� Ma Ma Ni qu�n",tbProp={4,1564,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==36 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� Ma Ma Ni qu�n",tbProp={4,1564,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V� Ma B�ng Tinh Ch� Ho�n",tbProp={4,1566,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;

if s==37 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� Ma T� Kh�m C� Sa",tbProp={4,1565,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==38 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� Ma T� Kh�m C� Sa",tbProp={4,1565,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V� Tr�n Ng�c N� T� T�m qu�n",tbProp={4,1569,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==39 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� Tr�n Ph�t Quang Ch� Ho�n ",tbProp={4,1573,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "V� Tr�n Thanh T�m H��ng Thi�n Ch�u",tbProp={4,1570,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==40 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� Tr�n Ph�t Quang Ch� Ho�n ",tbProp={4,1573,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==41 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� Tr�n Ph�t Quang Ch� Ho�n ",tbProp={4,1573,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "V� Tr�n T� Bi Ng�c Ban Ch�",tbProp={4,1571,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==42 then
			tbAwardTemplet:GiveAwardByList({{szName = "T� Ho�ng Tu� T�m Khinh Sa Y",tbProp={4,1575,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==43 then
			tbAwardTemplet:GiveAwardByList({{szName = "T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={4,1576,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==44 then
tbAwardTemplet:GiveAwardByList({{szName = "B�ch H�i Ho�n Ch�u V� Li�n",tbProp={4,1580,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "T� Ho�ng Th�y Ng�c Ch� Ho�n",tbProp={4,1578,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;




if s==45 then
tbAwardTemplet:GiveAwardByList({{szName = "B�ch H�i Ho�n Ch�u V� Li�n",tbProp={4,1580,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==46 then
tbAwardTemplet:GiveAwardByList({{szName = "B�ch H�i H�ng Linh Kim Ti ��i",tbProp={4,1581,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "B�ch H�i H�ng Linh Kim Ti ��i",tbProp={4,1581,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==47 then
tbAwardTemplet:GiveAwardByList({{szName = "B�ch H�i H�ng Linh Kim Ti ��i",tbProp={4,1581,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "B�ch H�i Khi�n T� Ch� ho�n",tbProp={4,1583,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==48 then
tbAwardTemplet:GiveAwardByList({{szName = "C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",tbProp={4,1652,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "C�p Phong Tam Thanh Ph�",tbProp={4,1650,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==49 then
tbAwardTemplet:GiveAwardByList({{szName = "C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",tbProp={4,1652,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "C�p Phong Thanh T�ng Ph�p gi�i",tbProp={4,1653,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==50 then
tbAwardTemplet:GiveAwardByList({{szName = "C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",tbProp={4,1652,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "C�p Phong Huy�n Ti Tam �o�n c�m",tbProp={4,1651,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==51 then
			--tbAwardTemplet:GiveAwardByList({{szName = "L�ng Nh�c N� L�i Gi�i",tbProp={4,1646,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
			tbAwardTemplet:GiveAwardByList({{szName = "L�ng Nh�c V� Ng� ��o b�o",tbProp={4,1645,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==52 then
			tbAwardTemplet:GiveAwardByList({{szName = "L�ng Nh�c V� Ng� ��o b�o",tbProp={4,1645,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==53 then
			tbAwardTemplet:GiveAwardByList({{szName = "L�ng Nh�c V� Ng� ��o b�o",tbProp={4,1645,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",tbProp={4,1648,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==54 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� �o Ki B�n ph� ch�",tbProp={4,1665,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==55 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� �o Thanh �nh Huy�n Ng�c B�i",tbProp={4,1667,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==56 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� �o Tung Phong Tuy�t �nh ngoa",tbProp={4,1668,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==57 then
			tbAwardTemplet:GiveAwardByList({{szName = "L�i Khung Thi�n ��a H� ph�",tbProp={4,1660,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==58 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� �o Tung Phong Tuy�t �nh ngoa",tbProp={4,1668,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "L�i Khung C�u Thi�n D�n L�i gi�i",tbProp={4,1663,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;

if s==59 then
			tbAwardTemplet:GiveAwardByList({{szName = "V� �o Tung Phong Tuy�t �nh ngoa",tbProp={4,1668,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "L�i Khung Phong L�i Thanh C�m ��i",tbProp={4,1661,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==60 then
			tbAwardTemplet:GiveAwardByList({{szName = "��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",tbProp={4,1614,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==61 then
			tbAwardTemplet:GiveAwardByList({{szName = "��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",tbProp={4,1614,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "��a Ph�ch Kh�u T�m tr�c",tbProp={4,1617,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==62 then
			tbAwardTemplet:GiveAwardByList({{szName = "��a Ph�ch H�c Di�m Xung Thi�n Li�n ",tbProp={4,1615,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==63 then
			tbAwardTemplet:GiveAwardByList({{szName = "S�m Hoang Tinh V�n Phi L� ",tbProp={4,1613,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "��a Ph�ch T�ch L�ch L�i H�a Gi�i",tbProp={4,1616,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==64 then
			tbAwardTemplet:GiveAwardByList({{szName = "��a Ph�ch ��a H�nh Thi�n L� Ngoa",tbProp={4,1618,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==65 then
			tbAwardTemplet:GiveAwardByList({{szName = "��a Ph�ch ��a H�nh Thi�n L� Ngoa",tbProp={4,1618,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "B�ng H�n Huy�n Y Th�c Gi�p",tbProp={4,1600,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==66 then
			tbAwardTemplet:GiveAwardByList({{szName = "B�ng H�n T�m Ti�n Y�u Kh�u",tbProp={4,1601,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;





if s==67 then
tbAwardTemplet:GiveAwardByList({{szName = "B�ng H�n Huy�n Thi�n B�ng H�a B�i",tbProp={4,1602,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==68 then
tbAwardTemplet:GiveAwardByList({{szName = "B�ng H�n Nguy�t �nh Ngoa",tbProp={4,1603,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "S�m Hoang KimTi�n Li�n Ho�n Gi�p",tbProp={4,1610,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==69 then
tbAwardTemplet:GiveAwardByList({{szName = "S�m Hoang KimTi�n Li�n Ho�n Gi�p",tbProp={4,1610,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "S�m Hoang H�n Gi�o Y�u Th�c",tbProp={4,1611,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==70 then
tbAwardTemplet:GiveAwardByList({{szName = "S�m Hoang H�n Gi�o Y�u Th�c",tbProp={4,1611,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

--tbAwardTemplet:GiveAwardByList({{szName = "S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",tbProp={4,1612,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==71 then
			tbAwardTemplet:GiveAwardByList({{szName = "Minh �o H� C�t H� uy�n",tbProp={4,1592,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==72 then
			tbAwardTemplet:GiveAwardByList({{szName = "Minh �o H� C�t H� uy�n",tbProp={4,1592,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Minh �o U ��c �m Y",tbProp={4,1590,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==73 then
			tbAwardTemplet:GiveAwardByList({{szName = "Minh �o Song Ho�n X� H�i",tbProp={4,1593,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Minh �o ��c Y�t Ch� Ho�n",tbProp={4,1591,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==74 then
			tbAwardTemplet:GiveAwardByList({{szName = "U Lung X�ch Y�t M�t trang",tbProp={4,1585,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==75 then
			tbAwardTemplet:GiveAwardByList({{szName = "U Lung Thanh Ng� Tri�n y�u",tbProp={4,1586,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==76 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ch� Ph��c Ph� gi�p ��u ho�n",tbProp={4,1594,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;


if s==77 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ch� Ph��c Xuy�n T�m ��c Uy�n",tbProp={4,1597,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "Ch� Ph��c Di�t L�i C�nh Ph�",tbProp={4,1595,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

end;
if s==78 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ch� Ph��c Xuy�n T�m ��c Uy�n",tbProp={4,1597,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==79 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ch� Ph��c B�ng H�a Th�c C�t Ngoa",tbProp={4,1598,1,1},nCount=1, CallBack= _Message,},}, "test", 1);

			--tbAwardTemplet:GiveAwardByList({{szName = "Ch� Ph��c U �o Ch� Ho�n",tbProp={4,1596,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==80 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ch� Ph��c B�ng H�a Th�c C�t Ngoa",tbProp={4,1598,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
--if s==81 then
			--tbAwardTemplet:GiveAwardByList({{szName = "Thi�n Quang ��nh T�m Ng�ng Th�n Ph�",tbProp={4,1605,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
--end;
--if s==82 then
		--	tbAwardTemplet:GiveAwardByList({{szName = "Thi�n Quang S�m La Th�c ��i	",tbProp={4,1606,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
--end;
--if s==83 then
		--	tbAwardTemplet:GiveAwardByList({{szName = "Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",tbProp={4,1608,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
--end;

end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end





