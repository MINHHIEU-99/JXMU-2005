function timnhanvat() 
	AskClientForString("timnhanvat_ok", "", 0,5000,"T�n ��ng Nh�p")
ReloadCommonConfig()	
end 


function timnhanvat_ok(nChar)
local nplayer=FindAccount1(nChar)
Msg2Player(FindAccount1(nChar))
Msg2Player(FindAccount2(nChar))
if FindAccount1(nChar)>0 or FindAccount2(nChar)>0 then
	KickAccountFromAccountMap(nChar, 1)
else
Say("kh�ng t�m th�y account n�y.")
end
end

function NhapTenNguoiCanXem()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","C�n c� <color=pink>100<color> Ti�n ��ng m�i c� th� xem to�n b� th�ng tin v� ti�m n�ng hi�n t�i c�a 1 nh�n v�t c�n t�m.N�u t�m th�t b�i s� kh�ng m�t xu - t�m th�nh c�ng s� m�t 100 ti�n ��ng v� ng��i b� xem ti�m n�ng s� nh�n ���c 50 ti�n ��ng.") -- go
	return
end
	local a = GetTask(5864)
	local b = GetGameTime()
	local c = 0
	
	if (b - a) < 25 then
		_, c = bil.SplitTime(25 - (b - a))
		return bil.Talk("B�n ph�i ch� th�m "..c.." m�i c� th� t�m l�n k� ti�p!")
	end
	
	SetTask(5864, b)
	return AskClientForString("KiemTraTiemNang", "", 1, 20, "Nh�p t�n nh�n v�t");
end

function KiemTraTiemNang(Name)
	local Keywk1 = strfind(Name, "/")
	if FALSE(Keywk1) then
		return BatDauKiemTra(Name)
	end
	local Name = strsub(Name, Keywk1 + 1)
	return BatDauKiemTra(Name)
end


function BatDauKiemTra(rolename)
	if (FALSE(rolename)) then rolename = GetName();end
	if XemCoOnline(rolename) then return end
	SetTaskTemp(245, SearchPlayer(rolename));
	local PlayerIndexGamer = GetTaskTemp(245);
	local img = "<link=image[0,0]:\\spr\\skill\\others\\title_zw.spr>"
	local strTitle = ""..img.."Ch�o m�ng b�n ��n v�i <color=green>V� L�m Truy�n K�<color> H�y ch�ng t� m�nh l� 1 gamer ch�n ch�nh ��ng v� thua ng��i kh�c m� n�n ch� trai.Quy�t t�m �t chi�n th�ng tr��c m�i cao th�.Kh�ng c� k� n�o y�u nh�t ch� c� nh�ng k� kh�ng bi�t ch�ng t� tr�nh pk c�a m�nh."
	local tbOpt = 
	{
		--{"Set Camp cho nh�n v�t "..rolename.."",bilSetCamp4Player},
		{"K�t th�c ��i tho�i.", OnCancel},
	}
	CreateNewSayEx(strTitle , tbOpt)
ConsumeEquiproomItem(100,4,417,1,1)
Msg2SubWorld(""..GetName()..": <color=Blue>�� Ki�m Tra Ti�m N�ng C�a Nh�n V�t <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> K�t Qu� Nh� Sau:") 
Msg2SubWorld("<color=Pink>S�c M�nh  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48>") 
Msg2SubWorld("<color=Pink>Sinh Kh�  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48>")
Msg2SubWorld("<color=Pink>Th�n Ph�p :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48>") 
Msg2SubWorld("<color=Pink>N�i C�ng  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48>")
Msg2SubWorld("<color=Pink>C�n L�i   :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetProp).." <pic=48>")
Msg2SubWorld("<color=Pink>C�n L�i   :<color=green> "..CallPlayerFunction(PlayerIndexGamer, sotiendong ).." <pic=48>")

Msg2SubWorld("=> Nh�n V�t <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> Nh�n ���c <color=green>50<color> Ti�n ��ng") 

AddGlobalCountNews("<color=Pink>S�c M�nh Nh�n V�t <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48><pic=26>") 
AddGlobalCountNews("<color=Pink>Sinh Kh� Nh�n V�t <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48><pic=15>")
AddGlobalCountNews("<color=Pink>Th�n Ph�p Nh�n V�t <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).." :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48><pic=18>") 
AddGlobalCountNews("<color=Pink>N�i C�ng Nh�n V�t<color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48><pic=22>")

callPlayerFunction(PlayerIndexGamer, AddStackItem,50,4, 417, 1, 1, 0, 0, 0)
CallPlayerFunction(PlayerIndexGamer, Say, "<color=green>Ch�c m�ng b�n nh�n ���c 50 ti�n ��ng khi c� ai �� v�a xem th�ng tin v� b�ng ti�m n�ng c�a b�n..", 0);
end


function XemCoOnline(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5998) == 1 then
		local bilPlayerOfflineLive_W, bilPlayerOfflineLive_X, bilPlayerOfflineLive_Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		Say("<color=pink>Nh�n v�t �ang �y th�c kh�ng th� ki�m tra l�c n�y")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "<color=pink>C� th� b�n ��nh : Sai t�n nh�n v�t - nh�n v�t kh�ng t�n t�i - nh�n v�t �� r�i m�ng - ho�c b�n kh�ng ��ng c�ng b�n �� v�i nh�n v�t c�n ki�m tra")
		return 1
	else
		return nil
	end
end