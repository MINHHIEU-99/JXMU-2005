-- Edited byKevin109
-- 2022/09/29 15:21
-- ======================================================

Include("\\script\\task\\system\\task_string.lua")

function main(nItemIdx)
	local n_fac = GetLastFactionNumber();
	if (n_fac < 0) then
		Talk(1, "", "C�c h� v�n ch�a gia nh�p m�n ph�i, kh�ng th� s� d�ng v�t ph�m n�y!");
		return 1;
	end
	
	local tb_180skill = {
		[0] = {1220},
		[1] = {1221},
		[2] = {1223},
		[3] = {1222},
		[4] = {1224},
		[5] = {1225},
		[6] = {1227},
		[7] = {1226},
		[8] = {1228},
		[9] = {1229},
	};
	
	local tb_Desc = {};
	for i = 1, getn(tb_180skill[n_fac]) do
		local skill = HaveMagic(tb_180skill[n_fac][i]);
		if (skill ~= -1 and skill ~= 20) then
			tinsert(tb_Desc, format("N�ng c�p ".." %s/#upgrade_skilllevel(%d)", GetSkillName(tb_180skill[n_fac][i]), tb_180skill[n_fac][i]));
		end
	end
	
	if (getn(tb_Desc) == 0) then
		Talk(1, "", "K� n�ng ��t ��n c�p cao nh�t ho�c v�n ch�a h�c.");
		return 1;
	end
	
	tinsert(tb_Desc, 1, "Ch�n k� n�ng c�n n�ng c�p:");
	tinsert(tb_Desc, "K�t th�c ��i tho�i/OnCancel");
	CreateTaskSay(tb_Desc);
	return 1;
end

function upgrade_skilllevel(n_skillid)
	if (HaveMagic(n_skillid) == -1 or HaveMagic(n_skillid) >= 20) then
		return	
	end
	
	if (ConsumeItem(3, 1, 6, 1, 8021, -1) == 1) then
		AddMagic(n_skillid, 20);
              -- SetTask(5759,1)
	end
end


function OnCancel()
end