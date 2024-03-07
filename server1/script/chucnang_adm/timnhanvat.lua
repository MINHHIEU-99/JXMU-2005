function timnhanvat() 
	AskClientForString("timnhanvat_ok", "", 0,5000,"Tªn §¨ng NhËp")
ReloadCommonConfig()	
end 


function timnhanvat_ok(nChar)
local nplayer=FindAccount1(nChar)
Msg2Player(FindAccount1(nChar))
Msg2Player(FindAccount2(nChar))
if FindAccount1(nChar)>0 or FindAccount2(nChar)>0 then
	KickAccountFromAccountMap(nChar, 1)
else
Say("kh«ng t×m thÊy account nµy.")
end
end

function NhapTenNguoiCanXem()
	local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 100) then -- gia xu
		Talk(1,"","CÇn cã <color=pink>100<color> TiÒn ®ång míi cã thÓ xem toµn bé th«ng tin vÒ tiÒm n¨ng hiÖn t¹i cña 1 nh©n vËt cÇn t×m.NÕu t×m thÊt b¹i sÏ kh«ng mÊt xu - t×m thµnh c«ng sÏ mÊt 100 tiÒn ®ång vµ ng­êi bÞ xem tiÒm n¨ng sÏ nhËn ®­îc 50 tiÒn ®ång.") -- go
	return
end
	local a = GetTask(5864)
	local b = GetGameTime()
	local c = 0
	
	if (b - a) < 25 then
		_, c = bil.SplitTime(25 - (b - a))
		return bil.Talk("B¹n ph¶i chê thªm "..c.." míi cã thÓ t×m lÇn kÕ tiÕp!")
	end
	
	SetTask(5864, b)
	return AskClientForString("KiemTraTiemNang", "", 1, 20, "NhËp tªn nh©n vËt");
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
	local strTitle = ""..img.."Chµo mõng b¹n ®Õn víi <color=green>Vâ L©m TruyÒn Kú<color> H·y chóng tá m×nh lµ 1 gamer ch©n chÝnh ®õng v× thua ng­êi kh¸c mµ n¶n chÝ trai.QuyÕt t©m Êt chiÕn th¾ng tr­íc mäi cao thñ.Kh«ng cã kÎ nµo yÕu nhÊt chØ cã nh÷ng kÎ kh«ng biÕt chøng tá tr×nh pk cña m×nh."
	local tbOpt = 
	{
		--{"Set Camp cho nh©n vËt "..rolename.."",bilSetCamp4Player},
		{"KÕt thóc ®èi tho¹i.", OnCancel},
	}
	CreateNewSayEx(strTitle , tbOpt)
ConsumeEquiproomItem(100,4,417,1,1)
Msg2SubWorld(""..GetName()..": <color=Blue>§· KiÓm Tra TiÒm N¨ng Cña Nh©n VËt <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> KÕt Qu¶ Nh­ Sau:") 
Msg2SubWorld("<color=Pink>Søc M¹nh  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48>") 
Msg2SubWorld("<color=Pink>Sinh KhÝ  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48>")
Msg2SubWorld("<color=Pink>Th©n Ph¸p :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48>") 
Msg2SubWorld("<color=Pink>Néi C«ng  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48>")
Msg2SubWorld("<color=Pink>Cßn L¹i   :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetProp).." <pic=48>")
Msg2SubWorld("<color=Pink>Cßn L¹i   :<color=green> "..CallPlayerFunction(PlayerIndexGamer, sotiendong ).." <pic=48>")

Msg2SubWorld("=> Nh©n VËt <color=yellow>"..CallPlayerFunction(PlayerIndexGamer, GetName).."<color=Blue> NhËn §­îc <color=green>50<color> TiÒn §ång") 

AddGlobalCountNews("<color=Pink>Søc M¹nh Nh©n VËt <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetStrg).." <pic=48><pic=26>") 
AddGlobalCountNews("<color=Pink>Sinh KhÝ Nh©n VËt <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetVit).." <pic=48><pic=15>")
AddGlobalCountNews("<color=Pink>Th©n Ph¸p Nh©n VËt <color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).." :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetDex).." <pic=48><pic=18>") 
AddGlobalCountNews("<color=Pink>Néi C«ng Nh©n VËt<color=yellow> "..CallPlayerFunction(PlayerIndexGamer, GetName).."  :<color=green> "..CallPlayerFunction(PlayerIndexGamer, GetEng).." <pic=48><pic=22>")

callPlayerFunction(PlayerIndexGamer, AddStackItem,50,4, 417, 1, 1, 0, 0, 0)
CallPlayerFunction(PlayerIndexGamer, Say, "<color=green>Chóc mõng b¹n nhËn ®­îc 50 tiÒn ®ång khi cã ai ®ã võa xem th«ng tin vÒ b¶ng tiÒm n¨ng cña b¹n..", 0);
end


function XemCoOnline(Name)
	if CallPlayerFunction(SearchPlayer(Name), GetTask, 5998) == 1 then
		local bilPlayerOfflineLive_W, bilPlayerOfflineLive_X, bilPlayerOfflineLive_Y = CallPlayerFunction(SearchPlayer(Name), GetWorldPos)
		Say("<color=pink>Nh©n vËt ®ang ñy th¸c kh«ng thÓ kiÓm tra lóc nµy")
		return 1
	end
	if (SearchPlayer(Name) <= 0) or (SearchPlayer(Name) == nil) or (SearchPlayer(Name) == "") or not (SearchPlayer(Name)) then
		Talk(1, "", "<color=pink>Cã thÓ b¹n ®¸nh : Sai tªn nh©n vËt - nh©n vËt kh«ng tån t¹i - nh©n vËt ®· rêi m¹ng - hoÆc b¹n kh«ng ®øng cïng b¶n ®å víi nh©n vËt cÇn kiÓm tra")
		return 1
	else
		return nil
	end
end