--------------------------------LÖnh Bµi Boss TiÓu------------------------------------------------------------------------------
function bosshk()
    local tab_Content =
    {
    "NhËn LÖnh Bµi Boss TiÓu/bosstieu",
    "NhËn LÖnh Bµi Boss §¹i/bossdai",
    "Trë L¹i/hotro",
    "Th«i/no",
    }
    Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn !", getn(tab_Content), tab_Content)
    end
    -------------------------------------Boss TiÓu-------------------------------------------------------------------------------
    function bosstieu()
    for i =1,5 do
    AddItem(6,1,1022,0,0,0)
    Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Hoµng Kim <color>")
    end
    end
    ----------------------------------LÖnh Bµi-Boss §¹i---------------------------------------------------------------------------
    function bossdai()
    local tab_Content =
    {
    "LÖnh Bµi Tr­¬ng Tuyªn/truongtuyen",
    "LÖnh Bµi Boss Kim ThÝ L­îng/kimthiluong",
    "LÖnh Bµi Boss Mé Dung Toµn/modungtoan",
    "Trë L¹i/bosshk",
    "Th«i/no",
    }
    Say("Xin chµo <color=yellow>"..GetName().."<color>, H·y chän nh÷ng g× mµ b¹n muèn", getn(tab_Content), tab_Content)
    end
    -----------------------------------------Boss §¹i------------------------------------------------------------------------------------------
    function truongtuyen()
    AddItem(6,1,3083,1,1,0,0)
    Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Tr­¬ng Tuyªn <color>")
    end
    
    function kimthiluong()
    AddItem(6,1,3084,1,1,0,0)
    Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Kim ThÝ L­îng <color>")
    end
    
    function modungtoan()
    AddItem(6,1,3085,1,1,0,0)
    Msg2Player("Chóc Mõng <color=green>§¹i HiÖp <color> NhËn §­îc <color=pink>1 <color> LÖnh Bµi Boss <color=yellow>Mé Dung Toµn <color>")
    end