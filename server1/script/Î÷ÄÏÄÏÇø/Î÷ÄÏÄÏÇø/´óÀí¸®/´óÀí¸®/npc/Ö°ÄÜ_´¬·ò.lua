--西南南区 大淀府 长江㈦莘船夫对话
--suyu
--20031029

CurWharf = 9;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Ho祅g H� c鰑 kh骳, ngi � b猲 n祔 s玭g, ta � b猲 kia s玭g, c竎h nhau Thng S琻 nh� h秈, mu鑞 g苝 c騨g kh�.", 3, "Ng錳 thuy襫/WharfFun", "H駓 b�/OnCancel", " o hoa o (5) /go_thd")
	else
		Say("Ho祅g H� c鰑 kh骳, ngi � b猲 n祔 s玭g, ta � b猲 kia s玭g, c竎h nhau Thng S琻 nh� h秈, mu鑞 g苝 c騨g kh�.", 2, "Ng錳 thuy襫/WharfFun", "H駓 b�/OnCancel")
	end
end;

function  OnCancel()
   Talk(1,"","C� ti襫 h穣 quay l筰 g苝 ta!")
end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(239);
	-- if (nRet == 1) then
	--	Msg2Player("船夫：最近去桃花岛的人可真兜。悍吧，你坐悍刀！")
	if (nRet == -1) then
		Talk(1,""," o hoa o c莕  "..AEXP_TICKET.." lng, ngi  ch璦? ")
	end
end
---------------------------------------------------------------
