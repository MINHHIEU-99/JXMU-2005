
Include("script\\global\\mrt\\configserver\\configall.lua")

-------局部变量定义 开始---------
local TASK_TIME_LEFT_A		= 2662
local TASK_TIME_LEFT_B		= 2663
local TASK_ITEM_USED_A		= 2664
local TASK_ITEM_USED_B		= 2665
-------局部变量定义 结束---------

tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "nil",
	szName = "nil",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "nil",
	szName = "T輈h Huy誸 C鑓",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"C蕄 b薱 qu� th蕄, e r籲g qu� nguy hi觤 v韎 i hi謕!",">="} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_A,0,"Th阨 gian tu luy謓 c馻 c竎 h�  h誸!",">"} },
	},
	tbActition = 
	{
		{"NewWorld",	{917,1816,3392} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "nil",
	szName = "竎 Nh﹏ C鑓",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"C蕄 b薱 qu� th蕄, e r籲g qu� nguy hi觤 v韎 i hi謕!",">="} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_A,0,"Th阨 gian tu luy謓 c馻 c竎 h�  h誸!",">"} },
	},
	tbActition = 
	{
		{"NewWorld",	{918,1816,3392} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "nil",
	szName = "Th鵦 C鑤 Nhai",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"C蕄 b薱 qu� th蕄, e r籲g qu� nguy hi觤 v韎 i hi謕!",">="} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_A,0,"Th阨 gian tu luy謓 c馻 c竎 h�  h誸!",">"} },
	},
	tbActition = 
	{
		{"NewWorld",	{919,1608,3168} },
	},
}
tbConfig[5] = --一个细节
{
	nId = 5,
	szMessageType = "nil",
	szName = "H綾 M閏 Nhai",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"C蕄 b薱 qu� th蕄, e r籲g qu� nguy hi觤 v韎 i hi謕!",">="} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_A,0,"Th阨 gian tu luy謓 c馻 c竎 h�  h誸!",">"} },
	},
	tbActition = 
	{
		{"NewWorld",	{920,1608,3168} },
	},
}
tbConfig[6] = --一个细节
{
	nId = 6,
	szMessageType = "nil",
	szName = "Thi猲 Ph� S琻",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"C蕄 b薱 qu� th蕄, e r籲g qu� nguy hi觤 v韎 i hi謕!",">="} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_B,0,"Th阨 gian tu luy謓 c馻 c竎 h�  h誸!",">"} },
	},
	tbActition = 
	{
		{"NewWorld",	{921,1560,3104} },
	},
}
tbConfig[7] = --一个细节
{
	nId = 7,
	szMessageType = "nil",
	szName = "B祅 Long S琻",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"C蕄 b薱 qu� th蕄, e r籲g qu� nguy hi觤 v韎 i hi謕!",">="} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_B,0,"Th阨 gian tu luy謓 c馻 c竎 h�  h誸!",">"} },
	},
	tbActition = 
	{
		{"NewWorld",	{922,1560,3104} },
	},
}
tbConfig[8] = --一个细节
{
	nId = 8,
	szMessageType = "nil",
	szName = "мa M蓇 S琻",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"C蕄 b薱 qu� th蕄, e r籲g qu� nguy hi觤 v韎 i hi謕!",">="} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_B,0,"Th阨 gian tu luy謓 c馻 c竎 h�  h誸!",">"} },
	},
	tbActition = 
	{
		{"NewWorld",	{923,2008,4080} },
	},
}
tbConfig[9] = --一个细节
{
	nId = 9,
	szMessageType = "nil",
	szName = "Uy觧 Ph鬾g S琻",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"C蕄 b薱 qu� th蕄, e r籲g qu� nguy hi觤 v韎 i hi謕!",">="} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_B,0,"Th阨 gian tu luy謓 c馻 c竎 h�  h誸!",">"} },
	},
	tbActition = 
	{
		{"NewWorld",	{924,2008,4080} },
	},
}
tbConfig[10] = --一个细节
{
	nId = 10,
	szMessageType = "ItemScript",
	szName = "S� d鬾g B筩h C鑤 L謓h",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {"return {tbProp={6,1,2255,-1,-1,0},}"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"Ph秈 l� ngi ch琲 n閜 th� v� c蕄 130 tr� l猲 m韎 c� th� s� d鬾g",">="} },
		{"PlayerFunLib:IsCharged",	{"Ph秈 l� ngi ch琲 n閜 th� v� c蕄 130 tr� l猲 m韎 c� th� s� d鬾g"} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_A,1020,"Th阨 gian tu luy謓 c馻 b筩h c鑤 nhi襲 nh蕋 ch� 頲 t輈h l騳 1080 ph髏!","<="} },
		{"PlayerFunLib:CheckTaskDaily",	{TASK_ITEM_USED_A,3,"Чo c� n祔 m鏸 ng祔 ch� 頲 s� d鬾g 3 l莕!","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddTaskDaily",	{TASK_ITEM_USED_A,1} },
		{"dostring",	{"local nLeftTime = GetTask(2662); if  nLeftTime < 0 then nLeftTime = 60; else nLeftTime = nLeftTime + 60; end SetTask(2662, nLeftTime);"} },
		{"dostring",	{"Msg2Player(format([[Th阨 gian t輈h l騳 tu luy謓 c馻 b筩h c鑤 l� %d ph髏]], GetTask(2662)))"} },
	},
}
tbConfig[11] = --一个细节
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "S� d鬾g Thi猲 Long L謓h",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {"return {tbProp={6,1,2256,-1,-1,0},}"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{130,"Ph秈 l� ngi ch琲 n閜 th� v� c蕄 130 tr� l猲 m韎 c� th� s� d鬾g",">="} },
		{"PlayerFunLib:IsCharged",	{"Ph秈 l� ngi ch琲 n閜 th� v� c蕄 130 tr� l猲 m韎 c� th� s� d鬾g"} },
		{"PlayerFunLib:CheckTask",	{TASK_TIME_LEFT_B,1020,"Th阨 gian t輈h l騳 tu luy謓 nhi襲 nh蕋 c馻 thi猲 long l� 1080 ph髏","<="} },
		{"PlayerFunLib:CheckTaskDaily",	{TASK_ITEM_USED_B,3,"Чo c� n祔 m鏸 ng祔 ch� 頲 s� d鬾g 3 l莕!","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddTaskDaily",	{TASK_ITEM_USED_B,1} },
		{"dostring",	{"local nLeftTime = GetTask(2663); if  nLeftTime < 0 then nLeftTime = 60; else nLeftTime = nLeftTime + 60; end SetTask(2663, nLeftTime);"} },
		{"dostring",	{"Msg2Player(format([[Th阨 gian t輈h l騳 tu luy謓 c馻 thi猲 long l� %d ph髏]], GetTask(2663)))"} },
	},
}
tbConfig[12] = --一个细节
{
	nId = 12,
	szMessageType = "ClickNpc",
	szName = "B蕀 v祇 xa phu",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {"Xa phu"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{" n b秐  m韎",13} },
	},
}
tbConfig[13] = --一个细节
{
	nId = 13,
	szMessageType = "CreateDialog",
	szName = "Ch鋘 d遪g ch鋘 b秐 ",
	nStartDate = 202401140000,
	nEndDate  = 202405010000,
	tbMessageParam = {"Kh竎h quan mu鑞 甶 u?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"T輈h Huy誸 C鑓",2} },
		{"AddDialogOpt",	{"竎 Nh﹏ C鑓",3} },
		{"AddDialogOpt",	{"Th鵦 C鑤 Nhai",4} },
		{"AddDialogOpt",	{"H綾 M閏 Nhai",5} },
		{"AddDialogOpt",	{"Thi猲 Ph� S琻",6} },
		{"AddDialogOpt",	{"B祅 Long S琻",7} },
		{"AddDialogOpt",	{"мa M蓇 S琻",8} },
		{"AddDialogOpt",	{"Uy觧 Ph鬾g S琻",9} },
	},
}
