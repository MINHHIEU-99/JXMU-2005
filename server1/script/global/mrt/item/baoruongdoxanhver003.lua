
function main()
    dofile("server1/script/global/mrt/item/baoruongdoxanhver003.lua")

    XanhNuocBienV3()

end
-- chia ra ®Ó sau nµy cã cÇn gäi riªng vµo lÖnh bµi hoÆc npc th× cã thÓ lÊy hµm tèt h¬n 
function XanhNuocBienV3()
    i = random(1,10)
    local masotrangbi, loaitrangbi = 0, 0
    if i == 1 then --vu khi tÇm gÇn
        loaitrangbi = 0
        masotrangbi = random(0, 5)
    elseif i == 2 then -- ¸o gi¸p
        loaitrangbi = 2
        masotrangbi = random(0, 28)
    elseif i == 3 then -- mò cèi
        loaitrangbi = 7
        masotrangbi = random(0, 13)
    elseif i == 4 then -- giµy
        masotrangbi = random(0,3)
        loaitrangbi = 5
    elseif i == 5 then	-- ®ai lung
        masotrangbi = random(0,1)
        loaitrangbi = 6
    elseif i == 6 then -- Bao tay
        masotrangbi = random(0,1)
        loaitrangbi = 8
    elseif i == 7 then --vò khÝ tÇm xa
        masotrangbi = random(0,2)
        loaitrangbi = 1
    elseif i == 8 then -- Ngäc Béi
        masotrangbi = random(0,1)
        loaitrangbi = 9
    elseif i == 9 then -- D©y ChuyÒn
        masotrangbi = random(0,1)
        loaitrangbi = 4
    elseif i == 10 then -- NhÉn
        masotrangbi = 0
        loaitrangbi = 3
    end
    AddItemEx(3,0,0,0,loaitrangbi, masotrangbi, 10, random(0, 4), 200,10)
    -- local abc = random(1,140)
    -- local cde = random(0, 4)
    -- local def = random(1,10)
    -- local ghi = random(1,480)
    -- AddItem(0,loaitrangbi, masotrangbi, 10, cde, 200,random(1,3))
    -- AddItem(0,loaitrangbi, masotrangbi, 10,cde, 200, def)
    -- AddItemEx(0,15788,1,0,loaitrangbi,masotrangbi, 10,cde,240,random(1,210),random(1,210),random(1,210),random(1,210),random(1,210),random(1,210)) --random(9,10),random(9,10),random(9,10),random(9,10),random(9,10),random(9,10))
    -- AddItemEx(4,0,0,0,loaitrangbi, masotrangbi, 10,cde, 200, def) --random(9,10),random(9,10),random(9,10),random(9,10),random(9,10),random(9,10))
    -- AddItemEx(4,0,1,0,abc,0, 0,0,0) --random(9,10),random(9,10),random(9,10),random(9,10),random(9,10),random(9,10))
    -- AddItemEx(4,0,2,0,loaitrangbi, masotrangbi, 10,cde, 200, ghi) --random(9,10),random(9,10),random(9,10),random(9,10),random(9,10),random(9,10))
    -- Msg2Player("loaitrangbi  \t"..loaitrangbi)
    -- Msg2Player("abc  \t"..abc)
    -- Msg2Player("masotrangbi  \t"..masotrangbi)
    -- Msg2Player("def  \t"..def)
    -- Msg2Player("cde  \t"..cde)
    -- Msg2Player("random  \t"..i)
    -- Msg2Player("ghi  \t"..ghi)

    
--     -- L­u tr÷ c¸c gi¸ trÞ ®· chän
--     local chosenValues = {}
    
--     -- LÊy gi¸ trÞ ngÉu nhiªn cho mçi dßng
--     for i = 1, 3 do
--         local randomValue = getRandomValue(chosenValues)
--         table.insert(chosenValues, randomValue)
--         Msg2Player("Random value for line " .. i .. ": " .. randomValue)
--     end
    

-- end
-- function getRandomValue(excludeValues)
--     local possibleValues = {}
    
--     -- Thªm c¸c gi¸ trÞ tõ c¸c kho¶ng vµo danh s¸ch
--     for i = 1, 10 do table.insert(possibleValues, i) end
--     for i = 50, 60 do table.insert(possibleValues, i) end
--     for i = 210, 220 do table.insert(possibleValues, i) end

--     -- Lo¹i bá c¸c gi¸ trÞ ®· chän
--     for _, value in ipairs(excludeValues) do
--         for i = #possibleValues, 1, -1 do
--             if possibleValues[i] == value then
--                 table.remove(possibleValues, i)
--                 break
--             end
--         end
--     end

--     -- Chän ngÉu nhiªn mét gi¸ trÞ tõ danh s¸ch cßn l¹i
--     return possibleValues[random(#possibleValues)]
end

--============================================================================================
-- add vËt phÈm random ng¾n gän vµ sóc tÝch
-- t¹o bëi : hoangdevJXMU
-- ngµy t¹o : 06/10/2023
-- Th«ng tin hµm : AddItem(a,b, c, d, e, f, g)
-- AddItem()
-- a = thuéc tÝnh ®å xanh = 0, ®å potion.txt 1 , ®å questkey.txt 4 , thæ ®Þa phï = 5
-- b = loaitrangbi tõ 0 ®Õn 9 t­¬ng øng vò khÝ , giµy , nhÉn ...
-- c = masotrangbi lµ vÝ dô trong vò khÝ th× cã ®ao , ná , phi tiªu , kiÕm , ®Æc biÖt nhÉn == 0
-- d = cÊp ®é trang bÞ (1, 10) ,
-- e = ngò hµnh (0, 4), kim méc thñy háa thæ
-- f = tØ lÖ may m¾n kho¶ng 200 lµ æn nhÊt, cã thÓ lªn 300 sÏ lëm h¬n , 10000 sÏ chØ ra ®å 3 dßng , vµ 0 sÏ ra ®å tr¾ng
-- g = tØ lÖ giíi h¹n cña cÊp ®é thuéc tÝnh 10 =  cã thÓ më ra ®å max opt  , 11 sÏ ra ®å tr¾ng , 9 th× = tèi da lµ thuéc tÝnh cÊp 9


--=========================B¶n QuyÒn Thuéc JXMU.VN============================================
