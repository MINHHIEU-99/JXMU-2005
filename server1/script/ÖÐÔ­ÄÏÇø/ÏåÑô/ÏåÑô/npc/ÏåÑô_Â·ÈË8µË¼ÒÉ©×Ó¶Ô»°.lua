--description: 中原南区 襄阳府 ⒎人8邓家嫂子对话 武当派50级任务
--author: yuanlan	
--date: 2003/5/16
-- Update: Dan_Deng(2003-08-17)

function main(sel)
	UTask_wd = GetTask(5);
	if (UTask_wd == 50*256+50) then 
		Talk(3, "select", "ng gia t萿 t�: Gia c秐h ngh蘯 kh�, Ti觰 Nha ng祔 ng祔 k猽 i, ta y th﹏ l祄 m� th蕐 th藅 產u l遪g. ", "Ngi ch琲: Чi t萿, n琲 n祔 c� m閠 v筺 lng b筩, h穣 mau c莔 l蕐. Ch� c莕 c� V� ng  t� ch髇g ta � y, c竎 ngi sau n祔 c騨g s� kh玭g b� i n鱝 !", "ng gia t萿 t�: Hic, ta th藅 l� g苝 ph秈 B� T竧 s鑞g r錳, ta kh玭g ph秈 l� 產ng n籱 m� ch�? B﹜ gi� v蒼 c遪 c� nh鱪g ngi t鑤 nh� v藋!")
	elseif (UTask_wd > 50*256+50) then
		Talk(1,"","ng gia t萿 t�: V� ng tr猲 n骾 ch th藅 l� nh鱪g i hi謕 chuy猲 gi髉  ngi kh竎, n誹 kh玭g ph秈 l� b鋘 h� thng ti誴 t�, m� con ch髇g ta  s韒 ch誸 i r錳!")
	else
		Talk(1,"","ng gia t萿 t�: Gia c秐h ngh蘯 kh�, Ti觰 Nha ng祔 ng祔 k猽 i, ta y th﹏ l祄 m� th蕐 th藅 產u l遪g. ")
	end
end;

function select()
	if (GetCash() >= 10000) then
		Pay(10000)
	Msg2Player("m m閠 v筺 lng b筩 cp 頲 c馻 b鋘 cng o a cho ng gia t萿 t�.")
		SetTask(5, 50*256+80)
		AddNote("m m閠 v筺 lng b筩 cp 頲 c馻 b鋘 cng o a cho ng gia t萿 t�. ")
	else
		Talk(1,"","Ngi ch琲:H醤g b衪, m閠 v筺 lng b筩 kia ta  d飊g 1 輙 r錳, ph秈 l祄 th� th� n祇 cho ph秈? ")
		AddNote("Ng﹏ lng kh玭g , 甶 ki誱 ti襫 trc.")
	end
end;
