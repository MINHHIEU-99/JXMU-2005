IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()

if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng",0);
		return 1
end

tbAwardTemplet:GiveAwardByList({{szName="ti�n ��ng",tbProp={4,417,1,1,0},nCount=1,},}, "test", 1);
logplayer("dulieu/tuitien.txt",format("Th�i gian	%s	T�i kho�n	[ %s]	Nh�n v�t	[%s ] ",GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

end



function logplayer(zFile,szMsg)
  local handle = openfile(zFile,"a")
  write(handle,format("%s\n",szMsg));
  closefile(handle);
 end
