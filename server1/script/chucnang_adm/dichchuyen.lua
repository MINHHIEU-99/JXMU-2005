function dichuyen()
    local szTitle =  "Xin ch�o <color=red>" .. GetName() .. "<color>,Nh�ng ch�c n�ng b�n d��i c� th� h� tr� b�n."
    local tbOpt = {
	{"ADM Move=>CTC...",vitri_congthanh},
	{"D�ch Chuy�n ��n �i�m Boss",duychuyenbosss},


}
CreateNewSayEx(szTitle, tbOpt)
-- 	--PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,1)
return 1;
end
