-- script viet hoa By http://tranhba.com  ch�c n�ng # m�u t�m trang b� h� th�ng - s� d�ng lam / b�ch trang b� c�ng qu�ng th�ch ch� t�o v� �ch l� ��ch m�u t�m trang b� 
-- script viet hoa By http://tranhba.com  Fanghao Wu 2005.1.15 

Include( "\\script\\item\\compound\\compound_header.lua" );

-- script viet hoa By http://tranhba.com  [ h�p th�nh ] ph� d�ng 
COMPOUND_COST = 10000; 


-- script viet hoa By http://tranhba.com  m�i b�t ��u h�a tr� s� 
function initData() 
g_nEquipVer = 0; 
g_nEquipRandSeed = 0; 
g_nEquipGenre = 0; 
g_nEquipDetailType = 0; 
g_nEquipParticualr = 0; 
g_nEquipLevel = 0; 
g_nEquipSeries = 0; 
g_nEquipLuck = 0; 
end 

-- script viet hoa By http://tranhba.com  l�y ���c [ h�p th�nh ] thao t�c tham s� # d�ng cho truy�n l�i cho ITEM_CalcItemValue t�nh to�n v�t ph�m gi� tr� l��ng # 
function getCompoundParam() 
return "EQUIP_COMPOUND"; 
end 

-- script viet hoa By http://tranhba.com  gi�o nghi�m nguy�n li�u c� hay kh�ng ph� h�p [ h�p th�nh ] quy t�c # ��ng th�i t�n tr� m�t �t nguy�n li�u s� li�u # 
function verifySrcItems( arynNecessaryItemIdx, arynAlternativeItemIdx ) 
	Msg2Player("T�nh n�ng n�y ch�a m�.")
	do return RESULT_LACK_RESOURCE end-- by ZhuYingTai 
local nNecessaryItemCount = getn( arynNecessaryItemIdx ); 
for i = 1, nNecessaryItemCount do 
local nGenre, nDetailType, nParticular, nLevel, nSeries, nLuck = GetItemProp( arynNecessaryItemIdx[i] ); 
if( nGenre == 0 ) then 
g_nEquipVer = ITEM_GetItemVersion( arynNecessaryItemIdx[i] ); 
g_nEquipRandSeed = ITEM_GetItemRandSeed( arynNecessaryItemIdx[i] ); 
g_nEquipGenre = nGenre; 
g_nEquipDetailType = nDetailType; 
g_nEquipParticualr = nParticular; 
g_nEquipLevel = nLevel; 
g_nEquipSeries = nSeries; 
g_nEquipLuck = nLuck; 
return RESULT_SUCCEED; 
end 
end 
return RESULT_LACK_RESOURCE; 
end 

-- script viet hoa By http://tranhba.com  sinh th�nh m�c ti�u v�t ph�m tin t�c 
function genDesItemsInfo( arynNecessaryItemIdx ) 
local aryDesItemInfo = {}; 
for i = 1, 5 do 
local arynMagLvl = { 0, 0, 0, 0, 0, 0 }; 
for j = 1, i do 
arynMagLvl[j] = -1; 
end 
aryDesItemInfo[i] = { g_nEquipVer, g_nEquipRandSeed, 2, g_nEquipGenre, g_nEquipDetailType, g_nEquipParticualr, g_nEquipLevel, g_nEquipSeries, g_nEquipLuck, arynMagLvl, nil,getCompoundParam() }; 
end 
return aryDesItemInfo; 
end 

-- script viet hoa By http://tranhba.com  ho�n th�nh l�a ch�n m�c ti�u v�t ph�m # th� ti�u nguy�n li�u ch� k�t th�c thao t�c 
function finalCompound( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo, arydDesItemVal ) 
return defFinalCompound( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo, arydDesItemVal ); 
end
