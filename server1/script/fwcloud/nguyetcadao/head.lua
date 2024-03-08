-------------Lanh Tho Chien Dev By TungHuyen-----------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\droptemplet.lua")

-----------------------tunghuyen
nTienTrinh = 1
nAi1 = 2
nAi2 = 3
nAi3 = 4
nAi4 = 5
nAi5 = 6
nAi6 = 7
nAi7 = 8
nAi8 = 9
nAi9 = 10
nAi10 = 11
nBoss1 =12
nBoss2 = 13
nBoss3 = 14
nBoss4 = 15
nBoss5 = 16
nBoss6 = 17
nBoss7 = 18
nBoss8 = 19
nBoss9 = 20
nBoss10 = 21


-----------------------------------------------------------------------
----------------/script/fwcloud/nguyetcadao/head.lua
-----------------------------------------------------------------------
tb_nguyetca = {}

function check_count(nCount)
tb_nguyetca[nCount] = tb_nguyetca[nCount] or 0
return tb_nguyetca[nCount]
end

function start_ncd()
tb_nguyetca[nTienTrinh] = 1
end

function add_count(nCount)
tb_nguyetca[nCount] = tb_nguyetca[nCount] + 1
return tb_nguyetca[nCount]
end

function remove_count(nCount)
tb_nguyetca[nCount] = tb_nguyetca[nCount] - 1
return tb_nguyetca[nCount]
end

------------------------------------------------------------------------

function add_quai_ai1(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å Thiªn V­¬ng", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath1.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_quai_ai2(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å ThiÕu L©m", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath2.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_quai_ai3(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å §­êng M«n", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath3.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_quai_ai4(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å Ngò §éc", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath4.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_quai_ai5(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å Thóy Yªn", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath5.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_quai_ai6(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å Nga My", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath6.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_quai_ai7(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å Thiªn NhÉn", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath7.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_quai_ai8(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å C¸i Bang", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath8.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_quai_ai9(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å C«n L«n", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath9.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_quai_ai10(nMap,nX,nY)
nNpcIndex = AddNpc(1854, 85,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "Ph¶n §å Vâ §ang", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\bossdeath10.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_ai1()
add_quai_ai1(984,1589,3164)
add_quai_ai1(984,1590,3159)
add_quai_ai1(984,1591,3166)
add_quai_ai1(984,1590,3171)
add_quai_ai1(984,1588,3178)
add_quai_ai1(984,1589,3185)
add_quai_ai1(984,1589,3195)
add_quai_ai1(984,1585,3197)
add_quai_ai1(984,1582,3192)
add_quai_ai1(984,1582,3186)
add_quai_ai1(984,1583,3180)
add_quai_ai1(984,1584,3175)
add_quai_ai1(984,1583,3170)
add_quai_ai1(984,1580,3165)
add_quai_ai1(984,1576,3167)
add_quai_ai1(984,1575,3172)
add_quai_ai1(984,1577,3180)
add_quai_ai1(984,1578,3185)
add_quai_ai1(984,1575,3193)
add_quai_ai1(984,1572,3200)
add_quai_ai1(984,1567,3203)
add_quai_ai1(984,1564,3199)
add_quai_ai1(984,1564,3192)
add_quai_ai1(984,1567,3185)
add_quai_ai1(984,1569,3179)
add_quai_ai1(984,1570,3173)
add_quai_ai1(984,1570,3167)
add_quai_ai1(984,1567,3164)
add_quai_ai1(984,1563,3168)
add_quai_ai1(984,1555,3171)
end

function add_ai2()
add_quai_ai2(984,1502,3198)
add_quai_ai2(984,1509,3205)
add_quai_ai2(984,1511,3199)
add_quai_ai2(984,1512,3192)
add_quai_ai2(984,1510,3186)
add_quai_ai2(984,1509,3181)
add_quai_ai2(984,1510,3173)
add_quai_ai2(984,1509,3167)
add_quai_ai2(984,1507,3155)
add_quai_ai2(984,1501,3155)
add_quai_ai2(984,1495,3159)
add_quai_ai2(984,1488,3161)
add_quai_ai2(984,1482,3158)
add_quai_ai2(984,1478,3165)
add_quai_ai2(984,1478,3170)
add_quai_ai2(984,1483,3174)
add_quai_ai2(984,1487,3172)
add_quai_ai2(984,1491,3171)
add_quai_ai2(984,1497,3177)
add_quai_ai2(984,1491,3189)
add_quai_ai2(984,1483,3196)
add_quai_ai2(984,1473,3197)
add_quai_ai2(984,1468,3194)
add_quai_ai2(984,1468,3187)
add_quai_ai2(984,1472,3176)
add_quai_ai2(984,1469,3170)
add_quai_ai2(984,1468,3165)
add_quai_ai2(984,1470,3158)
add_quai_ai2(984,1478,3158)
add_quai_ai2(984,1475,3170)
end

function add_ai3()
add_quai_ai3(984,1432,3146)
add_quai_ai3(984,1432,3156)
add_quai_ai3(984,1437,3161)
add_quai_ai3(984,1440,3165)
add_quai_ai3(984,1442,3171)
add_quai_ai3(984,1440,3179)
add_quai_ai3(984,1436,3182)
add_quai_ai3(984,1430,3180)
add_quai_ai3(984,1427,3174)
add_quai_ai3(984,1425,3167)
add_quai_ai3(984,1423,3163)
add_quai_ai3(984,1417,3159)
add_quai_ai3(984,1413,3157)
add_quai_ai3(984,1413,3161)
add_quai_ai3(984,1414,3168)
add_quai_ai3(984,1409,3172)
add_quai_ai3(984,1404,3176)
add_quai_ai3(984,1399,3178)
add_quai_ai3(984,1397,3171)
add_quai_ai3(984,1398,3165)
add_quai_ai3(984,1395,3159)
add_quai_ai3(984,1389,3158)
add_quai_ai3(984,1385,3164)
add_quai_ai3(984,1386,3169)
add_quai_ai3(984,1375,3177)
add_quai_ai3(984,1374,3170)
add_quai_ai3(984,1377,3163)
add_quai_ai3(984,1382,3149)
add_quai_ai3(984,1365,3167)
add_quai_ai3(984,1373,3181)
end

function add_ai4()
add_quai_ai4(984,1398,3103)
add_quai_ai4(984,1402,3120)
add_quai_ai4(984,1395,3111)
add_quai_ai4(984,1390,3116)
add_quai_ai4(984,1384,3103)
add_quai_ai4(984,1378,3089)
add_quai_ai4(984,1365,3076)
add_quai_ai4(984,1375,3082)
add_quai_ai4(984,1375,3076)
add_quai_ai4(984,1385,3063)
add_quai_ai4(984,1389,3057)
add_quai_ai4(984,1382,3052)
add_quai_ai4(984,1375,3052)
add_quai_ai4(984,1371,3058)
add_quai_ai4(984,1367,3060)
add_quai_ai4(984,1360,3055)
add_quai_ai4(984,1359,3045)
add_quai_ai4(984,1362,3039)
add_quai_ai4(984,1377,3026)
add_quai_ai4(984,1386,3019)
add_quai_ai4(984,1394,3009)
add_quai_ai4(984,1392,3020)
add_quai_ai4(984,1382,3027)
add_quai_ai4(984,1378,3023)
add_quai_ai4(984,1394,3008)
add_quai_ai4(984,1402,3001)
add_quai_ai4(984,1413,2992)
add_quai_ai4(984,1427,2993)
add_quai_ai4(984,1429,2984)
add_quai_ai4(984,1442,2969)
end

function add_ai5()
add_quai_ai5(984,1361,2996)
add_quai_ai5(984,1366,2993)
add_quai_ai5(984,1361,2987)
add_quai_ai5(984,1355,2993)
add_quai_ai5(984,1353,2991)
add_quai_ai5(984,1356,2984)
add_quai_ai5(984,1355,2978)
add_quai_ai5(984,1350,2982)
add_quai_ai5(984,1351,2975)
add_quai_ai5(984,1356,2984)
add_quai_ai5(984,1350,2984)
add_quai_ai5(984,1350,2962)
add_quai_ai5(984,1354,2958)
add_quai_ai5(984,1359,2951)
add_quai_ai5(984,1362,2953)
add_quai_ai5(984,1365,2957)
add_quai_ai5(984,1368,2960)
add_quai_ai5(984,1378,2957)
add_quai_ai5(984,1383,2949)
add_quai_ai5(984,1389,2939)
add_quai_ai5(984,1399,2936)
add_quai_ai5(984,1414,2931)
add_quai_ai5(984,1410,2920)
add_quai_ai5(984,1405,2915)
add_quai_ai5(984,1400,2921)
add_quai_ai5(984,1393,2925)
add_quai_ai5(984,1394,2914)
add_quai_ai5(984,1391,2927)
add_quai_ai5(984,1393,2938)
add_quai_ai5(984,1395,2929)
end

function add_ai6()
add_quai_ai6(984,1354,2926)
add_quai_ai6(984,1350,2924)
add_quai_ai6(984,1352,2920)
add_quai_ai6(984,1356,2919)
add_quai_ai6(984,1361,2915)
add_quai_ai6(984,1359,2909)
add_quai_ai6(984,1357,2909)
add_quai_ai6(984,1353,2914)
add_quai_ai6(984,1349,2915)
add_quai_ai6(984,1349,2906)
add_quai_ai6(984,1352,2899)
add_quai_ai6(984,1355,2898)
add_quai_ai6(984,1359,2896)
add_quai_ai6(984,1365,2893)
add_quai_ai6(984,1359,2889)
add_quai_ai6(984,1354,2888)
add_quai_ai6(984,1352,2880)
add_quai_ai6(984,1350,2884)
add_quai_ai6(984,1358,2881)
add_quai_ai6(984,1403,2856)
add_quai_ai6(984,1397,2851)
add_quai_ai6(984,1391,2845)
add_quai_ai6(984,1387,2837)
add_quai_ai6(984,1393,2829)
add_quai_ai6(984,1400,2834)
add_quai_ai6(984,1403,2845)
add_quai_ai6(984,1408,2848)
add_quai_ai6(984,1413,2844)
add_quai_ai6(984,1407,2835)
add_quai_ai6(984,1393,2816)
end

function add_ai7()
add_quai_ai7(984,1492,3108)
add_quai_ai7(984,1499,3104)
add_quai_ai7(984,1502,3101)
add_quai_ai7(984,1501,3092)
add_quai_ai7(984,1501,3083)
add_quai_ai7(984,1506,3075)
add_quai_ai7(984,1509,3083)
add_quai_ai7(984,1514,3092)
add_quai_ai7(984,1519,3087)
add_quai_ai7(984,1520,3079)
add_quai_ai7(984,1527,3083)
add_quai_ai7(984,1530,3093)
add_quai_ai7(984,1535,3093)
add_quai_ai7(984,1534,3079)
add_quai_ai7(984,1542,3082)
add_quai_ai7(984,1548,3092)
add_quai_ai7(984,1542,3100)
add_quai_ai7(984,1545,3108)
add_quai_ai7(984,1557,3099)
add_quai_ai7(984,1556,3091)
add_quai_ai7(984,1562,3104)
add_quai_ai7(984,1569,3107)
add_quai_ai7(984,1574,3106)
add_quai_ai7(984,1579,3098)
add_quai_ai7(984,1589,3095)
add_quai_ai7(984,1591,3102)
add_quai_ai7(984,1587,3097)
add_quai_ai7(984,1577,3097)
add_quai_ai7(984,1566,3094)
add_quai_ai7(984,1562,3082)
end

function add_ai8()
add_quai_ai8(984,1483,3081)
add_quai_ai8(984,1482,3071)
add_quai_ai8(984,1478,3063)
add_quai_ai8(984,1479,3050)
add_quai_ai8(984,1477,3038)
add_quai_ai8(984,1470,3034)
add_quai_ai8(984,1461,3030)
add_quai_ai8(984,1455,3029)
add_quai_ai8(984,1453,3037)
add_quai_ai8(984,1448,3044)
add_quai_ai8(984,1456,3053)
add_quai_ai8(984,1462,3058)
add_quai_ai8(984,1470,3053)
add_quai_ai8(984,1474,3058)
add_quai_ai8(984,1472,3066)
add_quai_ai8(984,1466,3069)
add_quai_ai8(984,1459,3061)
add_quai_ai8(984,1452,3055)
add_quai_ai8(984,1444,3056)
add_quai_ai8(984,1437,3061)
add_quai_ai8(984,1432,3069)
add_quai_ai8(984,1434,3077)
add_quai_ai8(984,1453,3088)
add_quai_ai8(984,1464,3095)
add_quai_ai8(984,1447,3092)
add_quai_ai8(984,1426,3078)
add_quai_ai8(984,1417,3090)
add_quai_ai8(984,1422,3098)
add_quai_ai8(984,1446,3043)
add_quai_ai8(984,1459,3026)
end

function add_ai9()
add_quai_ai9(984,1465,2993)
add_quai_ai9(984,1470,2995)
add_quai_ai9(984,1473,2996)
add_quai_ai9(984,1470,2987)
add_quai_ai9(984,1477,2979)
add_quai_ai9(984,1480,2975)
add_quai_ai9(984,1483,2982)
add_quai_ai9(984,1482,2996)
add_quai_ai9(984,1485,3006)
add_quai_ai9(984,1491,3004)
add_quai_ai9(984,1491,2995)
add_quai_ai9(984,1490,2987)
add_quai_ai9(984,1489,2976)
add_quai_ai9(984,1495,2974)
add_quai_ai9(984,1501,2975)
add_quai_ai9(984,1508,2977)
add_quai_ai9(984,1510,2987)
add_quai_ai9(984,1508,2997)
add_quai_ai9(984,1507,3008)
add_quai_ai9(984,1514,3015)
add_quai_ai9(984,1520,3017)
add_quai_ai9(984,1525,3012)
add_quai_ai9(984,1519,2996)
add_quai_ai9(984,1530,3002)
add_quai_ai9(984,1532,3012)
add_quai_ai9(984,1530,3024)
add_quai_ai9(984,1534,3035)
add_quai_ai9(984,1541,3040)
add_quai_ai9(984,1554,3039)
add_quai_ai9(984,1555,3016)
end

function add_ai10()
add_quai_ai10(984,1566,2971)
add_quai_ai10(984,1567,2961)
add_quai_ai10(984,1567,2954)
add_quai_ai10(984,1562,2959)
add_quai_ai10(984,1557,2952)
add_quai_ai10(984,1553,2961)
add_quai_ai10(984,1551,2952)
add_quai_ai10(984,1546,2952)
add_quai_ai10(984,1550,2960)
add_quai_ai10(984,1539,2950)
add_quai_ai10(984,1540,2955)
add_quai_ai10(984,1533,2953)
add_quai_ai10(984,1533,2948)
add_quai_ai10(984,1525,2958)
add_quai_ai10(984,1524,2949)
add_quai_ai10(984,1520,2951)
add_quai_ai10(984,1518,2958)
add_quai_ai10(984,1516,2948)
add_quai_ai10(984,1514,2940)
add_quai_ai10(984,1510,2945)
add_quai_ai10(984,1507,2936)
add_quai_ai10(984,1505,2941)
add_quai_ai10(984,1499,2937)
add_quai_ai10(984,1493,2930)
add_quai_ai10(984,1485,2929)
add_quai_ai10(984,1476,2928)
add_quai_ai10(984,1480,2936)
add_quai_ai10(984,1505,2938)
add_quai_ai10(984,1539,2952)
add_quai_ai10(984,1559,2963)
end


function add_boss_ai1(nMap,nX,nY)
nNpcIndex = AddNpc(1993, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n §å Thiªn V­¬ng", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath1.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_boss_ai2(nMap,nX,nY)
nNpcIndex = AddNpc(1989, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n §å ThiÕu L©m", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath2.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end
function add_boss_ai3(nMap,nX,nY)
nNpcIndex = AddNpc(1992, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n §å §­êng M«n", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath3.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end
function add_boss_ai4(nMap,nX,nY)
nNpcIndex = AddNpc(1994, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n Ngò §éc", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath4.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end
function add_boss_ai5(nMap,nX,nY)
nNpcIndex = AddNpc(1995, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n §å Thóy Yªn", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath5.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end
function add_boss_ai6(nMap,nX,nY)
nNpcIndex = AddNpc(1991, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n §å Nga My", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath6.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end
function add_boss_ai7(nMap,nX,nY)
nNpcIndex = AddNpc(1997, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n §å Thiªn NhÉn", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath7.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end
function add_boss_ai8(nMap,nX,nY)
nNpcIndex = AddNpc(1996, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n §å C¸i Bang", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath8.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end
function add_boss_ai9(nMap,nX,nY)
nNpcIndex = AddNpc(1998, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n §å C«n L«n", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath9.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end

function add_boss_ai10(nMap,nX,nY)
nNpcIndex = AddNpc(1990, 90,SubWorldID2Idx(nMap), nX*32, nY*32, 1, "§éi Tr­ëng Ph¶n §å Vâ §ang", 1)
if nNpcIndex > 0 then
SetNpcDeathScript(nNpcIndex,"\\script\\fwcloud\\nguyetcadao\\trumdeath10.lua");--SetNpcTimer(nNpcIndex,60*8*18)
end
end
