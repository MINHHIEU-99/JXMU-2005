IncludeLib("SETTING")
IncludeLib("ITEM");
IncludeLib("FILESYS")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\common.lua")
Include("\\script\\lib\\log.lua")
--Include("\\script\\global\\mrchubo\\mrchubo_lib.lua")

mrchubo_property_list = {
    [1] = {8, 10, 18, 20, 28, 30, 38, 40, 128, 130, 138, 140, 218, 220, 228, 230, 238, 240, 248, 250, 258, 260, 438, 440, 450, 460, 470, 480, 150, 148, 158, 160, 168, 170, 288, 290, 298, 300, 308, 310, 318, 320, 328, 330, 338, 340, 358, 360, 378, 380},
    [2] = {80, 90, 180, 270, 280, 370, 150, 148, 158, 160, 168, 170, 288, 290, 298, 300, 308, 310, 318, 320, 328, 330, 338, 340, 358, 360, 378, 380},
    [3] = {180, 270, 280, 370, 150, 148, 158, 160, 168, 170, 288, 290, 298, 300, 308, 310, 318, 320, 328, 330, 338, 340, 358, 360, 378, 380},
    [4] = {70, 180, 270, 280, 370, 150, 148, 158, 160, 168, 170, 288, 290, 298, 300, 308, 310, 318, 320, 328, 330, 338, 340, 358, 360, 378, 380},
    [5] = {180, 270, 280, 370, 150, 148, 158, 160, 168, 170, 288, 290, 298, 300, 308, 310, 318, 320, 328, 330, 338, 340, 358, 360, 378, 380},
    [6] = {180, 270, 280, 370, 150, 148, 158, 160, 168, 170, 288, 290, 298, 300, 308, 310, 318, 320, 328, 330, 338, 340, 358, 360, 378, 380},
    [7] = {180, 270, 280, 370, 150, 148, 158, 160, 168, 170, 288, 290, 298, 300, 308, 310, 318, 320, 328, 330, 338, 340, 358, 360, 378, 380},
    [8] = {120, 210, 350, 370, 150, 148, 158, 160, 168, 170, 288, 290, 298, 300, 308, 310, 318, 320, 328, 330, 338, 340, 358, 360, 378, 380},
    [9] = {110, 210, 350, 370, 150, 148, 158, 160, 168, 170, 288, 290, 298, 300, 308, 310, 318, 320, 328, 330, 338, 340, 358, 360, 378, 380}
 }
 
 function getRandomItemId(nList)
     local randomIndex = random(1,getn(nList))
     local itemId = nList[randomIndex]
     return itemId
 end
 
function main()
    dofile("\\script\\global\\mrt\\item\\baoruongdotim.lua")
    TimMongMo()
    return 1
end

function TimMongMo()
    i = random(0, 9)
    local masotrangbi, loaitrangbi = 0, 0
    local itemId1,itemId2,itemId3,itemId4,itemId5,itemId6 = 0, 0, 0, 0, 0, 0
        if i == 0  then
             itemId1 = getRandomItemId(mrchubo_property_list[1])
             itemId2 = getRandomItemId(mrchubo_property_list[1])
             itemId3 = getRandomItemId(mrchubo_property_list[1])
             itemId4 = getRandomItemId(mrchubo_property_list[1])
             itemId5 = getRandomItemId(mrchubo_property_list[1])
             itemId6 = getRandomItemId(mrchubo_property_list[1])
            loaitrangbi = 0
            masotrangbi = random(0, 5)
        elseif i == 1 then
             itemId1 = getRandomItemId(mrchubo_property_list[2])
             itemId2 = getRandomItemId(mrchubo_property_list[2])
             itemId3 = getRandomItemId(mrchubo_property_list[2])
             itemId4 = getRandomItemId(mrchubo_property_list[2])
             itemId5 = getRandomItemId(mrchubo_property_list[2])
             itemId6 = getRandomItemId(mrchubo_property_list[2])
            loaitrangbi = 2
            masotrangbi = random(0, 28)			
        elseif i == 2 then
             itemId1 = getRandomItemId(mrchubo_property_list[3])
             itemId2 = getRandomItemId(mrchubo_property_list[3])
             itemId3 = getRandomItemId(mrchubo_property_list[3])
             itemId4 = getRandomItemId(mrchubo_property_list[3])
             itemId5 = getRandomItemId(mrchubo_property_list[3])
             itemId6 = getRandomItemId(mrchubo_property_list[3])
            loaitrangbi = 7
            masotrangbi = random(0, 13)

        elseif i == 3 then
             itemId1 = getRandomItemId(mrchubo_property_list[4])
             itemId2 = getRandomItemId(mrchubo_property_list[4])
             itemId3 = getRandomItemId(mrchubo_property_list[4])
             itemId4 = getRandomItemId(mrchubo_property_list[4])
             itemId5 = getRandomItemId(mrchubo_property_list[4])
             itemId6 = getRandomItemId(mrchubo_property_list[4])
            loaitrangbi = 5
            masotrangbi = random(0,3)

        elseif i == 4 then
             itemId1 = getRandomItemId(mrchubo_property_list[5])
             itemId2 = getRandomItemId(mrchubo_property_list[5])
             itemId3 = getRandomItemId(mrchubo_property_list[5])
             itemId4 = getRandomItemId(mrchubo_property_list[5])
             itemId5 = getRandomItemId(mrchubo_property_list[5])
             itemId6 = getRandomItemId(mrchubo_property_list[5])
            loaitrangbi = 6
            masotrangbi = random(0,1)

        elseif i == 5 then
             itemId1 = getRandomItemId(mrchubo_property_list[6])
             itemId2 = getRandomItemId(mrchubo_property_list[6])
             itemId3 = getRandomItemId(mrchubo_property_list[6])
             itemId4 = getRandomItemId(mrchubo_property_list[6])
             itemId5 = getRandomItemId(mrchubo_property_list[6])
             itemId6 = getRandomItemId(mrchubo_property_list[6])
            loaitrangbi = 8
            masotrangbi = random(0,1)

        elseif i == 6 then
             itemId1 = getRandomItemId(mrchubo_property_list[1])
             itemId2 = getRandomItemId(mrchubo_property_list[1])
             itemId3 = getRandomItemId(mrchubo_property_list[1])
             itemId4 = getRandomItemId(mrchubo_property_list[1])
             itemId5 = getRandomItemId(mrchubo_property_list[1])
             itemId6 = getRandomItemId(mrchubo_property_list[1])
            loaitrangbi = 1
            masotrangbi = random(0,2)

        elseif i == 7 then
             itemId1 = getRandomItemId(mrchubo_property_list[7])
             itemId2 = getRandomItemId(mrchubo_property_list[7])
             itemId3 = getRandomItemId(mrchubo_property_list[7])
             itemId4 = getRandomItemId(mrchubo_property_list[7])
             itemId5 = getRandomItemId(mrchubo_property_list[7])
             itemId6 = getRandomItemId(mrchubo_property_list[7])
            loaitrangbi = 9
            masotrangbi = random(0,1)

        elseif i == 8 then
             itemId1 = getRandomItemId(mrchubo_property_list[8])
             itemId2 = getRandomItemId(mrchubo_property_list[8])
             itemId3 = getRandomItemId(mrchubo_property_list[8])
             itemId4 = getRandomItemId(mrchubo_property_list[8])
             itemId5 = getRandomItemId(mrchubo_property_list[8])
             itemId6 = getRandomItemId(mrchubo_property_list[8])
            loaitrangbi = 4
            masotrangbi = random(0,1)

        elseif i == 9 then
             itemId1 = getRandomItemId(mrchubo_property_list[9])
             itemId2 = getRandomItemId(mrchubo_property_list[9])
             itemId3 = getRandomItemId(mrchubo_property_list[9])
             itemId4 = getRandomItemId(mrchubo_property_list[9])
             itemId5 = getRandomItemId(mrchubo_property_list[9])
             itemId6 = getRandomItemId(mrchubo_property_list[9])
            loaitrangbi = 3
            masotrangbi = 0
        end
    AddQualityItem(2,0,loaitrangbi, masotrangbi, 10, random(0, 4), 10,
    itemId1, itemId2, itemId3, itemId4, itemId5, itemId6)
end