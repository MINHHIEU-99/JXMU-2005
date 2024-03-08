
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
--Include("\\script\\logevent\\logevent.lua");
--Include("\\script\\logevent\\variables.lua");

function main()
	dofile("script/global/g7vn/event/khaimoserver/thiepchucmung.lua")
	SetTask(5334,GetTask(5334)+1)
	local HienTaiSuDung =GetTask(5334)
		local nSubWorldID = GetWorldPos();
		if nSubWorldID ~=20  then
		Msg2Player("ChØ sö dông ë Giang T©n Th«n  nhÐ b¹n.");
		return 1
	end
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 10e6}}, "test", 1);
	--Msg2Player("Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
	Msg2Player("Su Dung Lan Thu: <color=yellow>"..HienTaiSuDung.."<color>")
	CastSkill(691,1,0,180)
	return 0;
	
end
----------------------------------------------------------------------------------------------------------------------------------------------

