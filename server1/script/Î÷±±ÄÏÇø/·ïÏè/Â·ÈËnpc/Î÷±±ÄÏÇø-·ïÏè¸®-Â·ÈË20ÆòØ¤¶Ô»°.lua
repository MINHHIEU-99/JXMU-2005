--西北南区 凤翔府 路人20乞丐对话 世界任务

function main(sel)

--UTask_world36 = GetTask(64);

--if (UTask_world36 == 0) then 
--Talk(3, "select", "乞丐：唉……", "小哥，怎么在这唉声叹气的？", "乞丐：看你是外地来的吧，没见到官府前的告示吗？这几天朝廷派枢密使大人来视察，所有乞丐都不能上街乞讨，说是有碍市容，你说这枢密使大人视察跟俺们这些要饭的有什么关系，这几天做不成生意，俺一家大小可怎么过啊。")
--return
--end;

--if (UTask_world36 == 1) then 
Say("Nh譶 anh ch綾 l� ngi n琲 kh竎, anh kh玭g th蕐 c竜 th� trc c鯽 nha m玭 sao? M蕐 ng祔 n祔 tri襲 nh c� quan m藅 s� n th� s竧 n琲 y. V� v藋 ╪ xin kh玭g 頲 ra 阯g. Quan m藅 s� n v韎 vi謈 ch髇g ta xin c琺 th� c� li猲 quan g� ch�? M蕐 ng祔 nay kh玭g l祄 頲 g�, c� nh� l蕐 g� m� s鑞g.", 0)
--end;

end;


function select()
Say("Nh譶 anh ta th藅 ng thng� ", 2, "Cho ti襫 /accept", "Kh玭g cho ti襫 /refuse");
end;


function accept()

if (GetCash() > 1000) then							--参考值
	Talk(2, "select1", "Ti觰 ca! y c� 輙 ng﹏ lng, huynh c莔  m� d飊g!", "Ch髇g ta b蘯 nc tng ph飊g, ngi l筰 cho ta nhi襲 ng﹏ lng nh� v藋, th藅 l� m閠 ngi trng ngh躠! Th� th�...ta l╪ l閚 tr猲 giang h� c騨g c� kh玭g 輙 kinh nghi謒, ta s� truy襫 l筰  ngi ph遪g th﹏")	
else
	Say("Xem ra ngi c騨g kh玭g gi祏 c� g�, ta ch� nh薾 h秓 � c馻 ngi th玦.", 0)
end;

end;


function refuse()
end;


function select1()
Pay(GetCash()/3)
AddOwnExp(1000)	
SetTask(64, 1)
end;