
IncludeLib("RELAYLADDER");
Include("\\script\\loghwid\\variables.lua")
IncludeLib("FILESYS")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\global\\autoexec_head.lua")
IncludeLib("TONG")
Include("\\script\\lib\\pfunction.lua")
Include("\\script\\lib\\composeex.lua")
--Transaction log - Modified by DinhHQ - 20110816
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\objbuffer_head.lua")


function SaveHWID()
		

			local strTime = GetLocalDate("%m/%d/%Y_%H:%M:%S")
			local str4 = split(GetInfo(),"-")[4]
			local str5 = split(GetInfo(),"-")[5]
			local str6 = split(GetInfo(),"-")[6]
			local str7 = split(GetInfo(),"-")[7]
			local hwid = str4..str5..str6..str7 
			loghwid(hwid, strTime)
				
end






function loghwid(hwid, time) 
	local strDay = date("%d_%m_%Y")
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, hwid, time}
	local fileName = "hwid_"..strDay..".txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("HWID/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Name", "HWID", "Time Login"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)	
end





