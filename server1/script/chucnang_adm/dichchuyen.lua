function dichuyen()
    local szTitle =  "Xin chµo <color=red>" .. GetName() .. "<color>,Nh˜ng ch¯c n®ng b™n d≠Ìi c„ th” hÁ trÓ bπn."
    local tbOpt = {
	{"ADM Move=>CTC...",vitri_congthanh},
	{"Dﬁch Chuy”n ß’n ßi”m Boss",duychuyenbosss},


}
CreateNewSayEx(szTitle, tbOpt)
-- 	--PlayerFunLib:AddSkillState(1512,20,3,18*60*60*24*1,1)
return 1;
end
