IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()

if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng",0);
		return 1
end

tbAwardTemplet:GiveAwardByList({{szName="tiÒn ®ång",tbProp={4,417,1,1,0},nCount=1,},}, "test", 1);
logplayer("dulieu/tuitien.txt",format("Thêi gian	%s	Tµi kho¶n	[ %s]	Nh©n vËt	[%s ] ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end



function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
