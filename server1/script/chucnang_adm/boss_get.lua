--------------------------------L�nh B�i Boss Ti�u------------------------------------------------------------------------------
function bosshk()
    local tab_Content =
    {
    "Nh�n L�nh B�i Boss Ti�u/bosstieu",
    "Nh�n L�nh B�i Boss ��i/bossdai",
    "Tr� L�i/hotro",
    "Th�i/no",
    }
    Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n !", getn(tab_Content), tab_Content)
    end
    -------------------------------------Boss Ti�u-------------------------------------------------------------------------------
    function bosstieu()
    for i =1,5 do
    AddItem(6,1,1022,0,0,0)
    Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=pink>1 <color> L�nh B�i Boss <color=yellow>Ho�ng Kim <color>")
    end
    end
    ----------------------------------L�nh B�i-Boss ��i---------------------------------------------------------------------------
    function bossdai()
    local tab_Content =
    {
    "L�nh B�i Tr��ng Tuy�n/truongtuyen",
    "L�nh B�i Boss Kim Th� L��ng/kimthiluong",
    "L�nh B�i Boss M� Dung To�n/modungtoan",
    "Tr� L�i/bosshk",
    "Th�i/no",
    }
    Say("Xin ch�o <color=yellow>"..GetName().."<color>, H�y ch�n nh�ng g� m� b�n mu�n", getn(tab_Content), tab_Content)
    end
    -----------------------------------------Boss ��i------------------------------------------------------------------------------------------
    function truongtuyen()
    AddItem(6,1,3083,1,1,0,0)
    Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=pink>1 <color> L�nh B�i Boss <color=yellow>Tr��ng Tuy�n <color>")
    end
    
    function kimthiluong()
    AddItem(6,1,3084,1,1,0,0)
    Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=pink>1 <color> L�nh B�i Boss <color=yellow>Kim Th� L��ng <color>")
    end
    
    function modungtoan()
    AddItem(6,1,3085,1,1,0,0)
    Msg2Player("Ch�c M�ng <color=green>��i Hi�p <color> Nh�n ���c <color=pink>1 <color> L�nh B�i Boss <color=yellow>M� Dung To�n <color>")
    end