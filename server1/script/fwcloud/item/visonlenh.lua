Include("\\script\\maps\\checkmap.lua");

Include("\\script\\global\\g7vn\\g7configall.lua")

function main()
Say("Hi�n t�i ch�a ho�t ��ng")
return 1
end

function main1()
	

	local pMapID, pMx, pMy = GetWorldPos();
	if GetFightState()>=1 or (IsCityMap(pMapID)~=1 and IsFreshmanMap(pMapID)~=1 and pMapID ~= 175)  then
		Msg2Player("<color=yellow>Cu�n truy�n t�ng Vi S�n ��o ch� c� th� s� d�ng t�i khu v�c phi chi�n ��u c�a th�nh th�, t�n th� th�n v� t�y s�n th�n<color>");
		return 1;
	end;
	--DinhHQ
	--20110407: kh�ng cho s� d�ng m�c b�c truy�n t�ng trong v��t �i 30
	if pMapID == 957 then
		Msg2Player("<color=yellow>Cu�n truy�n t�ng Vi S�n ��oc ch� c� th� s� d�ng t�i khu v�c phi chi�n ��u c�a th�nh th�, t�n th� th�n v� t�y s�n th�n<color>");
		return 1;
	end
	NewWorld(342, 1411, 2828)
	SetFightState(0);
	SetRevPos(175,1)
	return 0;
end;


