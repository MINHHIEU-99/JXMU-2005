IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function duatop()
--Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y më.",0);
local Name=GetName()
if CalcFreeItemCellCount() < 40 then
	Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 40 « trèng råi h·y më.",0);
	return 1;
end
if (GetTask(506) >= 1) then
	Talk(1,"","B¹n ®· nhËn <bclr=red>PhÇn th­ëng<bclr> råi c¬ mµ. Xin h·y kiÓm tra l¹i. Chóc b¹n ch¬i game <bclr=violet>Vui VÎ<bclr> vµ gÆp thËt nhiÒu <bclr=violet>May M¾n<bclr>.")
return 1;
end

	if (Name == "") or (Name == "") or (Name == "") or (Name == "") or (Name == "") or (Name == "") or (Name == "") or (Name == "") then 	-- top 8 mon phai con lai
for i = 1,5 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mïng b¹n ®· nhËn ®­îc phÇn th­ëng ®ua tãp M«n Ph¸i.")

	elseif (Name == "") or (Name == "") then	--top thuy yen va thien vuong
for i = 1,10 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mïng b¹n ®· nhËn ®­îc phÇn th­ëng ®ua tãp M«n Ph¸i.")

	elseif (Name == "") then	--- top 1

--for i = 1, 4 do
--AddGoldItem(unpack(AnBangMini[i].ValItem))
--end
for j = 1,20 do
AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 1. ThËt xøng ®¸ng.")

	elseif (Name == "") then	 --- top 2

--for i = 1, 5 do
--AddGoldItem(unpack(DinhQuoc[i].ValItem))
--end
for j = 1,20 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 2. ThËt xøng ®¸ng.")

	elseif (Name == "") then	 --- top 3

--for i = 1, 4 do
--AddGoldItem(unpack(HiepCot[i].ValItem))
--end
for j = 1,20 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 3. ThËt xøng ®¸ng.")

	elseif (Name == "") then	 --- top 4

--for i = 1, 1 do
--AddItem(unpack(ChieuDa[i].ValItem))
--end
for j = 1,10 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 4. ThËt xøng ®¸ng.")

	elseif (Name == "") then	 --- top 5

for i = 1, 10 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 5. ThËt xøng ®¸ng.")

	elseif (Name == "") then	 --- top 6

for i = 1, 9 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 6. ThËt xøng ®¸ng.")

	elseif (Name == "") then	 --- top 7

for i = 1, 8 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 7. ThËt xøng ®¸ng.")

	elseif (Name == "") then	 --- top 8

for i = 1, 7 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 8. ThËt xøng ®¸ng.")

	elseif (Name == "") then	 --- top 9

for i = 1, 6 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 9. ThËt xøng ®¸ng.")

	elseif (Name == "") then	 --- top 10

for i = 1, 5 do
--AddStackItem(100,4,417,1,1,0,0,0)
end
SetTask(506,GetTask(506)+1)
Talk(1,"","Chóc mõng b¹n nhËn ®­îc phÇn th­ëng ®ua tãp cao thñ vÞ thø 10. ThËt xøng ®¸ng.")

	else
		Talk(1,"","B¹n kh«ng cã <bclr=red>Tãp<bclr>. Nªn kh«ng nhËn ®­îc <bclr=pink>PhÇn th­ëng<bclr> Chóc b¹n ch¬i game <bclr=violet>Vui VÎ<bclr> vµ gÆp thËt nhiÒu <bclr=violet>May M¾n<bclr>.")
	end
end

DinhQuoc =
{
--	[1] = {ValItem = {0,159}, NameItem = "Hoµng Kim - §Þnh Quèc Thanh Sa Tr­êng Sam",},
--	[2] = {ValItem = {0,160}, NameItem = "Hoµng Kim - §Þnh Quèc ¤ Sa Ph¸t Qu¸n",},
--	[3] = {ValItem = {0,161}, NameItem = "Hoµng Kim - §Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",},
--	[4] = {ValItem = {0,162}, NameItem = "Hoµng Kim - §Þnh Quèc Tö §»ng Hé uyÓn",},
--	[5] = {ValItem = {0,163}, NameItem = "Hoµng Kim - §Þnh Quèc Ng©n Tµm Yªu ®¸i",},
}

AnBangMini =
{
--	[1] = {ValItem = {0,216}, NameItem = "An Bang B¨ng Tinh Th¹ch H¹ng Liªn",},
	[2] = {ValItem = {0,217}, NameItem = "An Bang Cóc Hoa Th¹ch ChØ Hoµn",},
	[3] = {ValItem = {0,218}, NameItem = "An Bang §iÒn Hoµng Th¹ch Ngäc Béi",},
	[4] = {ValItem = {0,219}, NameItem = "An Bang Kª HuyÕt Th¹ch Giíi ChØ",},
}

HiepCot =
{
	[1] = {ValItem = {0,186}, NameItem = "HiÖp Cèt ThiÕt HuyÕt Sam",},
	[2] = {ValItem = {0,187}, NameItem = "HiÖp Cèt §a T×nh Hoµn",},
	[3] = {ValItem = {0,188}, NameItem = "HiÖp Cèt §an T©m Giíi",},
	[4] = {ValItem = {0,189}, NameItem = "HiÖp Cèt T×nh ý KÕt",},
}

ChieuDa =
{
	[1] = {ValItem = {0,10,5,5,0,0}, NameItem = "Chiªu d¹ ngäc s­ tö",},
}
