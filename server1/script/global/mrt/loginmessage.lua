Include("\\script\\global\\login_head.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\global\\mrt\\configserver\\configall.lua")


function CGSupportNewPlayer_Login()
	local szAccount = GetAccount()
	if szAccount=="administrator" then
		return
	end
	if GetLevel() == 1 and GetTask(5003) == 0 then 
		local nLevelUp = CapKhiLoginVaoServer
		ST_LevelUp(nLevelUp) -- l�n 9 c�p
		-- Earn(100000)
		AddLeadExp(100000000) -- 1 tri�u �i�m  = 77 �i�m l�nh ��o

		local tanthu =
		{
			{szName="<color=yellow>Th�n H�nh Ph�", tbProp={6,1,1266}, nCount = 1, nBindState = -2, nExpiredTime = 7*1440},
			{szName="<color=yellow>H�i th�nh ph�", tbProp={6,1,1083}, nCount = 1, nBindState = -2, nExpiredTime = 7*1440},
			--	{szName="<color=yellow> Nh�n T�n Th� ", tbProp={0,7125},nCount = 1 , nBindState = -2 },
			{szName="<color=yellow> Nh�n T�n Th� JX ", tbProp={0,7125},nQuality = 1, nBindState = -2 ,nExpiredTime = 3*1440 },
			--	 {szName="<color=yellow> trang s�c", tbProp={0,4483},nQuality = 1, nBindState = -2 },
		--	{szName="<color=yellow> B�n ti�u", tbProp={0,10,6,9,0,0}, nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>Ti�n Th�o L� x4", tbProp={6,1,4888}, nCount = 5, nBindState = -2},
			-- {szName="<color=yellow>T�nh Danh Chi L�nh",tbProp={6,1,4919,1,0,0},nCount = 1, nBindState = -2},
		--	{szName="<color=yellow>Kim Phong b�o r��ng",tbProp={6,1,4941,1,0,0},nCount = 1, nBindState = -2, tbParam = { -2, 14 }},
			{szName="<color=yellow>L�nh b�i t�n th�",tbProp={6,1,4851,1,0,0},nCount = 1, nBindState = -2},
			{szName="<color=Blue>LB - GM",tbProp={6,1,4906,1,0,0},nCount=1,nBindState = -2},
			-- {szName="<color=yellow>B�o r��ng v� kh� HKMP",tbProp={6,1,4895,1,0,0},nCount = 1, nBindState = -2, tbParam = { -2,30 }},
			-- {szName="<color=yellow>B� quy�t k� n�ng c�p 120",tbProp={6,1,1125,1,0,0},nCount = 1, nBindState = -2, tbParam = { -2,30 }},
			-- {szName="<color=yellow>T� M�u L�nh",tbProp={6,1,1427,1,0,0},nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>��i Th�nh B� K�p 90",tbProp={6,1,2424,1,0,0},nCount = 3, nBindState = -2},
			 {szName="<color=yellow>S�ch K� n�ng 120",tbProp={6,1,1125,1,0,0},nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>��i Th�nh B� K�p 15x",tbProp={6,1,30446,1,0,0},nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>V� H�c Kinh Nhu",tbProp={6,1,2921,1,0,0},nCount = 1, nBindState = -2},
			-- {szName="<color=yellow>M� b�i - Chi�u D� Ng�c S� T�",tbProp={6,1,2332,1,0,0},nCount = 1, nBindState = -2,nExpiredTime = 43200},
		}
		tbAwardTemplet:GiveAwardByList(tanthu, "T�n Th�")
		
		Msg2SubWorld("Ch�o m�ng t�n th� <color=yellow>"..GetName().."<color> �� tham gia v�o <color=green>v� l�m �am M�<color>, xin M�i Nh�n Code t�i <color=green>web jxmu.vn/codetanthu<color>");
		-- Msg2SubWorld("L� tr�nh hi�n t�i<color=green>HKMP - Si�u nh�n 1 Lo�i Trang B�- 10 ph�i -seasion 1 - <color>");
		-- Msg2SubWorld(" <color=green>Ti�u Dao Xu�t Th�<color>\nReset nh�n ti�m n�ng kh�ng Gi�i h�n");
		
		Msg2SubWorld("<color=green>���ng m�n t�ng th�n ph�p l�n dame<color>\n==================");

		Msg2SubWorld("Ng� ��c kh�ng l�i dame");
		
		Msg2SubWorld("<color=green>C� AnTiGame Nh� L�m miniBuff<color>\n=====================");

		Msg2SubWorld("Auto Nh� T� l�m PK M��t Train t�t");
		
		Msg2SubWorld("Ho�t ��ng Pk Ng�y ��m\n=========================== ");

		-- Msg2SubWorld("<color=green>H� tr� ng��i m�i g�n b�ng ng��i c�<color> ");
		
		Msg2SubWorld("L� tr�nh d�i l�u kh�ng nh�m ch�n\n=================================");

		Msg2SubWorld("<color=green>T�t c� c� trong v� l�m �am M� <color>");
		SetLastFactionNumber(-1)
		SetTask(5003,20)
	end 
end
-- MrChuBo-Comment: Sau khi t�o nh�n v�t th� s� g�i h�m n�y
if login_add then login_add(CGSupportNewPlayer_Login,1) end
------Mod-----
function Mod()
	local gmItem =
	{
		{szName="<color=yellow>L�nh B�i Admin", tbProp={6,1,4850}, nCount = 1, nBindState = -2},
	}
	local szAccount = GetAccount()
	if (isGMAccount(szAccount) == 1 or isAdminAccount(szAccount) == 1) then
		if GetTask(5002) == 0 then 
			tbAwardTemplet:GiveAwardByList(gmItem, "GameMaster")
			SetTask(5002,20)
		end
	end
end
