IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\vng_lib\\files_lib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\gm_tool\\hotrothem.lua")
Include("\\script\\global\\g7vn\\thientaidongtu.lua")
--Include("\\script\\gm_tool\\lbadmin.lua")
Include("\\script\\activitysys\\playerfunlib.lua")


function main()
	
	dofile("script/global/g7vn/item/huyetchien.lua")
	--do Say("Vﬂng s∏ng huy’t chi’n v…n ch≠a mÎ. Xin quay lπi sau 3 ngµy n˜a") return end

	local playerG7Count = GetPlayerCount() + 1
	local szTitle = "<npc><color=gold> Gamer_"..GetName().." <color>chµo mıng bπn Æ’n vÌi <color=yellow>V‚ L©m Truy“n K˙<color> - <color=green> V‚ L©m Mi‘n Ph›<color> .\nNh˜ng ch¯c n®ng b™n d≠Ìi c„ th” giÛp bπn b´n t»u giang hÂ d‘ dµng h¨n <color>"
	local Opt = 
	{
		
		{"Ki”m tra Æi”m huy’t chi’n Huy’t Chi’n", checkdiem},
		--{"K›ch hoπt lπi h◊nh ∂nh vﬂng s∏ng bﬁ LAG m t", kichhoat},

		

		{"K›ch hoπt vﬂng s∏ng Huy’t Chi’n", tbvongsang},
		
		{"K’t thÛc ÆËi thoπi. ", End},
	}
	
	
	CreateNewSayEx(szTitle,Opt)
end




-------- vong sang


function tbvongsang()

	local tbOpt =
	{
		{"Vﬂng s∏ng th≠¨ng hÂng", vsth},	
		{"Vﬂng s∏ng Lang hπo", vslh},
		{"Vﬂng s∏ng Tri÷u m∑nh", vstm},
		

		{"Tho∏t.",no},
		
	}
	CreateNewSayEx("<npc> Ng≠¨i muËn l y m„n g◊?", tbOpt)
end



function vsth()
	local th = GetSkillState(1546)
	if th >= 1 then Say("Bπn Æang c„ vﬂng s∏ng Th≠¨ng H´ng rÂi") return end
	local lh = GetSkillState(1547)
	if lh >= 1 then Say("Bπn Æang c„ vﬂng s∏ng Lang Hπo rÂi") return end
	local tm = GetSkillState(1532)
	if tm >= 1 then Say("Bπn Æang c„ vﬂng s∏ng Tri‘u m∂nh rÂi") return end
	if GetTask(3002) < 100000 then
		Say("Bπn kh´ng ÆÒ 100k Æi”m huy’t chi’n")
		return
	end
	if (CalcEquiproomItemCount(6, 1, 4877, -1) < 1) then
		Talk(1,"", "Trong r≠¨ng ph∑i c„ ›t nh t 1 Th≠¨ng hÂn thi™n thπch")
		return
	end
	ConsumeEquiproomItem(1, 6, 1, 4877, -1)
	local vongsang = "Thuong Hong"
	local nDate = GetLocalDate("%m/%d/%Y_%H:%M:%S")
	local nType = "Doihuyetchien_thuonghong"
	local ntime = 18*60*60*24*14
	local n_title = 201	
	Title_AddTitle(n_title, 2, ntime)
	Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1546,1,3,21772800,1)
	logplayer("vongsang/kichhoatvongsang_.txt",format(" ThÍi gian : %s  - Tµi kho∂n [ %s] - Nh©n vÀt : [%s ] - Vong sang [%s] ! \n",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),vongsang))
	--WriteLogPro("dulieu/kichhoatvongsang_.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."  event xu: "..GetTask(task_eventxu).."--Moc event xu: "..GetTask(task_moc_eventxu).."--event tien van: "..GetTask(task_event_tienvan).."-- event free "..GetTask(task_eventfree).." \n");	



end


function vslh()
	local lh = GetSkillState(1547)
	if lh >= 1 then Say("Bπn Æang c„ vﬂng s∏ng Lang Hπo rÂi") return end
	local tm = GetSkillState(1532)
	if tm >= 1 then Say("Bπn Æang c„ vﬂng s∏ng Tri‘u m∂nh rÂi") return end
	if GetTask(3002) < 150000 then
		Say("Bπn kh´ng ÆÒ 150k Æi”m huy’t chi’n")
		return
	end
	if (CalcEquiproomItemCount(6, 1, 4878, -1) < 1) then
		Talk(1,"", "Trong r≠¨ng ph∑i c„ ›t nh t 1 Lang hπo thi™n thπch")
		return
	end
	ConsumeEquiproomItem(1, 6, 1, 4878, -1)

	PlayerFunLib:AddSkillState(1546,1,3,0,1)
	Title_AddTitle(201, 2, 0)
	local vongsang = "Lang Hao"
	local nDate = GetLocalDate("%m/%d/%Y_%H:%M:%S")
	local nType = "Doihuyetchien_LangHao"
	local ntime = 18*60*60*24*30
	local n_title = 144	
	Title_AddTitle(n_title, 2, ntime)
	Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1547,1,3, 18*60*60*24*30,1)
	SetTask(3002, GetTask(3002) - 30000)
	logplayer("vongsang/kichhoatvongsang_.txt",format(" ThÍi gian : %s  - Tµi kho∂n [ %s] - Nh©n vÀt : [%s ] - Vong sang [%s] ! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),vongsang))


end

function vstm()
	local tm = GetSkillState(1532)
	if tm >= 1 then Say("Bπn Æang c„ vﬂng s∏ng Tri‘u m∂nh rÂi") return end
	if GetTask(3002) < 320000 then
		Say("Bπn kh´ng ÆÒ 320k Æi”m huy’t chi’n")
		return
	end
	if (CalcEquiproomItemCount(6, 1, 4879, -1) < 1) then
		Talk(1,"", "Trong r≠¨ng ph∑i c„ ›t nh t 1 Tri÷u m∑nh thi™n thπch")
		return
	end
	ConsumeEquiproomItem(1, 6, 1, 4879, -1)

	PlayerFunLib:AddSkillState(1546,1,3,0,1)
	Title_AddTitle(201, 2, 0)

	
	Title_AddTitle(144, 2, 0)
	
	PlayerFunLib:AddSkillState(1547,1,3,0,1)

	local vongsang = "Trieu Manh"
	local nDate = GetLocalDate("%m/%d/%Y_%H:%M:%S")
	local nType = "Doihuyetchien_TrieuManh"
	local ntime = 18*60*60*24*14
	local n_title = 200	
	Title_AddTitle(n_title, 2, ntime)
	Title_ActiveTitle(n_title)
	PlayerFunLib:AddSkillState(1532,1,3,21772800,1)
	SetTask(3002, GetTask(3002) - 60000)
	logplayer("vongsang/kichhoatvongsang_.txt",format(" ThÍi gian : %s  - Tµi kho∂n [ %s] - Nh©n vÀt : [%s ] - Vong sang [%s] ! ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName(),vongsang))


end

function checkdiem()
	Say("ßi”m huy’t chi’n hi÷n tπi cÒa bπn: <color=yellow>"..GetTask(3002).." Æi”m<color>")
	

end


function kichhoat()
	if GetSkillState(1546) < 0 and GetSkillState(1547) < 0 and GetSkillState(1532) < 0  then 
			
		Say("Hi÷n tπi t t c∂ c∏c vﬂng s∏ng Æ“u h’t hπn n™n kh´ng th” kﬁch h‰a lπi")

	end

	if GetSkillState(1546) >= 1 then 
			
		Title_AddTitle(254, 2, 18*60*60*24)
		Title_ActiveTitle(201)

	end
	if GetSkillState(1547) >= 1 then 
			
		Title_AddTitle(255, 2, 18*60*60*24)
		Title_ActiveTitle(144)

	end
	if GetSkillState(1532) >= 1 then 
			
		Title_AddTitle(256, 2, 18*60*60*24)
		Title_ActiveTitle(200)

	end
	if GetSkillState(1546) >= 1 then 
			
		

	end

	

end


function logExchangeItem(vongsang, nDate, nType) 
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, vongsang, nDate, nType}
	local fileName = "kichhoatvongsang_.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("vongsang/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Character", "vongsang", "thoigian","Type"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("vongsang/", fileName, "w", tbData)	
end

function logplayer(zFile,szMsg)
	local Data2 = openfile(""..zFile.."", "a+");
	write(Data2,tostring(szMsg));
	closefile(Data2);
 end
