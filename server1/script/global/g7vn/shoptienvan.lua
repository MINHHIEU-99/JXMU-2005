IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
Include("\\script\\global\\g7vn\\thientaidongtu.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")


function main()
	
	dofile("script/global/g7vn/shoptienvan.lua")
	dofile("script/global/g7vn/g7configall.lua")

local tbSay = 
{
--"120 B�nh Kem Tr�i C�y(120K V�n)/#MuaDoTienVan(10000,2231,1)",
--"50 B�nh Kem Tr�i C�y(5K V�n)/#MuaDoTienVan(5000,2231,1)",
--"H�nh Hi�p K� 30 Ng�y (4K V�n)/#MuaDoTienVan(4000,48075,1)",
--"B�ch Ngh� Tinh Ng�c(10K V�n)/#MuaDoTienVan(10000,30355,1)",
"Th� ��c x� tri�u ��nh 100 V�n/#MuaDoTienVan(100,1375,1)",
"Vi�m �� L�nh 600 V�n/#MuaDoTienVan(600,1617,1)",
"S�t th� gi�n (c�p 90) 600 V�n/#MuaDoTienVan(600,400,90)",
"Long Huy�t Ho�n 600 V�n/#MuaDoTienVan(600,2117,1)",
"Thi�n B�o Kh� 600 V�n/#MuaDoTienVan(600,2813,1)",
--"M�t N� Chi�n Tr��ng V��ng Gi� 3000 V�n/#MuaDoTienVan(3000,647,1)",

"Th�i ta kh�ng mu�n n�a/no"
}

		local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
		if (nDate >= 201911280000) and (nDate <= 202207280000)  then
		--tinsert(tbSay, 1,"1200 Bong B�ng(150K V�n)/#MuaDoTienVan(150000,ifeventtienvan,1)") 
		tinsert(tbSay, 2,"120 even tien van(10K V�n)/#MuaDoTienVan(10000,ifeventtienvan,1)") 
		end
Say("B�n Mu�n Mua G�",getn(tbSay),tbSay)





end


function MuaDoTienVan(sotien,id,cap)
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
sotienthat=sotien*10000
if GetCash()<sotienthat then
return Say("Kh�ng �� Ti�n")
end
local nCurtime = tonumber(GetLocalDate("%H%M"));
local nWeekday = tonumber(date("%w"));
local nRestMin = 24 * 60 - (floor(nCurtime/100)*60+floor(mod(nCurtime, 100)));


if id==1375 then
nRestMin=1*24*60
end

if id==4875 then
nRestMin=30*24*60
end
		local tbAward = {
			{szName=" ",tbProp={6,1,id,cap,0,0},nCount=1,nExpiredTime=nRestMin,nBindState = -2},
		}
		if id==ifeventtienvan and sotien==150000  then
			local tbAward30385 = {
				{szName=" ",tbProp={6,1,id,cap,0,0},nCount=1200,nExpiredTime=TimeHetHanEventFree},
			}
			tbAwardTemplet:GiveAwardByList(tbAward30385,"Nh�n Th��ng Th�nh C�ng") Pay(sotienthat)
			WriteLogPro("dulieu/shoptienvan.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua "..id.." so tien "..sotienthat.. " \n");		
			return
		end
		if id==ifeventtienvan and sotien==10000 then
			local tbAward30385 = {
				{szName=" ",tbProp={6,1,id,cap,0,0},nCount=120,nExpiredTime=TimeHetHanEventFree},
			}
			tbAwardTemplet:GiveAwardByList(tbAward30385,"Nh�n Th��ng Th�nh C�ng") Pay(sotienthat)
				WriteLogPro("dulieu/shoptienvan.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua "..id.." so tien "..sotienthat.. " \n");		
			return
		end
		if id==30355 then
		local tbAward30355 = {
			{szName=" ",tbProp={6,1,id,cap,0,0},nCount=1},
		}
		tbAwardTemplet:GiveAwardByList(tbAward30355,"Nh�n Th��ng Th�nh C�ng") Pay(sotienthat) 
			WriteLogPro("dulieu/shoptienvan.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua "..id.." so tien "..sotienthat.. " \n");		
		return
		end
		if id==647 then 
				local tbAward1 = {
							{szName="M�t N� Chi�n Tr��ng Th�nh Gi�",tbProp={0,11,647,1,0,0},nCount=1,nExpiredTime=2*24*60},
									}
			tbAwardTemplet:GiveAwardByList(tbAward1,"Nh�n Th��ng Th�nh C�ng") Pay(sotienthat) 
				WriteLogPro("dulieu/shoptienvan.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua "..id.." so tien "..sotienthat.. " \n");		
			return
		end
				if id==1679 then 
				local tbAward1 = {
							{szName=" ",tbProp={6,1,id,cap,0,0},nCount=100,nExpiredTime=nRestMin,nBindState = -2},
									}
			tbAwardTemplet:GiveAwardByList(tbAward1,"Nh�n Th��ng Th�nh C�ng") Pay(sotienthat) 
				WriteLogPro("dulieu/shoptienvan.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua "..id.." so tien "..sotienthat.. " \n");		
			return
		end
		tbAwardTemplet:GiveAwardByList(tbAward,"Nh�n Th��ng Th�nh C�ng")
		WriteLogPro("dulieu/shoptienvan.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da mua "..id.." so tien "..sotienthat.. " \n");		
		Pay(sotienthat)

end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
