--Create by mengfan ,2004-9-14
--¹±ÔÂÜ½ÈØ
--×÷ÓÃ£ºÖĞÇï¸ß¼¶ÔÂ±ıÖ®Ò»£¬×÷ÓÃÍ¬Ï´Ëè¾­£¬80¼¶ÒÔÉÏÍæ¼ÒÊ¹ÓÃ£¬Ôö¼Ó5µãÇ±ÄÜµã¡£
--»ñµÃÌõ¼ş£º¼¯Æë»ñµÃ´ËÎïÆ·ËùĞèÒªµÄËùÓĞµ¥×Ö¡£
--ÏŞÖÆËµÃ÷£º¸ÃÎïÆ·ÒªÇóÈËÎïµÈ¼¶80¼¶Ê±Ê¹ÓÃÓĞĞ§£¬Ã¿ÈË×î¶àÊ¹ÓÃ3´Î¡£
--ÈÎÎñ±äÁ¿701µÍ4Î»±íÊ¾Ê¹ÓÃ¸ÃÎïÆ·µÄ´ÎÊı



function main(sel)
	if ( GetLevel() <= 120 ) then
		Say("§¼ng cÊp yªu cÇu tõ 120 míi cã thÓ sö dông !",0);
		return 1;
	end
	if GetTask(5090) >= 10 then
		Say("§¹i hiÖp ®· sö dông qu¸ nhiÒu mËt tŞch råi, khæng thÓ sö dông thªm !",0);
		return 1
	end
	AddProp(20) 
	SetTask(5090,GetTask(5090)+1)
	Msg2Player("Chóc mõng b¹n nhËn ®­îc 20 ®iÓm tiÒm n¨ng.")
	return 0
end	
