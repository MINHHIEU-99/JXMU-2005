-------------------------------------------------------------------------
-- FileName		:	rename_func.lua
-- Author		:	lailigao
-- CreateTime	:	2006-07-02 16:38:37
-- Desc			:	在线改名功能
-- Include("\\script\\misc\\rename\\rename_func.lua")
---------------------------------------------------------------------------

Include("\\script\\global\\rename_head.lua")

-- 重名玩家更改角色名对话
function func_online_rename_role(strInfo, strError)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"<#> T譵 hi觰 t猲 nh﹏ v藅 c遪 s� d鬾g 頲 kh玭g/query_rolename",
			"<#> Thay i t猲 nh﹏ v藅 c馻 m譶h/change_rolename",
			"<#> в l莕 sau ta thay i v藋/cancel");
	else
		deny(strError)
	end
end

-- 查询角色名
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "<#> Xin nh藀 t猲 nh﹏ v藅 c莕 t譵 hi觰");
end

function on_query_rolename(new_name)
	if CheckSpecialString(new_name) == 1 then
		return Say("Vui l遪g kh玭g s� d鬾g k� t� c bi謙")
	end
	QueryRoleName(new_name);
end
function CheckSpecialString(szName)
local tbForbidenKey = {"!","@","�","�","�","�","�","_",}
for i=1,getn(tbForbidenKey) do
	if strfind(szName,tbForbidenKey[i]) then
		return 1
	end
end
return 0
end
-- 重名玩家更改角色名
function change_rolename()
	Say("<#> C竎 bc c� th�: R阨 Bang H閕 n誹 c�, i tho筰 v韎 NPC, nh藀 t猲 nh﹏ v藅 c莕 thay i v祇, b筺 s� t� ng r阨 m筺g. Sau 3 ph髏 ng nh藀 l筰, n誹 t猲 nh﹏ v藅  thay i th� 頲 xem i t猲 th祅h c玭g; n誹 ch璦 thay i, m阨 b筺 th鵦 hi謓 l筰 c竎 bc tr猲. N誹 xu蕋 hi謓 m閠 s� hi謓 tng l� xin li猲 h� GM gi秈 quy誸.",
		2,
		"<#> B総 u thay i t猲 nh﹏ v藅/change_rolename2",
		"<#> в ta suy ngh� l筰/cancel")
end

function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>Чi hi謕  c� Bang H閕 kh玭g th� ti課 h祅h thao t竎 n祔!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "<#> Xin nh藀 t猲 nh﹏ v藅 m韎 v祇");
end

function on_change_rolename(new_name)
	if CheckSpecialString(new_name) == 1 then
		return Say("Vui l遪g kh玭g s� d鬾g k� t� c bi謙")
	end
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "<#> B筺 mu鑞 i t猲 g�?")
		else
			RenameRole(new_name);
		end
	end
end

-- 重名帮会更改帮会名
function online_rename_tong(strInfo, strError)
	if (check_renametong() == 1) then
		Say(strInfo,
			3,
			"<#> Ki觤 tra t猲 Bang h閕 c遪 s� d鬾g 頲 kh玭g?/query_tongname",
			"<#> S鯽 i t猲 Bang h閕 c馻 m譶h/change_tongname",
			"<#> в l莕 sau ta thay i v藋/cancel")
	else
		deny(strError)
	end
end

-- 查询帮会名
function query_tongname()
	AskClientForString("on_query_tongname", "", 1, 20, "<#> Xin nh藀 t猲 Bang h閕 mu鑞 t譵 hi觰");
end

function on_query_tongname(new_tong)
	if (check_renametong() == 1) then
		QueryTongName(new_tong)
	end
end

-- 更改帮会名
function change_tongname()
	Say("<#> C竎 bc c� th�: цi tho筰 v韎 NPC, nh藀 t猲 bang h閕 c莕 thay i v祇, b筺 s� t� ng r阨 m筺g. Sau 3 ph髏 ng nh藀 l筰, n誹 t猲 bang h閕  thay i th� 頲 xem i t猲 th祅h c玭g; n誹 ch璦 thay i, m阨 b筺 th鵦 hi謓 l筰 c竎 bc tr猲. N誹 xu蕋 hi謓 m閠 s� hi謓 tng l� xin li猲 h� GM gi秈 quy誸.", 
		2,
		"<#> B総 u thay i t猲 Bang h閕/change_tongname2",
		"<#> в ta suy ngh� l筰/cancel");
end

function change_tongname2()
	AskClientForString("on_change_tongname", "", 1, 20, "<#> Xin nh藀 t猲 Bang h閕 m韎 v祇");
end

function on_change_tongname(new_tong)
	if (GetTongMaster() ~= GetName()) then
		Talk(1, "", "<#> Ch� c� bang ch� m韎 c� th� thay i t猲 Bang h閕")
	elseif (check_renametong() == 1) then
		old_tong, res = GetTong()
		if (res == 1 and old_tong ~= "") then
			if (old_tong == new_tong) then
				Say("<#> Kh玭g th� thay i t猲 Bang h閕 gi鑞g nhau", 1, "<#> Bi誸 r錳!/cancel")
			else
				RenameTong(old_tong, new_tong)
			end
		end
	end
end

function deny(strError)
	Say(strError,
		1,
		"<#> Bi誸 r錳!/cancel")
end
