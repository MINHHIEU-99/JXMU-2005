function chucnangbosss()
	local szTitle = LENHBAI_ADMIN.."Xin Ch�o:<color=violet> "..GetName().." ...!\n<color><color=green>�� Tham Gia T�i Th� Gi�i V� L�m Truy�n K�...!\n                                                     <bclr=violet> * * * * * * * * V� * L�m * Truy�n * K� * * * * * * * * \n* * * * * * * * * * <bclr>Ch�c<color=yellow> "..myplayersex().." <color>Ch�i Games Vui V�...!<color>\n<color=blue>Ch�c N�ng Qu�n L� <color=yellow>SERVER<color> Ch� C� <color=pink>ADMIN<color> M�i ���c S� D�ng<color>"
			local tbOpt = {
				{"Goi Thay Thuoc",call_npc1_test},
				{"Goi Boss HK S� C�p - L�m An",BossDongPhuong2},
				{"Goi Boss HK S� C�p - ��o Hoa Nguy�n",BossDongPhuong3},
				{"G�i Boss ��c C� Thi�n Phong",BossMoDungToan},
				{"G�i Boss Thuy Tac",goibosss},
				{"G�i Boss ��i HKMP",goibossshkmp},
					{"K�t Th�c ��i Tho�i",},
				}
				CreateNewSayEx(szTitle, tbOpt)
end

function goibosss()
	local szTitle = "Xin Ch�o:<color=violet> "..GetName().." ...!\n<color><color=green>�� Tham Gia T�i Th� Gi�i V� L�m Truy�n K�...!\n                                                     <bclr=violet> * * * * * * * * V� * L�m * Truy�n * K� * * * * * * * * \n* * * * * * * * * * <bclr>Ch�c<color=yellow> "..myplayersex().." <color>Ch�i Games Vui V�...!<color>\n<color=blue>Ch�c N�ng Qu�n L� <color=yellow>SERVER<color> Ch� C� <color=pink>ADMIN<color> M�i ���c S� D�ng<color>"
			local tbOpt = {
	{"Boss Thuy Tac",goibosssthuyen},
	{"Boss ��i ��u l�nh Thuy Tac",goibosssdaidaulinh},
	{"Tho�t"}
}
CreateNewSayEx(szTitle, tbOpt)
end

function goibosssdaidaulinh()
	local idmap,nX,nY = GetWorldPos(); 
		local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(1692, 95, random(0,4), mapidx, nX*32, nY*32, 1, "Th�y t�c ��i ��u l�nh", 1)
	SetNpcParam(npcindex, 1, 1692)
	SetNpcScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
	 AddTimer(10*60* 18, "OnTimeout", npcindex);--SetNpcTimer(npcindex, 40*60*18);
end
function call_npc1_test() 
    local nMapId, nPosX16, nPosY16 = GetWorldPos();
     local SId = SubWorldID2Idx(nMapId);
     local nNpcIndex;
     if (SId >= 0) then
             nNpcIndex = AddNpc(1110, 95, SId, nPosX16 * 32, nPosY16 * 32, 1, "Test");
           AddTimer(180*60*60*18, "OnTimeout", nNpcIndex);
             if nNpcIndex > 0 then
                 SetNpcScript(nNpcIndex,"\\script\\battles\\butcher\\doctor22.lua");
             end
   end
   end


   function goibossshkmp()
	local idmap,nX,nY = GetWorldPos(); 
		local mapidx = SubWorldID2Idx(idmap)
		local idbossss={566,739,740,1366,582,568,744,583,563,562,739,1365,741,742,567,745,565,1368,743,748}
		local tenbosss={"C� B�ch","V��ng T�","Huy�n Gi�c ��i S�","���ng Phi Y�n","Lam Y Y","H� Linh Phi�u","Y�n Hi�u Tr�i","M�nh Th��ng L��ng","Gia Lu�t T� Ly","��o Thanh Ch�n Nh�n","V��ng T�","Huy�n Nan ��i S�","���ng B�t Nhi�m","B�ch Doanh Doanh","Chung Linh T�","H� Nh�n Ng�","�oan M�c Du�","Thanh Li�n T�","Thanh Tuy�t S� Th�i","H�n Ngu D�t"}
		local ranbosss=random(1,20)
	local npcindex = AddNpcEx(idbossss[ranbosss], 95, random(0,4), mapidx, nX*32, nY*32, 1, tenbosss[ranbosss], 1)
	SetNpcParam(npcindex, 1, idbossss[ranbosss])
	SetNpcScript(npcindex, "\\script\\missions\\boss\\bossdeath.lua");
	 AddTimer(5*60*60* 18, "OnTimeout", npcindex);--SetNpcTimer(npcindex, 40*60*18);
end
function goibosssthuyen()
	local idmap,nX,nY = GetWorldPos(); 
		local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(725, 95, random(0,4), mapidx, nX*32, nY*32, 1, "Th�y t�c ��u l�nh", 1)
	SetNpcParam(npcindex, 1, 725)
	SetNpcScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
	 AddTimer(10*60* 18, "OnTimeout", npcindex);--SetNpcTimer(npcindex, 40*60*18);
end
function duychuyenbosss()
local tab_Content = {
		"Li�u Thanh Thanh/#diemboss1(25,531,300,482,331)",
		"Di�u Nh�/#diemboss1(13,285,302,218,312)",
		"Tr��ng T�ng Ch�nh/#diemboss1(81,219,210,232,191)",
		"T�y V��ng T� ��c/#diemboss1(183,204,214,183,167)",
		"Do�n Thanh V�n/#diemboss1(154,39,107,69,82)",
		"H�c Y S�t Th�/#diemboss1(115,195,205,180,176)",
		"Ng�o Thi�n T��ng Qu�n/#diemboss1(59,188,195,237,192)",
		"Th�p Ph��ng C�u Di�t/#diemboss1(45,208,202,199,192)",
		"Thanh Y T�/#diemboss1(131,173,208,202,190)",
		"T�nh Th�ng/#diemboss1(103,180,220,199,180)",
		"K�t th�c..!/No"
	}
	Say("Th�n h�nh ph�, �i ��n n�i ng��i mu�n.", getn(tab_Content), tab_Content);
end
function diemboss1(nmap,x1,y1,x2,y2)
	local tbOpt = {}
	tinsert(tbOpt, {"��a �i�m 1",diemboss2, {nmap,x1,y1}})
	tinsert(tbOpt, {"��a �i�m 2",diemboss2, {nmap,x2,y2}})
	tinsert(tbOpt, {"K�t th�c ��i tho�i."})
	local szTitle = "Admin mu�n ��n ��a �i�m n�o !";
	CreateNewSayEx(szTitle, tbOpt)
end
function diemboss2(nmap,x,y)

	NewWorld(nmap,x*8,y*16)
end
function BossMoDungToan()
	local idmap,nX,nY = GetWorldPos(); 
		local mapidx = SubWorldID2Idx(idmap)
		local IDboss={1505,1507,1508,1509}
		local bossID=IDboss[random(1,4)]
	local npcindex = AddNpcEx(bossID, 95, random(0,4), mapidx, nX*32, nY*32, 1, "BOSS ��c C� Thi�n Phong", 1)
	SetNpcParam(npcindex, 1, bossID)
	SetNpcScript(npcindex, "\\script\\missions\\boss\\sieuboss\\boss_tieu_death2.lua");
	 AddTimer(12*60*60* 18, "OnTimeout", npcindex);--SetNpcTimer(npcindex, 40*60*18);
end
function BossDongPhuong()
	IDBoss = {1505,1506,1507,1508,1509}
	local nW, nX, nY = GetWorldPos() 
	local AddIDBoss = 1665
	local npcindex = AddNpcEx(AddIDBoss, 95, random(0,4), SubWorldID2Idx(nW), nX*32, nY*32, 1, "Long Tru", 1)
	SetNpcParam(npcindex, 1, AddIDBoss)
	SetNpcScript(npcindex, "\\script\\global\\longdenbanghoi\\longtru1.lua");
	SetNpcTimer(npcindex, 10*18);
	   AddTimer(60* 18, "OnTimeout", npcindex); 
end
function daohoa1()
	NewWorld(55,1731,3088)
end
function daohoa2()
	NewWorld(55,1512,2985)
end
function daohoa3()
	NewWorld(55,1500,3168)
end
function daohoa4()
	NewWorld(55,1715,3328)
end
function laman1()
	NewWorld(176,1229,3349)
end
function laman2()
	NewWorld(176,1174,3317)
end
function laman3()
	NewWorld(176,1754,2802)
end
function laman4()
	NewWorld(176,1798,3250)
end