IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")



function main()
tongkimlebaook()
end

function tongkimlebaook()
SetTask(747,GetTask (747)+5000)
Msg2Player("Chóc mõng ®¹i hiÖp nhËn ®­îc 5000 ®iÓm tİch lòy tèng kim.")
Msg2Player("<color=green>B¹n cã thÓ sö dông tİch lòy ®¬n ®Ó hoµn thµnh nhiÖm vô tèng kim t¹i anh hïng lÖnh.")
SetTask(3332,GetTask(3332)+5000)
end
