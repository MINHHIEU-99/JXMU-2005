function UpdateManaPoint(nCurPoint)
local nSeries = GetSeries()
local nSkillStart = 1466 + nSeries*20
-- Msg2Player("Gia tri skill ao ? "..nSkillStart )
local nSkillEnd = nSkillStart + 19
for i=nSkillStart, nSkillEnd do
RemoveSkillState(i)
end
if nCurPoint < 1 then 
return 
end
-- tinh toan dua ra level
local na = floor(nCurPoint/60)
local nb = mod(nCurPoint,60)
if nb == 0 then 
nb = 60 
na = na - 1
end
local nSkill = nSkillStart + na
local nLevel = nb
-- Msg2Player("Skill "..nSkill.." level "..nLevel)
AddSkillState(nSkill, nLevel, 1,9999999,1)
end
function CheckEngPoint()
Task88_4 = GetByte(GetTask(88),4) + 1
local tbEng ={15,25,25,20,40}
local nBanPoint  = GetEng(1) - tbEng[GetSeries() + 1] + GetByte(GetTask(88),4) - 20
if nBanPoint > 0 then 
AddEng(-nBanPoint)
AddProp(-nBanPoint)
SetTask(3022,nBanPoint) 
Say("Bπn bﬁ tﬁch thu "..nBanPoint.." Vui lﬂng li™n h÷ GM Æ” bi’t th™m chi ti’t.",0)
end
end