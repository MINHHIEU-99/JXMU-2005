Include("\\script\\lib\\awardtemplet.lua")
-- Include("\\script\\activitysys\\config\\2002\\config.lua")
-- Include("\\script\\activitysys\\config\\2002\\head.lua")
-- Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\bonus_onlinetime\\head.lua")
--Include("\\script\\bonus_onlinetime\\func_onlineaward.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")-- lib bittask cua VNG
IncludeLib("TITLE")
Include("\\script\\misc\\spreader\\spreader.lua")
Include("\\script\\tong\\tong_header.lua");
IncludeLib("TONG")
Include("\\script\\thoduong\\head.lua")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\global\\g7vn\\g7libgm.lua")
IncludeLib("SETTING")
IncludeLib("TASKSYS")
IncludeLib("FILESYS")


tbKandy = {}
tbKandy.szFile = "\\dulieu\\baodanh.ini"

function removepass()
DynamicExecuteByPlayer(PlayerIndex, "\\script\\vng_feature\\resetbox.lua", "cauReset")
end

function muatrong()
	local sltien = GetCash()
	local nAdd = 20000000
	local szMember = GetName()
	local _, nTongID = GetTongName()
	local nFigure = GetTongFigure();
	if nFigure ~= 0 and nFigure ~= 1 then
		Say("��i hi�p kh�ng ph�i Bang ch� ho�c tr��ng l�o")
		return 1;
	end
	if(sltien < nAdd) then
		Say("��i hi�p kh�ng mang ��: "..nAdd.." l��ng")
		return
		end
	szMsg = szMember.." bang ch� �� mua tr�ng gi� "..nAdd.." l��ng bang ch�ng mau chu�n b� t�p trung h��ng ph�c !!!"
	Msg2Tong(nTongID, szMsg)
		local tbAwardItem = 
	{
		szName="Tr�ng Kh�i Ho�n", 
		tbProp={6,1, 2309, 1,0,0},
		nCount = 1,
		nExpiredTime=60*24,
	};
	tbAwardTemplet:GiveAwardByList(tbAwardItem, "Mua Tr�ng Kh�i Ho�n");
	Pay(nAdd)
end


function main()
if GetAccount() == "adminvltk2" then
    dofile("script/global/·��_���.lua");
	end
local tbSay = {
--"��n B� B�o Tr� 5 Ti�n Th� L�/denbu5tientholo",
--"B�o Danh Test Beta/OnlineAward",
"Nh�n Th��ng B�o Danh/OnlineAwardThuong",

"X�a pass r��ng/removepass",
"G�i ti�n v�o bang h�i(100 v�n)/guitien10",
"G�i ti�n v�o bang h�i(500 v�n)/guitien50",
"G�i ti�n v�o bang h�i(1000 v�n)/guitien100",
--"Mua Tr�ng Kh�i Ho�n 2000v/muatrong",
"K�t th�c ��i tho�i/no",
}
Say("Ng��i c�n g� t� L� Quan ta ��y . . .",getn(tbSay),tbSay)
end




function server_setdata(filename,szsect,szkey,szvalue)
	IniFile_SetData(filename, szsect, szkey, szvalue)	
end

function server_getdata(filename,szsect,szkey)
	return IniFile_GetData(filename, szsect, szkey)
end

function server_savedata(filename)
	IniFile_Save(filename,filename)
end

function server_loadfile(filename)
	if (IniFile_Load(filename,filename) == 0) then 
			File_Create(filename)
			IniFile_Load(filename, filename)
	end
end


function OnlineAwardThuong()
if GetTask(4636) > 0 then
	  Talk(1,"no","ch�a cho ph�p!")
	return 
	end
local szName = GetAccount()
local nBaoDanh = server_getdata(tbKandy.szFile,"BAO_DANH",szName);
if ( nBaoDanh == "" ) or ( nBaoDanh == nil ) then
Say("T�i kho�n c�a b�n kh�ng c� danh s�ch b�o danh l�c test beta")
return
end 
if (tonumber(nBaoDanh) == 1 ) then
OnlineAwardThuongOk()
end 
end


function OnlineAwardThuongOk()
    if GetAccount() ~= "kenny42" and GetAccount() ~= "kenny43" then
  Talk(1,"no","ch�a cho ph�p!")
	return 
	end
	if(CalcFreeItemCellCount() < 10)then
		Talk(1,"no","C�n 10 � tr�ng trong h�nh trang.")
	return end;
	if (GetLevel() < 50) then
		Talk(1,"","Ch� c� c�p 50 tr� l�n m�i nh�n ���c!");
	return end;
	if tonumber(GetLocalDate("%Y%m%d%H%M")) >= 202004302359 then
		Talk(1,"","Th�i gian nh�n �� k�t th�c!");
	return end;

	if GetTask(4636) == 0 then
					local tbAwardItem = {
			{szName="VLMT", tbProp={6,1,26,1,0}, nCount = 1,nBindState = -2},
						{szName="TTK", tbProp={6,1,22,1,0}, nCount = 1,nBindState = -2},

		}
		tbAwardTemplet:Give(tbAwardItem, 1)	
		SetTask(4636,100)
		Talk(1,"no","Xin Ch�c M�ng <color=green>"..GetName().."<color> b�n nh�n ���c ph�n th��ng b�o danh th�nh c�ng.") 
		--local szNews = format("Ng��i ch�i <color=green>"..GetName().."<color=yellow> nh�n ���c 5 ti�n th� l� h� tr� ��n b� t�i l� quan!");
		--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
			logplayer("dulieu/nhanbaodanh.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n phan thuong bao danh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

	else
		Talk(1,"no","B�n �� nh�n r�i ��ng tham lam th� ch� n�o!.")
	end
end


function denbu5tientholo()
    if GetAccount() ~= "adminvltk" and GetAccount() ~= "concac1" then
  Talk(1,"no","ch�a cho ph�p!")
	return 
	end
	if(CalcFreeItemCellCount() < 10)then
		Talk(1,"no","C�n 10 � tr�ng trong h�nh trang.")
	return end;
	if (GetLevel() < 50) then
		Talk(1,"","Ch� c� c�p 50 tr� l�n m�i nh�n ���c!");
	return end;
	if tonumber(GetLocalDate("%Y%m%d%H%M")) >= 202004202359 then
		Talk(1,"","Th�i gian nh�n ��n b� �� k�t th�c!");
	return end;

	if GetTask(4636) == 0 then
					local tbAwardItem = {
			{szName="Ti�n Th�o L� (1h)", tbProp={6,1,71,0,0}, nCount = 5,nBindState = -2},
		}
		tbAwardTemplet:Give(tbAwardItem, 1)	
		SetTask(4636,100)
		Talk(1,"no","Xin Ch�c M�ng <color=green>"..GetName().."<color> b�n �� nh�n ���c 5 ti�n th� l� ��n b�.") 
		--local szNews = format("Ng��i ch�i <color=green>"..GetName().."<color=yellow> nh�n ���c 5 ti�n th� l� h� tr� ��n b� t�i l� quan!");
		--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
			logplayer("dulieu/nhandenbu.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] nh�n den bu 5 ttl",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

	else
		Talk(1,"no","B�n �� nh�n r�i ��ng tham lam th� ch� n�o!.")
	end
end

function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end

function AddTongCash()
local szTong = GetTong()
if not  szTong or  szTong == "" then
return Msg2Player("Ng��i kh�ng c� bang h�i. Kh�ng th� s� d�ng ch�c n�ng n�y.")
end
local tbSay = {
"G�i 10 v�n/#AddTongCash2(100000)",
"G�i 100 v�n/#AddTongCash2(1000000)",
"G�i 1000 v�n/#AddTongCash2(10000000)",
"Ta suy ngh� l�i ��/no",
}
Say("Ng��i mu�n g�i bao nhi�u?",getn(tbSay),tbSay)
end
function AddTongCash2(nNumber)
szTong, res = GetTong()
if not szTong or  szTong == "" or nNumber > GetCash() or Pay(nNumber) ~= 1 then
	Msg2Player("C� l�i trong qu� tr�nh kh�u tr� ti�n v�n. Vui l�ng th� l�i sau.")
	return 
end
local _, nTongId = GetTongName()
local handle = OB_Create() 
ObjBuffer:PushObject(handle, GetName()) 
ObjBuffer:PushObject(handle, nTongId) 
ObjBuffer:PushObject(handle, nNumber) 
RemoteExecute("\\script\\tong\\tong_antihack.lua", "GS_CALL_PUT_MONEY", handle, "on_put_money_result")
local szMember = GetName()
	szMsg = szMember.." �� ��ng g�p "..nNumber.." l��ng v�o ng�n qu� bang h�i"
	Msg2Tong(nTongId, szMsg)

WriteLog("G�i ti�n v�n "..GetName().." s� ti�n "..nNumber)
end

function on_put_money_result(nParam, ParamHandle)
return 1
-- local nResult = ObjBuffer:PopObject(ParamHandle)
-- local szName = ObjBuffer:PopObject(ParamHandle)
-- local nMoney = ObjBuffer:PopObject(ParamHandle)
-- local PlayerIdx = SearchPlayer(szName)
-- if nResult ~= 1 then
	-- if PlayerIdx > 0 then
		-- PlayerIndex = PlayerIdx
		-- Earn(nMoney)
		-- Msg2Player("G�i ti�n l�n bang h�i th�t b�i. Vui l�ng th� l�i sau.")
	-- end
-- else
	
-- end
-- print("Nhan packet ve")
end


function guitien10()
	local sltien = GetCash()
	local nAdd = 1000000
	local szMember = GetName()
	local _, nTongID = GetTongName()
	if(sltien < nAdd) then
		Say("��i hi�p kh�ng mang ��: "..nAdd.." l��ng")
		return
		end
	szMsg = szMember.." �� ��ng g�p "..nAdd.." l��ng v�o ng�n qu� bang h�i"
	Msg2Tong(nTongID, szMsg)
	TONG_ApplyAddMoney(nTongID, nAdd)
	Pay(nAdd)
end

function guitien50()
	local sltien = GetCash()
	local nAdd = 5000000
	local szMember = GetName()
	local _, nTongID = GetTongName()
	if(sltien < nAdd) then
		Say("��i hi�p kh�ng mang ��: "..nAdd.." l��ng")
		return
		end
	szMsg = szMember.." �� ��ng g�p "..nAdd.." l��ng v�o ng�n qu� bang h�i"
	Msg2Tong(nTongID, szMsg)
	TONG_ApplyAddMoney(nTongID, nAdd)
	Pay(nAdd)
end

function guitien100()
	local sltien = GetCash()
	local nAdd = 10000000
	local szMember = GetName()
	local _, nTongID = GetTongName()
	if(sltien < nAdd) then
		Say("��i hi�p kh�ng mang ��: "..nAdd.." l��ng")
		return
		end
	szMsg = szMember.." �� ��ng g�p "..nAdd.." l��ng v�o ng�n qu� bang h�i"
	Msg2Tong(nTongID, szMsg)
	TONG_ApplyAddMoney(nTongID, nAdd)
	Pay(nAdd)
end




