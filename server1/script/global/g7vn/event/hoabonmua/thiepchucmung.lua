
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

function main()
	dofile("script/global/g7vn/event/hoabonmua/thiepchucmung.lua")
	SetTask(5333,GetTask(5333)+1)
	local HienTaiSuDung =GetTask(5333)
	tbLogEvent:LuuDSNhanVat()
	tbLogEvent:SapXepDSXepHang()
	tbAwardTemplet:GiveAwardByList({{nExp_tl = 1e6}}, "test", 1);
	--Msg2Player("Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
	Msg2Player("Su Dung Lan Thu: <color=yellow>"..HienTaiSuDung.."<color>")
	CastSkill(691,1,0,180)
	return 0;
	
end
----------------------------------------------------------------------------------------------------------------------------------------------

