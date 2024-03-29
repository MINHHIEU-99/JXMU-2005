-- script viet hoa By http://tranhba.com  ch�c n�ng # m�u t�m trang b� h� th�ng - s� d�ng ma ph�p thu�c t�nh qu�ng th�ch v�y quanh ��n m�u t�m trang b� 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

IncludeLib( "ITEM" ); 
IncludeLib( "FILESYS" ); 
Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\itemvalue\\magicattriblevel.lua" );
Include( "\\script\\item\\itemvalue\\itemvalue_header.lua" );
Include( "\\script\\item\\item_header.lua" );
Include( "\\script\\task\\system\\task_string.lua" );

FILE_MAGIC_VAL = "magicattriblevel.txt"; 

loadItemTabFiles( FILE_MAGIC_VAL ); 

-- script viet hoa By http://tranhba.com  [ h�p th�nh ] ph� d�ng 
COMPOUND_COST = 10000; 


-- script viet hoa By http://tranhba.com  m�i b�t ��u h�a s� li�u 
function initData() 
g_nEquipIdx = 0; 
g_nEquipVer = 0; 
g_nEquipRandSeed = 0; 
g_nEquipGenre = 0; 
g_nEquipDetailType = 0; 
g_nEquipParticular = 0; 
g_nEquipLevel = 0; 
g_nEquipSeries = 0; 
g_nEquipLuck = 0; 
g_arynEquipMagLvl = {} 
g_nEnchasePos = 0; 
g_nOreMagicID = 0; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c [ h�p th�nh ] thao t�c tham s� # d�ng cho truy�n l�i cho ITEM_CalcItemValue t�nh to�n v�t ph�m gi� tr� l��ng # 
function getCompoundParam() 
return "EQUIP_ENCHASE"; 
end 

-- script viet hoa By http://tranhba.com  gi�o nghi�m nguy�n li�u c� hay kh�ng ph� h�p [ h�p th�nh ] quy t�c # ��ng th�i t�n tr� m�t �t nguy�n li�u s� li�u # 
function verifySrcItems( arynNecessaryItemIdx, arynAlternativeItemIdx ) 
do return RESULT_LACK_RESOURCE end--by ZhuYingTai
local nNecessaryItemCount = getn( arynNecessaryItemIdx ); 
local nOreMagLvlPos = 0; 
local nOreSeries = 0; 
local nPerfect = 0;
for i = 1, nNecessaryItemCount do 
local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( arynNecessaryItemIdx[i] ); 
if( nGenre == 0 ) then 
g_nEquipIdx = arynNecessaryItemIdx[i]; 
g_nEquipVer = ITEM_GetItemVersion( arynNecessaryItemIdx[i] ); 
g_nEquipRandSeed = ITEM_GetItemRandSeed( arynNecessaryItemIdx[i] ); 
g_nEquipGenre = nGenre; 
g_nEquipDetailType = nDetailType; 
g_nEquipParticular = nParticular; 
g_nEquipLevel = nLevel; 
g_nEquipSeries = nSeries; 
g_nEquipLuck = nLuck; 
g_arynEquipMagLvl = GetItemAllParams( arynNecessaryItemIdx[i] ); 
for j = 1, 6 do 
if( g_arynEquipMagLvl[j] == -1 ) then 
g_nEnchasePos = j; 
break; 
end 
end 
-- elseif( nGenre == 6 and nDetailType == 1 and nParticular >= 200 and nParticular <= 205 ) then 
elseif( nGenre == 6 and nDetailType == 1 ) then 
if nLevel >= 8 and nParticular == 147 then
nPerfect = 1
end
nOreMagLvlPos = nParticular - 199; 
nOreSeries = nSeries; 
g_nOreMagicID = GetItemParam( arynNecessaryItemIdx[i], 1 ); 
end 
end 
if( g_nEnchasePos <= 0 ) then 
return RESULT_LACK_RESOURCE; 
elseif( g_nEnchasePos ~= nOreMagLvlPos ) then 
return RESULT_RULE_ERROR; 
elseif( mod( nOreMagLvlPos, 2 ) == 0 and g_nEquipSeries ~= nOreSeries ) then 
return RESULT_SERIES_ERROR; 
elseif( g_nOreMagicID <= 0 ) then 
return RESULT_MAGIC_ERROR; 
elseif( isMagicMatchEquip( g_nEquipVer, g_nOreMagicID, g_nEquipDetailType, g_nEquipParticular ) ~= 1 ) then 
return RESULT_MAGIC_ERROR; 
elseif( isMagicMatchSeries( g_nEquipVer, g_nOreMagicID, g_nEquipSeries ) ~= 1 ) then 
return RESULT_MAGIC_ERROR; 
else 
for i = 1, g_nEnchasePos - 1 do 
if( GetItemMagicAttrib( g_nEquipIdx, i ) == g_nOreMagicID ) then 
return RESULT_MAGIC_ERROR; 
end 
end 
end 
return RESULT_SUCCEED,nPerfect; 
end 

-- script viet hoa By http://tranhba.com  sinh th�nh m�c ti�u v�t ph�m tin t�c 
function genDesItemsInfo( arynNecessaryItemIdx ) 
local aryDesItemInfo = {}; 
local aryMagAttrLvlRange = getMagAttrLvlRange( g_nEquipVer, g_nOreMagicID, 1 ); 
local nRangeCount = getn( aryMagAttrLvlRange ); 
local nDesItemCount = 0; 
for i = 1, nRangeCount do 
for j = aryMagAttrLvlRange[i][1], aryMagAttrLvlRange[i][2] do 
if( j > 0 ) then 
local arynMagLvl = {}; 
for k = 1, 6 do 
arynMagLvl[k] = g_arynEquipMagLvl[k]; 
end 
arynMagLvl[g_nEnchasePos] = j; 
				nDesItemCount = nDesItemCount + 1;
aryDesItemInfo[nDesItemCount] = { g_nEquipVer, g_nEquipRandSeed, 2, g_nEquipGenre, g_nEquipDetailType, g_nEquipParticular, g_nEquipLevel, g_nEquipSeries, g_nEquipLuck, arynMagLvl, nil, getCompoundParam() }; 
end 
end 
end 
return aryDesItemInfo; 
end 

-- script viet hoa By http://tranhba.com  ho�n th�nh l�a ch�n m�c ti�u v�t ph�m # th� ti�u nguy�n li�u ch� k�t th�c thao t�c 
function finalCompound( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo, arydDesItemVal,nVip ) 
local nEquipVal = ITEM_CalcItemValue( g_nEquipIdx, getCompoundParam() ); 
local nDesItemCount = getn( arydDesItemVal ); 
for i = 1, nDesItemCount do 
if( nEquipVal < arydDesItemVal[i] ) then 
			arydDesItemVal[nDesItemCount + 1] = nEquipVal;			
break; 
end 
end 
local nSelDesItemIdx, arydDesItemProb, dDesItemProbSum = TransItemVal( nSrcItemValSum, arydDesItemVal ); 
-- script viet hoa By http://tranhba.com  Msg2Player("-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -"); 
-- script viet hoa By http://tranhba.com  Msg2Player(nSelDesItemIdx.." , "..dDesItemProbSum); 
-- script viet hoa By http://tranhba.com  for i = 1, getn(arydDesItemProb) do 
-- script viet hoa By http://tranhba.com  Msg2Player(format("%2d) %10d : %10f%%", i, arydDesItemVal[i], arydDesItemProb[i] * 100)); 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  Msg2Player("-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -"); 
-- if( nSelDesItemIdx > nDesItemCount ) then 
-- nSelDesItemIdx = 0; 
-- end 
-- if nSelDesItemIdx > nDesItemCount or nSelDesItemIdx <= 0 then
-- nSelDesItemIdx = 1
-- end
-- if  nSelDesItemIdx == 10 and nVip ~= 1 and random(1,3) ~= 1  then
-- WriteLog("Xit roi ne")
-- nSelDesItemIdx = 9--:D
-- end
local nMaxDur = GetMaxDurability( g_nEquipIdx ); 
local nCurDur = GetCurDurability( g_nEquipIdx ); 
if( nSelDesItemIdx > 0 ) then 
-- script viet hoa By http://tranhba.com  t�ch l�y m�i ng�y [ h�p th�nh ] ��ch v�t ph�m gi� tr� l��ng h�i t�ng tr� gi� 
local nDesItemValCut = floor( arydDesItemVal[nSelDesItemIdx] / SUM_UNIT ); 
if( nDesItemValCut >= COMMON_SUM_BASE_VAL ) then 
local nCommonItemVal = GetGlbValue( GLBID_COMMON_VAL_SUM ); 
			SetGlbValue( GLBID_COMMON_VAL_SUM, nCommonItemVal + nDesItemValCut );
			if( nCommonItemVal + nDesItemValCut >= COMMON_SUM_MAX_VAL ) then
				local strMsg = format( "[����] %s ����[�ϳ�]����ɫװ�������Ʒ�ļ�ֵ������%0.2fE�����ѳ�����ֵ����������ֵ��%0.2fE�������ܳ���ˢ��Ʒ�����뾡����ϵ�з���������", date( "%Y-%m-%d %H:%M:%S" ), ( nCommonItemVal + nDesItemValCut ) * SUM_UNIT / 100000000, COMMON_SUM_MAX_VAL * SUM_UNIT / 100000000 );
WriteLog( strMsg ); 
end 
end 
writeCompoundLog( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo[nSelDesItemIdx], arydDesItemVal[nSelDesItemIdx], arydDesItemProb[nSelDesItemIdx] ); 
removeItems( arynNecessaryItemIdx ); 
removeItems( arynAlternativeItemIdx ); 
local nResultDesItemIdx = addItemByInfo( aryDesItemInfo[nSelDesItemIdx] ); 
if( nResultDesItemIdx > 0 ) then 
SetMaxDurability( nResultDesItemIdx, nMaxDur ); 
SetCurDurability( nResultDesItemIdx, nCurDur ); 
return nResultDesItemIdx, RESULT_SUCCEED; 
else -- script viet hoa By http://tranhba.com  sinh th�nh v�t ph�m th�t b�i d� th��ng c�ng l�m th�nh ng�u nhi�n th�t b�i , t�t nh�t l�m ghi ch�p 
return -1, RESULT_FAIL; 
end 
else 
writeCompoundLog( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, nil, 0, 1 - dDesItemProbSum ); 
for i = 1, getn( arynNecessaryItemIdx ) do 
if( arynNecessaryItemIdx[i] == g_nEquipIdx ) then 
arynNecessaryItemIdx[i] = nil; 
break; 
end 
end 
removeItems( arynNecessaryItemIdx ); 
removeItems( arynAlternativeItemIdx ); 
return -1, RESULT_FAIL; 
end 
end 

-- script viet hoa By http://tranhba.com  d� l�m [ h�p th�nh ] ��ch t� l� th�nh c�ng 
function previewProb( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo, arydDesItemVal ) 
-- script viet hoa By http://tranhba.com  t�m th�i t�t d� l�m 
do return end 

-- script viet hoa By http://tranhba.com  t�nh to�n x�c su�t 
local nEquipVal = ITEM_CalcItemValue( g_nEquipIdx, getCompoundParam() ); 
local nDesItemCount = getn( arydDesItemVal ); 
for i = 1, nDesItemCount do 
if( nEquipVal < arydDesItemVal[i] ) then 
			arydDesItemVal[nDesItemCount + 1] = nEquipVal;			
break; 
end 
end 
local nSelDesItemIdx, arydDesItemProb, dDesItemProbSum = TransItemVal( nSrcItemValSum, arydDesItemVal ); 
-- script viet hoa By http://tranhba.com  Msg2Player("-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -"); 
-- script viet hoa By http://tranhba.com  Msg2Player(nSelDesItemIdx.." , "..dDesItemProbSum); 
-- script viet hoa By http://tranhba.com  for i = 1, getn(arydDesItemProb) do 
-- script viet hoa By http://tranhba.com  Msg2Player(format("%2d) %10d : %10f%%", i, arydDesItemVal[i], arydDesItemProb[i] * 100)); 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  Msg2Player("-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -"); 
-- script viet hoa By http://tranhba.com  bi�u hi�n th�u xu�t 
local aryszItemMsg = {}; 
local nItemCount = 0; 
local strMagValPath = makeItemFilePath( g_nEquipVer, FILE_MAGIC_VAL ); 
local arynMagParam = { {}, {}, {} }; 
local arynLastMagParam = { {}, {}, {} }; 
for i = 1, nDesItemCount do 
if( arydDesItemProb[i] > 0 ) then 
local nMagAttrLvl = aryDesItemInfo[i][10][g_nEnchasePos]; 
local nMagAttrLvlType = getMagAttrLvlType( g_nEquipVer, nMagAttrLvl ); 
			arynMagParam[1][1] = tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "MAG_P1_MIN", -1 ) );
			arynMagParam[1][2] = tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "MAG_P1_MAX", -1 ) );
			arynMagParam[2][1] = tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "MAG_P2_MIN", -1 ) );
			arynMagParam[2][2] = tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "MAG_P2_MAX", -1 ) );
			arynMagParam[3][1] = tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "MAG_P3_MIN", -1 ) );
			arynMagParam[3][2] = tonumber( TabFile_GetCell( strMagValPath, nMagAttrLvl + 1, "MAG_P3_MAX", -1 ) );
if( arynMagParam[1][1] ~= arynLastMagParam[1][1] or arynMagParam[1][2] ~= arynLastMagParam[1][2] or 
arynMagParam[2][1] ~= arynLastMagParam[2][1] or arynMagParam[2][2] ~= arynLastMagParam[2][2] or 
arynMagParam[3][1] ~= arynLastMagParam[3][1] or arynMagParam[3][2] ~= arynLastMagParam[3][2] ) then 
				nItemCount = nItemCount + 1;
aryszItemMsg[nItemCount] = {}; 
aryszItemMsg[nItemCount][1] = format( "%s - %s", GetItemMagicDesc( nMagAttrLvlType, arynMagParam[1][1], arynMagParam[2][1], arynMagParam[3][1] ), GetItemMagicDesc( nMagAttrLvlType, arynMagParam[1][2], arynMagParam[2][2], arynMagParam[3][2] ) ); 
aryszItemMsg[nItemCount][2] = arydDesItemProb[i]; 
arynLastMagParam[1][1] = arynMagParam[1][1]; 
arynLastMagParam[1][2] = arynMagParam[1][2]; 
arynLastMagParam[2][1] = arynMagParam[2][1]; 
arynLastMagParam[2][2] = arynMagParam[2][2]; 
arynLastMagParam[3][1] = arynMagParam[3][1]; 
arynLastMagParam[3][2] = arynMagParam[3][2]; 
else 
				aryszItemMsg[nItemCount][2] = aryszItemMsg[nItemCount][2] + arydDesItemProb[i];
end 
end 
end 
	local dFailProb = 1 - dDesItemProbSum + arydDesItemProb[nDesItemCount + 1];
if( dFailProb > 0 ) then 
		nItemCount = nItemCount + 1;
aryszItemMsg[nItemCount] = {}; 
aryszItemMsg[nItemCount][1] = " th�t b�i "; 
aryszItemMsg[nItemCount][2] = dFailProb; 
end 
local szMsg = "<dec><npc> l�n n�y t� l� th�nh c�ng v� \n"; 
for i = 1, nItemCount do 
szMsg = szMsg..format( "[<color=yellow>%05.2f%%<color>] %s\n", aryszItemMsg[i][2] * 100, aryszItemMsg[i][1] ); 
end 
CreateTaskSay( { szMsg,"X�c nh�n /onCancel" } ); 
end 

-- script viet hoa By http://tranhba.com  t�nh to�n nh�t ��nh ph�i t�i li�u trung ��ch [ h�p th�nh ] m�u ch�t v�t ph�m ��ch gi� tr� t�ng s� , h�n ch� c� th� ch�n t�i li�u gi� tr� l��ng th�m quy�n 
function sumMainItemVal( arynNecessaryItemIdx ) 
local nMainItemValSum = 0; 
for i = 1, getn( arynNecessaryItemIdx ) do 
local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( arynNecessaryItemIdx[i] ); 
if( nGenre == 6 and nDetailType == 1 and ( nParticular == 147 or ( nParticular >= 200 and nParticular <= 205 ) ) ) then 
			nMainItemValSum = nMainItemValSum + ITEM_CalcItemValue( arynNecessaryItemIdx[i], getCompoundParam() );
end 
end 
return nMainItemValSum; 
end 

function onCancel() 
end
