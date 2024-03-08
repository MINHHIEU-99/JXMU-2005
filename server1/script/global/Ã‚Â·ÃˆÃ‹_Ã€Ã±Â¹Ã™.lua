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
		Say("§¹i hiÖp kh«ng ph¶i Bang chñ hoÆc tr­ëng l·o")
		return 1;
	end
	if(sltien < nAdd) then
		Say("§¹i hiÖp kh«ng mang ®ñ: "..nAdd.." l­îng")
		return
		end
	szMsg = szMember.." bang chñ ®· mua trèng gi¸ "..nAdd.." l­îng bang chóng mau chuÈn bÞ tËp trung h­ëng phóc !!!"
	Msg2Tong(nTongID, szMsg)
		local tbAwardItem = 
	{
		szName="Trèng Kh¶i Hoµn", 
		tbProp={6,1, 2309, 1,0,0},
		nCount = 1,
		nExpiredTime=60*24,
	};
	tbAwardTemplet:GiveAwardByList(tbAwardItem, "Mua Trèng Kh¶i Hoµn");
	Pay(nAdd)
end


function main()
if GetAccount() == "adminvltk2" then
    dofile("script/global/Â·ÈË_Àñ¹Ù.lua");
	end
local tbSay = {
--"§Òn Bï B¶o Tr× 5 Tiªn Thæ Lé/denbu5tientholo",
--"B¸o Danh Test Beta/OnlineAward",
"NhËn Th­ëng B¸o Danh/OnlineAwardThuong",

"Xãa pass r­¬ng/removepass",
"Göi tiÒn vµo bang héi(100 v¹n)/guitien10",
"Göi tiÒn vµo bang héi(500 v¹n)/guitien50",
"Göi tiÒn vµo bang héi(1000 v¹n)/guitien100",
--"Mua Trèng Kh¶i Hoµn 2000v/muatrong",
"KÕt thóc ®èi tho¹i/no",
}
Say("Ng­êi cÇn g× tõ LÔ Quan ta ®©y . . .",getn(tbSay),tbSay)
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
	  Talk(1,"no","ch­a cho phÐp!")
	return 
	end
local szName = GetAccount()
local nBaoDanh = server_getdata(tbKandy.szFile,"BAO_DANH",szName);
if ( nBaoDanh == "" ) or ( nBaoDanh == nil ) then
Say("Tµi kho¶n cña b¹n kh«ng cã danh s¸ch b¸o danh lóc test beta")
return
end 
if (tonumber(nBaoDanh) == 1 ) then
OnlineAwardThuongOk()
end 
end


function OnlineAwardThuongOk()
    if GetAccount() ~= "kenny42" and GetAccount() ~= "kenny43" then
  Talk(1,"no","ch­a cho phÐp!")
	return 
	end
	if(CalcFreeItemCellCount() < 10)then
		Talk(1,"no","CÇn 10 « trèng trong hµnh trang.")
	return end;
	if (GetLevel() < 50) then
		Talk(1,"","ChØ cã cÊp 50 trë lªn míi nhËn ®­îc!");
	return end;
	if tonumber(GetLocalDate("%Y%m%d%H%M")) >= 202004302359 then
		Talk(1,"","Thêi gian nhËn ®· kÕt thóc!");
	return end;

	if GetTask(4636) == 0 then
					local tbAwardItem = {
			{szName="VLMT", tbProp={6,1,26,1,0}, nCount = 1,nBindState = -2},
						{szName="TTK", tbProp={6,1,22,1,0}, nCount = 1,nBindState = -2},

		}
		tbAwardTemplet:Give(tbAwardItem, 1)	
		SetTask(4636,100)
		Talk(1,"no","Xin Chóc Mõng <color=green>"..GetName().."<color> b¹n nhËn ®­îc phÇn th­ëng b¸o danh thµnh c«ng.") 
		--local szNews = format("Ng­êi ch¬i <color=green>"..GetName().."<color=yellow> nhËn ®­îc 5 tiªn thæ lé hç trî ®Òn bï t¹i lÔ quan!");
		--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
			logplayer("dulieu/nhanbaodanh.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn phan thuong bao danh",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

	else
		Talk(1,"no","B¹n ®· nhËn råi ®õng tham lam thÕ chø nµo!.")
	end
end


function denbu5tientholo()
    if GetAccount() ~= "adminvltk" and GetAccount() ~= "concac1" then
  Talk(1,"no","ch­a cho phÐp!")
	return 
	end
	if(CalcFreeItemCellCount() < 10)then
		Talk(1,"no","CÇn 10 « trèng trong hµnh trang.")
	return end;
	if (GetLevel() < 50) then
		Talk(1,"","ChØ cã cÊp 50 trë lªn míi nhËn ®­îc!");
	return end;
	if tonumber(GetLocalDate("%Y%m%d%H%M")) >= 202004202359 then
		Talk(1,"","Thêi gian nhËn ®Òn bï ®· kÕt thóc!");
	return end;

	if GetTask(4636) == 0 then
					local tbAwardItem = {
			{szName="Tiªn Th¶o Lé (1h)", tbProp={6,1,71,0,0}, nCount = 5,nBindState = -2},
		}
		tbAwardTemplet:Give(tbAwardItem, 1)	
		SetTask(4636,100)
		Talk(1,"no","Xin Chóc Mõng <color=green>"..GetName().."<color> b¹n ®· nhËn ®­îc 5 tiªn thæ lé ®Òn bï.") 
		--local szNews = format("Ng­êi ch¬i <color=green>"..GetName().."<color=yellow> nhËn ®­îc 5 tiªn thæ lé hç trî ®Òn bï t¹i lÔ quan!");
		--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
			logplayer("dulieu/nhandenbu.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] nhËn den bu 5 ttl",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

	else
		Talk(1,"no","B¹n ®· nhËn råi ®õng tham lam thÕ chø nµo!.")
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
return Msg2Player("Ng­¬i kh«ng cã bang héi. Kh«ng thÓ sö dông chøc n¨ng nµy.")
end
local tbSay = {
"Göi 10 v¹n/#AddTongCash2(100000)",
"Göi 100 v¹n/#AddTongCash2(1000000)",
"Göi 1000 v¹n/#AddTongCash2(10000000)",
"Ta suy nghÜ l¹i ®·/no",
}
Say("Ng­¬i muèn göi bao nhiªu?",getn(tbSay),tbSay)
end
function AddTongCash2(nNumber)
szTong, res = GetTong()
if not szTong or  szTong == "" or nNumber > GetCash() or Pay(nNumber) ~= 1 then
	Msg2Player("Cã lçi trong qu¸ tr×nh khÊu trõ tiÒn v¹n. Vui lßng thö l¹i sau.")
	return 
end
local _, nTongId = GetTongName()
local handle = OB_Create() 
ObjBuffer:PushObject(handle, GetName()) 
ObjBuffer:PushObject(handle, nTongId) 
ObjBuffer:PushObject(handle, nNumber) 
RemoteExecute("\\script\\tong\\tong_antihack.lua", "GS_CALL_PUT_MONEY", handle, "on_put_money_result")
local szMember = GetName()
	szMsg = szMember.." ®· ®ãng gãp "..nNumber.." l­îng vµo ng©n quü bang héi"
	Msg2Tong(nTongId, szMsg)

WriteLog("Göi tiÒn v¹n "..GetName().." sè tiÒn "..nNumber)
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
		-- Msg2Player("Göi tiÒn lªn bang héi thÊt b¹i. Vui lßng thö l¹i sau.")
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
		Say("§¹i hiÖp kh«ng mang ®ñ: "..nAdd.." l­îng")
		return
		end
	szMsg = szMember.." ®· ®ãng gãp "..nAdd.." l­îng vµo ng©n quü bang héi"
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
		Say("§¹i hiÖp kh«ng mang ®ñ: "..nAdd.." l­îng")
		return
		end
	szMsg = szMember.." ®· ®ãng gãp "..nAdd.." l­îng vµo ng©n quü bang héi"
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
		Say("§¹i hiÖp kh«ng mang ®ñ: "..nAdd.." l­îng")
		return
		end
	szMsg = szMember.." ®· ®ãng gãp "..nAdd.." l­îng vµo ng©n quü bang héi"
	Msg2Tong(nTongID, szMsg)
	TONG_ApplyAddMoney(nTongID, nAdd)
	Pay(nAdd)
end




