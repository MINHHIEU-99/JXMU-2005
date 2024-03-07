
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\activitysys\\detailtype\\itemscript.lua")
Include("\\script\\lib\\pfunction.lua")


pItemScript = ActivityDetailClass:Create("ItemScript", pActivity)

pItemScript.tbItem = {tbProp={999,99,9999,1,0,0},}

function TestCondition()
	return nil
end

function TestAction()
	pItemScript.bIsTestOk = 1
end

pItemScript.tbCondition = 
{
	FunctionClass:new("TestCondition", {});
}

pItemScript.tbAction = 
{
	FunctionClass:new("TestAction", {});
}

pItemScript:RegisteMessage(G_ACTIVITY)



local _MakeItem = function (...)
	return {tbProp= arg}
end

function TestItem(tbItem, bValue)
	
	local pScript = G_ACTIVITY:GetItemScript(tbItem)
	if pScript then
		pScript:UseItem(nItemIndex)
		if pScript.bIsTestOk == bValue then
			return 1
		end
	else
		return bValue == -1
		
	end	
end


function GetAccount()
	return "ScriptAutoTest"
end

function GetName()
	return "testname"
end

function GetItemName(nItemIndex)
	return "testItem"
end

pItemScript.bIsTestOk = nil
local bTestCaseRet1 = TestItem(pItemScript.tbItem, nil)

function TestCondition2()
	return 1
end

pItemScript.tbCondition = 
{
	FunctionClass:new("TestCondition2", {});
}

pItemScript.bIsTestOk = nil
local bTestCaseRet2 = TestItem(pItemScript.tbItem, 1)



G_ACTIVITY:UnRegisteItemScript(pItemScript.tbItem)


local bTestCaseRet3 = TestItem(pItemScript.tbItem, -1)

if bTestCaseRet1 == 1 and bTestCaseRet1 == 1 and bTestCaseRet3 == 1 then
	------------------------------------- Th«ng Tin B¶n QuyÒn Cña Ng­êi Ph¸t TriÓn ------------------------------------------------
	print("\n*********************************************************************** Chiu Trach Nhiem San Xuat va Phat Hanh ********************************************************************************")
	print("#") 
	print("#")                                                                                                                                                                                     
	print("#            JJJJJJJJJJJ     XXXXXXX       XXXXXXX     MMMMMMMM               MMMMMMMM     UUUUUUUU     UUUUUUUU                  VVVVVVVV           VVVVVVVV     NNNNNNNN        NNNNNNNN")
	print("#            J:::::::::J     X:::::X       X:::::X     M:::::::M             M:::::::M     U::::::U     U::::::U                  V::::::V           V::::::V     N:::::::N       N::::::N")
	print("#            J:::::::::J     X:::::X       X:::::X     M::::::::M           M::::::::M     U::::::U     U::::::U                  V::::::V           V::::::V     N::::::::N      N::::::N")
	print("#            JJ:::::::JJ     X::::::X     X::::::X     M:::::::::M         M:::::::::M     UU:::::U     U:::::UU                  V::::::V           V::::::V     N:::::::::N     N::::::N")
	print("#              J:::::J       XXX:::::X   X:::::XXX     M::::::::::M       M::::::::::M      U:::::U     U:::::U                    V:::::V           V:::::V      N::::::::::N    N::::::N")
	print("#              J:::::J          X:::::X X:::::X        M:::::::::::M     M:::::::::::M      U:::::D     D:::::U                     V:::::V         V:::::V       N:::::::::::N   N::::::N")
	print("#              J:::::J           X:::::X:::::X         M:::::::M::::M   M::::M:::::::M      U:::::D     D:::::U                      V:::::V       V:::::V        N:::::::N::::N  N::::::N")
	print("#              J:::::j            X:::::::::X          M::::::M M::::M M::::M M::::::M      U:::::D     D:::::U                       V:::::V     V:::::V         N::::::N N::::N N::::::N")
	print("#              J:::::J            X:::::::::X          M::::::M  M::::M::::M  M::::::M      U:::::D     D:::::U                        V:::::V   V:::::V          N::::::N  N::::N:::::::N")
	print("#  JJJJJJJ     J:::::J           X:::::X:::::X         M::::::M   M:::::::M   M::::::M      U:::::D     D:::::U                         V:::::V V:::::V           N::::::N   N:::::::::::N")
	print("#  J:::::J     J:::::J          X:::::X X:::::X        M::::::M    M:::::M    M::::::M      U:::::D     D:::::U                          V:::::V:::::V            N::::::N    N::::::::::N")
	print("#  J::::::J   J::::::J       XXX:::::X   X:::::XXX     M::::::M     MMMMM     M::::::M      U::::::U   U::::::U                           V:::::::::V             N::::::N     N:::::::::N")
	print("#  J:::::::JJJ:::::::J       X::::::X     X::::::X     M::::::M               M::::::M      U:::::::UUU:::::::U                            V:::::::V              N::::::N      N::::::::N")
	print("#   JJ:::::::::::::JJ        X:::::X       X:::::X     M::::::M               M::::::M       UU:::::::::::::UU        ......                V:::::V               N::::::N       N:::::::N")
	print("#     JJ:::::::::JJ          X:::::X       X:::::X     M::::::M               M::::::M         UU:::::::::UU          .::::.                 V:::V                N::::::N        N::::::N")
	print("#       JJJJJJJJJ            XXXXXXX       XXXXXXX     MMMMMMMM               MMMMMMMM           UUUUUUUUU            ......                  VVV                 NNNNNNNN         NNNNNNN")
	print("#")                                                                                                                                                                                     
	print("#")                                                                                                                                                                                     
	print("*****************************************************************************************************************JXMU.VN***********************************************************************\n")																													   
	-- -----------------------------------------------------------------------------------------------------------------------------------------------
	else 
	-- ------------------------------------- Th«ng Tin B¶n QuyÒn Cña Ng­êi Ph¸t TriÓn ------------------------------------------------
	print("\n*********************************************************************** Chiu Trach Nhiem San Xuat va Phat Hanh ********************************************************************************")
	print("#") 
	print("#")                                                                                                                                                                                     
	print("#            JJJJJJJJJJJ     XXXXXXX       XXXXXXX     MMMMMMMM               MMMMMMMM     UUUUUUUU     UUUUUUUU                  VVVVVVVV           VVVVVVVV     NNNNNNNN        NNNNNNNN")
	print("#            J:::::::::J     X:::::X       X:::::X     M:::::::M             M:::::::M     U::::::U     U::::::U                  V::::::V           V::::::V     N:::::::N       N::::::N")
	print("#            J:::::::::J     X:::::X       X:::::X     M::::::::M           M::::::::M     U::::::U     U::::::U                  V::::::V           V::::::V     N::::::::N      N::::::N")
	print("#            JJ:::::::JJ     X::::::X     X::::::X     M:::::::::M         M:::::::::M     UU:::::U     U:::::UU                  V::::::V           V::::::V     N:::::::::N     N::::::N")
	print("#              J:::::J       XXX:::::X   X:::::XXX     M::::::::::M       M::::::::::M      U:::::U     U:::::U                    V:::::V           V:::::V      N::::::::::N    N::::::N")
	print("#              J:::::J          X:::::X X:::::X        M:::::::::::M     M:::::::::::M      U:::::D     D:::::U                     V:::::V         V:::::V       N:::::::::::N   N::::::N")
	print("#              J:::::J           X:::::X:::::X         M:::::::M::::M   M::::M:::::::M      U:::::D     D:::::U                      V:::::V       V:::::V        N:::::::N::::N  N::::::N")
	print("#              J:::::j            X:::::::::X          M::::::M M::::M M::::M M::::::M      U:::::D     D:::::U                       V:::::V     V:::::V         N::::::N N::::N N::::::N")
	print("#              J:::::J            X:::::::::X          M::::::M  M::::M::::M  M::::::M      U:::::D     D:::::U                        V:::::V   V:::::V          N::::::N  N::::N:::::::N")
	print("#  JJJJJJJ     J:::::J           X:::::X:::::X         M::::::M   M:::::::M   M::::::M      U:::::D     D:::::U                         V:::::V V:::::V           N::::::N   N:::::::::::N")
	print("#  J:::::J     J:::::J          X:::::X X:::::X        M::::::M    M:::::M    M::::::M      U:::::D     D:::::U                          V:::::V:::::V            N::::::N    N::::::::::N")
	print("#  J::::::J   J::::::J       XXX:::::X   X:::::XXX     M::::::M     MMMMM     M::::::M      U::::::U   U::::::U                           V:::::::::V             N::::::N     N:::::::::N")
	print("#  J:::::::JJJ:::::::J       X::::::X     X::::::X     M::::::M               M::::::M      U:::::::UUU:::::::U                            V:::::::V              N::::::N      N::::::::N")
	print("#   JJ:::::::::::::JJ        X:::::X       X:::::X     M::::::M               M::::::M       UU:::::::::::::UU        ......                V:::::V               N::::::N       N:::::::N")
	print("#     JJ:::::::::JJ          X:::::X       X:::::X     M::::::M               M::::::M         UU:::::::::UU          .::::.                 V:::V                N::::::N        N::::::N")
	print("#       JJJJJJJJJ            XXXXXXX       XXXXXXX     MMMMMMMM               MMMMMMMM           UUUUUUUUU            ......                  VVV                 NNNNNNNN         NNNNNNN")
	print("#")                                                                                                                                                                                     
	print("#")                                                                                                                                                                                     
	print("*****************************************************************************************************************JXMU.VN***********************************************************************\n")																													   
	-- -----------------------------------------------------------------------------------------------------------------------------------------------
	end
