Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")


function main()
dofile("script/global/g7vn/item/ruongcode.lua")


	local tbAwardgift = {
			
		{szName="Ngua Random",tbProp={0,random(3963,3966)},nQuality=1,nCount=1,nExpiredTime=10*24*60},
		{szName="Ngò Hµnh Ên",tbProp={0,3953},nQuality=1,nCount=1,nExpiredTime=10*24*60},
		{szName="Xuyªn Y Ph¸ Gi¸p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=10*24*60},

		
		{szName="Tèng Kim Phi Tèc hoµn",tbProp={6,1,190,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
		{szName="LÖnh bµi",tbProp={6,1,157,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
		{szName="ChiÕn Cæ",tbProp={6,1,156,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
		
				
		{szName="MÆt N¹ ChiÕn Tr­êng Th¸nh Gi¶",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=10*24*60},	
		{szName="100 Xu khãa",tbProp={6,1,4893,1,0,0},nCount=20,nBindState = -2},
		
	}
		if CalcFreeItemCellCount() >= 20 then
		
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"PhÇn Th­ëng GiftCode")
				Msg2Player("NhËn Th­ëng <color=yellow>GIFTCODE <color> Thµnh C«ng")
			else Say("Kh«ng §ñ 20 ¤ Trèng")
			return 1;
			end

end
