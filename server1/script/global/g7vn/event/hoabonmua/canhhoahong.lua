
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	dofile("script/global/g7vn/event/hoabonmua/canhhoahong.lua")
	end
function main1()
	dofile("script/global/g7vn/event/hoabonmua/canhhoahong.lua")
	local TSK_CanhHoa=4998
	local HienTaiSuDung =GetTask(TSK_CanhHoa)
	if (HienTaiSuDung > 1000) then
		Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end


tbAwardTemplet:GiveAwardByList({{nExp_tl = 40e6}}, "test", 1);

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(TSK_CanhHoa,GetTask(TSK_CanhHoa)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..HienTaiSuDung .."<color>")
	return 0
end
