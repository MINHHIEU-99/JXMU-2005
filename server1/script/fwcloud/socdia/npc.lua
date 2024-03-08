------------Lanh Tho Chien Dev By TungHuyen-----------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\droptemplet.lua")

tbKandy = {}
tbKandy.szFile = "\\dulieu\\socdia.ini"



function main(nNpcIndex)
if nTime > 0 then
Say("§ang l¾c x× ngÇu quay l¹i sau")
return
end
local ketquatruoc = read_taixiu()
dofile("script/fwcloud/socdia/npc.lua");
local tab_Content = {
"L¾c XÝ NgÇu (3.KNB)./mobat",
"Tho¸t./no"
	}
Say("<color=cyan>Nhµ c¸i \nKÕt qu¶: " .. ketquatruoc, getn(tab_Content), tab_Content);       
end;


function mobat()
	local nCount_muaban = CalcEquiproomItemCount(4,1503,1,-1)
	if  nCount_muaban < 3  then
	Say("B¹n kh«ng cã mang theo 3 KNB.")
return
end
lacXiNgauStep1()
		ConsumeEquiproomItem(3, 4,1503, 1,-1)
end

nTime = 0

function lacXiNgauStep1()
delobj()
lacXiNgauStep2()
end

function lacXiNgauStep2(nNpcIndex)
local nNpcIndex = GetLastDiagNpc()
local nKq = read_ketqua()
local ArrayKq = split(nKq,",")
local nXiNgau1 = ArrayKq[1]
local nXiNgau2 = ArrayKq[2]
local nXiNgau3 = ArrayKq[3]

nX = 50164
nY = 102434
if nTime > 18 then
AddObstacleObj(477 + ArrayKq[1],78,nX,nY)
AddObstacleObj(477 + ArrayKq[2],78,nX + 70 ,nY )
AddObstacleObj(477 + ArrayKq[3],78,nX + 140,nY )
nTime = 0

if (ArrayKq[1] + ArrayKq[2] + ArrayKq[3] == 3 or ArrayKq[1] + ArrayKq[2] + ArrayKq[3] == 18) then
szTitle = "KÕt qu¶: " .. ArrayKq[1] .. "-" .. ArrayKq[2] .. "-"  .. ArrayKq[3] .. " : " .. ArrayKq[1] + ArrayKq[2] + ArrayKq[3] .. " nót - C¸i ¡n"
write_ketquaold("C¸i")
end
if (ArrayKq[1] + ArrayKq[2] + ArrayKq[3] >= 4 and ArrayKq[1] + ArrayKq[2] + ArrayKq[3] <= 10) then
szTitle = "KÕt qu¶: " .. ArrayKq[1] .. "-" .. ArrayKq[2] .. "-"  .. ArrayKq[3] .. " : " .. ArrayKq[1] + ArrayKq[2] + ArrayKq[3] .. " nót - XØu"
write_ketquaold("XØu")
end
if (ArrayKq[1] + ArrayKq[2] + ArrayKq[3] >= 11 and ArrayKq[1] + ArrayKq[2] + ArrayKq[3] <= 17) then
szTitle = "KÕt qu¶: " .. ArrayKq[1] .. "-" .. ArrayKq[2] .. "-"  .. ArrayKq[3] .. " : " .. ArrayKq[1] + ArrayKq[2] + ArrayKq[3] .. " nót - Tµi"
write_ketquaold("Tµi")
end

NpcChat(nNpcIndex,szTitle)
Msg2SubWorld("<color=yellow>"..szTitle)
write_taixiu()
else
AddObstacleObj(random(478,483),78,nX,nY)
AddObstacleObj(random(478,483),78,nX + 70 ,nY )
AddObstacleObj(random(478,483),78,nX + 140,nY )
AddTimer(3, "TimeXiNgau", 0);
nTime = nTime + 1
end
nTime = nTime
end



function npcTalk(nNpcIndex)
local nNpcIndex = GetLastDiagNpc()



NpcChat(nNpcIndex,szTitle1)
Msg2SubWorld("<color=yellow>"..szTitle1)

end

function TimeXiNgau()
delobj()
lacXiNgauStep2()
end

-----------lib

function read_taixiu()
szPath = "dulieu/logtien/ketquaold.txt"
		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tostring(nValue)
		end
		closefile(handle)	
		return nValue		
end

function read_ketqua()
szPath = "dulieu/logtien/ketquasocdia.txt"
		handle = openfile(szPath, "r")
		if (handle == nil) then
			return 
		end
		
		nValue = read(handle, "*l")
		if (nValue == nil or nValue == "") then
				nValue = 0
		else
			nValue = tostring(nValue)
		end
		closefile(handle)	
		return nValue		
end



function write_taixiu()
ketqua = random(1,6) .. "," .. random(1,6) .. "," .. random(1,6) 
szPath = "dulieu/logtien/ketquasocdia.txt"
handle = openfile("dulieu/logtien/ketquasocdia.txt", "w+")
write(handle, ketqua)	
closefile(handle)
end

function write_ketquaold(nKetqua)
local nOld = read_taixiu()
local ArrayKq = split(nOld,",")
ketqua = ArrayKq[2] .. ",".. ArrayKq[3] .. "," .. ArrayKq[4] .. ",".. ArrayKq[5] .. ",".. ArrayKq[6] .. "," .. ArrayKq[7] .. "," .. ArrayKq[8] .. ",".. ArrayKq[9] .. "," .. ArrayKq[10] .. "," .. nKetqua
szPath = "dulieu/logtien/ketquaold.txt"
handle = openfile("dulieu/logtien/ketquaold.txt", "w+")
write(handle, ketqua)	
closefile(handle)
end







function delobj()
nX = 50164
nY = 102434
ClearObstacleObj(78,nX,nY)
ClearObstacleObj(78,nX + 70 ,nY)
ClearObstacleObj(78,nX + 140,nY)
end




