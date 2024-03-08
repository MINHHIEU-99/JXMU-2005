IncludeLib("LEAGUE");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\battles\\battles_award_head.lua")
--------------------------------------------------------------------
tbViewAwardTK = {
	[0] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[1] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[2] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[3] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[4] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[5] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[6] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[7] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[8] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[9] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
	[10] = {ReAward = "<bclr=blue>Ph�n Th��ng �ua Top T�ng Kim  21h VS 13h H�m Nay:<bclr>\n<color=orange>X�p H�ng Top <color=red>1<color> Nh�n ���c 1500 KNB\nX�p H�ng Top <color=red>2<color> Nh�n ���c 1000 KNB\nX�p H�ng Top <color=red>3<color> Nh�n ���c 800 KNB\nX�p H�ng Top <color=red>4<color> ��n <color=red>10<color> Nh�n ���c 500 KNB<color>"},
}

tbAward = {
	[1] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=1500},
			
	},
	[2] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=1000},
			
	},
	[3] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=800},

	},
	[4] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=500},


	},
	[5] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=500},
			

	},
	[6] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=500},
			
	},
	[7] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=500},

		
	},
	[8] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=500},

			
	},
	[9] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=500},

	},
	[10] = {
		{szName="KNB",tbProp={4,1496,1,1,0,0},nCount=500},

	},
	
}
----------------------------------------------------------------------
function main()
local Weekly = tonumber(GetLocalDate("%w"))
local nDate = tonumber(GetLocalDate("%d"))
local nTop = GetTask(TASKID_RECIEVE_TOP_TK)
if (GetTask(TASKID_RECIEVE_TIMES_TK) ~= nDate) then
	SetTask(TASKID_RECIEVE_TIMES_TK, nDate)
	SetTask(TASKID_RECIEVE_TOP_TK,0)
	SetTask(TASKID_RECIEVE_BONUS_TK,0)
end
		if (nTop == 0) then
			CreateNewSayEx("<npc>\n"..tbViewAwardTK[nTop].ReAward.."", {{"Ta Ch� Xem Th�i",No}})
		else
			-- CreateNewSayEx("<npc>\n"..tbViewAwardTK[nTop].ReAward.."", {{"L�nh Th��ng T�p: "..nTop.." T�ng Kim",NhanTopTK},{"K�t Th�c",No}})
		end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanTopTK()
local nFree = CalcFreeItemCellCount()
local nTop = GetTask(TASKID_RECIEVE_TOP_TK)
	if (nFree >= 20) then
		SetTask(TASKID_RECIEVE_TOP_TK,0) tbAwardTemplet:GiveAwardByList(tbAward[nTop],1)
		Msg2SubWorld("<color=green>Ch�c M�ng <color=yellow>"..GetName().."<color> �� Nh�n Th��ng T�p "..nTop.." T�ng Kim Th�nh C�ng!<color>")
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng")
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------