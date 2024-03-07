function chucnangbosss()
	local szTitle = LENHBAI_ADMIN.."Xin Chµo:<color=violet> "..GetName().." ...!\n<color><color=green>§· Tham Gia T¹i ThÕ Giíi Vâ L©m TruyÒn Kú...!\n                                                     <bclr=violet> * * * * * * * * Vâ * L©m * TruyÒn * Kú * * * * * * * * \n* * * * * * * * * * <bclr>Chóc<color=yellow> "..myplayersex().." <color>Ch¬i Games Vui VÎ...!<color>\n<color=blue>Chøc N¨ng Qu¶n Lý <color=yellow>SERVER<color> ChØ Cã <color=pink>ADMIN<color> Míi §­îc Sö Dông<color>"
			local tbOpt = {
				{"Goi Thay Thuoc",call_npc1_test},
				{"Goi Boss HK S¬ CÊp - L©m An",BossDongPhuong2},
				{"Goi Boss HK S¬ CÊp - §µo Hoa Nguyªn",BossDongPhuong3},
				{"Gäi Boss §éc C« Thiªn Phong",BossMoDungToan},
				{"Gäi Boss Thuy Tac",goibosss},
				{"Gäi Boss §¹i HKMP",goibossshkmp},
					{"KÕt Thóc §èi Tho¹i",},
				}
				CreateNewSayEx(szTitle, tbOpt)
end

function goibosss()
	local szTitle = "Xin Chµo:<color=violet> "..GetName().." ...!\n<color><color=green>§· Tham Gia T¹i ThÕ Giíi Vâ L©m TruyÒn Kú...!\n                                                     <bclr=violet> * * * * * * * * Vâ * L©m * TruyÒn * Kú * * * * * * * * \n* * * * * * * * * * <bclr>Chóc<color=yellow> "..myplayersex().." <color>Ch¬i Games Vui VÎ...!<color>\n<color=blue>Chøc N¨ng Qu¶n Lý <color=yellow>SERVER<color> ChØ Cã <color=pink>ADMIN<color> Míi §­îc Sö Dông<color>"
			local tbOpt = {
	{"Boss Thuy Tac",goibosssthuyen},
	{"Boss ®¹i ®Çu lÜnh Thuy Tac",goibosssdaidaulinh},
	{"Tho¸t"}
}
CreateNewSayEx(szTitle, tbOpt)
end

function goibosssdaidaulinh()
	local idmap,nX,nY = GetWorldPos(); 
		local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(1692, 95, random(0,4), mapidx, nX*32, nY*32, 1, "Thñy tÆc §¹i ®Çu lÜnh", 1)
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
		local tenbosss={"Cæ B¸ch","V­¬ng T¸","HuyÒn Gi¸c §¹i S­","§­êng Phi YÕn","Lam Y Y","Hµ Linh Phiªu","Yªn HiÓu Tr¸i","M¹nh Th­¬ng L­¬ng","Gia LuËt TÞ Ly","§¹o Thanh Ch©n Nh©n","V­¬ng T¸","HuyÒn Nan §¹i S­","§­êng BÊt NhiÔm","B¹ch Doanh Doanh","Chung Linh Tó","Hµ Nh©n Ng·","§oan Méc DuÖ","Thanh Liªn Tö","Thanh TuyÖt S­ Th¸i","Hµn Ngu Dèt"}
		local ranbosss=random(1,20)
	local npcindex = AddNpcEx(idbossss[ranbosss], 95, random(0,4), mapidx, nX*32, nY*32, 1, tenbosss[ranbosss], 1)
	SetNpcParam(npcindex, 1, idbossss[ranbosss])
	SetNpcScript(npcindex, "\\script\\missions\\boss\\bossdeath.lua");
	 AddTimer(5*60*60* 18, "OnTimeout", npcindex);--SetNpcTimer(npcindex, 40*60*18);
end
function goibosssthuyen()
	local idmap,nX,nY = GetWorldPos(); 
		local mapidx = SubWorldID2Idx(idmap)
	local npcindex = AddNpcEx(725, 95, random(0,4), mapidx, nX*32, nY*32, 1, "Thñy tÆc ®Çu lÜnh", 1)
	SetNpcParam(npcindex, 1, 725)
	SetNpcScript(npcindex, "\\script\\missions\\fengling_ferry\\bossdeath.lua");
	 AddTimer(10*60* 18, "OnTimeout", npcindex);--SetNpcTimer(npcindex, 40*60*18);
end
function duychuyenbosss()
local tab_Content = {
		"LiÔu Thanh Thanh/#diemboss1(25,531,300,482,331)",
		"DiÖu Nh­/#diemboss1(13,285,302,218,312)",
		"Tr­¬ng T«ng ChÝnh/#diemboss1(81,219,210,232,191)",
		"T©y V­¬ng Tµ §éc/#diemboss1(183,204,214,183,167)",
		"Do·n Thanh V©n/#diemboss1(154,39,107,69,82)",
		"H¾c Y S¸t Thñ/#diemboss1(115,195,205,180,176)",
		"Ng¹o Thiªn T­íng Qu©n/#diemboss1(59,188,195,237,192)",
		"ThËp Ph­¬ng C©u DiÖt/#diemboss1(45,208,202,199,192)",
		"Thanh Y Tö/#diemboss1(131,173,208,202,190)",
		"TÞnh Th«ng/#diemboss1(103,180,220,199,180)",
		"KÕt thóc..!/No"
	}
	Say("ThÇn hµnh phï, ®i ®Õn n¬i ng­¬i muèn.", getn(tab_Content), tab_Content);
end
function diemboss1(nmap,x1,y1,x2,y2)
	local tbOpt = {}
	tinsert(tbOpt, {"§Þa §iÓm 1",diemboss2, {nmap,x1,y1}})
	tinsert(tbOpt, {"§Þa §iÓm 2",diemboss2, {nmap,x2,y2}})
	tinsert(tbOpt, {"Kªt thóc ®èi tho¹i."})
	local szTitle = "Admin muèn ®Õn ®Þa ®iÓm nµo !";
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
	local npcindex = AddNpcEx(bossID, 95, random(0,4), mapidx, nX*32, nY*32, 1, "BOSS §éc C« Thiªn Phong", 1)
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