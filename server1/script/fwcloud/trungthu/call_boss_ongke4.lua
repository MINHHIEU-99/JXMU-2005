Include("\\script\\fwcloud\\trungthu\\heart_death.lua")
IncludeLib("TASKSYS");

function AddOngTuyet4()
	IDBoss = {1234,1235}
	local AddIDBoss = IDBoss[random(1,2)]
	local mapidx = SubWorldID2Idx(78)
	local npcindex = AddNpcEx(AddIDBoss, 95, random(0,4), mapidx, 1755*32, 3120*32, 1, "Tuy�t Nhi", 1)--tuongduong
       local npcindex1 = AddNpcEx(AddIDBoss, 95, random(0,4), mapidx, 1755*32, 3120*32, 1, "Tuy�t Nhi", 1)
       local npcindex2 = AddNpcEx(AddIDBoss, 95, random(0,4), mapidx, 1755*32, 3120*32, 1, "Tuy�t Nhi", 1)
       local npcindex3 = AddNpcEx(AddIDBoss, 95, random(0,4), mapidx, 1755*32, 3120*32, 1, "Tuy�t Nhi", 1)

	SetNpcParam(npcindex, 1, AddIDBoss)
	SetNpcScript(npcindex, "\\script\\fwcloud\\trungthu\\heart_death.lua");
	SetNpcTimer(npcindex, 60*60*18);
       SetNpcParam(npcindex1, 1, AddIDBoss)
	SetNpcScript(npcindex1, "\\script\\fwcloud\\trungthu\\heart_death.lua");
	SetNpcTimer(npcindex1, 60*60*18);
       SetNpcParam(npcindex2, 1, AddIDBoss)
	--SetNpcScript(npcindex2, "\\script\\missions\\boss\\sieuboss\\heart_death.lua");
	SetNpcTimer(npcindex2, 60*60*18);
       SetNpcParam(npcindex3, 1, AddIDBoss)
	--SetNpcScript(npcindex3, "\\script\\missions\\boss\\sieuboss\\heart_death.lua");
	SetNpcTimer(npcindex3, 60*60*18);

	str = ("C� ng��i v�a th�y <color=orange>Ng��i Tuy�t<color> b�t c�c <color=orange>Ti�u Long<color> �ang di chuy�n  <color=orange>chia Th�nh 6 H��ng C�a Th�nh Th�<color>. C�c cao th� h�y nhanh ch�ng ng�n ch�n h�n l�i kh�ng cho b�t Ti�u Long");
	AddGlobalNews(str);
end