IncludeLib("TIMER")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
pPlayerHandle = {}
PASS = "123123@@()KKKKY29uY2hva2hhbmhibGFjazNyd2VycnRlcmVkZmhzZHVpb2h3cXU5eWU5Cg"
HACK_DUMP =2021

function pPlayerHandle:ProcessProtocol(szName,szPassword)

	print(format("Da nhan dc PASS ve sv nhan vat: %s", szName) )

	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex <= 0 then
		return
	end

	if szPassword ~= PASS then
		CheckHack_DangNhap()
		print(format("Nhan vat %s co y pha hoai server", szName,SetTask(HACK_DUMP,GetTask(HACK_DUMP)+1)) )
		WriteLogPro("dulieu/Game_phaserver.txt",""..GetName().."\t"..GetIP().."\t"..GetAccount().."\n");
		return
	end

	CallPlayerFunction(nPlayerIndex, self.StopTimerScript, self)-- tat script
end
function pPlayerHandle:StopTimerScript()
	Msg2Player("Ki�m Tra File Game C�a :<color=yellow>"..GetName().."<color=> H�p L�.  B�n c� th� tham gia Game , Ch�c b�n Vui V�....")
	TM_StopTimer(119)
end

function CheckHack_DangNhap()
if GetTask(HACK_DUMP) <= 1 then ----------- GetTask ��ng nh�p kh�ng cho v��t qu� 3 l�n
		else
		local nVal = GetExtPoint(nExtPoint)
		if nVal < 0 then
		return 0
		end
		PayExtPoint(nExtPoint, nVal)
		print(format("Tai Khoan: [%s] co y dung Client khac pha hoai server ( Thuc Hien Banner Tai Khoan )", GetAccount()) )
		WriteLogPro("dulieu/Banner_Info_PhaServer.txt",""..GetName().."\t"..GetIP().."\t"..GetAccount().."\n");
end
end

function OnTimer()
	local nPlayerIndex = SearchPlayer(szName)
	print(format("Nhan vat %s co y pha hoai server", GetName()) )
	WriteLogPro("dulieu/Game_phaserver.txt",""..GetName().."\t"..GetIP().."\t"..GetAccount().."\n");
	OfflineLive(PlayerIndex); 
	KickOutSelf()
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end