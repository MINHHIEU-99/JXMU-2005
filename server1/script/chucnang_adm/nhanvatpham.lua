function vatpham()

	local szTitle =  "Xin chµo <color=red>" .. GetName() .. "<color>,Nh÷ng chøc n¨ng bªn d­íi cã thÓ hç trî b¹n."
    local tbOpt = {
	{"NhËn c¸c vËt phÈm Ðp trang bÞ TÝm", NhanPhiPhong},
	{"nhËn B¶o R­¬ng §éng S¸t", dongsatbaoruong},
	{"Magic",TaoItem},
	{"trë l¹i",main},
	{ "Tho¸t" },
}
CreateNewSayEx(szTitle, tbOpt)
-- 	--PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,1)
return 1;
end

function dongsatbaoruong()
	return  AddItem(6,1,4690,1,0,0)
	-- local nItemIndex = AddItem(6,1,4690,1,0,0)
	-- SyncItem(nItemIndex)

end


function NhanPhiPhong()
    if CalcFreeItemCellCount()<10 then 
       Say("Hµnh trang ko ®ñ 10 « trèng")
       return
    end
   
   AddItem(6,1,149,1,0,0,0) --hien 1
   AddItem(6,1,150,1,0,0,0) --an 1 kim
   AddItem(6,1,150,1,1,0,0) --an 1 moc
   AddItem(6,1,150,1,2,0,0) --an 1 thuy
   AddItem(6,1,150,1,3,0,0) --an 1 hoa
   AddItem(6,1,150,1,4,0,0) --an 1 tho
   
   AddItem(6,1,151,1,0,0,0) --hien 2
   AddItem(6,1,152,1,0,0,0) 
   AddItem(6,1,152,1,1,0,0) 
   AddItem(6,1,152,1,2,0,0)
   AddItem(6,1,152,1,3,0,0)
   AddItem(6,1,152,1,4,0,0)
   
   AddItem(6,1,153,1,0,0,0) --hien 3
   AddItem(6,1,154,1,0,0,0) 
   AddItem(6,1,154,1,1,0,0) 
   AddItem(6,1,154,1,2,0,0) 	
   AddItem(6,1,154,1,3,0,0) 	
   AddItem(6,1,154,1,4,0,0) 	
   tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={4,238,1,1},nCount=5},}, "test", 1);
   tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={4,239,1,1},nCount=5},}, "test", 1);
   tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={4,240,1,1},nCount=5},}, "test", 1);
   for i=1,10 do
                   tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,i,0},nCount=10},}, "test", 1);
               end
   --	 logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy nguyªn liÖu ®å tÝm",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))			
   end

   
function TaoItem() 
    g_AskClientStringEx("",1,9000,"NhËp Vµo Item Code:",{TaoItemID}) 
    end
    
    function TaoItemID(szItem)
        local szICode = lib:Split(szItem, ",");
        local n = getn(szICode);
        local itclass = tonumber(szICode[1]); 
        local ittype = tonumber(szICode[2]); 
        if szICode[2]==nil then
            ittype=1
        end
        --AddItem(6,1,itclass,1,0,0,0);
        tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={6,1,itclass,1,0,0},nCount=ittype},}, "test", 1);
    logplayer("dulieu/gmlayitem.txt",format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] lÊy "..ittype.." item magic "..itclass.."",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
    end
    

function NhanTinVatMonPhai()
    local Index = AddItem(6,1,2340,1,0,0) SyncItem(Index)
    end
    function NhanTinVatMonPhai_d(num)
    local Index = AddItem(6,1,4377,1,0,0) SyncItem(Index)
    end