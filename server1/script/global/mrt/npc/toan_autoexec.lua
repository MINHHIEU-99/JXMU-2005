
npctoan = {
    -- {205,78,1574,3240,"/script/gm_tool/thangtaolao.lua","NPC Tµo Lao "},
    -- {187,53,1624,3185,"/script/gm_tool/npc_monphai.lua","NPC M«n Ph¸i "},
--	{87,20,3545,6213,"/script/gm_tool/g7hotrotanthu.lua"," Hç trî t©n thñ "}, 
	{87,53,1618,3179,"/script/gm_tool/g7hotrotanthu.lua"," Hç trî t©n thñ "}, 
--	{87,121,2010,4494,"/script/gm_tool/g7hotrotanthu.lua"," Hç trî t©n thñ "}, 
--	{87,99,1625,3184,"/script/gm_tool/g7hotrotanthu.lua"," Hç trî t©n thñ "}, 
--	{87,100,1611,3180,"/script/gm_tool/g7hotrotanthu.lua"," Hç trî t©n thñ "}, 
--	{87,101,1692,3130,"/script/gm_tool/g7hotrotanthu.lua"," Hç trî t©n thñ "}, 
--	{87,174,1639,3301,"/script/gm_tool/g7hotrotanthu.lua"," Hç trî t©n thñ "}, 
--	{87,153,1622,3232,"/script/gm_tool/g7hotrotanthu.lua"," Hç trî t©n thñ "},  
	{387,53,1622,3191,"/script/gm_tool/thorenthanbi.lua"," Phó ¤ng Hoµng Kim  "},  
	{187,53,1623,3185,"/script/gm_tool/npc_monphai.lua"," NPC M«n Ph¸i "},  


	


}

















function add_toannpc(Tab)
	for i = 1 , getn(Tab) do 
		local itemlist = Tab[i]
		SId = SubWorldID2Idx(itemlist[2]);
		if (SId >= 0) then
			
			npcindex = AddNpc(itemlist[1], 1, SId, itemlist[3] * 32, itemlist[4] * 32, 1, itemlist[6]);
			SetNpcScript(npcindex, itemlist[5]);
		else
			if itemlist[1] == 1454 then
				print(itemlist[6], itemlist[2])
			end
		end;
	end	
end;