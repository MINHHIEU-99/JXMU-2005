Include("\\script\\gmscript.lua")
Include("\\script\\global\\topall.lua")
--Include("\\script\\global\\tieungao\\hotroxanh.lua")
Include("\\script\\global\\tieungao\\dotim.lua")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\lib\\file.lua");
Include("\\script\\lib\\string.lua");
Include("\\script\\global\\forbidmap.lua");
Include("\\script\\missions\\sevencity\\war.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\item\\ib\\headshenxingfu.lua")
Include("\\script\\global\\tieungao\\g7trieuhoihuynhde.lua")
Include("\\script\\global\\g7vn\\g7configall.lua")
Include("\\script\\global\\g7vn\\g7quanly.lua")
IncludeLib("LEAGUE")
Include("\\script\\global\\g7vn\\resetbox.lua")
Include("\\script\\activitysys\\playerfunlib.lua")


Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
IL("DICEITEM")
Include("\\script\\global\\fuyuan.lua")

Include("\\script\\vng_lib\\files_lib.lua")


function main(nItemIdx)
if GetLevel() < 125 then
n = 125 - GetLevel()
ST_LevelUp(n)
else
Say("CÊp cao vËy cßn sö dông lµm g× ???")
return 1
end
end