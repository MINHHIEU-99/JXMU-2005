
Include("\\script\\lib\\awardtemplet.lua");
nEnd = 20190615

tbhonganh =
	{
              		[1]	={szName = "H�ng �nh Th�m Vi�n Uy�n", tbProp = {0, 204,}, nQuality = 1, nCount = 1, },
 		[2]	={szName = "H�ng �nh Ki�m B�i", tbProp = {0,205,}, nQuality = 1, nCount = 1,   },
             		[3]	={szName = "H�ng �nh M�c T�c", tbProp = {0, 206,}, nQuality = 1, nCount = 1, },
 		[4]	={szName = "H�ng �nh T� Chi�u", tbProp = {0,207,}, nQuality = 1, nCount = 1,   },
	}

function main(nItemIndex)
	if ( CalcFreeItemCellCount() < 1 ) then
		Say("H�nh trang kh�ng �� ch�, xin h�y �� tr�ng ra �t nh�t 1 �.",0);
		return 1;
	end
		
	tbAwardTemplet:GiveAwardByList(tbhonganh, "lebaohonganh");
end



