Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
IncludeLib("LEAGUE")
Include("\\script\\bonus_onlinetime\\func_onlineaward.lua")



HOACUCCP = 4576
BOHOAHONGCP = 4577
THIETLAHAN = 4548
CHECKDAY = 4579



function main()
dofile("script/global/quanlygame/sukien/quoctephunu/npcsukien.lua");

local nDate = tonumber(GetLocalDate("%Y%m%d"));
if nDate > 20200320 then
	Say("Event �� h�t", 0);
		return
	end;

local tab_Content = {


"N�p V�ng Hoa S�ng/nopquocky",


"Gh�p Hoa C�c Ho�n M�./tuyetxanh",
"Gh�p B� Hoa Tuy�t S�c./tuyetdo",

"Mua Gi�y Ki�n 2 xu./muakhando",
--"Nh�n t�i nguy�n li�u v� xu/nhantuinguyenlieu",
--"Nh�n Nguy�n Li�u Test/nhannltest",
--"Nh�n Th�nh Ph�m Test/thanhpham",
--"Reset m�c v� m�c cuoi/resetmoc395",
--"Reset m�c v�  00/resetmoc00",
"Ta ch�a mang �� nguy�n li�u./no"
	}
Say("<color=gold>Eventt Qu�c T� Ph� N�:<color>\nCh�o m�ng b�n ��n v�i event\n\n<color=yellow>D�ng Hoa C�c Ho�n M�<color>" ..GetTask(HOACUCCP) .. "/300 c�i\n<color=Cyan>D�ng B� Hoa Tuy�t S�c: <color>" ..GetTask(BOHOAHONGCP) .. "/300 c�i", getn(tab_Content), tab_Content);       
end;

function nopquocky()
	local nSilverCount1 = CalcEquiproomItemCount(6,1,4578,1) ;
	if(nSilverCount1 < 1) then
		Talk(1, "no", "<color=white>tr�n ng��i c�c h� kh�ng c� mang c�y hoa s�ng.")
		return
		end
	local nDate = tonumber(GetLocalDate("%d"))		
	if ( GetTask(5341) ~= nDate) and ( GetTask(5340) >= 10) then -- neu khac se
SetTask(5340, 0); --set ngay 6
end
	local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(5341) == nDate) and ( GetTask(5340) >= 10) then -- neu khac se
		Say("M�i ng�y ch� giao n�p 10 c�y hoa s�ng xin h�y quay l�i ng�y h�m sau.", 0);
		return 
end
nopquocky1()
end


function nopquocky1()
local quockyne = CalcItemCount(3,6,1,4578, -1); 


if quockyne < 1 then
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay <color=white>tr�n ng��i c�c h� kh�ng c� mang c�y hoa h�ng",""); 
 else
AskClientForNumber("nopquocky2",0,1,"S� l��ng n�p")
end
end


function nopquocky2(num)
if num > 1 or num == 0 then
Say(" <color=white>kh�ng ���c n�p qu� 1 c�y 1 l�n..")
return
end
local quockyne = CalcItemCount(3,6,1,4578, -1); 
			num1= num*1;
	if  num1 > quockyne  then
		Talk(1, "", " C� l�n kh�ng : thi�u "..num1-quockyne.." Hoa S�ng\n"..myplayersex().." \ <color=green>h�y �i t�m v� ��y.!");
	return   
    end
	if quockyne >= num1 then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4578,-1)
			end
			for i=1, num do			
StackExp(1000000);
end	
	Msg2Player(" <color=white>�� giao n�p  <color=red>"..num.." <color=white>Hoa S�ng.")
	--local szNews = format("<color=cyan>��i hi�p <color=pink>"..GetName().."<color> �� l�m th�nh c�ng <color=yellow>"..num.." Hoa S�ng..")
	--AddGlobalNews(szNews);
	--LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	CastSkill(251,1)
CastSkill(681,1)
CastSkill(285,1)
CastSkill(688,1)
end
local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(5341) ~= nDate) and ( GetTask(5340) < 10) then -- neu khac se
SetTask(5340,GetTask(5340)+num)
end
local nDate = tonumber(GetLocalDate("%d"))		
if (GetTask(5340) == 10) then -- neu khac se
SetTask(5341, nDate); --set ngay 6
end	
end





function muakhando()
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
	if(nSilverCount < 2) then -- gia xu
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� 2 xu.") -- go
	return
 else
AskClientForNumber("muakhando1",1,50,"S� l��ng mua")
end
end
function muakhando1(num)
if num > 50 or num == 0 or  num < 0 then
	OfflineLive(PlayerIndex); 
	KickOutSelf()	
return
end
local tienxu  = CalcItemCount(3,4,417,1, -1) ; --xu 

	if ( num*2 > tienxu) then
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." Gi�y Ki�ng") -- go
	return  
	end
	if (tienxu >= num*2) then

					for i=1,num do
					ConsumeEquiproomItem(2,4,417,1,-1)
					end
	
			for i=1, num do			
			AddItem(6,1,4575,1,1,0) 			
end	
	Msg2Player("B�n Mua th�nh c�ng <color=green>"..num.." Gi�y Ki�ng ..!")
--	local szNews = format("<color=cyan>��i hi�p <color=pink>"..GetName().."<color> �� mua th�nh c�ng <color=yellow>"..num.." gi� hoa t�i S�p Hoa T��ng D��ng")
--	AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		return end	
		Talk(1,"","Tr�n ng��i ��i hi�p kh�ng c� �� s� l��ng Ti�n ��ng �� mua �� "..num.." Gi�y Ki�ng") -- go
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..myplayersex().." <color=green>"..GetName().." <color> online vui v�..!"); 	
	end
end



function tuyetxanh()
local tab_Content = {
		"Ta mu�n l�m ngay/tuyetxanh1",
		"k�t th�c/no"
	}
Say("<color=yellow>Tieungaogiangho.net:<color> Nguy�n li�u c�n: \n<color=white> + 1 C�nh Hoa C�c \n + 1 C�nh Hoa H�ng\n + 3 v�n l��ng", getn(tab_Content), tab_Content);       
end;


function tuyetdo()
local tab_Content = {
		"Ta mu�n l�m ngay/tuyetdo1",
		"k�t th�c/no"
	}
Say("<color=yellow>Tieungaogiangho.net:<color> Nguy�n li�u c�n: \n<color=white> + 1 C�nh Hoa C�c \n + 1 C�nh Hoa H�ng\n + 1 D�y Cu�c Hoa\n + 1 Gi�y Ki�n", getn(tab_Content), tab_Content);       
end;




function resetmoc395()
SetTask(4576,298)
SetTask(4577,298)

end

function resetmoc00()
SetTask(4576,0)
SetTask(4577,0)
end

function nhantuinguyenlieu()
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4571,1,1},nCount=500,},}, "test", 1);
--Earn(1000000)

--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={4,417,1,1,0},nCount=100,},}, "test", 1);
end

function nhannltest()
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4572,1,1},nCount=10,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4573,1,1},nCount=10,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4574,1,1},nCount=10,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4575,1,1},nCount=10,},}, "test", 1);

end

function thanhpham()
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4576,1,1},nCount=301,},}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName="NL",tbProp={6,1,4577,1,1},nCount=301,},}, "test", 1);
end



function myplayersex()
	if GetSex() == 1 then 
		return "N� hi�p";
	else
		return "��i hi�p";
	end
end



function tuyetxanh1()
	local nSilverCount = CalcEquiproomItemCount(6,1,4572,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>C�n thi�u 1 hoa c�c.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4573,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>C�n thi�u 1 hoa h�ng.")
		return
		end
	if (GetCash() < 30000) then
		Talk(1, "no", "<color=white>C�n thi�u  3 v�n l��ng")
		return
		end
tuyetxanh2()
end



function tuyetdo1()
	local nSilverCount = CalcEquiproomItemCount(6,1,4572,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>C�n thi�u 1 hoa c�c.")
		return
		end
	local nSilverCount = CalcEquiproomItemCount(6,1,4573,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>C�n thi�u 1 hoa h�ng.")
		return
		end
			local nSilverCount = CalcEquiproomItemCount(6,1,4574,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>C�n thi�u 1 D�y C�t Hoa.")
		return
		end
			local nSilverCount = CalcEquiproomItemCount(6,1,4575,-1) ;
	if(nSilverCount < 1) then
		Talk(1, "no", "<color=white>C�n thi�u 1 Gi�y Ki�ng.")
		return
		end
tuyetdo2()
end



function tuyetxanh2()
local hoacuc = CalcItemCount(3,6, 1,4572, -1);
local hoahong = CalcItemCount(3,6, 1,4573, -1);
local daycot = CalcItemCount(3,6, 1,4574, -1);
local giaykieng = CalcItemCount(3,6, 1,4575, -1);
local tienvan = GetCash()


if hoacuc < 1 and hoahong < 1 and tienvan < 30000 then
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay","Nguy�n li�u c�n: \n<color=white> + 1 C�nh Hoa C�c \n + 1 C�nh Hoa H�ng\n + 3 v�n l��ng"); 
 else
AskClientForNumber("tuyetxanh3",0,50,"S� l��ng gh�p")
end
end


function tuyetxanh3(num)
if num > 50 or num == 0 or  num < 0 then
	OfflineLive(PlayerIndex); 
	KickOutSelf()
return	
end
local hoacuc = CalcItemCount(3,6, 1,4572, -1);
local hoahong = CalcItemCount(3,6, 1,4573, -1);
local daycot = CalcItemCount(3,6, 1,4574, -1);
local giaykieng = CalcItemCount(3,6, 1,4575, -1);
local tienvan = GetCash()

			num1= num*1;
			num2= num*1;
			num3= num*30000;


	if ( num1 >hoacuc and num2 >hoahong and num3 > tienvan) then
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay","Nguy�n li�u c�n: \n<color=white> + 1 C�nh Hoa C�c \n + 1 C�nh Hoa H�ng\n + 3 v�n l��ng"); 
	return   
      end
	if (hoacuc >= num1 and hoahong >= num2 and tienvan >= num3 ) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4572,-1)
			end
				for i=1,num2 do
			ConsumeEquiproomItem(1,6,1,4573,-1)
				end
												for i=1,num do
			Pay(30000)
				end
			for i=1, num do			
			AddItem(6,1,4576,1,1,0) 			
end	
	Msg2Player(" <color=white>�� l�m ra ���c <color=red>"..num.." <color=white>Hoa C�c Ho�n M�.")
	--local szNews = format("<color=cyan>��i hi�p <color=red>"..GetName().."<color> �� l�m th�nh c�ng <color=yellow>"..num.." thi�p ch�c xu�n..")
	--AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		return
end	
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay","Nguy�n li�u c�n: \n<color=white> + 1 C�nh Hoa C�c \n + 1 C�nh Hoa H�ng\n + 3 v�n l��ng"); 
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end



function tuyetdo2()
local hoacuc = CalcItemCount(3,6, 1,4572, -1);
local hoahong = CalcItemCount(3,6, 1,4573, -1);
local daycot = CalcItemCount(3,6, 1,4574, -1);
local giaykieng = CalcItemCount(3,6, 1,4575, -1);
local tienvan = GetCash()


if hoacuc < 1 and hoahong < 1 and daycot < 1 and giaykieng < 1 then
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay","Nguy�n li�u c�n: \n<color=white> + 1 C�nh Hoa C�c \n + 1 C�nh Hoa H�ng\n + 1 D�y Cu�c Hoa\n + 1 Gi�y Ki�n"); 
 else
AskClientForNumber("tuyetdo3",0,50,"S� l��ng gh�p")
end
end


function tuyetdo3(num)
if num > 50 or num == 0 or  num < 0 then
	OfflineLive(PlayerIndex); 
	KickOutSelf()
return	
end
local hoacuc = CalcItemCount(3,6, 1,4572, -1);
local hoahong = CalcItemCount(3,6, 1,4573, -1);
local daycot = CalcItemCount(3,6, 1,4574, -1);
local giaykieng = CalcItemCount(3,6, 1,4575, -1);
local tienvan = GetCash()

			num1= num*1;
			num2= num*1;
			num3= num*1;
			num4= num*1;



	if ( num1 >hoacuc and num2 >hoahong and num3 >daycot and num4 > giaykieng) then
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay","Nguy�n li�u c�n: \n<color=white> + 1 C�nh Hoa C�c \n + 1 C�nh Hoa H�ng\n + 1 D�y Cu�c Hoa\n + 1 Gi�y Ki�n"); 
	return   
      end
	if (hoacuc >= num1 and hoahong >= num2 and daycot >= num3 and giaykieng >= num4 ) then
			for i=1,num1 do
			ConsumeEquiproomItem(1,6,1,4572,-1)
			end
				for i=1,num2 do
			ConsumeEquiproomItem(1,6,1,4573,-1)
				end
								for i=1,num3 do
			ConsumeEquiproomItem(1,6,1,4574,-1)
				end
								for i=1,num4 do
			ConsumeEquiproomItem(1,6,1,4575,-1)
				end
			for i=1, num do			
			AddItem(6,1,4577,1,1,0) 			
end	
	Msg2Player(" <color=white>�� l�m ra ���c <color=red>"..num.." <color=white>B� Hoa Tuy�t S�c.")
	--local szNews = format("<color=cyan>��i hi�p <color=red>"..GetName().."<color> �� l�m th�nh c�ng <color=yellow>"..num.." thi�p ch�c xu�n..")
	--AddGlobalNews(szNews);
--	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		return
end	
 Talk(2, "", ""..myplayersex().." Qu� ti�c thay","Nguy�n li�u c�n: \n<color=white> + 1 C�nh Hoa C�c \n + 1 C�nh Hoa H�ng\n + 1 D�y Cu�c Hoa\n + 1 Gi�y Ki�n"); 
	if num <  1 then
		Talk(2, "", "Ch�c ��i hi�p "..GetName().." <color>m�t ng�y online vui v� ...!"); 	
	end
end





function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end




function randommaxeventt()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��i hi�p <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< Khi Max Event><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
end
local s = random(1,100)

if s>=1 and s < 4  then
			tbAwardTemplet:GiveAwardByList({{szName = "VLMT",tbProp={6,1,26,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s>=4 and s < 8  then
			tbAwardTemplet:GiveAwardByList({{szName = "TTK",tbProp={6,1,22,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s>=8 and s < 14  then
nguangaunhien()
end;
if s>=14 and s < 24  then
			tbAwardTemplet:GiveAwardByList({{szName = "l�nh b�i boss ti�u",tbProp={6,1,4427,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=24 and s < 45  then
			tbAwardTemplet:GiveAwardByList({{szName = "L� Bao Ti�n V�n",tbProp={6,1,4580,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=45 and s < 56  then
			tbAwardTemplet:GiveAwardByList({{szName = "Tien th� l� ��c bi�t",tbProp={6,1,1765,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s>=56 and s < 72  then
			tbAwardTemplet:GiveAwardByList({{szName = "��i th�nh",tbProp={6,1,2424,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

end;
if s>=72 and s < 101  then
		tbAwardTemplet:GiveAwardByList({{szName="Kim Phong",tbProp={0,random(177,185)},nQuality=1,nCount=1,CallBack= _Message,},}, "test", 1);

		--	tbAwardTemplet:GiveAwardByList({{szName = "l� bao kim phong",tbProp={6,1,4367,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
end


function nguangaunhien()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>��i hi�p <color=yellow>%s<color=cyan> May m�n nh�n ���c <color=pink><%s><color=green><enter><color=yellow>< Khi S� D�ng Max Event ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local t = random(1,5)

if t==1 then
tbAwardTemplet:GiveAwardByList({{szName="Tuy�t �nh",tbProp={0,10,5,3,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==2 then
tbAwardTemplet:GiveAwardByList({{szName="� V�n ��p Tuy�t",tbProp={0,10,5,6,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==3 then
tbAwardTemplet:GiveAwardByList({{szName="Chi�u D�",tbProp={0,10,5,10,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==4 then
tbAwardTemplet:GiveAwardByList({{szName="X�ch Th�",tbProp={0,10,5,7,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if t==5 then
tbAwardTemplet:GiveAwardByList({{szName="��ch L�",tbProp={0,10,5,9,0,0,0},nCount=1,CallBack= _Message,},}, "test", 1);
end;
end



