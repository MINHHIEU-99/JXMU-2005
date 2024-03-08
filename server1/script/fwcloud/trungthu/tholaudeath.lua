IncludeLib("NPCINFO"); 
IncludeLib("TIMER")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("ITEM")
Include("\\script\\activitysys\\playerfunlib.lua")
IL("SETTING");

local DoorDropAward = {

	{{szName="Thñy tinh",tbProp={4,{238,240},1,1,0,0},nRate=3},},
	{{szName="Tinh hång b¶o th¹ch",tbProp={4,353,1,1,0,0},nRate=3},},
	{{szName="Lenh bai",tbProp={6,1,157,1,0,0},nRate=5},},
	{{szName="Phi toc",tbProp={6,1,190,1,0,0},nRate=5},},
	{{szName="M¶nh tranh V©n Du 1",tbProp={6,1,4647,1,0,0},nRate=7},},
	{{szName="M¶nh tranh V©n Du 2",tbProp={6,1,4648,1,0,0},nRate=7},},
	{{szName="M¶nh tranh V©n Du 3",tbProp={6,1,4649,1,0,0},nRate=7},},
	{{szName="M¶nh tranh V©n Du 4",tbProp={6,1,4650,1,0,0},nRate=7},},
	{{szName="M¶nh tranh V©n Du 5",tbProp={6,1,4651,1,0,0},nRate=7},},
	{{szName="M¶nh tranh V©n Du 6",tbProp={6,1,4652,1,0,0},nRate=7},},
	{{szName="M¶nh tranh Tiªn Vò 1",tbProp={6,1,4653,1,0,0},nRate=7},},
	{{szName="M¶nh tranh Tiªn Vò 2",tbProp={6,1,4654,1,0,0},nRate=7},},
	{{szName="M¶nh tranh Tiªn Vò 3",tbProp={6,1,4655,1,0,0},nRate=7},},
	{{szName="M¶nh tranh Tiªn Vò 4",tbProp={6,1,4656,1,0,0},nRate=7},},
	{{szName="M¶nh tranh Tiªn Vò 5",tbProp={6,1,4657,1,0,0},nRate=7},},
	{{szName="M¶nh tranh Tiªn Vò 6",tbProp={6,1,4658,1,0,0},nRate=7},},
}

function OnDeath(indexNPC) 

tbDropTemplet:GiveAwardByList(indexNPC, PlayerIndex,%DoorDropAward,format("killed_%s",GetNpcName(indexNPC)))	
	
end;

