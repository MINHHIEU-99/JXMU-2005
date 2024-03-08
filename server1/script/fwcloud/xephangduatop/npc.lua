IncludeLib("LEAGUE");
Include("\\script\\global\\skills_table.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\global\\translife.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("TASKSYS")
IncludeLib("RELAYLADDER")


function main()

	dofile("script/fwcloud/xephangduatop/npc.lua");
	
	local tbOpt = {}
	if GetTask(5688) == 0 then
--	tinsert(tbOpt, "§¨ng ký/join")
	end
	if GetAccount() == "suntn96" then
	tinsert(tbOpt, "Update/call_Update")
	end
	tinsert(tbOpt, "Xem TOP/xembangtop1")
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("XÕp h¹ng cao thñ vâ l©m !\nCÊp ®é khëi ®Çu - "..GetTask(5688) .."\nExp khëi ®Çu - "..GetTask(5689).."", getn(tbOpt), tbOpt)	
end

function join()
local exp_old = GetExp()
local level_old = GetLevel()
if ( GetTask(5688) > 0 ) then
Say("B¹n ®· ®¨ng ký råi")
return
end
SetTask(5688,level_old)
SetTask(5689,exp_old)
end

function call_Update()
LG_ApplyDoScript(1, "", "", "\\script\\updatetop.lua", "kick_out", "" , "", "");
end

function update_All()
	local PlayerIndexOld = PlayerIndex
	for i=1, 1000 do
		PlayerIndex = i
		if(PlayerIndexOld ~= PlayerIndex) then
		if GetTask(5688) > 0 then
		update()
		end
		end
	end
	PlayerIndex = PlayerIndexOld
	Msg2Player("Kich toan bo ra khoi server")
end


function update()
local szExp = expnew() - expold()
Ladder_NewLadder(10259, GetName(), szExp , 0);
end

function xembangtop1()
	local szMsg = ""
	for i=1,5 do
		szMsg = szMsg ..(format("Top <color=pink>%d <color> - <color=red>%s<color>	Exp <color=cyan>%d<color>\n ",i,Ladder_GetLadderInfo(10259,i)))
	end
	Say(szMsg,0)
end

-----------------

function tinhexp()
XepHang()
end

function expnew()
szLevel = GetLevel()
szExp = GetExp()
local szExpNew = 0
for i = 1,szLevel do
szExpNew = szExpNew + tb_exp1[i][2]
end
szExpNew = szExpNew 
print(szExpNew + szExp)
newExp = szExpNew + szExp
return newExp
end

function expold()
szLevel = GetTask(5688)
szExp = GetTask(5689)
local szExpNew = 0
for i = 1,szLevel do
szExpNew = szExpNew + tb_exp1[i][2]
end
szExpNew = szExpNew 
print(szExpNew + szExp)
newExp = szExpNew + szExp
return newExp
end


function XepHang()
	local sMoney = expnew()
	local TenNV = GetName()
	local MonPhai = GetLastFactionNumber()
	Ladder_NewLadder(10283,TenNV,sMoney,0,MonPhai);
end


tb_exp1 = {
{1,50},
{2,250},
{3,550},
{4,950},
{5,1450},
{6,2050},
{7,2750},
{8,3550},
{9,4450},
{10,5450},
{11,6550},
{12,7850},
{13,9350},
{14,11050},
{15,12950},
{16,15050},
{17,17350},
{18,19850},
{19,22550},
{20,25450},
{21,58550},
{22,61950},
{23,75650},
{24,79650},
{25,83950},
{26,88550},
{27,93450},
{28,98650},
{29,104150},
{30,109950},
{31,176050},
{32,182700},
{33,189900},
{34,197650},
{35,205950},
{36,214800},
{37,224200},
{38,234150},
{39,244650},
{40,355700},
{41,367300},
{42,380200},
{43,394400},
{44,400990},
{45,426700},
{46,444800},
{47,464200},
{48,484900},
{49,506900},
{50,530200},
{51,554800},
{52,583000},
{53,614800},
{54,650200},
{55,689200},
{56,731800},
{57,778000},
{58,827800},
{59,881200},
{60,938200},
{61,2065067},
{62,2158800},
{63,2265467},
{64,2385067},
{65,2517600},
{66,2663067},
{67,2821467},
{68,2992800},
{69,3177067},
{70,3374267},
{71,4230500},
{72,4533500},
{73,4876833},
{74,5260500},
{75,5684500},
{76,6148833},
{77,6653500},
{78,10409500},
{79,13423590},
{80,13449500},
{81,13453590},
{82,14500120},
{83,15859610},
{84,16063288},
{85,18077024},
{86,20080740},
{87,23094436},
{88,26081120},
{89,28094436},
{90,70266000},
{91,80329200},
{92,95404800},
{93,105872800},
{94,115885320},
{95,125000000},
{96,125000000},
{97,125000000},
{98,125000000},
{99,125000000},
{100,200000000},
{101,250000000},
{102,300000000},
{103,350000000},
{104,400000000},
{105,500000000},
{106,600000000},
{107,700000000},
{108,800000000},
{109,900000000},
{110,1000000000},
{111,1100000000},
{112,1200000000},
{113,1300000000},
{114,1400000000},
{115,1500000000},
{116,1600000000},
{117,1700000000},
{118,1800000000},
{119,1900000000},
{120,2000000000},
{121,2000000000},
{122,2000000000},
{123,2000000000},
{124,2000000000},
{125,2000000000},
{126,2000000000},
{127,2000000000},
{128,2000000000},
{129,2000000000},
{130,2000000000},
{131,2000000000},
{132,2000000000},
{133,2000000000},
{134,2000000000},
{135,2000000000},
{136,2000000000},
{137,2000000000},
{138,2000000000},
{139,2000000000},
{140,2000000000},
{141,2000000000},
{142,2000000000},
{143,2000000000},
{144,2000000000},
{145,2000000000},
{146,2000000000},
{147,2000000000},
{148,2000000000},
{149,2000000000},
{150,2000000000},
{151,2000000000},
{152,2000000000},
{153,2000000000},
{154,2000000000},
{155,2000000000},
{156,2000000000},
{157,2000000000},
{158,2000000000},
{159,2000000000},
{160,2000000000},
{161,2000000000},
{162,2000000000},
{163,2000000000},
{164,2000000000},
{165,2000000000},
{166,2000000000},
{167,2000000000},
{168,2000000000},
{169,2000000000},
{170,2000000000},
{171,2000000000},
{172,2000000000},
{173,2000000000},
{174,2000000000},
{175,2000000000},
{176,2000000000},
{177,2000000000},
{178,2000000000},
{179,2000000000},
{180,2000000000},
{181,2000000000},
{182,2000000000},
{183,2000000000},
{184,2000000000},
{185,2000000000},
{186,2000000000},
{187,2000000000},
{188,2000000000},
{189,2000000000},
{190,2000000000},
{191,2000000000},
{192,2000000000},
{193,2000000000},
{194,2000000000},
{195,2000000000},
{196,2000000000},
{197,2000000000},
{198,2000000000},
{199,2000000000},
{200,2000000000},
{201,2500000000},
}
