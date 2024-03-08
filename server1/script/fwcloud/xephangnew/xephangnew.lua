
Include("\\script\\lib\\remoteexc.lua")

tb_rank = {}

function tb_rank:callAray()
RemoteExc("\\script\\bil4i3n\\bil4i3n_worldrank_hook.lua", "bilRankHook:UpdateRankNew", {GetName(), GetLevel(), GetExpPercent()})
print("call aray")

print("-------------------------Load file xh-----------------")
end

-- function tb_rank:xhTung(_Array)

-- print("--------Load Rank----------")

-- if SubWorldID2Idx(176) < 0 then-- khong phai viec cua GS 
-- print("--------deo phai viec cua may----------")
-- return
-- end
	
	-- Logs_Rank = openfile("dulieu/ranklist.txt", "w")
				-- write(Logs_Rank,"[Rank]\n")	
	-- print(getn(_Array))
	-- for index = 1, getn(_Array) do

		-- write(Logs_Rank, _Array[index][1] .. "\t\=" .. index .. "\n")

		
	-- end
	
	-- closefile(Logs_Rank)
	-- print("Xep hang tu dong gs 1----------------------------------")
-- end

function tb_rank:creatnewfile()

if SubWorldID2Idx(999) < 0 then-- khong phai viec cua GS 
-- print("--------deo phai viec cua may----------")
return
end

print("--------------tao file new---------------")
	Logs_Rank = openfile("dulieu/ranklist.txt", "w")
			write(Logs_Rank,"[Rank]\n")	
				closefile(Logs_Rank)
				print("--------------tao file new ok ---------------")
end

function tb_rank:SendCheck()
if SubWorldID2Idx(999) < 0 then-- khong phai viec cua GS 
print("--------Map chua mo----------")
return
end
print("--------Map da mo----------")
RemoteExc("\\script\\bil4i3n\\bil4i3n_worldrank_hook.lua", "bilRankHook:AcceptGS", {})
end

function tb_rank:xhTung(Array,Array2)

-- print("--------Load Rank----------")



if SubWorldID2Idx(999) < 0 then-- khong phai viec cua GS 
--print("--------deo phai viec cua may----------")
return
end
	
	Logs_Rank = openfile("dulieu/ranklist.txt", "a")
	-- write(Logs_Rank,"[Rank]\n")	
	-- for index = 1, 1000 do
		write(Logs_Rank, Array .. "\t\=" .. Array2 .. "\n")
		print(Array .. " = " .. Array2)
	-- end
	closefile(Logs_Rank)
	print("Xep hang tu dong gs 1----------------------------------")
end

--/script/fwcloud/xephangnew/xephangnew.lua

