Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")


function main()
dofile("script/global/g7vn/item/ruongcode.lua")


	local tbAwardgift = {
			
		{szName="Ngua Random",tbProp={0,random(3963,3966)},nQuality=1,nCount=1,nExpiredTime=10*24*60},
		{szName="Ng� H�nh �n",tbProp={0,3953},nQuality=1,nCount=1,nExpiredTime=10*24*60},
		{szName="Xuy�n Y Ph� Gi�p",tbProp={0,3991},nQuality=1,nCount=1,nExpiredTime=10*24*60},

		
		{szName="T�ng Kim Phi T�c ho�n",tbProp={6,1,190,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
		{szName="L�nh b�i",tbProp={6,1,157,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
		{szName="Chi�n C�",tbProp={6,1,156,1,0,0},nCount = 50,nExpiredTime=10*24*60,nBindState = -2},
		
				
		{szName="M�t N� Chi�n Tr��ng Th�nh Gi�",tbProp={0,11,806,1,0,0},nCount=1,nExpiredTime=10*24*60},	
		{szName="100 Xu kh�a",tbProp={6,1,4893,1,0,0},nCount=20,nBindState = -2},
		
	}
		if CalcFreeItemCellCount() >= 20 then
		
				tbAwardTemplet:GiveAwardByList(tbAwardgift,"Ph�n Th��ng GiftCode")
				Msg2Player("Nh�n Th��ng <color=yellow>GIFTCODE <color> Th�nh C�ng")
			else Say("Kh�ng �� 20 � Tr�ng")
			return 1;
			end

end
