
function main()
    dofile("server1/script/global/mrt/item/baoruongdoxanhver003.lua")

    XanhNuocBienV3()

end
-- chia ra �� sau n�y c� c�n g�i ri�ng v�o l�nh b�i ho�c npc th� c� th� l�y h�m t�t h�n 
function XanhNuocBienV3()
    i = random(1,10)
    local masotrangbi, loaitrangbi = 0, 0
    if i == 1 then --vu khi t�m g�n
        loaitrangbi = 0
        masotrangbi = random(0, 5)
    elseif i == 2 then -- �o gi�p
        loaitrangbi = 2
        masotrangbi = random(0, 28)
    elseif i == 3 then -- m� c�i
        loaitrangbi = 7
        masotrangbi = random(0, 13)
    elseif i == 4 then -- gi�y
        masotrangbi = random(0,3)
        loaitrangbi = 5
    elseif i == 5 then	-- �ai lung
        masotrangbi = random(0,1)
        loaitrangbi = 6
    elseif i == 6 then -- Bao tay
        masotrangbi = random(0,1)
        loaitrangbi = 8
    elseif i == 7 then --v� kh� t�m xa
        masotrangbi = random(0,2)
        loaitrangbi = 1
    elseif i == 8 then -- Ng�c B�i
        masotrangbi = random(0,1)
        loaitrangbi = 9
    elseif i == 9 then -- D�y Chuy�n
        masotrangbi = random(0,1)
        loaitrangbi = 4
    elseif i == 10 then -- Nh�n
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

    
--     -- L�u tr� c�c gi� tr� �� ch�n
--     local chosenValues = {}
    
--     -- L�y gi� tr� ng�u nhi�n cho m�i d�ng
--     for i = 1, 3 do
--         local randomValue = getRandomValue(chosenValues)
--         table.insert(chosenValues, randomValue)
--         Msg2Player("Random value for line " .. i .. ": " .. randomValue)
--     end
    

-- end
-- function getRandomValue(excludeValues)
--     local possibleValues = {}
    
--     -- Th�m c�c gi� tr� t� c�c kho�ng v�o danh s�ch
--     for i = 1, 10 do table.insert(possibleValues, i) end
--     for i = 50, 60 do table.insert(possibleValues, i) end
--     for i = 210, 220 do table.insert(possibleValues, i) end

--     -- Lo�i b� c�c gi� tr� �� ch�n
--     for _, value in ipairs(excludeValues) do
--         for i = #possibleValues, 1, -1 do
--             if possibleValues[i] == value then
--                 table.remove(possibleValues, i)
--                 break
--             end
--         end
--     end

--     -- Ch�n ng�u nhi�n m�t gi� tr� t� danh s�ch c�n l�i
--     return possibleValues[random(#possibleValues)]
end

--============================================================================================
-- add v�t ph�m random ng�n g�n v� s�c t�ch
-- t�o b�i : hoangdevJXMU
-- ng�y t�o : 06/10/2023
-- Th�ng tin h�m : AddItem(a,b, c, d, e, f, g)
-- AddItem()
-- a = thu�c t�nh �� xanh = 0, �� potion.txt 1 , �� questkey.txt 4 , th� ��a ph� = 5
-- b = loaitrangbi t� 0 ��n 9 t��ng �ng v� kh� , gi�y , nh�n ...
-- c = masotrangbi l� v� d� trong v� kh� th� c� �ao , n� , phi ti�u , ki�m , ��c bi�t nh�n == 0
-- d = c�p �� trang b� (1, 10) ,
-- e = ng� h�nh (0, 4), kim m�c th�y h�a th�
-- f = t� l� may m�n kho�ng 200 l� �n nh�t, c� th� l�n 300 s� l�m h�n , 10000 s� ch� ra �� 3 d�ng , v� 0 s� ra �� tr�ng
-- g = t� l� gi�i h�n c�a c�p �� thu�c t�nh 10 =  c� th� m� ra �� max opt  , 11 s� ra �� tr�ng , 9 th� = t�i da l� thu�c t�nh c�p 9


--=========================B�n Quy�n Thu�c JXMU.VN============================================
