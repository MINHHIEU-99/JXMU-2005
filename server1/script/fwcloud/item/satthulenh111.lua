Include("\\script\\lib\\basic.lua");
IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")



function main()
	for i = 1, getn(QY_ITEM_INFO) do
		local tb_item	= 	QY_ITEM_INFO[i].tb_item;
			local nIdx		= random(getn(tb_item));
			local nx, ny, nz	= tb_item[nIdx][1], tb_item[nIdx][2], tb_item[nIdx][3];
		local nItemIdx = AddItem(nx, ny, nz, 10, random(0,4), 100, 10);
			SyncItem(nItemIdx);
	end
end;


QY_ITEM_INFO	=
{
	[1]	= {tb_item = {{0,4,0},
	{0,4,1},
	{0,2,0},
	{0,2,1},
	{0,2,2}, 
	{0,2,3}, 
	{0,2,4}, 
	{0,2,5}, 
	{0,2,6},
	{0,2,8},
	{0,2,9},
	{0,2,10},
	{0,2,11},
	{0,2,12},
	{0,2,13},
	{0,6,0},
	{0,6,1},
	{0,5,0},
	{0,5,1},
	{0,5,2},
	{0,5,3},
	{0,8,0},
	{0,8,1},
	{0,7,0},
	{0,7,1},
	{0,7,2},
	{0,7,3},
	{0,7,4},
	{0,7,5},
	{0,7,6},
	{0,7,7},
	{0,7,8},
	{0,7,9},
	{0,7,10},
	{0,7,11},
	{0,7,12},
	{0,7,13},
	{0,0,0},
	{0,0,1},
	{0,0,2},
	{0,0,3},
	{0,0,4},
	{0,0,5},
	{0,9,0},
	{0,9,1},
	{0,1,0},
	{0,1,1},
	{0,1,2},
	{0,3,0},
	}},

};
