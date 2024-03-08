Include("\\script\\fwcloud\\trungthu\\call_boss_ongke.lua")
Include("\\script\\fwcloud\\trungthu\\call_boss_ongke1.lua")
--Include("\\script\\fwcloud\\trungthu\\call_boss_ongke2.lua")
--Include("\\script\\fwcloud\\trungthu\\call_boss_ongke3.lua")
--Include("\\script\\fwcloud\\trungthu\\call_boss_ongke4.lua")
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")


tb_TrungThu = {nWait = 0,}

function Start_ThoLau()
tb_TrungThu["nWait"] = 0
StartMissionTimer(77,139,18*60)
AddOngTuyet()
AddOngTuyet1()
--AddOngTuyet2()
--AddOngTuyet3()
--AddOngTuyet4()
end

function AddAllThoLau()
		local szNews = format("<color=green> Ng≠Íi Tuy’t ß∑ Xu t hi÷n Bæt CËc Tr” Em, H∑y ßi T◊m Vµ Ti™u Di÷t ßi M y M∏<color>")
		LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
		AddGlobalNews(szNews)

AddOngTuyet()
AddOngTuyet1()
--AddOngTuyet2()
--AddOngTuyet3()
--AddOngTuyet4()
end

