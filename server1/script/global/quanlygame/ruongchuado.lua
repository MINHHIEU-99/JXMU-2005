-------------------------------- THU VIEN TONG -------------------------------------
IL("DICEITEM")
IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\item\\ib\\shenxingfu.lua");
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\g7vn\\g7quanly.lua")
Include("\\script\\global\\quanlygame\\sukien\\vantieubanghoi\\vantieubanghoi.lua")
Include("\\script\\global\\quanlygame\\sukien\\sevenday\\trongbanghoi\\trongbanghoi.lua")
Include("\\script\\missions\\challengeoftime\\npc_death.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
--Include("\\script\\global\\quanlygame\\sukien\\hanngudot\\boss.lua")
Include("\\script\\global\\tieungao\\quanlygame.lua")

function main()
for i = 839,893 do
ConsumeEquiproomItem(10, 0,11, i,-1)
end
SetFightState(0)
local matna1 = CalcItemCount(3,0,11,839,1) + 
CalcItemCount(3,0,11,840,1) + 
CalcItemCount(3,0,11,841,1) + 
CalcItemCount(3,0,11,842,1) + 
CalcItemCount(3,0,11,843,1) + 
CalcItemCount(3,0,11,844,1) + 
CalcItemCount(3,0,11,845,1) + 
CalcItemCount(3,0,11,846,1) + 
CalcItemCount(3,0,11,847,1) + 
CalcItemCount(3,0,11,848,1) + 
CalcItemCount(3,0,11,849,1) + 
CalcItemCount(3,0,11,850,1) + 
CalcItemCount(3,0,11,851,1) + 
CalcItemCount(3,0,11,852,1) + 
CalcItemCount(3,0,11,853,1) + 
CalcItemCount(3,0,11,854,1) + 
CalcItemCount(3,0,11,855,1) + 
CalcItemCount(3,0,11,856,1) + 
CalcItemCount(3,0,11,857,1) + 
CalcItemCount(3,0,11,858,1) + 
CalcItemCount(3,0,11,859,1) + 
CalcItemCount(3,0,11,860,1) + 
CalcItemCount(3,0,11,861,1) + 
CalcItemCount(3,0,11,862,1) + 
CalcItemCount(3,0,11,863,1) + 
CalcItemCount(3,0,11,864,1) + 
CalcItemCount(3,0,11,865,1) + 
CalcItemCount(3,0,11,866,1) + 
CalcItemCount(3,0,11,867,1) + 
CalcItemCount(3,0,11,868,1) + 
CalcItemCount(3,0,11,869,1) + 
CalcItemCount(3,0,11,870,1) + 
CalcItemCount(3,0,11,871,1) + 
CalcItemCount(3,0,11,872,1) + 
CalcItemCount(3,0,11,873,1) + 
CalcItemCount(3,0,11,874,1) + 
CalcItemCount(3,0,11,875,1) + 
CalcItemCount(3,0,11,876,1) + 
CalcItemCount(3,0,11,877,1) + 
CalcItemCount(3,0,11,878,1) + 
CalcItemCount(3,0,11,879,1) + 
CalcItemCount(3,0,11,880,1) + 
CalcItemCount(3,0,11,881,1) + 
CalcItemCount(3,0,11,882,1) + 
CalcItemCount(3,0,11,883,1) + 
CalcItemCount(3,0,11,884,1) + 
CalcItemCount(3,0,11,885,1) + 
CalcItemCount(3,0,11,886,1) + 
CalcItemCount(3,0,11,887,1) + 
CalcItemCount(3,0,11,888,1) + 
CalcItemCount(3,0,11,889,1) + 
CalcItemCount(3,0,11,890,1) + 
CalcItemCount(3,0,11,891,1) + 
CalcItemCount(3,0,11,892,1) + 
CalcItemCount(3,0,11,893,1)

local matna2 = CalcItemCount(4,0,11,839,1) + 
CalcItemCount(4,0,11,840,1) + 
CalcItemCount(4,0,11,841,1) + 
CalcItemCount(4,0,11,842,1) + 
CalcItemCount(4,0,11,843,1) + 
CalcItemCount(4,0,11,844,1) + 
CalcItemCount(4,0,11,845,1) + 
CalcItemCount(4,0,11,846,1) + 
CalcItemCount(4,0,11,847,1) + 
CalcItemCount(4,0,11,848,1) + 
CalcItemCount(4,0,11,849,1) + 
CalcItemCount(4,0,11,850,1) + 
CalcItemCount(4,0,11,851,1) + 
CalcItemCount(4,0,11,852,1) + 
CalcItemCount(4,0,11,853,1) + 
CalcItemCount(4,0,11,854,1) + 
CalcItemCount(4,0,11,855,1) + 
CalcItemCount(4,0,11,856,1) + 
CalcItemCount(4,0,11,857,1) + 
CalcItemCount(4,0,11,858,1) + 
CalcItemCount(4,0,11,859,1) + 
CalcItemCount(4,0,11,860,1) + 
CalcItemCount(4,0,11,861,1) + 
CalcItemCount(4,0,11,862,1) + 
CalcItemCount(4,0,11,863,1) + 
CalcItemCount(4,0,11,864,1) + 
CalcItemCount(4,0,11,865,1) + 
CalcItemCount(4,0,11,866,1) + 
CalcItemCount(4,0,11,867,1) + 
CalcItemCount(4,0,11,868,1) + 
CalcItemCount(4,0,11,869,1) + 
CalcItemCount(4,0,11,870,1) + 
CalcItemCount(4,0,11,871,1) + 
CalcItemCount(4,0,11,872,1) + 
CalcItemCount(4,0,11,873,1) + 
CalcItemCount(4,0,11,874,1) + 
CalcItemCount(4,0,11,875,1) + 
CalcItemCount(4,0,11,876,1) + 
CalcItemCount(4,0,11,877,1) + 
CalcItemCount(4,0,11,878,1) + 
CalcItemCount(4,0,11,879,1) + 
CalcItemCount(4,0,11,880,1) + 
CalcItemCount(4,0,11,881,1) + 
CalcItemCount(4,0,11,882,1) + 
CalcItemCount(4,0,11,883,1) + 
CalcItemCount(4,0,11,884,1) + 
CalcItemCount(4,0,11,885,1) + 
CalcItemCount(4,0,11,886,1) + 
CalcItemCount(4,0,11,887,1) + 
CalcItemCount(4,0,11,888,1) + 
CalcItemCount(4,0,11,889,1) + 
CalcItemCount(4,0,11,890,1) + 
CalcItemCount(4,0,11,891,1) + 
CalcItemCount(4,0,11,892,1) + 
CalcItemCount(4,0,11,893,1)

local matna3 = CalcItemCount(9,0,11,839,1) + 
CalcItemCount(9,0,11,840,1) + 
CalcItemCount(9,0,11,841,1) + 
CalcItemCount(9,0,11,842,1) + 
CalcItemCount(9,0,11,843,1) + 
CalcItemCount(9,0,11,844,1) + 
CalcItemCount(9,0,11,845,1) + 
CalcItemCount(9,0,11,846,1) + 
CalcItemCount(9,0,11,847,1) + 
CalcItemCount(9,0,11,848,1) + 
CalcItemCount(9,0,11,849,1) + 
CalcItemCount(9,0,11,850,1) + 
CalcItemCount(9,0,11,851,1) + 
CalcItemCount(9,0,11,852,1) + 
CalcItemCount(9,0,11,853,1) + 
CalcItemCount(9,0,11,854,1) + 
CalcItemCount(9,0,11,855,1) + 
CalcItemCount(9,0,11,856,1) + 
CalcItemCount(9,0,11,857,1) + 
CalcItemCount(9,0,11,858,1) + 
CalcItemCount(9,0,11,859,1) + 
CalcItemCount(9,0,11,860,1) + 
CalcItemCount(9,0,11,861,1) + 
CalcItemCount(9,0,11,862,1) + 
CalcItemCount(9,0,11,863,1) + 
CalcItemCount(9,0,11,864,1) + 
CalcItemCount(9,0,11,865,1) + 
CalcItemCount(9,0,11,866,1) + 
CalcItemCount(9,0,11,867,1) + 
CalcItemCount(9,0,11,868,1) + 
CalcItemCount(9,0,11,869,1) + 
CalcItemCount(9,0,11,870,1) + 
CalcItemCount(9,0,11,871,1) + 
CalcItemCount(9,0,11,872,1) + 
CalcItemCount(9,0,11,873,1) + 
CalcItemCount(9,0,11,874,1) + 
CalcItemCount(9,0,11,875,1) + 
CalcItemCount(9,0,11,876,1) + 
CalcItemCount(9,0,11,877,1) + 
CalcItemCount(9,0,11,878,1) + 
CalcItemCount(9,0,11,879,1) + 
CalcItemCount(9,0,11,880,1) + 
CalcItemCount(9,0,11,881,1) + 
CalcItemCount(9,0,11,882,1) + 
CalcItemCount(9,0,11,883,1) + 
CalcItemCount(9,0,11,884,1) + 
CalcItemCount(9,0,11,885,1) + 
CalcItemCount(9,0,11,886,1) + 
CalcItemCount(9,0,11,887,1) + 
CalcItemCount(9,0,11,888,1) + 
CalcItemCount(9,0,11,889,1) + 
CalcItemCount(9,0,11,890,1) + 
CalcItemCount(9,0,11,891,1) + 
CalcItemCount(9,0,11,892,1) + 
CalcItemCount(9,0,11,893,1)

local matna4 = CalcItemCount(10,0,11,839,1) + 
CalcItemCount(10,0,11,840,1) + 
CalcItemCount(10,0,11,841,1) + 
CalcItemCount(10,0,11,842,1) + 
CalcItemCount(10,0,11,843,1) + 
CalcItemCount(10,0,11,844,1) + 
CalcItemCount(10,0,11,845,1) + 
CalcItemCount(10,0,11,846,1) + 
CalcItemCount(10,0,11,847,1) + 
CalcItemCount(10,0,11,848,1) + 
CalcItemCount(10,0,11,849,1) + 
CalcItemCount(10,0,11,850,1) + 
CalcItemCount(10,0,11,851,1) + 
CalcItemCount(10,0,11,852,1) + 
CalcItemCount(10,0,11,853,1) + 
CalcItemCount(10,0,11,854,1) + 
CalcItemCount(10,0,11,855,1) + 
CalcItemCount(10,0,11,856,1) + 
CalcItemCount(10,0,11,857,1) + 
CalcItemCount(10,0,11,858,1) + 
CalcItemCount(10,0,11,859,1) + 
CalcItemCount(10,0,11,860,1) + 
CalcItemCount(10,0,11,861,1) + 
CalcItemCount(10,0,11,862,1) + 
CalcItemCount(10,0,11,863,1) + 
CalcItemCount(10,0,11,864,1) + 
CalcItemCount(10,0,11,865,1) + 
CalcItemCount(10,0,11,866,1) + 
CalcItemCount(10,0,11,867,1) + 
CalcItemCount(10,0,11,868,1) + 
CalcItemCount(10,0,11,869,1) + 
CalcItemCount(10,0,11,870,1) + 
CalcItemCount(10,0,11,871,1) + 
CalcItemCount(10,0,11,872,1) + 
CalcItemCount(10,0,11,873,1) + 
CalcItemCount(10,0,11,874,1) + 
CalcItemCount(10,0,11,875,1) + 
CalcItemCount(10,0,11,876,1) + 
CalcItemCount(10,0,11,877,1) + 
CalcItemCount(10,0,11,878,1) + 
CalcItemCount(10,0,11,879,1) + 
CalcItemCount(10,0,11,880,1) + 
CalcItemCount(10,0,11,881,1) + 
CalcItemCount(10,0,11,882,1) + 
CalcItemCount(10,0,11,883,1) + 
CalcItemCount(10,0,11,884,1) + 
CalcItemCount(10,0,11,885,1) + 
CalcItemCount(10,0,11,886,1) + 
CalcItemCount(10,0,11,887,1) + 
CalcItemCount(10,0,11,888,1) + 
CalcItemCount(10,0,11,889,1) + 
CalcItemCount(10,0,11,890,1) + 
CalcItemCount(10,0,11,891,1) + 
CalcItemCount(10,0,11,892,1) + 
CalcItemCount(10,0,11,893,1)

local matna = matna1 + matna2 + matna3 + matna4


if  matna == 0 then
NewWorld( 53, 1622, 3181)
--NewWorld(382,1633,3159)
else
OpenBox();
end
end