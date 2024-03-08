Include("\\script\\vng_lib\\files_lib.lua")
IncludeLib("FILESYS");
IncludeLib("TIMER")
tbLadderPlayer  = {

}

IncludeLib("RELAYLADDER");
tbFactionID = {
["shaolin"] = {10277,10270},
["tianwang"] = {10278,10269},
["tangmen"] = {10279,10267},
["wudu"] = {10280,10268},
["emei"] = {10281,10266},
["cuiyan"] = {10282,10265},
["gaibang"] = {10283,10274},
["tianren"] = {10284,10273},
["wudang"] = {10285,10271},
["kunlun"] =  {10286,10272},
["nofaction"] = {10119},
}
LADDER_INFO = 1

function InsertPlayerInfo()-- them thong tin vao mang
if LADDER_INFO ~= 1 then
return
end
local szName = GetName()
if not szName or szName =="" then
return
end
if not tbLadderPlayer[szName] then
tbLadderPlayer[szName] = {}
end
local pPlayer = tbLadderPlayer[szName]
pPlayer[1] = szName
pPlayer[2] = GetLevel() or 1
pPlayer[3] = GetExp()/1e9 or 1
pPlayer[4] = GetExpPercent()
end


function KickOffBlockIP()
OfflineLive(PlayerIndex); 
KickOutSelf()
end

function PrepareSortPlayer()-- luu thong tin nhan vat lan cuoi truoc khi tong hop lai 8GS
local nPlayer = PlayerIndex
for i=1,1200 do
PlayerIndex = i
InsertPlayerInfo()
end
end

function SortPlayer(tbInfo)-- xep  hang chuan lai phu hop voi lien server 8 GS
if not tbInfo then
	return
end
PlayerIndex = nPlayer
LADDER_INFO = 0
local tbPlayerList = {}
local tbFactionList = {}
local tb
for szName,pPlayer in tbInfo do
tinsert(tbPlayerList,{szName,pPlayer[2],pPlayer[3]})
print("Xep hang ne.....")
sort(tbPlayerList,function (a,b) return a[2] > b[2] end)-- xep hang top the gioi.
for nLadder,pPlayer in tbPlayerList do
if type(pPlayer) == "table" then
tbInfo[pPlayer[1]][3] = nLadder
if tbInfo[pPlayer[1]][3] > 1000 then
tbInfo[pPlayer[1]][3] = 1000
end
end
end
local nCount = getn(tbPlayerList)
if nCount > 10 then 
nCount = 10
end
end
	local tbTemp = {}
	tinsert(tbTemp, {"Name", "CurrentLevel", "CurrentExp","CurrentExpPercent",})
	for key, val in tbInfo do
		tinsert(tbTemp, val)
		if val[3] < 1000 then
		tbIniTemp[val[1]]=val[3]-- ghi vao tab ini
		end
	end
	local nDate = GetLocalDate("%y%m%d%H%M");
	tbVngLib_File:Table2File("zhuyingtai/worldrank/", "subcribers.txt", "w", tbTemp)	
	Ini2File("","rank.ini","w",tbIniTemp)
LADDER_INFO = 1
end

function SetWorldClass()
local szName = GetName()
if tbLadderPlayer[szName] then
SetEnergy(tbLadderPlayer[szName][3])
-- SetTask(151,tbLadderPlayer[szName][3])
return
end
SetEnergy(1000)
-- SetTask(151,999)
end

function WriteToFile()
	PrepareSortPlayer()-- lÊy th«ng tin nh©n vËt míi nhÊt trong toµn bé GS
	local tbMapId = { 11, 162, 80, 78, 1, 37, 54, 176}
	local tbIniTemp = {}
	for i=1,getn(tbMapId) do
	if SubWorldID2Idx(tbMapId[i]) >= 0 then
		ServerId = i
		break
	end
	end
	local tbTemp = {}
	tinsert(tbTemp, {"Name", "CurrentLevel", "CurrentExp","CurrentExpPercent"})
	for key, val in tbLadderPlayer do
		tinsert(tbTemp, val)
	end
	local nDate = GetLocalDate("%y%m%d%H%M");
	tbVngLib_File:Table2File("worldrank/", format("%dsubcribers%d.txt",nDate,ServerId), "w", tbTemp)	
	tbVngLib_File:Table2File("worldrank/", format("subcribers%d.txt",ServerId), "w", tbTemp)	
	print("xep hang")
	return 1
end

function SortGlobalServer()-- chi chay cho 1 GS duy nhat GS mac dinh la cua map 54 tuong duong cac map hoat dong.
print("xep hang")
local tbSubcribers ={}
if SubWorldID2Idx(54) < 0 then-- khong phai viec cua GS 
return
end
for i=1,8 do-- cong doan load 8 File subcribersxx.txt vµo ®Ó chuÈn bÞ s¾p xÕp
	tbSubcribers[i] = format("\\worldrank\\subcribers%d.txt",i)
	if (TabFile_Load(tbSubcribers[i], tbSubcribers[i]) == 0) then
	print("Kh«ng load ®­îc file xÕp h¹ng ë GS "..i..". KiÓm tra l¹i")
	return 0
	end
end
local tbTempPlayerInfo = {}
for j=1,8 do
	local nRow = TabFile_GetRowCount(tbSubcribers[j])
	for i=2,nRow  do
		local szName = TabFile_GetCell(tbSubcribers[j],i,"Name")
		if not szName or szName =="" then
			print("Load Xong File")
			break
		end
		local nUpdateTime = tonumber(TabFile_GetCell(tbSubcribers[j],i,"LastUpdateTime")) or 0
		if not tbTempPlayerInfo[szName] or tbTempPlayerInfo[szName][8] < nUpdateTime then
			tbTempPlayerInfo[szName] = {}
			tbTempPlayerInfo[szName][1] = szName
			tbTempPlayerInfo[szName][2] = tonumber(TabFile_GetCell(tbSubcribers[j],i,"CurrentLevel"))
			tbTempPlayerInfo[szName][3] = tonumber(TabFile_GetCell(tbSubcribers[j],i,"CurrentExp"))
			tbTempPlayerInfo[szName][4] = TabFile_GetCell(tbSubcribers[j],i,"CurrentExpPercent")
	print("Nhan vat load "..szName)
		end
	end
	TabFile_UnLoad(tbSubcribers[j])
end
SortPlayer(tbTempPlayerInfo)
end

function LoadSubcribers()
local szSubcribers ="\\worldrank\\subcribers.txt"
if (TabFile_Load(szSubcribers, szSubcribers) == 0) then
print("Khong load duoc file subcribers! xin kiem tra lai")
return 0
end
-- self.tbNetIP = {}
local nRow = TabFile_GetRowCount(szSubcribers)
print("So nhan vat"..nRow)
local szName,szStr,szName
for i=2,nRow  do
	local szName = TabFile_GetCell(szSubcribers,i,"Name")
	if not szName or szName =="" then
	print("Load Xong File")
	break
	end
	tbLadderPlayer[szName] = {}
	tbLadderPlayer[szName][1] = szName
	tbLadderPlayer[szName][2] = tonumber(TabFile_GetCell(szSubcribers,i,"CurrentLevel"))
	tbLadderPlayer[szName][3] = tonumber(TabFile_GetCell(szSubcribers,i,"WorldRank"))
	tbLadderPlayer[szName][4] = TabFile_GetCell(szSubcribers,i,"Faction")
	tbLadderPlayer[szName][5] = tonumber(TabFile_GetCell(szSubcribers,i,"Money"))
	tbLadderPlayer[szName][6] = tonumber(TabFile_GetCell(szSubcribers,i,"Repute"))
	tbLadderPlayer[szName][7] = tonumber(TabFile_GetCell(szSubcribers,i,"PK"))
	tbLadderPlayer[szName][8] = tonumber(TabFile_GetCell(szSubcribers,i,"LastUpdateTime")) or 0
	tbLadderPlayer[szName][9] = (TabFile_GetCell(szSubcribers,i,"Account")) or ""
	-- print("Nhan vat load "..szName)
end
TabFile_UnLoad(szSubcribers)
end
function Ini2File(filePath, strFileName, strMode, tbData)	
	local file = openfile(filePath..strFileName, strMode)
	if file == nil then
		execute(format("mkdir -p %s", filePath))
		file = openfile(filePath..strFileName, strMode)
	end
	write(file,"[rank]\n")
	-- for i=1,getn(tbData) do
	-- write(file,i,"=",tbData[i],"\n")
	-- end
	for key,value in tbData do
		write(file,key,"=",value,"\n")
	end
	closefile(file)
end
--LoadSubcribers()
