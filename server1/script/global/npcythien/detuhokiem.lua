--    Edit by trilap2004   --
Include("\\script\\lib\\awardtemplet.lua")

function OnDeath () 

if (GetTask(369) == 34) then
--Danh De tu ho kiem duoc 4121 Tui Vai = 4162
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30158,0,0,0}, nBindState=-2}, "test", 1); 
Msg2Player("§¸nh b¹i §Ö tö Hé KiÕm Nga Mi ph¸i, t×m ®­îc 1 tói v¶i chøa nh÷ng m¶nh ®ao kiÕm bÞ g·y vôn! Quay trë l¹i t×m TriÖu MÉn QuËn Chóa ®Ó håi b¸o") 
SetTask(369,35)

end
end